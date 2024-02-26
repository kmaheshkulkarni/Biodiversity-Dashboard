function (input, output, session) {
  
  session$onSessionEnded(function() {
    stopApp()
  })
  
  output$user<- renderUser({
    dashboardUser(
      name = "Biodiversity Dashboard",
      image = "https://www.gbif.org/img/full_logo_white.svg",
      title = NULL,
      subtitle = "Author - Mahesh Kulkarni",
      footer = NULL
    )
  })
  
  # Get data for the selected species
  bidata <- reactive({
    biodiversityDT |>
      filter(!!as.symbol(input$filterData) == input$filterSpecies)
  })
  
  
  # Create list with species according to filterData
  choices <- reactive({
    req(input$filterData)
    split(biodiversityDT[[input$filterData]], biodiversityDT$kingdom) |>
      lapply(X = _, FUN = \(x) sort(unique(x)))
  })
  
  
  # Use server-side selectizeInput and update choices according to filterData
  observe({
    req(input$filterData)
    default <- ifelse(input$filterData == "scientificName", "Canis lupus", "Wolf")
    updateSelectizeInput(session, 'filterSpecies', choices = choices(),
                         server = TRUE, selected = default)
  })
  
  # Render map for the first time
  
  output$bioLeafMap <- renderLeaflet({
    
    leaflet() |>
      addTiles() |>
      setView(lng = 15.99289, lat = 53.15163, zoom = 6) |>
      addFullscreenControl() |>
      addScaleBar(position = "bottomleft") |>
      addLayersControl(
        position = "topleft",
        options = layersControlOptions(collapsed = TRUE))
    
  })
  
  observe({
    
    bidf <- bidata()
    
    if (nrow(bidf) == 0) return()
    
    bimapData <- mapPopupData(bidf)
    
    leafletProxy("bioLeafMap", data = bimapData) |>
    clearPopups() |>
    clearMarkerClusters() |>
    setView(lng = 15.99289, lat = 53.15163, zoom = 6) |>
    addCircleMarkers(
        label = ~lapply(label, HTML),
        labelOptions = labelOptions(className = "leaflet_hover_pop"),
        popup = ~lapply(label, HTML),
        lng = ~longitudeDecimal, lat = ~latitudeDecimal,
        clusterOptions = markerClusterOptions()
      )
    
  })
  
  # Table with details of the species selected
  output$selectedData <- renderTable(colnames = FALSE, width = "100%",
                                     striped = TRUE, spacing = "xs", bordered = TRUE, {
                                       
                                       req(bidata)
                                       
                                       BiDTable(bidata())
                                       
                                     })
  
  output$timeline <- renderTimevis({
    timeline_data <- bidata() |>
      mutate(start = eventDate, content = catalogNumber, id = id) |>
      select(start, content, id)
    
    timevis(timeline_data, fit = TRUE,
                     options = list(editable = FALSE,
                                    height = "123px",
                                    locale = "en")
    )
  })
    
  }

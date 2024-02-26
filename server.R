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
  
  
  # source("C:/Users/kmahe/OneDrive/Biodiversity-Dashboard/Calculation/map_calculation.R")
  # source("C:/Users/kmahe/OneDrive/Biodiversity-Dashboard/Calculation/Timeline.R")
  
  # data <- mapServer("map")
  # timelineServer("timeline", data)
  
  # Get data for the selected species
  data <- reactive({
    biodiversityDT |>
      dplyr::filter(!!as.symbol(input$filterVar) == input$searchSpecies)
  })
  
  
  # Create list with species according to filterVar
  choices <- reactive({
    req(input$filterVar)
    split(biodiversityDT[[input$filterVar]], biodiversityDT$kingdom) |>
      lapply(X = _, FUN = \(x) sort(unique(x)))
  })
  
  
  # Use server-side selectizeInput and update choices according to filterVar
  observe({
    req(input$filterVar)
    default <- ifelse(input$filterVar == "scientificName", "Small Chocolate-tip", "Clostera pigra")
    updateSelectizeInput(session, 'searchSpecies', choices = choices(),
                         server = TRUE, selected = default)
  })
  
  # Render map for the first time
  
  # addMultipleProviderTiles <- function(map, provider, group = names(provider)) {
  #   for (i in seq_along(provider)) {
  #     map <- leaflet::addProviderTiles(map, provider[[i]], group = group[[i]])
  #   }
  #   return(map)
  # }
  
  addMultipleProviderTiles <- function(map, providers, groups = NULL) {
    if (is.null(groups)) {
      for (provider in providers) {
        map <- leaflet::addTiles(map, provider)
      }
    } else {
      for (i in seq_along(providers)) {
        map <- leaflet::addTiles(map, providers[[i]], group = groups[i])
      }
    }
    return(map)
  }
  
  output$leafMap <- leaflet::renderLeaflet({
    
    # tiles <- c("Esri World Topo Map" = "Esri.WorldTopoMap", "Esri World Imagery" = "Esri.WorldImagery",
    #            "Esri World Street Map" = "Esri.WorldStreetMap", "Esri DeLorme" = "Esri.DeLorme",
    #            "OpenTopoMap" = "OpenTopoMap",
    #            "Stamen Terrain" = "Stamen.Terrain")
    
    tiles <- list(
      "Esri World Topo Map" = leaflet::providers$OpenStreetMap,
      "Esri NatGeoWorldMap" = leaflet::providers$Esri.NatGeoWorldMap,
      "OpenStreetMap" = leaflet::providers$OpenStreetMap.Mapnik
      # "Stamen.Toner" = providers$Stamen.Toner
      # "Stamen Terrain" = leaflet::providers$Stamen.Terrain
    )
    
    leaflet::leaflet() |>
      addTiles() |>
      leaflet::setView(lng = 15.99289, lat = 53.15163, zoom = 6) |>
      leaflet.extras::addFullscreenControl() |>
      leaflet::addScaleBar(position = "bottomleft") |>
      leaflet::addLayersControl(
        baseGroups = names(tiles),
        position = "topleft",
        options = leaflet::layersControlOptions(collapsed = TRUE))
    
    
  })
  
  observe({
    
    df <- data()
    
    if (nrow(df) == 0) return()
    
    mapData <- createPopupData(df)
    
    print(mapData)
    
    leaflet::leafletProxy("leafMap", data = mapData) |>
      leaflet::clearPopups() |>
      leaflet::clearMarkerClusters() |>
      leaflet::setView(lng = 15.99289, lat = 53.15163, zoom = 6) |>
      leaflet::addCircleMarkers(
        label = ~lapply(label, HTML),
        labelOptions = leaflet::labelOptions(className = "leaflet_hover_pop"),
        popup = ~lapply(label, HTML),
        lng = ~longitudeDecimal, lat = ~latitudeDecimal,
        clusterOptions = leaflet::markerClusterOptions()
      )
    
  })
  
  # Table with details of the species selected
  output$selectedData <- renderTable(colnames = FALSE, width = "100%",
                                     striped = TRUE, spacing = "xs", bordered = TRUE, {
                                       
                                       req(data)
                                       
                                       createInfoTable(data())
                                       
                                     })
  
  output$timeline <- timevis::renderTimevis({
    timeline_data <- data() |>
      dplyr::mutate(start = eventDate, content = catalogNumber, id = id) |>
      dplyr::select(start, content, id)
    
    timevis::timevis(timeline_data, fit = TRUE,
                     options = list(editable = FALSE,
                                    height = "123px",
                                    locale = "en")
    )
  })
    
  }

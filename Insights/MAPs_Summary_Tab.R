
MAPs_Summary_Tab <- tabPanel(
  "MAPs Summary",
  value = "tab1",
  fluidRow(
    column(width = 10,
           leafletOutput("bioLeafMap", height = "520px", width = "100%")),

    column(width = 2,
          radioGroupButtons(
             inputId = "filterData",
             label = "Search species by",
             choices = c("Vernacular Name" = "vernacularName", "Scientific Name" = "scientificName"),
             size = "sm",
             justified = TRUE
           ),

           selectInput("filterSpecies", label = NULL, choices = NULL, width = "100%"),
           tableOutput("selectedData")

           )
  ),
   
  fluidRow(
  timevisOutput("timeline", width = "100%", height = "100%")
  )
  
)
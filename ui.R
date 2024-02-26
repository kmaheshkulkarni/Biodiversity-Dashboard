bs4DashPage(
  # Link the CSS file
  preloader = list(html = tagList(spin_flower(), "Loading ..."), color = "#00E47C"),
  
  dark = FALSE,
  help = NULL,
  header = dashboardHeader(
    title = img(src = "https://www.gbif.org/img/full_logo_white.svg", width = "145px", style = "margin-left: 3px; margin-top: 1px;"),  # Add your custom logo,  # Set title to NULL to remove the default title
    
    fixed = TRUE,
    
    navbarMenu(id = "navmenu",
               navbarTab(tabName = "Tab1", text = "Data Insights")
    ),
    
    rightUi = userOutput("user")
  ),
  
  sidebar = dashboardSidebar(disable = TRUE),
  
  body = dashboardBody(
    
    tabItems(
      tabItem(tabName = "Tab1",MAPs_Summary_Tab)
  ),
  
  footer = dashboardFooter(
    fixed = FALSE,
    left = tagList(a(href="https://www.gbif.org/img/gbc.svg", "Global Core Biodata Resource")
    ),
    
    right = a("@Mahesh Kulkarni")
  ), 
  
  fullscreen = TRUE,
  
  htmltools::includeCSS(path = "www/styles.css")
)

)
dashboardPage(
  
  freshTheme = "C:/Users/kmahe/OneDrive/Biodiversity-Dashboard/www/padash.css",
  dark = NULL,
  help = NULL,
  header = dashboardHeader(
    title = img(src = "https://www.gbif.org/img/full_logo_white.svg", width = "145px", style = "margin-left: 3px; margin-top: 1px;"),  # Add your custom logo,  # Set title to NULL to remove the default title
    
    fixed = TRUE,
    
    navbarMenu(id = "navmenu",
               navbarTab(tabName = "Tab1", text = "Data Insights")
               # navbarTab(tabName = "Tab2", text = "Actual Data")
    ),
    
    rightUi = userOutput("user")
  ),
  
  sidebar = dashboardSidebar(disable = TRUE),
  
  body = dashboardBody(
    
    tabItems(
      tabItem(tabName = "Tab1",MAPs_Summary_Tab)
      # tabItem(tabName = "Tab2",Data_Tab))
    
    
  ),
  
  footer = dashboardFooter(
    fixed = FALSE,
    left = tagList(a(href="https://www.gbif.org/img/gbc.svg", "Global Core Biodata Resource")
    ),
    
    right = a("@Mahesh Kulkarni")
  ), 
  
  preloader = list(html = tagList(spin_flower(), "Loading ..."), color = "#00E47C"),
  
  fullscreen = TRUE
  
)

)
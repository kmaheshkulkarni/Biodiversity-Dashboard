<div align="left">
 
[![](https://github.com/kmaheshkulkarni/Biodiversity-Dashboard/blob/main/bioDT_Green.png)](https://75ns70-mahesh-kulkarni.shinyapps.io/Biodiversity-Dashboard/)

# Biodiversity-Dashboard (Country - Poland)

<div align="left">

<!-- badges: start -->
[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![CRAN status](https://www.r-pkg.org/badges/version/corrly)](https://CRAN.R-project.org/package=corrly)
[![](https://img.shields.io/badge/Shiny-shinyapps.io-blue?style=flat&labelColor=white&logo=RStudio&logoColor=blue)](http://75ns70-mahesh-kulkarni.shinyapps.io/Biodiversity-Dashboard)
![Static Badge](https://img.shields.io/badge/Biodiversity-DATA?style=flat&label=R%20Shiny&labelColor=%2300E47C&color=%2308312A&link=https%3A%2F%2Fgithub.com%2Fkmaheshkulkarni%2FBiodiversity-Dashboard)
![Static Badge](https://img.shields.io/badge/Version%201-0?style=flat&label=Biodiversity-Dashboard&labelColor=%23E18600&color=%2308312A&link=https%3A%2F%2Fgithub.com%2Fkmaheshkulkarni%2FBiodiversity-Dashboard)
<!-- badges: end -->

### Data about Polish biodiversity is displayed in this [live Shiny app!](https://75ns70-mahesh-kulkarni.shinyapps.io/Biodiversity-Dashboard/)
##

## Data - 
The Global Biodiversity Information Facility is where the app gets its biodiversity data. We use solely Polish observational data in the app. The readr software has been utilized to load the dataset. To minimize loading times, the data loaded into the application is organized.

## Dashboard Insights - 
The app dashboard is organized into three main sections: the timeline chart, tab panel (mid), and navbar. The User Inputs Widgets and the leaflet map are located in the Tab panel. The user must choose an input from the available widgets (by default, some inputs are picked to prevent a blank map once the dashboard loads). The user has the option to switch between entering the scientific name and the vernacular name next to it. Following the selection process, the map will be updated to display all of the observations made throughout the years for the chosen species, and the table below will be updated very rapidly with a few key insights. The timeline panel also refreshes to show the identical map observations in a timeline format.

The observations on the map are represented by interactive markers that, when a mouse is hovered over or clicked, provide information about that particular observation along with, if available, an image taken by the observer. The popup offers a link to the reference page.

The application is deployed to shinyapps.io and the repository is maintained on GitHub.

## Future actions
Boost dashboards Dark-Theme, the user interface will have interactive widgets and timeline chart and leaflet map improvements based on users' feedback, along with the addition of a Data Explorer Tab.
Provide support for data from foreign nations.

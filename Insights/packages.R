# Load necessary libraries
library(bs4Dash)        # Dashboard layout
library(dplyr)          # Data manipulation
library(shiny)          # Interactive application framework
library(waiter)         # Improved waiting indicators
library(shinyalert)     # Alerts and notifications
library(shinyWidgets)   # Additional UI components
library(timevis)       # Time series visualization
library(shinyjs)        # JavaScript integration for more control
library(readr)          # Data reading tools
library(leaflet.extras) # Extended leaflet capabilities
library(stringr)        # String manipulation

# Use shinyjs for JavaScript integration (optional)
useShinyjs()

# Load leaflet package last for potential conflicts with other libraries
library(leaflet)        # Interactive maps 
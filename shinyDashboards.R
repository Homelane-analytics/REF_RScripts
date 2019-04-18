library(shiny)
library(shinydashboard)

###
# Component - Side Menu
###
mainsidemenu<- sidebarMenu(
  menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
  menuItem("Widgets", tabName = "widgets", icon = icon("th")),
  textInput("Id", "Label")
)

###############################################################################
###
# Creating UI
###
header <- dashboardHeader()
sidebar <- dashboardSidebar(mainsidemenu)
body <- dashboardBody()

ui <- dashboardPage(header,sidebar,body)


###
# Creating SERVER
###
server <- function(input, output) { }

shinyApp(ui, server)

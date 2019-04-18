library(shiny)
library(shinydashboard)
library(leaflet)



###
# Component - Side Menu
###
mainsidemenu<- sidebarMenu(
  menuItem("Tab1", tabName = "Tab1", icon = icon("dashboard")),
  menuItem("Tab2", tabName = "Tab2", icon = icon("th")),
  textInput("Id", "Label"),
  sliderInput("slider", "Slider input:", 1, 100, 50)
)

###
# Component - Tab Pages
###
tab1<- tabItem(tabName = "Tab1",
               h2("First tab content. This will show when you click on the First tab."),
               leafletOutput("simplemap", height = 500)
)

tab2<- tabItem(tabName = "Tab2",
               h2("Other tab content. This will show when you click on the Second tab."),
               infoBoxOutput("approvalBox"),
              
               box(
                 title = "Inputs",background = "black", status = "warning",
                 "Box content here", br(), "More box content",
                 sliderInput("slider", "Slider input:", 1, 100, 50),
                 textInput("text", "Text input:")
               )
               
               
)

###############################################################################
###
# Creating UI
###
header <- dashboardHeader(title = "First Dashboard",dropdownMenuOutput("messageMenu"))
sidebar <- dashboardSidebar(mainsidemenu)
body <- dashboardBody(tabItems(tab1,tab2))

ui <- dashboardPage(header,sidebar,body,skin = "red")


###
# Creating SERVER
###
server <- function(input, output) { 
  
  output$messageMenu <- renderMenu({
    messageData<- data.frame(value=85,color="yellow",text="Server Deployment")
    msgs <- apply(messageData, 1, function(row) {
      taskItem(value = row[["value"]], color = row[["color"]], text = row[["text"]])
    })
    
    dropdownMenu(type = "tasks", .list = msgs)
  })
 
  output$approvalBox <- renderInfoBox({
    infoBox(
      "Approval", "80%", icon = icon("thumbs-up", lib = "glyphicon"),
      color = "yellow"
    )
  })
  
  output$simplemap <- renderLeaflet({
    leaflet() %>% addTiles() %>% addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R")
  })
  
 
   
}# end of server function

shinyApp(ui, server)





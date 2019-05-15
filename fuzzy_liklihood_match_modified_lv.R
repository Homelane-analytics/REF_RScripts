library(shiny)
library(shinydashboard)
library(leaflet)
library(googlesheets)
library(dplyr)
library(stringdist)
library(stringr)

a<- gs_read(gs_title("FINAL PROPERTY STATUS - MAY13"),ws=1)

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
               
               sidebarSearchForm("textId", "dosearch", label = "Search...",
                                 icon = shiny::icon("search")),
               dataTableOutput('table')
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
header$children[[2]]$children <-  tags$a(href='https://www.homelane.com/',tags$img(src='https://super.homelane.com/hllogo_0119_big1.png',height='40',width='160'))

sidebar <- dashboardSidebar(mainsidemenu)
body <- dashboardBody(tabItems(tab1,tab2))

ui <- dashboardPage(header,sidebar,body,skin = "red")


###
# Creating SERVER
###


server <- function(input, output) { 
  
  
  output$approvalBox <- renderInfoBox({
    infoBox(
      "Approval", "80%", icon = icon("thumbs-up", lib = "glyphicon"),
      color = "yellow"
    )
  })
  
  
  
  observeEvent(input$dosearch, {
    
    
    Names1 <- tolower(input$textId)
    
    a$`CorrectName(full)`<- (gsub('[[:digit:]]+', '', a$`CorrectName(full)`))
    a$`CorrectName(full)`<- (gsub('[[:punct:]]+', '', a$`CorrectName(full)`))
    a$`CorrectName(full)`<- tolower(a$`CorrectName(full)`)
    
    Names2 <- tolower(unique(a$`CorrectName(full)`))
    
    #Match_Idx <- amatch(tolower(Names1), tolower(Names2), method = 'lcs', maxDist = Inf)
    bb<- expand.grid(tolower(Names1), tolower(Names2))
    #bb$totallength<- sapply(paste0(bb$Var1,bb$Var2),nchar)
    #bb$penalizelength<- unlist(abs(sapply((paste0("",bb$Var2)),nchar)-nchar(Names1))+1/2*(nchar(Names1)))
    #bb$dist<- stringdist(bb$Var1, bb$Var2,"lv")*bb$penalizelength/bb$totallength
    bb$lv<- stringdist(bb$Var1, bb$Var2,"lv")
    bb$osa<- stringdist(bb$Var1, bb$Var2,"osa")
    bb$dl<- stringdist(bb$Var1, bb$Var2,"dl")
    bb$lcs<- stringdist(bb$Var1, bb$Var2,"lcs")
    bb$qgram<- stringdist(bb$Var1, bb$Var2,"qgram")
    bb$cosine<- stringdist(bb$Var1, bb$Var2,"cosine")
    bb$jaccard<- stringdist(bb$Var1, bb$Var2,"jaccard")
    bb$jw<- stringdist(bb$Var1, bb$Var2,"jw")
    #bb$soundex<- stringdist(bb$Var1, bb$Var2,"soundex")
    
    ################3 contains
    cnt<- 1
    wrdcnt<-0
    for(i in Names2)
    {
      for(j in unlist(strsplit(Names1," ")))
      {
        if(grepl(j,i)){wrdcnt<- wrdcnt+1}
      }
      bb$contains[cnt]<- wrdcnt
      cnt<- cnt+1
      wrdcnt<- 0
    }
    
    ################fractoinal contains
    cnt<- 1
    wrdcnt<-0
    for(i in Names2)
    {
      for(j in unlist(strsplit(Names1," ")))
      {
        wrdcnt<- wrdcnt+(nchar(i)-nchar(gsub(j,"",i)))
      }
      bb$FracContains[cnt]<- wrdcnt
      cnt<- cnt+1
      wrdcnt<- 0
    }

    ################Word by word LV most similar word
    cnt<- 1
    wrdcnt<-0
    charcompared<- "_"
    for(i in Names2)
    {
      for(j in unlist(strsplit(Names1," ")))
      {
        liklyword<- amatch(j,unlist(strsplit(i," ")),method = "lv",maxDist = 2)
        if(!is.na(liklyword)){
          wrdcnt<- wrdcnt + stringdist(unlist(strsplit(i," "))[liklyword],j,"lv")
          charcompared<- paste0(charcompared,unlist(strsplit(i," "))[liklyword])
        } 
        #print(paste0(i," ",charcompared,wrdcnt))
      }
      #bb$CustomLV[cnt]<- (wrdcnt/(nchar(charcompared)-1))
      #bb$CustomLV[cnt]<- (wrdcnt/(nchar(charcompared)-1)) - ((nchar(charcompared)/max(nchar(gsub(" ","",i)),nchar(gsub(" ","",Names1)))))
      bb$CustomLV[cnt]<- (wrdcnt/(nchar(charcompared)-1)) - ((nchar(charcompared)/max(nchar(charcompared),nchar(gsub(" ","",Names1)))))
      bb$charcompared[cnt]<- gsub("_","",charcompared)
      #bb$normalizedLV[cnt]<- (wrdcnt/(nchar(charcompared)-1))
      #bb$Fac4lendiff[cnt]<- (1+(nchar(charcompared)/max(nchar(gsub(" ","",i)),nchar(gsub(" ","",Names1)))))
      bb$NmatchBoost[cnt]<- ((nchar(charcompared)/max(nchar(charcompared),nchar(gsub(" ","",Names1)))))
      
      cnt<- cnt+1
      wrdcnt<- 0
      charcompared<- "_"
    }
    
      
    Matches <- (bb %>% arrange((CustomLV)))[,2:ncol(bb)]
    
    output$table <- renderDataTable(Matches[1:input$slider,])
  })
  
}


shinyApp(ui, server)










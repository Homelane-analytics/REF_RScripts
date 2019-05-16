library(plumber)         
#' @get /searchtext
function(q){
  
  #library(googlesheets)
  library(dplyr)
  library(stringdist)
  library(stringr)
  
  #a<- gs_read(gs_title("FINAL PROPERTY STATUS - MAY13"),ws=1)
  a<- read.csv("http://www.sharecsv.com/dl/990fcecc4accc1a127f8a695708d3531/tosendlak.csv")
  nm<- colnames(a)
  nm[6]<- 'CorrectName(full)'
  colnames(a)<- nm
  
  
  Names1 <- tolower(searchtext)
  
  a$`CorrectName(full)`<- (gsub('[[:digit:]]+', '', a$`CorrectName(full)`))
  a$`CorrectName(full)`<- (gsub('[[:punct:]]+', '', a$`CorrectName(full)`))
  a$`CorrectName(full)`<- tolower(a$`CorrectName(full)`)
  
  Names2 <- tolower(unique(a$`CorrectName(full)`))
  
  bb<- expand.grid(tolower(Names1), tolower(Names2))
  
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
  
  #bb$SFID <- a$ID
  
  Matches <- (bb %>% arrange((CustomLV)))[,2:ncol(bb)]
  
  
  return(Matches[1,1])
  
  
  
  
  
  
  
}# END OF FUNCTION   


#plumber::plumb("/home/ram/HL_PS/HL_PS_api_for_property_match.R")$run(port = 3000)

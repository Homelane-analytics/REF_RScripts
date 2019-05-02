
install.packages("RMySQL")
library(RMySQL)
library(googlesheets)


gs_ls()

# ALTER USER 'root'@'localhost'
# IDENTIFIED WITH mysql_native_password BY 'tt089'

db<- dbConnect(MySQL(), user='root', password= 'ttoagk089', dbname='ps_hl_1', host='localhost')


dbListTables(db)

dbListFields(db, 'aux_customer')

a<- dbSendQuery(db, 'select  * from aux_customer limit 100')
rs = fetch(dbSendQuery(db, "select * from aux_customer"),n=-1)

# SET GLOBAL local_infile = true;
custs<- gs_read(gs_title("PS HL Sales DB"),ws="AUX_Cust")
dbWriteTable(db, name='AUX_Customers3', value=custs)

txns<- gs_read(gs_title("PS HL Sales DB"),ws="Txn")
dbWriteTable(db, name='wip_01', value=txns)



nps40<- gs_read(gs_title("Bangalore_Overall"),ws=4)
colnames(nps40)<- nps40[1,]
colnames(nps40)[9]<- "Customer Date old"
nps40<- nps40[-1,1:13]
dbWriteTable(db, name='nps40', value=nps40)

nps100<- gs_read(gs_title("Bangalore_Overall"),ws=3)
colnames(nps100)<- nps100[1,]
nps100<- nps100[-1,1:18]
dbWriteTable(db, name='nps100', value=nps100)


##################################################################
#### Getting Smartsheet data  - Using Randhir's Code
###################3


setwd("D:\\R projects\\Smartsheets")
# install.packages("httr")
# install.packages("bit64")
# install.packages("splitstackshape")
library(httr)
library(bit64)
library(splitstackshape)
library(ggplot2)
library(googlesheets)
suppressMessages(library(dplyr))

options(scipen=999)

# Smart sheets access token: "Bearer xlxp8r5hssqjq7qpftawytf8bf"

destination <- "D:\\R projects\\Smartsheets"


url <- "https://api.smartsheet.com/2.0/reports"

response <- httr::GET(url, encode = "json",
                      add_headers(Authorization = "Bearer js5pwbetdrbqaelgle7isklegg"))
cont <- content(response)

sheets_raw <- cont$data

sheets_list <- data.frame()

for(i in 1:length(sheets_raw)) {
  j <- nrow(sheets_list) + 1
  sheets_list[i,1] <- as.character(sheets_raw[[i]][[1]])
  sheets_list[i,2] <- as.character(sheets_raw[[i]][[2]])
}

colnames(sheets_list) <- c("report_id","report_name")

splitted <- cSplit(sheets_list,"report_name", "/", type.convert = T)

splitted$report_name_1 <- as.character(splitted$report_name_1)
splitted$report_name_2 <- as.character(splitted$report_name_2)

# str(splitted)

splitted$folder <- "D:\\R projects\\Smartsheets"
splitted$folder[!is.na(splitted$report_name_2)] <- paste0("D:\\R projects\\Smartreports",splitted$report_name_1[!is.na(splitted$report_name_2)])
splitted$file <- splitted$report_name_1
splitted$file[!is.na(splitted$report_name_2)] <- splitted$report_name_2[!is.na(splitted$report_name_2)]

folders <- unique(splitted$folder)

for (folder in folders) {
  if(dir.exists(folder)) {
    next
  } else {
    dir.create(folder)
  }
}

reportid <- sheets_list$report_id[which(sheets_list$report_name == "Projects in 10-40 All Cities inc On Hold - WDR")]
reportid

download_url <- paste0("https://api.smartsheet.com/2.0/reports/",reportid)
file_name <- paste0(as.character(splitted$folder[splitted$report_id==reportid]),"/",as.character(splitted$file[splitted$report_id==reportid]),".xlsx")
print(paste0("Downloading file:",file_name))
out <- try(file_data <- httr::GET(download_url,
                                  write_disk(file_name, overwrite=TRUE),
                                  add_headers(Authorization = "Bearer js5pwbetdrbqaelgle7isklegg",
                                              Accept= "application/vnd.ms-excel")),silent = T)


library(readxl)
ssmart_data <- read_excel("Projects in 10-40 All Cities inc On Hold - WDR.xlsx")

################ WRITE IT TO SQL
####

dbWriteTable(db, name='ssmart_data', value=ssmart_data)


installation<- gs_read(gs_title("Production & Installation summary -  April'19 "),ws=3)
colnames(installation)<- installation[1,]
colnames(installation)[45]<- "NPS Collected"
installation<- installation[-1,1:46]
dbWriteTable(db, name='installation', value=installation)


collectionsOld<- gs_read(gs_title("Collections Data"),ws=1)
dbWriteTable(db, name='collectionsOld', value=collectionsOld)

collections_WIP<- gs_read(gs_title("Collections Data"),ws=2)
dbWriteTable(db, name='collections_WIP', value=collections_WIP)

targets<- gs_read(gs_title("Target Dump"),ws=1)
dbWriteTable(db, name='targets', value=targets)









  









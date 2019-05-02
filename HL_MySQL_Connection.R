
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

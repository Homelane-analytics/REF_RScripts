install.packages("RMySQL")
library(RMySQL)


# ALTER USER 'root'@'localhost'
# IDENTIFIED WITH mysql_native_password BY 'tt089'

db<- dbConnect(MySQL(), user='root', password= 'ttoagk089', dbname='ps_hl_1', host='localhost')


dbListTables(mydb)

dbListFields(mydb, 'some_table')

dbSendQuery(mydb, 'drop table if exists some_table, some_other_table')

dbWriteTable(mydb, name='table_name', value=data.frame.name)

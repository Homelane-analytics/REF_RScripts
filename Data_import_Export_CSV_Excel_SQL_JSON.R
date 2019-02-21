####
# READ a FOLDER WITH DIFFERENT TYPES OF FILES and MERGE into one
#####

          path1<- choose.dir(default ="P:\\!SCD\\Flowers Foods 2017\\Phase4/0-Data/Raw Data/WeeklySFTPDump/JAN31/" ,caption = "Select Shipment folder")
          files<- list.files(path1, full.names = TRUE)
          shpfiles<- files[grepl("LIPS",files)]
      
      ## checking colnames integrety
      
          tmp<- colnames(fread(shpfiles[2],sep="|",nrows = 1))
          for(i in shpfiles)
          {
            if(file.size(i)>1){
              tmp<- rbind(tmp,colnames(fread(i,sep="|",nrows = 1)))
            }
          }
          if( sum(apply(tmp,2,function(x){length(unique(x))})) != 455)
          {
            print("Shipment Files Column headers inconsitent")
            q()
          } else{
            print("Shipment Files Column headers consitent")
          }
          
      ## CREATE RBIND FILES AND ADD PRIMARY  KEYS
      
        tmp2<- colnames(fread(shpfiles[1], nrows = 5, sep="|"))
        tmp2[455]<- "Column 454"

        tmp4<- data.table()
        cc<- 1
        for(i in shpfiles)
        {
          if (file.size(i) > 3){
            tmp<- fread(i,  sep="|")
            colnames(tmp)<- tmp2
            tmp$FileNames <- sub(".*/", "", i)
            tmp<-  tmp[, lapply(.SD, as.character)]
            tmp4<- rbind(tmp4,tmp)
            print(paste0(cc," files read out of ",length(shpfiles)))
            cc<- cc+1
          }
        }
        tmp4$Primary_Key<- paste0(seq(1,nrow(tmp),1),"-",tmp4$FileNames)

#####
# READ-WRITE TO SQL SERVER
#####
          library(odbc)
          con <- dbConnect(odbc(),Driver = "SQL Server",Server = "MONTGOMERY\\MSSQLSERVER2014",Database = "FlowersFoods_Phase4_RAW")
          dbWriteTable(conn = con, name = paste0("RAW_EORDProcurement_2019_",substr(path1,nchar (path1)-4,nchar (path1))), value = tmp4)
          dbDisconnect(con)
          

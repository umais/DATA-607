library(RMySQL)
library(lubridate)


killDbConnections <- function () {
  
  all_cons <- dbListConnections(MySQL())
  
  print(all_cons)
  
  for(con in all_cons)
    +  dbDisconnect(con)
  
  print(paste(length(all_cons), " connections killed."))
  
}

killDbConnections()
mydb = dbConnect(MySQL(), user='root', password='Welcome@1', dbname='finalproject', host='localhost')
Patient <- read.csv("inputFiles/patients.csv", header = TRUE,sep=",")
Patient$DOB<-as.Date(parse_date_time(Patient$DOB,"mdy"))
head(Patient)
dbWriteTable(mydb, "patient", Patient, overwrite=FALSE,append=TRUE,row.names=FALSE)

Pharmacy <- read.csv("inputFiles/pharmacy.csv", header = TRUE,sep=",")
Pharmacy$FillDate<-as.Date(parse_date_time(Pharmacy$FillDate,"mdy"))
head(Pharmacy)
dbWriteTable(mydb, "prescriptionfillhistory", Pharmacy, overwrite=FALSE,append=TRUE,row.names=FALSE)
day<-"31/08/2011"
as.Date(parse_date_time(day,"dmy"))

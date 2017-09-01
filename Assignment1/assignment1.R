library(plyr)
library(RCurl)
url<-getURL("https://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data")

df <- rename(data.frame(read.csv(text=url,header=FALSE)),c("V1"="Classes","V2"="CapShape","V3"="Title"))
#d <- rename(df[1:10,c(1:3)],c("V1"="Classes","V2"="CapShape","V3"="Title"))
head(df)




#revalue(myd$classes, c("e" = "edible")) -> myd$classes
#revalue(myd$classes, c("p" = "poisonous")) -> myd$classes
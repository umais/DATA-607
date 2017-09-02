library(plyr)
library(RCurl)
url<-getURL("https://raw.githubusercontent.com/umais/DATA-607/master/Assignment1/agaricus-lepiota.data")

df <- rename(data.frame(read.csv(text=url,header=FALSE)),
             c(
               "V1"="classes",
               "V2"="cap_shape",
               "V3"="cap_surface",
               "V4"="cap_color",
               "V5"="Bruises"
             ))[,c(1:5)]

head(df)
revalue(df$classes, c("e" = "edible")) -> df$classes
revalue(df$classes, c("p" = "poisonous")) -> df$classes
revalue(df$cap_shape, c("b" = "bell")) -> df$cap_shape
revalue(df$cap_shape, c("c" = "conical")) -> df$cap_shape
revalue(df$cap_shape, c("x" = "convex")) -> df$cap_shape
revalue(df$cap_shape, c("f" = "flat")) -> df$cap_shape
revalue(df$cap_shape, c("k" = "knobbed")) -> df$cap_shape
revalue(df$cap_shape, c("s" = "sunken")) -> df$cap_shape
revalue(df$cap_surface, c("f" = "fibrous")) -> df$cap_surface
revalue(df$cap_surface, c("g" = "grooves")) -> df$cap_surface
revalue(df$cap_surface, c("y" = "scaly")) -> df$cap_surface
revalue(df$cap_surface, c("s" = "smooth")) -> df$cap_surface
revalue(df$cap_color, c("n" = "Brown")) -> df$cap_color
revalue(df$cap_color, c("b" = "Buff")) -> df$cap_color
revalue(df$cap_color, c("c" = "Cinnamon")) -> df$cap_color
revalue(df$cap_color, c("g" = "Gray")) -> df$cap_color
revalue(df$cap_color, c("r" = "Green")) -> df$cap_color
revalue(df$cap_color, c("p" = "Pink")) -> df$cap_color
revalue(df$cap_color, c("u" = "Purple")) -> df$cap_color
revalue(df$cap_color, c("e" = "Red")) -> df$cap_color
revalue(df$cap_color, c("w" = "White")) -> df$cap_color
revalue(df$cap_color, c("y" = "Yellow")) -> df$cap_color
revalue(df$Bruises, c("t" = "Yes")) -> df$Bruises
revalue(df$Bruises, c("f" = "No")) -> df$Bruises
df

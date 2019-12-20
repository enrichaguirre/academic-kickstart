#mardel 

library(tidyverse)
library(funModeling)
library(geojsonio)
source('get_density.R')
source('inpolygon.r')
library(rgdal)
library(raster)
dataset <- read_csv('ZonaproAlq_full_limp.csv')
sort(unique(oct$Ambientes))
oct
oct <- read_delim('zonapro_alq_oct.csv', delim = ';')
View(oct)
geodataset<- read_delim('mardel_geo.csv')
d = get(load('ZONAPROP_Alquileres1.1.RData'))
View(d)
load("ZONAPROP_Alquileres1.1.RData", ex <- new.env())
ls.str(ex) 

mardel1<-dataset%>%filter(Zona=="Mar del Plata")
#geomardel<-
unique(geodataset$NAME_2)%>%sort()



ggplot(geodataset,aes(x=long, y=lat)) + 
  coord_equal() + 
  geom_polygon(colour="black", size=0.1, aes(group=group))



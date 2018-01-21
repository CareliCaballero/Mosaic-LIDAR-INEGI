##install packages
install.packages("plyr")
install.packages("raster")
install.packages("rgeos")
install.packages("rgdal")


##use libraries
library(plyr)
library(raster)
library(rgdal)
library(rgeos)

##set the directory
setwd("C:/IPICYT/Jaguar/Mosaico_ASCII/")
getwd()

##it is recommendable to save the ascii files
##in a folder named Input to find the files easier


##find ascii files in the directory, make a list of them
##and convert them to raster
rasters <- list.files(pattern = "*.xyz", full.names = TRUE, 
                      recursive = TRUE)
rast.list <- lapply(1:length(rasters),
                    function(x) {
                      raster(rasters[x])
                    })

#check how many rasters I have for the mosaic
length(rasters)

##use do.call on the list of rasters
rast.list$fun <- mean
rast.mosaic <- do.call(mosaic, rast.list)

##check projection
crs(rast.mosaic)

##define projection 
crs(rast.mosaic) <- "+proj=utm +zone=15 +ellps=WGS84 +datum=WGS84 +units=m +no_defs"

##check characteristics of mosaic
summary(rast.mosaic)

##save mosaic as tiff
r <- writeRaster(rast.mosaic, "Output/mosaic.tif", format="GTiff", overwrite=TRUE)


##plot the mosaic (we can open the mosaic in ArcMap)
plot(r)



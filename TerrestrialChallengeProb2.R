# Terrestrial wildlife challenge problem 2
# 8 March 2021
# EKG
# -----------------------------------------

# load in data file
library(adehabitatHR)
xy <- read.table(file="../Lion_data_utm.txt",
                      header=TRUE,
                      sep=",",
                      comment.char="#")
head(xy)
xysp <- SpatialPoints(xy)

cp <- mcp(xysp[,], percent=95)

class(cp)

require(rworldmap) # load package for maps
data("countryExData", envir = environment()) # load data to plot 
# plot worldmap with different colors
mapCountryData(joinCountryData2Map(countryExData), nameColumnToPlot = "EPI_regions", catMethod = "categorical", mapTitle = "Hello World!!!", 
               colourPalette = "rainbow", missingCountryCol = "lightgrey", addLegend = FALSE)
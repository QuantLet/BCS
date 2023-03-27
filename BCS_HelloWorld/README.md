[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="1100" alt="Visit QuantNet">](http://quantlet.de/)

## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **BCS_HelloWorld** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml


Name of Quantlet:      'BCS_HelloWorld'

Published in:          'Basic Elements of Computational Statistics'

Description:           'A world map as an illustrative example how powerful R is. 
	                This plot is supposed to show new users an interesting application of R.'

Keywords:              'plot, worldmap, data, colorsheme, Hello World'


Author[New]:            Johannes, Haupt

Submitted:             '2016-01-28, Christoph Schult'


Output:                'A world map in R.'

```

![Picture1](BCS_HelloWorld.png)

### R Code
```r

require(rworldmap) # load package for maps
data("countryExData", envir = environment()) # load data to plot 
# plot worldmap with different colors
mapCountryData(joinCountryData2Map(countryExData), nameColumnToPlot = "EPI_regions", catMethod = "categorical", mapTitle = "Hello World!!!", 
               colourPalette = "rainbow", missingCountryCol = "lightgrey", addLegend = FALSE)
```

automatically created on 2023-03-28
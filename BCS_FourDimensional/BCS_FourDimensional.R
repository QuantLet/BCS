# make sure the package is installed
# install.packages("lattice")
# install.packages("rgl")
library(lattice)
library(rgl)
graphics.off()

# Four-dimensional plot levelplot

levelplot(yield ~ site * variety | year, 
          data = barley, scales = list(alternating = T),
          shrink = c(0.3, 1), region = TRUE, cuts = 20,
          col.regions = topo.colors (100),
          par.settings=list(axis.text=list(cex=0.5)),      
          par.strip.text=list(cex=0.7), between=list(x=1), 
          aspect = "iso", colorkey = list(space = "top")) 




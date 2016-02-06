# make sure the package is installed
# install.packages("lattice")
require(lattice)

# Conditional density plots for chickwts dataset
# Chicken weights are plotted conditioned on their food.
denweight=densityplot(~ weight | feed,
                      data        = chickwts,
                      plot.points = F,
                      scales      = list(alternating=1),
                      ylab        = "Density")

# Grouped superposed density plots(chickwts)
denweight2=densityplot(~ weight, data=chickwts, groups = feed, 
                       plot.points = F, auto.key = list(columns = 3), ylab="Density")
graphics.off()
# Black and white settings

lattice.options(default.theme = modifyList(standard.theme(color = FALSE), 
                                           list(strip.background = list(col = "transparent"))))

# displaying more than one graph at once
print(denweight, position = c(0,0,1,1), split=c(1,1,2,1), more=TRUE)  # Feed as conditional variable
print(denweight2, position = c(0,0,1,1), split=c(2,1,2,1), more=TRUE) # Feed as grouped variable

# to set the color scheme to default
detach("package:lattice", unload=TRUE)
require(lattice)

# make sure the package is installed install.packages('lattice')
require(lattice)
graphics.off()

# Plots sepal appears on the y-axis and petal on the x-axis for each flower the sum of width and height are plotted

# Conditional Plots
plot1 = xyplot(Sepal.Length + Sepal.Width ~ Petal.Width + Petal.Length | Species, data = iris, auto.key = list(columns = 2, 
    lines = F, points = T), par.strip.text = list(cex = 0.75))  # size of the text in the plot

# Grouped Plots
plot2 = xyplot(Sepal.Length + Sepal.Width ~ Petal.Width + Petal.Length, groups = Species, data = iris, auto.key = list(columns = 3, 
    lines = F, points = T), par.strip.text = list(cex = 0.75))

# it is not possible to use layout or par to get multiple plots
print(plot1, position = c(0, 0, 1, 1), split = c(1, 1, 2, 1), more = TRUE)
print(plot2, position = c(0, 0, 1, 1), split = c(2, 1, 2, 1), more = TRUE) 
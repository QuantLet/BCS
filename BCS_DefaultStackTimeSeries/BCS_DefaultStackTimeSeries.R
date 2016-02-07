# make sure the package is installed install.packages('lattice')
library("lattice")
graphics.off()

# Time series plot
plot1 = xyplot(Nile)

# Time series cut-and-stack plots for further documentation see ?xyplot()
plot2 = xyplot(Nile, aspect = "xy", cut = list(number = 3, overlap = 0.1), strip = strip.custom(bg = "yellow", fg = "lightblue"))

# plots both graphs
print(plot1, position = c(0, 0, 1, 1), split = c(1, 1, 2, 1), more = TRUE)
print(plot2, position = c(0, 0, 1, 1), split = c(2, 1, 2, 1), more = TRUE)
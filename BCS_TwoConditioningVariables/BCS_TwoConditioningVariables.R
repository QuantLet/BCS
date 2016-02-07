# make sure the package is installed install.packages('lattice')
require("lattice")

# Conditional plot with two conditioning variables

# factorizing temperature into three categories
Temperature = equal.count(environmental$temperature, number = 3, overlap = 0)
# factorizing wind into four categories
Wind = equal.count(environmental$wind, number = 4, overlap = 0)

# plot with 12 panels for the two conditioning variables
xyplot(ozone ~ radiation | Temperature * Wind, data = environmental, as.table = T, par.strip.text = list(cex = 0.75), 
    par.settings = simpleTheme(pch = 20, col = "red3"), xlab = "Solar radiation in langley", ylab = "Average ozone concentration in ppb") 
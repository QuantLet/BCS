# Close windows
graphics.off()

# Set up graphic space
par(mfrow = c(1, 2), cex = 0.7, cex.axis = 1.8, cex.main = 2)

# set working directory and load library setwd('C:\\...')
library(copula)
library(lattice)

theta = 1  #Set theta [0,1]

# variables uniformly distributed:
uniclayMVD <- mvdc(claytonCopula(theta), margins = c("unif", "unif"), paramMargins = list(list(min = 0, max = 1), list(min = 0, 
    max = 1)))
uniclay <- rMvdc(uniclayMVD, n = 10000)

plot(uniclay, xlab = "", ylab = "", pch = 19, main = "Uniform")


# variables standard normally distributed:
normclayMVD <- mvdc(claytonCopula(theta), margins = c("norm", "norm"), paramMargins = list(list(mean = 0, sd = 1), list(mean = 0, 
    sd = 1)))
normclay <- rMvdc(normclayMVD, n = 10000)

plot(normclay, xlab = "", ylab = "", pch = 19, main = "Normal")
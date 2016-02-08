graphics.off()
library(copula)
layout(matrix(c(1, 1, 2, 3, 4, 5), 3, 2, byrow = T), TRUE)
par(pty = "s")

# bivariate normal copula with correlation 0.7 for the 2 variables
norm.2d.cop = normalCopula(param = 0.7, dim = 2)

# scatterplot of a pseudo random sample of two variables with a joint normal distribution
plot(rCopula(1000, norm.2d.cop), pch = 19, cex.axis = 1.5, cex.lab = 1.5, xlab = "x", ylab = "y")
# draws a three dimensional scatterplot of the two rv and their joint probability
persp(norm.2d.cop, pCopula, xlab = "x", ylab = "y", zlab = "F(x,y)")

# isoprobability lines for the two rv
contour(norm.2d.cop, pCopula, cex.axis = 1.5, cex.lab = 1.5, xlab = "x", ylab = "y")

# three dimensional scatterplot of the two rv and their joint density
persp(norm.2d.cop, dCopula, xlab = "x", ylab = "y", zlab = "f(x,y)")

# isodensity lines for the two rv
contour(norm.2d.cop, dCopula, cex.axis = 1.5, cex.lab = 1.5, xlab = "x", ylab = "y")

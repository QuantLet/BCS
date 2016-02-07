# make sure the package is installed install.packages('fMultivar')
require(fMultivar)

# defines how the plots will appear
layout(matrix(c(1, 2), 1, 2))
# vector of random variable
x = (-45:45)/20
# produces X with columns x and y
X = grid2d(x)
# bivariate normal distribution for x and y
z = pnorm2d(X$x, X$y, rho = 0.7)
# produces matrix Z with three columns (x,y,z) z is the pdf of y and x
Z = list(x = x, y = x, z = matrix(z, ncol = length(x)))
# 3D scatterplot of bivariate normal pdf
persp(Z, theta = -15, phi = 25, col = "steelblue")
# contour plot of Z
contour(Z, xlim = c(-2.5, 2.5), ylim = c(-2.5, 2.5), lwd = 4, col = heat.colors(80), nlevels = 10, cex.axis = 1.5, labcex = 1.7) 
 TRUE
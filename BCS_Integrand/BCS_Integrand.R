x = matrix(rep(seq(0, 1, length.out = 52), 52), 52)  # function argument x in [0,1]
y = t(x)  # function argument y in [0,1]
z = (1/3) * x^3 * (1/4) * y^4  # integrated function z

par.set = list(axis.line = list(col = "transparent"), clip = list(panel = "off"))  # for the wireframe plot

names(par.set) = c("axis.line", "clip")  # assigning names to each element of the list

require("lattice")  # required lattice package
wireframe(z ~ x * y, shade = F, aspect = 1, scales = list(col = "black", arrows = FALSE), drape = T, colorkey = T, screen = list(z = 30, 
    x = -80), par.settings = par.set, xlab = list("x", cex = 1.2), ylab = list("y", cex = 1.2), zlab = list("f(x,y)", 
    cex = 1.2))
# load required packages install.packages('Rglpk')
require("lattice")
require("Rglpk")  # package for constrained optimization

x = matrix(rep(seq(0, 25, length.out = 50), 50), 50)  # x vector
y = t(x)  # y vector
z = 2 * x + 4 * y  # function values

X = c(matrix(rep(seq(0, 20, length.out = 75), 75), 75))  # X vector for constraint
Y = c(15 - 0.75 * X)  # Y vector for constraint
Z = c(matrix(sort(rep(seq(0, 150, length.out = 75), 75)), 75))  # Z vector for constraint

# graphical parameters
par.set = list(axis.line = list(col = "transparent"), clip = list(panel = "off"))
names(par.set) = c("axis.line", "clip")

# Find optimum
fct = c(2, 4)  # the objective function 
st = matrix(c(3, 4), nrow = 1)  # constraints coefficients
leq = c("<=")  # kind of constraint
rhs = c(60)  # constraints vector
optimum = Rglpk_solve_LP(fct, st, leq, rhs, max = TRUE)
ptopt = c(optimum$solution[1], optimum$solution[2], optimum$optimum)

pts = rbind(cbind(X, Y, Z), ptopt)  # points for constraint hyperplane

########################################################################################### Plot of the linear programming problem #########################

wireframe(z ~ x * y, pts = pts, shade = F, aspect = 1, scales = list(col = "black", arrows = FALSE), drape = F, colorkey = F, 
    screen = list(z = 70, x = -90, y = 30), par.settings = par.set, xlab = list("x1", cex = 1.2), ylab = list("x2", cex = 1.2), 
    zlab = list("f(x1,x2)", cex = 1.2), panel.3d.wireframe = function(x, y, z, xlim, ylim, zlim, xlim.scaled, ylim.scaled, 
        zlim.scaled, pts, ...) {
        
        panel.3dscatter(x = pts[pts[, 3] <= 2 * pts[, 1] + 4 * pts[, 2], 1], y = pts[pts[, 3] <= 2 * pts[, 1] + 4 * pts[, 
            2], 2], z = pts[pts[, 3] <= 2 * pts[, 1] + 4 * pts[, 2], 3], xlim = xlim, ylim = ylim, zlim = zlim, xlim.scaled = xlim.scaled, 
            ylim.scaled = ylim.scaled, zlim.scaled = zlim.scaled, type = "p", pch = 19, col = rgb(1, 0.05, 0.1, alpha = 0.5), 
            cex = 0.1, .scale = TRUE, ...)
        
        panel.3dwire(x = x, y = y, z = z, xlim = xlim, ylim = ylim, zlim = zlim, xlim.scaled = xlim.scaled, ylim.scaled = ylim.scaled, 
            zlim.scaled = zlim.scaled, ...)
        
        panel.3dscatter(x = pts[pts[, 3] >= 2 * pts[, 1] + 4 * pts[, 2], 1], y = pts[pts[, 3] >= 2 * pts[, 1] + 4 * pts[, 
            2], 2], z = pts[pts[, 3] >= 2 * pts[, 1] + 4 * pts[, 2], 3], xlim = xlim, ylim = ylim, zlim = zlim, xlim.scaled = xlim.scaled, 
            ylim.scaled = ylim.scaled, zlim.scaled = zlim.scaled, type = "p", pch = 19, col = rgb(1, 0.05, 0.1, alpha = 0.5), 
            cex = 0.1, .scale = TRUE, ...)
        
        panel.3dscatter(x = pts[length(pts[, 1]), 1], y = pts[length(pts[, 1]), 2], z = pts[length(pts[, 1]), 3], xlim = xlim, 
            ylim = ylim, zlim = zlim, xlim.scaled = xlim.scaled, ylim.scaled = ylim.scaled, zlim.scaled = zlim.scaled, 
            type = "p", pch = 19, col = "blue", cex = 2, .scale = TRUE, ...)
    }) 
 TRUE
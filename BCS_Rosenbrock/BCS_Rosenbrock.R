# load required packages
require(lattice)     
require(neldermead)

# define Rosenbrock funcion to find minimum
fct = function(x){
  y = 100*(x[2] - x[1]^2)^2 + (1 - x[1])^2
}

# find minimum of the Rosenbrock function
answer = fminsearch(fun     = fct, 
                    x0      = c(-1.2, 1),
                    verbose = F) # optimization
pts = c(neldermead.get(answer, key = "xopt"),   
        neldermead.get(answer, key = "fopt"))   # optimal function value

# grid for the surface plot
ng = 33                                         # number of grid
x  = seq(-2, 2, length.out = ng)                # grid elements
y  = seq(-1, 3, length.out = ng)

fhat=function(x,y){
  v = numeric()
  v = (1 - x)^2 + 100*(y - x^2)^2
  return(v)
}
mygrid           = data.frame(expand.grid(x, y))
colnames(mygrid) = c("x", "y")
mygrid$z         = fhat(mygrid$x, mygrid$y)

# grphical parameters
par.set = list(axis.line = list(col="transparent"), clip = list(panel = "off"))
names(par.set) = c("axis.line", "clip")

# plot for the Rosenbrock function 





#           panel.3d.wireframe = function(x, y, z, xlim, ylim, zlim,
#                                         xlim.scaled, ylim.scaled,

#             panel.3dwire(x = x, y = y, z = z,                       # surface 3D plot 
#                          xlim = xlim, ylim = ylim, zlim = zlim,     # for the Rosenbrock function
#                          xlim.scaled = xlim.scaled, 
#                          ylim.scaled = ylim.scaled, 

#             panel.3dscatter(x = pts[1], y = pts[2], z = pts[3],     # minimum
#                             xlim = xlim, ylim = ylim, zlim = zlim, 
#                             xlim.scaled = xlim.scaled,
#                             ylim.scaled = ylim.scaled, 
#                             zlim.scaled = zlim.scaled,
#                             type="p", pch = 19, col = "red", 

#           })

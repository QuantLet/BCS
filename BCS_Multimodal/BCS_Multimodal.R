ng   = 33                     # number of grid
x    = seq(0,5,length.out=ng) # function argument x
y    = seq(0,5,length.out=ng) # function argument y
fhat = function(x,y){         # define the mutlivatiate function for the plot
   v = numeric()
   v = 0.03*sin(x)*sin(y)-0.05*sin(2*x)*sin(y)+0.01*sin(x)*sin(2*y)+0.09*sin(2*x)*sin(2*y)
   return(v)
}

mygrid           = data.frame(expand.grid(x,y)) 
colnames(mygrid) = c("x", "y")
mygrid$z         = fhat(mygrid$x, mygrid$y)

##############################################################################
################ Points for Maxima and Minima ################################
##############################################################################

# package implementing the BFGS method in R
#install.packages("optimx")
require(optimx)

# define the multivariate function for finding the optimal points
fkt = function (x){(0.03*sin(x[1])*sin(x[2])   -  
                    0.05*sin(2*x[1])*sin(x[2]) + 
                    0.01*sin(x[1])*sin(2*x[2]) + 
                    0.09*sin(2*x[1])*sin(2*x[2]))}
# maxima of the function
# maximum 1
max1  = optimx(c(2.1, 2.1), fkt, lower=c(2, 2), upper=c(3, 3),
        method = c("L-BFGS-B"), control = list(maximize = TRUE))
pmax1 = c(max1$p1, max1$p2, max1$value)

# maximum 2
max2 = optimx(c(.5, 4), fkt, lower = c(0, 3), upper = c(1, 5),
       method = c("L-BFGS-B"), control = list(maximize = TRUE))
pmax2 = c(max2$p1, max2$p2, max2$value)

# maximum 3
max3 = optimx(c(3.5, 4.1), fkt, lower = c(3.4, 3.5), upper = c(4.5, 4.5),
       method = c("L-BFGS-B"), control = list(maximize = TRUE))
pmax3 = c(max3$p1, max3$p2, max3$value)

# maximum 4
max4 = optimx(c(.5, .5), fkt, lower = c(.5, 0), upper = c(1.5, 1),
       method = c("L-BFGS-B"), control = list(maximize = TRUE))
pmax4 = c(max4$p1,max4$p2,max4$value)

# maximum 5
max5 = optimx(c(4, .5), fkt, lower = c(3, 0), upper = c(5, 1),
       method = c("L-BFGS-B"), control = list(maximize = TRUE))
pmax5 = c(max5$p1, max5$p2, max5$value)

# minima of the function

# minimum 1
min1 = optimx(c(.5, 2.1), fkt, lower = c(0, 1), upper = c(2, 3),
       method = c("L-BFGS-B"), control = list(maximize = F))
pmin1 = c(min1$p1, min1$p2, min1$value)

# minimum 2
min2 = optimx(c(2.5, 4.5), fkt, lower = c(2, 3.5), upper = c(3, 4.5),
       method = c("L-BFGS-B"), control = list(maximize = F))
pmin2 = c(min2$p1, min2$p2, min2$value)

# minimum 3
min3 = optimx(c(2.5,.5), fkt, lower = c(2,0), upper = c(3,1),
       method=c("L-BFGS-B"), control = list(maximize = F))
pmin3 = c(min3$p1, min3$p2, min3$value)

# minimum 4
min4 = optimx(c(4, 2.1), fkt, lower = c(3.5, 2), upper = c(4.5, 3),
       method = c("L-BFGS-B"), control = list(maximize = F))
pmin4 = c(min4$p1, min4$p2, min4$value)

# store all points in one matrix
pts  = rbind(pmax1,pmax2,pmax3,pmax4,pmax5,pmin1,pmin2,pmin3,pmin4) # points to add to the wireframe 

##############################################################################
################ Plot for the multivariate function ##########################
##############################################################################
require("lattice") # load required package
# set graphical parameters
par.set        = list(axis.line = list(col = "transparent"),
                      clip      = list(panel = "off"))
names(par.set) = c("axis.line", "clip")
# three dimensional plot for the multivariate function with its extrema
wireframe(mygrid$z ~ mygrid$x*mygrid$y, pts = pts, aspect = 1,
          scales = list(col = "black", arrows = FALSE), drape = T, 
          colorkey = F, screen = list(z = 70, x = -90, y = 30),
          par.settings = par.set, xlab = list("x", cex = 1.2), 
          ylab = list("y", cex = 1.2), zlab = list("f(x,y)", cex = 1.2),
          panel.3d.wireframe = function(x, y, z, xlim, ylim, zlim, xlim.scaled, 
                                        ylim.scaled, zlim.scaled, pts,...){ 
          panel.3dwire(x = x, y = y, z = z, xlim = xlim, ylim = ylim,        # surface plot for the function
                       zlim = c(min(pts[,3]), max(pts[,3])), 
                       xlim.scaled = xlim.scaled,
                       ylim.scaled = ylim.scaled, 
                       zlim.scaled = zlim.scaled, ...) 
          panel.3dscatter(x = pts[1:5, 1], y = pts[1:5, 2], z = pts[1:5, 3], # 3D points for the maxima
                          xlim = xlim, ylim = ylim, 
                          zlim = c(min(pts[,3]), max(pts[,3])), 
                          xlim.scaled = xlim.scaled,
                          ylim.scaled = ylim.scaled, 
                          zlim.scaled = zlim.scaled,
                          type = "p", pch = 16,
                          col = "blue", cex = 3, .scale=TRUE, ...)           
          panel.3dscatter(x = pts[6:9, 1], y = pts[6:9, 2], z = pts[6:9, 3], 
                          xlim = xlim, ylim = ylim, 
                          zlim = c(min(pts[,3]), max(pts[,3])), 
                          xlim.scaled = xlim.scaled,
                          ylim.scaled = ylim.scaled, 
                          zlim.scaled = zlim.scaled,
                          type = "p", pch = 16,
                          col = "red", cex = 2, .scale=TRUE, ...)
          })

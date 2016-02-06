require(rgl)                        # load required package rgl
y = z = x = rnorm(5)                # coordinates for the mid points of the spheres
r = runif(5)                        # radii for the different spheres
open3d()                            # open 3D device
spheres3d(x, y, z, r, col = "red3") # plots different spheres
k = select3d()                      # allows to select a region in an RGL scene
keep = k(x, y, z)                   # applies the selection function to all coordinates
rgl.pop()                           # clears all previous plots
spheres3d(x[keep], y[keep],         
          z[keep], r[keep],
          col = "blue3") 
spheres3d(x[!keep], y[!keep],       
          z[!keep], r[!keep],
          col = "red3")

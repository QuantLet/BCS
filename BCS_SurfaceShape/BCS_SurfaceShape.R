# surface3d
x = y = seq(-9, 9)  # define coordinates for the x and y axes
f = function(x, y) (x^2 - y^2)/10  # defines the function to compute the z values depending on x and y
z = outer(x, y, f)  # compute the z values for the grid of x and y
open3d()  # open 3D device
surface3d(x, y, z, back = "lines", col = rainbow(1000), alpha = 0.9)  # define color and transparency level
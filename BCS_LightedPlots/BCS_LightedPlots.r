# Define variables to plot
x = rnorm(3)
y = rnorm(3)
z = rnorm(3)

# rgl.spheres with default light
rgl.spheres(x, y, z, radius = runif(5), col = "red3", smooth = T)

# rgl.spheres without lighting
rgl.spheres(x, y, z, radius = runif(5), col = "red3", smooth = T)
rgl.clear(type = "lights")

# rgl.spheres with one light source
rgl.spheres(x, y, z, radius = runif(5), col = "red3", smooth = T)
rgl.light(theta = -90, phi = 50, ambient = "white", diffuse = "#dddddd", specular = "white")

# rgl.spheres with two light sources
rgl.spheres(x, y, z, radius = runif(5), col = "red3", smooth = T)
rgl.light(theta = 45, phi = 30, ambient = "#dddddd", diffuse = "#dddddd", specular = "white") 
 TRUE
graphics.off() 
#pdf("../BCS_Kernel_nhTemp.pdf", width = 8, height = 8) # save the plot to your file
par(cex = 1.5)
y = density(nhtemp, kernel = "epanechnikov") # density estimation for temperature
plot(y, main = "", lwd = 3)
#dev.off()
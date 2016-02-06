graphics.off()        # close all windows
par(mfrow = c(1, 2))

# rv chauchy distributed
z = seq(-5, 5, length = 300)                  

# pdf for the chauchy
plot(z, dcauchy(z, 0, 1), xlab = "z", 
     ylab = "pdf", type = "l", lwd = 1)       # mu = 0 & sd = 1
lines (z, dcauchy(z , 2, 1), col = "blue")    # mu = 2 & sd = 1
lines (z, dcauchy(z , -2, 1), col = "violet") # mu = -2 & sd = 1
lines (z, dcauchy(z , 0, 1.5), col = "green") # mu = 0 & sd = 1.5
lines (z, dcauchy(z , 0, 2), col = "red")     # mu = 0 & sd = 2

# cdf for the chauchy mu = 0 & sd = 1
# same order as above
plot(z, pcauchy(z, 0, 1), xlab = "z", 
     ylab = "cdf", type = "l", lwd = 1)       
lines (z, pcauchy(z , 2, 1), col = "blue")    
lines (z, pcauchy(z , -2, 1), col = "violet")
lines (z, pcauchy(z , 0, 1.5), col = "green")
lines (z, pcauchy(z , 0, 2), col = "red")

par(mfrow=c(1, 2))
# creates the rv
z = seq(-15, 15, length = 400)                        
# different standard deviations
s = c(1, 3, 6)                                        

# standard normal pdf
plot(z, dnorm(z, 0, s[1]), xlab = "z", ylab = "pdf",
     type = "l", lwd = 2, col = "red")                
# s=3
lines(z, dnorm(z, 0, s[2]), col = "green")            
# s=6
lines(z, dnorm(z, 0, s[3]), col = "blue")             

# same order of s as above
# standard normal cdf
plot(z, pnorm(z, 0, 1), xlab = "z", ylab = "cdf",
     type = "l", lwd = 2, col = "red")                
lines(z, pnorm(z, 0, s[2]), col = "green")            
lines(z, pnorm(z, 0, s[3]), col = "blue")             

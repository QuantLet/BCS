graphics.off()        # close all windows
par(mfrow = c(1, 2))

# number of observations stays the same
# 10 degrees of freedom for the chi-squared distribution
df = 10                                         
x = rchisq(500000, df)                           
norm = rnorm (500000, df, sqrt(2*df))


hist (x, breaks = 70,                                  
      col = "blue", angle = 45, main = "", xlab = "z",
      xlim = c(df-6*sqrt(df), df+6*sqrt(df)),          
      ylim = c(0,25000))                               # highest frequency for the normal distribution
hist (norm, breaks = 70, col = "white", add = TRUE)


# 150 degrees of freedom for the chi-squared distribution
df = 150                                                
x = rchisq(500000, df)
norm = rnorm (500000, df, sqrt(2*df))

hist (x, breaks = 70,
      col = "blue", angle = 45,main = "", xlab = "z",
      xlim = c(df-6*sqrt(df), df+6*sqrt(df)),
      ylim = c(0,25000))
hist (norm, breaks = 70, col = "white", add = TRUE)

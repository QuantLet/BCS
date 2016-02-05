# setting up the axis label size and margin (bottom, left, top, right) 

par(cex.lab = 1.7, cex.main = 2, mar = c(4.5,5,5,2)+0.1, mgp = c(3.2,1,0))

#set the values
n = 100
p = 0.5
s = 0:n

# Create a binomial distribution and plot it in lines
      f = dbinom(x = s, n, p)
plot(s, f, type = "h", xlab = "x", ylab = "Probability", main = "B(100, 0.5) vs. N(50, 25)", xlim = c(35,65))

# Create a normal distribution and add it to the plot in red
      x = seq(1, n, length = 1000)
   norm = dnorm(x, mean = 50, sd = 5)
   
lines(x, norm, col = "dark red", lwd = 2)

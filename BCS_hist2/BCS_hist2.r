# setting up the axis label size and margin (bottom, left, top, right)
par(cex.lab = 1.5, mai = c(b = 1, l = 1, t = 0.7, r = 0.5))

# histogram with relative frequencies with manual setting of intervals
hist(nhtemp, freq = F, breaks = seq(from = 47, to = 55, by = 0.5), main = "", ylab = expression(hat(f)(x)), xlab = expression(x %in% 
                                                                                                                                K[i])) 
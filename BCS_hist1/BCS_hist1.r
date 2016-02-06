# setting up the axis label size and margin (bottom, left, top, right)
par(cex.lab = 1.5, mai = c(b = 1, l = 1, t = 0.7, r = 0.5))
# histogram with relative frequencies
hist(nhtemp, freq = F, main = "", ylab = expression(hat(f)(x)), xlab = expression(x %in% K[i])) 
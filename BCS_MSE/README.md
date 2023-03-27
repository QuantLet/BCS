[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="1100" alt="Visit QuantNet">](http://quantlet.de/)

## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **BCS_MSE** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml


Name of Quantlet:              'BCS_MSE'

Published in:                  'Basic Elements of Computational Statistics'

Description:                   'The bias, variance and mean squared error of an estimator for a histogram with
                                origin x0 = 0 evaluated at x = 0.001 and X ~ N(0,1) is depicted in the plot. 
                                The binwidth minimizing  the MSE h MSE is depicted by a black point.'

Keywords:                      'mse, mean squared error, bias, variance, nonparametric, plot,
                                prediction accuracy, prediction'

Author[New]:                    Christoph Schult

Submitted:                     '2016-01-28, Christoph Schult'

Output:                        'One scatter plot for the MSE BIAS and Variance of an histogramm
                                estimator for the denisty of a standard normal distribution.'

```

![Picture1](BCS_MSE.png)

### R Code
```r

n = 10^3  # sample size
h = seq(0.1, 1, by = 1/n)  # vector of binwidths
x0 = 0  # starting point for histogram
x = x0 + 0.001  # point to evaluate MSE
j = floor((x - x0)/h + 1)  # bin to evaluate fhat
m = (j - 0.5) * h + x0  # midpoint of bin
fp = -m * dnorm(m)  # f'(m)
f = dnorm(x, 0, 1)  # f(x) for normal density
Bias = fp * (m - x)  # BIAS(fhat(x))
Var = f/(n * h)  # Var(fhat(x))
MSE = Bias^2 + Var  # MSE(fhat(x))
h[match(min(MSE), MSE)]  # optimal h for MSE

# find minimum mean squared error
MSE_min = c(h[match(min(MSE), MSE)], min(MSE))
ylim = c(min(Bias^2, Var, MSE), max(Bias^2, Var, MSE))

plot(h, MSE, type = "l", ylim = ylim, cex = 1, cex.axis = 1.3, cex.lab = 1.5, lwd = 2, ylab = "", xlab = "h")
lines(h, Bias^2, type = "l", col = "red", lwd = 2)
lines(h, Var, type = "l", col = "blue", lwd = 2)
points(MSE_min[1], MSE_min[2], col = "black", pch = 19, cex = 1.5)
legend(x = "topleft", legend = c("MSE", "Bias^2", "Variance", "h_MSE"), col = c("black", "red", "blue", "black"), lwd = 2, 
    lty = c(1, 1, 1, NA), pch = c(NA, NA, NA, 19), bty = "n", merge = F, y.intersp = 1, x.intersp = 0.5, seg.len = 0.5, 
    cex = 1.5)
```

automatically created on 2023-03-27
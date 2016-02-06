require(datasets)
require(class)
require(grDevices)
require(lattice)

### Simulated Process ###
n   = 50                         # sample size
Xis = rnorm(n)                   # realizations of X
E   = rnorm(n)                   # realizations of epsilon
RC  =function(x) sin(2*pi*x)-x^2 # regression curve
Yis =RC(Xis)+E                   # dependent variables

### knn regression function ###
knn.reg = function (x, xis, yis, k) {
  knn.reg = rep(NA,times=length(x))
  for (i in 1:length(x))
  {
    distances = abs(x[i]-xis)
    knn.reg[i] = mean(yis[order(distances)][1:k])
  }
  knn.reg}

### MAEleaveOneOut Function ###

SEkNN = function(k, x, y, p){           # squared error function
  yhat = knn.reg(x[p], x[-p], y[-p], k) # predicted y value
  e    = (yhat - y[p])^2                # squared error of prediction
  return(e)}                     

### Find k_CV ### 

listk  = matrix(0, n-1, n)                 # object for ks and es
for (k in 1:(n-1)){                        # loop for possible ks
  for (p in 1:n){                          # possible dropped obs.
    listk[k, p] = SEkNN(k, Xis, Yis, p)}}  # knn.reg required
MSEkNN = (n)^(-1) * rowSums(listk)         # Mean squared error
k_CV   = match(min(MSEkNN), MSEkNN)        # cross validated k
k_CV
k      = 1:49
### Plot ###

par(cex.axis = 1.5, cex.lab = 1.5, pch = 19, cex = 1)
plot(k,MSEkNN, type = "l", xlab = "k", ylab = "Mean Squared Error",
     col = rgb(0.1, 0.8, 0.9, alpha=0.7), lwd = 2)


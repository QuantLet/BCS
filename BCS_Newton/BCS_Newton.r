# install.packages('animation')
require(animation)  # package for illustration of newton procedure

# illustration plot for the newton method
newt = newton.method(FUN = function(x) x^2 - 4, init = 10, rg = c(-1, 10), tol = 0.001, main = "", interact = F, col.lp = c("blue", 
    "red", "red"))
# added points
newt$root  # root
newt$value  # function value at the root 
 TRUE
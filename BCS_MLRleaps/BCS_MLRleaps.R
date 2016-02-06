install.packages("MASS")  # install package to get dataset
data(UScereal, package = "MASS")  # load the dataset

fit = lm(calories ~ protein + fat + carbo + sugars, data = UScereal)
# fit the regression model

install.packages("leaps")  # install package for regsubsets function
library("leaps")  # load the library for regsubsets function
subset = regsubsets(calories ~ protein + fat + carbo + sugars, data = UScereal, nbest = 3)
# fit lm to all possible regresiion subsets
install.packages("car")  # install package to plot the result
library("car")  # load package to plot the result
dev.new()
subsets(subset, statistic = "rsq")  # display result (R^2) for all regression subsets 
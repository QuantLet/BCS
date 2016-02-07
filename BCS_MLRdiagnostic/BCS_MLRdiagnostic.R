data(UScereal, package = "MASS")  # load the dataset

fit = lm(calories ~ protein + fat + carbo + sugars, data = UScereal)
# fit the regression model

dev.new()
layout(matrix(c(1, 2, 3, 4), 2.1, 2))  # display 4 graphics in one plot
plot(fit)  # display diagnostic plots 
 TRUE
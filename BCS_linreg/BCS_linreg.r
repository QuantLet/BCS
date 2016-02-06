# In order to use the variable of the 'longley' data (available data set in R) directly use attach()
attach(longley)

# plotting 'Gross national Product' against the 'number of employed people' col=' ' specifies the color of the dots
# and pch specifies the dots
plot(Employed, GNP, col = "red", pch = 16)

# adding a least-square regression line to the plot; the function lm is used to calculate a linear model
abline(lm(GNP ~ Employed), col = "blue")

# using a grid ; specifying strength of grid with 'lwd= '
grid(lwd = 2) 
# Regression with one covariate
data(longley)  # load longley dataset
attach(longley)  # attach the longley dataset
rp.regression(GNP, Unemployed, line.showing = T, panel.plot = F)
# install.packages("rpanel")
require(rpanel)                                     # load required package rpanel
data(longley)                                       # load dataset longley
attach(longley)                                     # attach dataset longley
rp.regression(cbind(GNP, Armed.Forces), Unemployed, panel.plot = F) # regression 3D plot

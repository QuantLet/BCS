# Normal density fit
require(rpanel)  # load required package
data(trees)  # load required data
attach(trees)  # attach required data
y = Height  # define y as height
rp.normal(y, panel.plot = T)  # plot interacitve histogram 
 TRUE
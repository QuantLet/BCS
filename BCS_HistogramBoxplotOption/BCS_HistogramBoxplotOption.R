# Load tcltk and rpanel packages (have to be installed)
library(tcltk)
library(rpanel)

# Load the trees data (included in R)
attach(trees)

# Define action function that is later called by the control panel
data.plotfn = function(panel){
if (panel$plot.type == "histogram")     # if the variable plot.type equals "histogram"
hist(panel$y)                           # then plot histogram of the variable panel$y
else if (panel$plot.type == "boxplot")  # if the variable plot.type equals "boxplot"
boxplot(panel$y)                        # plot boxplot of the variable panel$y
panel
}

# Create the control panel
panel <- rp.control(y = Height)         # define Height to be the variable used by action function

# Add a listbox to the control panel
rp.listbox(panel,                       
plot.type,                              
c("histogram", "boxplot"),              
action = data.plotfn,                   
title = "Plot type")                    # add a title to the listbox

# Load tcltk and rpanel packages (have to be installed)
require(tcltk)
require(rpanel)

# Load trees data included in R
attach(trees)

# Define the range of the variable Height
r = diff(range(Height))

# Define function for producing a density plot function takes 'panel' as argument
density.draw = function(panel) {
    plot(density(panel$y, panel$sp), main = "Trees height density estimate")  # define title of the plot
    panel
}

# Create the control panel
density.panel = rp.control("density estimation", y = Height, sp = r/8)  # define variables that shall be used by the panel object (= the density plot)

# Add a slider to the panel window
rp.slider(density.panel, sp, from = r/40, to = r/2, action = density.draw, title = "Bandwidth")  # add a title to the slider

# Add a widget with '+' and '-' buttons
rp.doublebutton(density.panel, sp, step = 1.03, log = T, range = c(r/50, NA), title = "Bandwidth", action = density.draw)  # call the function density.draw
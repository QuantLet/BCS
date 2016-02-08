# Load tkrplot, tcltk and rpanel packages (have to be installed)
require(tkrplot)
require(tcltk)
require(rpanel)

# Load the trees data (included in R)
attach(trees)

# Define r to be range of variable Height
r = diff(range(Height))

if (interactive()) {
    # use the following code only in an interactive R session specify a function to be called by rp.tkrplot
    draw = function(panel) {
        plot(density(panel$y, panel$sp), col = "red", main = "")  # define color and title of plot
        panel
    }
    redraw = function(panel) {
        # specify a function to be called if double button widget is used
        rp.tkrreplot(panel, density)  # replot the plot called 'density' in the window 'panel'
        panel
    }
    rpplot = rp.control(title = "Demonstration of rp.tkrplot", y = Height, sp = r/8)  # variables controlled by control panel
    
    rp.tkrplot(rpplot, density, draw)  # specify the function to be called to draw the plot
    
    rp.doublebutton(rpplot, sp, 1.03, log = T, range = c(r/50, NA), title = "Bandwidth", action = redraw)  # call the function redraw if widget is used
}

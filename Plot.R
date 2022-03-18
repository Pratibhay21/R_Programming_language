# File:   Plot.R
# Course: R: An Introduction (with RStudio)

#get help in anything in R command###################
?data  #example
?library   #example

#list all the available datasets#######################

data() #list the datasets in loaded packages

# LOAD DATASETS PACKAGES ###################################

library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################

head(iris)

# PLOT DATA WITH PLOT() ####################################

?plot  # Help for plot()    
##plot() -this command is adaptive i.e we don't have to specify which kind of plot is needed,it automatically figures it out
##plot() -automatically chooses what to do

plot(iris$Species)  # Categorical variable(column-specific)
plot(iris$Petal.Length)  # Quantitative variable
plot(iris$Species, iris$Petal.Width)  # Cat x quant
plot(iris$Petal.Length, iris$Petal.Width)  # Quant pair
plot(iris)  # Entire data frame

# Plot with options
plot(iris$Petal.Length, iris$Petal.Width,
  col = "#cc0000",  #color Hex code for datalab.cc red
  pch = 19,         # Use solid circles for points
  main = "Iris: Petal Length vs. Petal Width",
  xlab = "Petal Length",
  ylab = "Petal Width")

# PLOT FORMULAS WITH PLOT() ################################

plot(cos, 0, 2*pi) #plots sine wave with 2 intervals
plot(sin, 0, 2*pi)
plot(tan, 0, 2*pi)
plot(sin, 0, 6*pi) #plots sine wave with 6 intervals
plot(exp, 1, 10)
plot(dnorm, -3, +3)

# Formula plot with options
plot(dnorm, -3, +3,
  col = "#cc0000",
  lwd = 7,   ##line width
  main = "Standard Normal Distribution",
  xlab = "z-scores",
  ylab = "Density")

# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)

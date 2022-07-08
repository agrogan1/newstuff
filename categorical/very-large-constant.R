#' ---
#' title: "Visualizing the Cause of a Very Large Constant"
#' author: Andy Grogan-Kaylor
#' output:
#'   html_document:
#'     highlight: haddock
#' ---
#'

# regression line

x <- seq(0, 10, .1) # random sequence of x's

y <- -1 * x + 5 # generate y

plot(x, y, 
     col = "red", 
     type = "l",
     main = expression(paste(beta[0], " is outside range of observed data")),
     xlab = "x", 
     ylab = "log odds of y")

# simulate our observed data

x2 <- seq(5, 6, .1) # x2 (observed data points)

e <- rnorm(length(x2), 0, 1) # error term

y2 <- -x2 + 5 + e # generate y2

points(x2, y2, 
       col = "purple", 
       pch = 19)




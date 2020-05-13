# To check the directory 
getwd()

# To check what is in my workspace
ls()

# Defining a function : Here finding the mean of 100 random variables
myfunction <- function() {
  x <- rnorm(100)
  mean(x)
}

second <- function(x) {
  x+ rnorm(length(x))
}

# to get the name of the file
dir()



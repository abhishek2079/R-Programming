### Data Types ###

## Atomic classes: numeric, logical, character, integer, complex

## Vectors and list

#defining a vector
x <- vector('numeric', length = 8)

x <- 1:20
# using concat to crete vectors
x <- c(0.5, 0.6)
y <- c(T, F)
z <- c('a', 'b', 'c')

# Note :  Vectors can't take multiple types of data types in a single vector. So it converts the data type to other.
y <- c("a", TRUE)
y <- c(T, 3)

# To check the type of object or class
class(x)

# to convert from class to another
as.character(x)
as.logical(x)
as.numeric(z)

#defining a list
x <- list(1, "a", T, 1+4i) # list can take multiple types of data types in a single list
y <- list(1:4, "a")


## Matrix

m <- matrix(nrow = 3, ncol = 3) # returns a 2 by 3 matrix with NA as its elements
dim(m) # returns the dimentions of the matrix
attributes(m) # returns the attributes of the matrix
m <- matrix(1:6, nrow = 2, ncol=3) # here numbers from 1 to 6 are added to the matrix column wise

# other way to crete a matrix:
m <- 1:9
dim(m) <- c(3,3)
m # here by changing a 1D vector to 2D vector , we crete a matrix

# column and row binding
x<-1:3
y<-10:12
cbind(x,y) # two vectors are binded coulmn wise
rbind(x,y) # bined rwo wise

## Factors
# they are used to represent categorical data. They are like integer vectors where each integer has a label.

x <- factor(c('yes', 'yes', 'no', 'yes', 'no'))
x # returns the factors and levels. # note:  base levels are ordered in alphabetical order
table(x) # gives the summary of a catagorical data set
unclass(x) # shows underneath how factors are represented by

# to set the order of the levels :
x <- factor(c('yes', 'yes', 'no', 'yes', 'no'), levels = c('yes', 'no'))
x


## Missing values
# NA is a missing numeric value
# NaN can be anything
# A NaN value is also NA ,but converse isnt true

x <- c(1,2,NA, 10,3)
is.na(x) # returns a logical value shwoing if NA value exist or not
is.nan(x)
y <- c(1, 2, NA, NaN, 10)
is.nan(y)
is.na(y)


## Data Frames
# used to store tabular data

row.names(cars) # returns all the value of rows in col1
data.matrix(cars) # converting df to matrix

# creating a data frame
x<- data.frame(ID.No = 1:4, Name = c('Abhishek', 'Anjan', 'Arjun', 'Ullas'), Graduated = c(F, T, T, F))
x
nrow(x)
ncol(x)


## Name attribute
# R objects can also have names.
x<- 1:3
names(x) # returns null because they dint have any name yet.
names(x)<- c('foo', "bar", 'norf') # assigning name to each objects in a vector
x # returns objects with its name
names(x) # returns the names 

# lists can also have names
x <- list(a=1, b=2, c=3) # assigning abc to numbers
x

# matrices too
m <-  matrix(1:4, nrow=2, ncol=2)
m
dimnames(m) # returns NULL , since no names yet
dimnames(m) <- list(c("a", "b"), c("c","d")) # assigning two vectors in the list, since its gonna add column wise, 1st vec is assigned to row names and 2nd vec to col names
m # returns with name


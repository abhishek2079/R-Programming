### Textual Formats 
#We can convert tables or df to textual formats
## Dput-ting and Dget-ting R objects and 
y <- data.frame(a=1, b = "a")
y
dput(y) # dput funt is used to put a single object to a file # Returns the textual format
dput(y, file = 'y.R')
new.y <- dget('y.R')
new.y
# so dput fuction essesntially writes R code , which can be used to reconstruct an R object using dget.


##Dumping with R objects
x <- 'foo'
y <- data.frame(a=1, b='a')
dump(c('x','y'), file = 'data_dumped.R') # dump fuct is used to dump multiple objects to a single file
rm(x,y) # removes x,y variables
y #  Thus shows an error that 'y' is not found
source('data_dumped.R') # source is used to call the R code from the file of interest
y # shows the values :)
x

# Note: for reading a larger datasets with read.table, use ColClasses argument.


### Connections : Interface to the outside world
#Data are read in using connection interface. So when we use read.table , we pass a name of the file with it. What happens behind the scences is it opens up a file connectionns to that file and then read from that file connections.

str(file) # returns the arguments of the file

con <- url('http://www.jhsph.edu', 'r') # opens the connection between the url and con
x <- readLines(con) # stores each line to x
head(x)




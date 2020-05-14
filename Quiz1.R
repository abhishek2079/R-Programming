x <- read.csv('D:/Courses/R/R Programming/hw1_data.csv') # extracting the file
x 


nrow(x) #How many observations (i.e. rows) are in this data frame?



tail(x,2) #Extract the last 2 rows of the data frame



x[47,] #What is the value of Ozone in the 47th row?



#How many missing values are in the Ozone column of this data frame?
x$Ozone
table(is.na(x$Ozone))



#What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
good <- complete.cases(x)
good
y = x[good,]
y
mean(y$Ozone)



#Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
a <- y$Ozone >31 & y$Temp >90
a
sort <- y[a,]
sort
mean(sort$Solar.R)



#What is the mean of "Temp" when "Month" is equal to 6?
b <- y$Month==6
month_six <- y[b,]
month_six
mean(month_six$Temp)




#What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
c <- y$Month==5
month_five <- y[c,]
month_five
max(month_five$Ozone)

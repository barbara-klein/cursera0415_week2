hw1_data <- read.csv("~/Desktop/coursera0415/hw1_data.csv")
View(hw1_data)

#check the data 
head(hw1_data)
str(hw1_data)


#the column names of the dataset
names(hw1_data)

#Extract the first 2 rows of the data frame and print them to the console
head(hw1_data,2)

#Extract the last 2 rows of the data frame and print them to the console
tail(hw1_data,2)

# value from row 47th in column 1
hw1_data[47, 1]

#How many missing values are in the first column of this data frame
# look first at the entire column 
hw1_data[, 1]

# specify how many NA are TRUE 
is.na(hw1_data[, 1])

# count NAs
sum(is.na(hw1_data[, 1]))

# calculate mean for column 1 but exclude missing value 
mean(hw1_data[, 1], na.rm=TRUE)

#Extract the subset of rows of the data frame where Ozon value > 31 and Wind values > 90, calculate the mean of Solar.R in this subset?

##z <- x[**rows you want to keep**, **columns you want to keep**]

# first make a subset for ozon > 31
ozon <- hw1_data[hw1_data$Ozone > 31, 1]
mean(ozon, na.rm=TRUE)

#second make a subset of temp > 90
temp <- hw1_data[hw1_data$Temp > 91, 4]

# combinde fisrt and second
hw1_data$Ozone > 31 & hw1_data$Temp > 90

#calculate mean of Solar 
mean(hw1_data$Solar.R[hw1_data$Ozone > 31 & hw1_data$Temp > 90], na.rm=TRUE)

#calculate mean Tmep for month 6
mean(hw1_data$Temp[hw1_data$Month == 6])

# select Ozone column and filter condition
max(hw1_data$Ozone[hw1_data$Month == 5], na.rm=TRUE)




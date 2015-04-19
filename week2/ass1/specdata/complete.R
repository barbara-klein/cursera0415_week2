## Part 2
# Write a function that reads a directory full of files and reports the number 
# of completely observed cases in each data file. The function should return 
# a data frame where the first column is the name of the file and the second 
# column is the number of complete cases. 
# A prototype of this function follows:

complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        specdata <- dir(directory, pattern = ".csv", recursive = TRUE, full.names = TRUE)[id]
        sub.specdata <- lapply(specdata, read.csv, header = TRUE, sep = ",")
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
        
        nobs <- unlist(lapply(sub.specdata, function(f){
                sum(complete.cases(f))}
        ))
        
        df <- data.frame(id, nobs)
        return(df)
}



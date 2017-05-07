#cleaning R
rm(list = ls(all = T))


#loading required packages
library("data.table")
library("plyr")
library("dplyr")

#create and move to a dedicated directory for the project
mainDir <- paste(getwd(), "/Getting_and_Cleaning_Data", sep = "")
if(!getwd() == mainDir){
    dir.create(mainDir)
}
setwd(mainDir)

#making writing to codebook easy
CodeBook <- function(...){
    cat(..., "\n", file = paste(mainDir, "/CodeBook.md", sep = ""), append = T, sep = "")
}

#Create the CodeBook
CodeBook("# Code Book")


#download data, unzip it and loading it into R
    CodeBook("## Actions")
    CodeBook("* download the file data.zip")
url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "data.zip")
    CodeBook("* unzipping file to sub directory UCI HAR Dataset")
unzip("data.zip")
setwd("./UCI HAR Dataset")
    CodeBook("* loading data to R")
features <- read.table("features.txt")
subjectTrain <- read.table("./train/subject_train.txt")
xTrain <- read.table("./train/X_train.txt")
yTrain <- read.table("./train/y_train.txt")
subjectTest <- read.table("./test/subject_test.txt")
xTest <- read.table("./test/X_test.txt")
yTest <- read.table("./test/y_test.txt")

#Assignmet 1: merging training and test data sets to one data set
    CodeBook("* merging subjet data")
subjectData <- rbind(subjectTest, subjectTrain)
rm(subjectTest)
rm(subjectTrain)
    CodeBook("* mering x data")
xData <- rbind(xTest, xTrain)
rm(xTest)
rm(xTrain)
    CodeBook("* merging y data")
yData <- rbind(yTest, yTrain)
rm(yTest)
rm(yTrain)
    CodeBook("* renaming: subject is a list of all subjects, activity: list of all activities (unnamed yet), features$V2: all of the measured catagories")
names(subjectData) <- c("subject")
names(xData) <- features$V2
names(yData) <- c("activity")
rm(features)

#putting it all together
    CodeBook("* merging all of the coulomns to single data frame named Data")
Data <- cbind(subjectData, yData)
Data <- cbind(Data, xData)
rm(subjectData)
rm(yData)
rm(xData)

#Assignment 2: extract mean and Standard Deviation
    CodeBook("* creating a vector containg all relevant mean values")
mean <- grep("mean()", names(Data), value = F, fixed = T)
mean <- append(mean, 471:444)
mean <- append(mean, 555:559)
meanMat <- Data[mean]
CodeBook("* creating a vector containg all standara deviation values")
SD <- grep("std()", names(Data), value = F)
SDMat <- Data[SD]


#Assignment 3: giving descriptive activity names
    CodeBook("* reanaming eache activity in correlation to the attached data code book")
Data$activity <- as.character(Data$activity)
Data$activity[Data$activity == 1] <- "walking"
Data$activity[Data$activity == 2] <- "walking upstairs"
Data$activity[Data$activity == 3] <- "walking downstairs"
Data$activity[Data$activity == 4] <- "sitiing"
Data$activity[Data$activity == 5] <- "standing"
Data$activity[Data$activity == 6] <- "laying"

#Assingment 4: descriptive variable names
    CodeBook("* giving a number to each subject that participated")
numVec <- c(1:30)
for(i in numVec){
    Data$subject[Data$subject == i] <- paste("subject", as.character(numVec[i], sep = " "))
}
Data$subject <- as.factor(Data$subject)
rm(numVec)
rm(i)

    CodeBook("* naming each tested variable according to the data code book")
names(Data) <- gsub("^t", "time", names(Data))
names(Data) <- gsub("^f", "frequency", names(Data))
names(Data) <- gsub("Acc", "Accelerator", names(Data))
names(Data) <- gsub("Mag", "Magnitude", names(Data))
names(Data) <- gsub("Gyro", "Gyroscope", names(Data))

#Assignment 5: create a second, independent tidy data set 
DataAsDataTable <- data.table(Data)
    CodeBook("* creating a second, independent tidy data set with the average of each variable for each activity and each subject ")
tidyData <- DataAsDataTable[, lapply(.SD, mean), by = 'subject,activity']
setwd("..")
    CodeBook("* saving the refined dataset as a .txt file")
write.table(tidyData, file = "refinedData.txt", row.names = F)

#script finished, writing to codebook
CodeBook("") 
CodeBook("## tidy data variables\n")
CodeBook("### descriptive columns\n")
CodeBook("Variable name  | Description")
CodeBook("---------------|------------")
CodeBook("`subject`      | The number of the subject (1-30)")
CodeBook("`activity`     | Name of activity measured")

CodeBook("### data columns\n")
CodeBook("Variable name  | Description")
CodeBook("---------------|------------")
tidyColumns <- names(tidyData)[3:68]
for(tdc in tidyColumns){
    CodeBook("`",tdc,"`   | the average value for this feature, num (range: -1:1)")
}

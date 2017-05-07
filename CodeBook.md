# Code Book
## Actions
* download the file data.zip
* unzipping file to sub directory UCI HAR Dataset
* loading data to R
* merging subjet data
* mering x data
* merging y data
* renaming: subject is a list of all subjects, activity: list of all activities (unnamed yet), features$V2: all of the measured catagories
* merging all of the coulomns to single data frame named Data
* creating a vector containg all relevant mean values
* creating a vector containg all standara deviation values
* reanaming eache activity in correlation to the attached data code book
* giving a number to each subject that participated
* naming each tested variable according to the data code book
* creating a second, independent tidy data set with the average of each variable for each activity and each subject 
* saving the refined dataset as a .txt file

## tidy data variables

### descriptive columns

Variable name  | Description
---------------|------------
`subject`      | The number of the subject (1-30)
`activity`     | Name of activity measured
### data columns

Variable name  | Description
---------------|------------
`timeBodyAccelerator-mean()-X`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-mean()-Y`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-mean()-Z`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-std()-X`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-std()-Y`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-std()-Z`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-mad()-X`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-mad()-Y`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-mad()-Z`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-max()-X`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-max()-Y`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-max()-Z`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-min()-X`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-min()-Y`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-min()-Z`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-sma()`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-energy()-X`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-energy()-Y`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-energy()-Z`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-iqr()-X`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-iqr()-Y`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-iqr()-Z`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-entropy()-X`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-entropy()-Y`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-entropy()-Z`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-arCoeff()-X,1`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-arCoeff()-X,2`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-arCoeff()-X,3`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-arCoeff()-X,4`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-arCoeff()-Y,1`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-arCoeff()-Y,2`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-arCoeff()-Y,3`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-arCoeff()-Y,4`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-arCoeff()-Z,1`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-arCoeff()-Z,2`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-arCoeff()-Z,3`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-arCoeff()-Z,4`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-correlation()-X,Y`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-correlation()-X,Z`   | the average value for this feature, num (range: -1:1)
`timeBodyAccelerator-correlation()-Y,Z`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-mean()-X`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-mean()-Y`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-mean()-Z`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-std()-X`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-std()-Y`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-std()-Z`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-mad()-X`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-mad()-Y`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-mad()-Z`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-max()-X`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-max()-Y`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-max()-Z`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-min()-X`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-min()-Y`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-min()-Z`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-sma()`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-energy()-X`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-energy()-Y`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-energy()-Z`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-iqr()-X`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-iqr()-Y`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-iqr()-Z`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-entropy()-X`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-entropy()-Y`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-entropy()-Z`   | the average value for this feature, num (range: -1:1)
`timeGravityAccelerator-arCoeff()-X,1`   | the average value for this feature, num (range: -1:1)

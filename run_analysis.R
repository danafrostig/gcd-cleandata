## DF2017

## loads libraries
library(dplyr)

## downloads and unzips the data file if it does not already exist
zUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zFile <- "UCI HAR Dataset.zip"

if (!file.exists(zFile)) {
  download.file(zUrl, zFile, mode = "wb")
}

if (!file.exists("UCI HAR Dataset")) {
  unzip(zFile)
}

## reads training data
train <- read.table(file.path("UCI HAR Dataset", "train", "X_train.txt"))
trainSub <- read.table(file.path("UCI HAR Dataset", "train", "subject_train.txt"))
trainAct <-  read.table(file.path("UCI HAR Dataset", "train", "y_train.txt"))

## reads test data
test <- read.table(file.path("UCI HAR Dataset", "test", "X_test.txt"))
testSub <- read.table(file.path("UCI HAR Dataset", "test", "subject_test.txt"))
testAct <-  read.table(file.path("UCI HAR Dataset", "test", "y_test.txt"))

## reads features data
feat <- read.table(file.path("UCI HAR Dataset", "features.txt"), as.is = TRUE)

## reads activity labels data
actLabels <- read.table(file.path("UCI HAR Dataset", "activity_labels.txt"))

## merges the training and the test sets to create one data set
allTrain <- cbind(trainSub, train, trainAct)
allTest <- cbind(testSub, test, testAct)
allBoth <- rbind(allTrain, allTest)

## assigns column names to allBoth
colnames(allBoth) <- c("subject", feat[,2], "activity")

## extracts only the measurements on the mean and standard deviation for each measurement.
cols <- grepl("[Mm]ean|std|subject|activity", colnames(allBoth))
allBoth <- allBoth[, cols]

## uses descriptive activity names to name the activities in the data set
allBoth$activity <- factor(allBoth$activity, levels = actLabels[,1], labels = actLabels[,2])

## appropriately labels the data set with descriptive variable names
allCols <- colnames(allBoth)

allCols <- gsub("(\\(\\))", "", allCols)
allCols <- gsub("-", "", allCols)
allCols <- gsub("mean", "Mean", allCols)
allCols <- gsub("std", "StdDev", allCols)
allCols <- gsub("^(t)", "time", allCols)
allCols <- gsub("^(f)", "freq", allCols)
allCols <- gsub("gravity", "Gravity", allCols)
allCols <- gsub("BodyBody", "Body", allCols)

colnames(allBoth) <- allCols

## creates a second, independent tidy data set with the average of 
## each variable for each activity and each subject

allAvgs <- allBoth %>%
            group_by(subject, activity) %>%
            summarize_all(funs(mean))

## writes tidy data text file
write.table(allAvgs, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)




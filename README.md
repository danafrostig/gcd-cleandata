Getting and Cleaning Data Course Project
----

## Repo contents
This repository contains:

* ```README.md``` - overview of project
* ```run_analysis.R``` - R script which reads data and creates tidy data set
* ```CodeBook.md``` - CodeBook includes description of data

## Overview
This project's purpose is to demonstrate abilities in collecting and cleaning datasets.

## The Data
Data used was the **Human Activity Recognition Using Smartphones Data Set** provided by UCI Machine Learning Repository. See <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#> for more information on the data used for the project. 

## Project Instructions
Create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Creating the Tidy Data set
Run the ```run_analysis.R``` R script to create the tidy data set. The R script:

* downloads the data file (if it is not downloaded already)
* reads the data
* merges the training and test sets to create one dataset
* uses descriptive activity names to name the activities and appropriately labels the variable names
* creates a tidy data set with average of each variable for each activity and subject

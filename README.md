Read Me
=======================

This is a repository for Cousera's Getting and Cleaning Data peer assessment project. The main purpose of this repository is to provide a script (run_analysis.R) that manipulates the [Human Activity Recognition using smartphones data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) in order to get a tidy data set by executing the following transformations:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive activity names. 
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Contents
According to [The Leek group guide to data sharing](https://github.com/jtleek/datasharing) this repository provides:

1. The raw data (UCI HAR Dataset folder)
2. A tidy data set (dataset.csv.txt)
3. A codebook describing each variable and its values in the tidy data set (CodeBook.md).
4. An explicit and exact recipe to go from 1 to 2,3. (run_analysis.R)
5. Two additional R file with helper functions for run_analysis.R

## How to recreate dataset.csv.txt

In order to recreate the data set you need to:

1. Download this repository using git
2. Point your R working directory to the path of the downloaded repository. (Using setwd directive or, in case of rstudio, by clicking Session -> Set Working Directory -> Choose Directory...)
3. Run source("run_analysis.R")

This will recreate dataset.csv.txt by using the raw data set files in "UCI HAR dataset" directory.

## What this script does

1. Loads training and test features, labels and subject from /UCI HAR Dataset/train/ and /UCI HAR Dataset/test/ directories.
2. Merges training and test features into a data frame, training and test labels into another data frame and training and test subjects into another data frame.
3. Parses /UCI HAR Dataset/features.txt file and add features names to the features data frame.
4. Select only those features that measures means or standard deviations and creates a new features data frame with only those features.
5. Parse /UCI HAR Dataset/activity_labels.txt and replaces labels data frame code values with their text version.
6. Uses regular expressions to replace feature data frame column names with better one by expanding abbreviations to complete words.
7. Joins subject and labels data frames into a single one and add the right column names.
8. Merges the data frame created in 7 with the features. 
9. Dump the tidy data set to dataset.csv.txt file.





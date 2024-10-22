CodeBook: Human Activity Recognition using smartphones data set for cleaning and getting data course 
=======================

The foundations of this data set are the test and training data provided by the [Human Activity Recognition using smartphones data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Note: For the purpose of this analysis we did not considered the inertial signals measurements provided in the homonimous folder, only the following files were taken into account for building this data set: UCI HAR Dataset/train/X_train.txt, UCI HAR Dataset/train/y_train.txt, UCI HAR Dataset/train/subject_train.txt, UCI HAR Dataset/test/X_test.txt, UCI HAR Dataset/test/y_test.txt and UCI HAR Dataset/test/subject_test.txt, UCI HAR Dataset/activity_labels.txt and UCI HAR Dataset/features.txt. 

## Data set

The point of departure of this data set is the result of merging test and train data into three single datasets: x, y and subject. Then, the 561 measurements was simplified to 86 by leaving only those measurements that measured a mean or an standard deviation.  

## Data set variable names

The first two columns represent the subject and the activity. 

* Subject: Unique id that identifies the study participant (1-30)
* Activity: Describes the measured activity. (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

The rest of the columns are the featured extracted from the original data set. Plearse read the following section for its interpretation.

## Features 

As noted in the original dataset, the features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAccelerometer-XYZ and tGyroscope-XYZ. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccelerometerJerkSignals-XYZ and tBodyGyroscopeJerkSignals-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccelerometerMagnitude, tGravityAccelerometerMagnitude, tBodyAccelerometerJerkSignalsMagnitude, tBodyGyroscopeMagnitude, tBodyGyroscopeJerkSignalsMagnitude). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccelerometer-XYZ, fBodyAccelerometerJerkSignals-XYZ, fBodyGyroscope-XYZ, fBodyAccelerometerJerkSignalsMagnitude, fBodyGyroscopeMagnitude, fBodyGyroscopeJerkSignlasMagnitude. (Note the 'f' to indicate frequency domain signals). 

For a detailed description about the measurements and observations please review the features_info.txt in "UCI HAR dataset"" directory. For this data set we only selected those features that measured means or standard deviations and the feature names were replaced by their full words instead of using abbreviations, except for time and frequency domain abbreviations measurements that were left as "t" for time and "f" for frequency and '-XYZ' that are used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAccelerometer-XYZ
* tGravityAccelerometer-XYZ
* tBodyAccelerometerJerkSignals-XYZ
* tBodyGyroscope-XYZ
* tBodyGyroscopeJerkSignals-XYZ
* tBodyAccelerometerMagnitude
* tGravityAccelerometerMagnitude
* tBodyAccelerometerJerkSignalsMagnitude
* tBodyGyroscopeMag
* tBodyGyroscopeJerkSignalsMagnitude
* fBodyAccelerometer-XYZ
* fBodyAccelerometerJerkSignals-XYZ
* fBodyGyroscope-XYZ
* fBodyAccelerometerMagnitude
* fBodyAccelerometerJerkSignalsMagnitude
* fBodyGyroscopeMagnitude
* fBodyGyroscopeJerkSignalsMagnitude

The set of variables that were included from the original data set are: 

* Mean: Mean value
* StandardDeviation: Standard deviation
* MeanFrequency: Weighted average of the frequency components to obtain a mean frequency
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccelerometerMean
* tBodyAccelerometerJerkSignalsMean
* tBodyGyroscopeMean
* tBodyGyroscopeJerkSignalsMean

The complete list of variables of each feature vector is available in 'UCI HAR Dataset/features_info.txt'.



CodeBook: Human Activity Recognition using smartphones data set for cleaning and getting data course 
=======================

The foundations of this data set are the test and training data provided by the [Human Activity Recognition using smartphones data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Note: For the purpose of this analysis we did not considered the inertial signals measurements provided in the homonimous folder, only the following files were taken into account for building this data set: train/X_train.txt, train/y_train.txt, train/subject_train.txt, test/X_test.txt, test/y_test.txt and test/subject_test.txt. 

Data set
----------------------
The point of departure of this data set is the result of merging test and train data into three single datasets: x, y and subject. Then, the 561 measurements was simplified to 86 by leaving only those measurements that measured a mean or an standard deviation.  




GetDescriptiveColumnName <- function(name) {
  result <- gsub("BodyBody", "Body", name)
  result <- gsub("Jerk", "JerkSignals", result)
  result <- gsub("-mean\\(\\)", "Mean", result)
  result <- gsub("-meanFreq\\(\\)", "MeanFrequency", result)
  result <- gsub("-std\\(\\)", "StandardDeviation", result)
  result <- gsub("Gyro", "Gyroscope", result)
  result <- gsub("Mag", "Magnitude", result)
  result <- gsub("Acc", "Accelerometer", result)
  as.character(result)
}
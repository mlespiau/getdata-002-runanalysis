source("get_label_from_code.R")
source("get_descriptive_column_name.R")

# Read training data sets
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Read test data sets
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Merge the data (test and training nomenclature is no longer needed)
xRaw <- rbind(xTrain, xTest)
yRaw <- rbind(yTrain, yTest)
subject <- rbind(subjectTrain, subjectTest)

# Read feature/measurements names and set them to raw data frame
names <- read.table("./UCI HAR Dataset/features.txt", sep=" ")
names(xRaw) <- names$V2

# Select columns with measurements on the mean or the standard deviation
columnsToExtract <- grepl("mean|Mean|std", as.character(names$V2))

# Filter columns in raw data set
x <- xRaw[,columnsToExtract]

# Replace labels code with meaningful values
y <- sapply(yRaw$V1, GetLabelFromCode)

# Replace column names with descriptive names
names(x) <- GetDescriptiveColumnName(names(x)) 

# Create dataset 
subjectAndLabelsData <- cbind(subject, y)
names(subjectAndLabelsData) <- c("Subject", "Activity")
data <- cbind(subjectAndLabelsData, x)

# Dump dataset to a csv text file
write.csv(data, file="./dataset.csv.txt", row.names=FALSE)


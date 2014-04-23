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
y <- rbind(yTrain, yTest)
subject <- rbind(subjectTrain, subjectTest)

# Read feature/measurements names
names <- read.table("./UCI HAR Dataset/features.txt", sep=" ")

# Select columns with measurements on the mean or the standard deviation
columnsToExtract <- grepl("mean|Mean|std", as.character(names$V2))

# Filter columns in raw data set
x <- xRaw[,columnsToExtract]


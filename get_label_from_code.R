meaningfulLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", sep=" ")
GetLabelFromCode <- function(code) {
  as.character(meaningfulLabels[meaningfulLabels$V1 == code[1],2])
}
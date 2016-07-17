# To download and unzip data file, uncomment 2 lines of code below
# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "data.zip")
# unzip("./data.zip")

# Import data.table package into R
require(data.table)

# Read data from files
xTestTbl <- fread("./UCI HAR Dataset/test/X_test.txt")
yTestTbl <- fread("./UCI HAR Dataset/test/y_test.txt", col.names = "act.id")
subjTestTbl <- fread("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

xTrainTbl <- fread("./UCI HAR Dataset/train/X_train.txt")
yTrainTbl <- fread("./UCI HAR Dataset/train/y_train.txt", col.names = "act.id")
subjTrainTbl <- fread("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")

featuresTbl <- fread("./UCI HAR Dataset/features.txt", select = 2, col.names = "feature", stringsAsFactors = FALSE)
activityLabelsTbl <- fread("./UCI HAR Dataset/activity_labels.txt", col.names = c("act.id","activity"), stringsAsFactors = TRUE)

# 1. Merges the training and the test sets to create one data set.
xTbl <- rbind(xTestTbl, xTrainTbl)
names(xTbl) <- featuresTbl$feature
yTbl <- rbind(yTestTbl, yTrainTbl)
subjTbl <- rbind(subjTestTbl, subjTrainTbl)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
selectedFeatures <- featuresTbl$feature[grepl("mean\\(\\)|std\\(\\)", featuresTbl$feature)]

# 3. Uses descriptive activity names to name the activities in the data set
activityTbl <- merge(yTbl, activityLabelsTbl, by = "act.id", sort = FALSE)

# 4. Appropriately labels the data set with descriptive variable names.
dataTbl <- data.table(subject = subjTbl$subject, activity = activityTbl$activity, xTbl[,selectedFeatures, with = FALSE])

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
meltedDataTbl <- melt(dataTbl, id = c("subject", "activity"), variable.name = "feature", value.name = "feature.value", variable.factor = FALSE)
tinyData <- meltedDataTbl[, .(feature.value.mean = mean(feature.value)), by = .(subject, activity, feature)]
write.table(tinyData, file = "./tiny_data.txt", row.names = FALSE)
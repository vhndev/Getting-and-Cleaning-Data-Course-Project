#Getting and Cleaning Data Course Project Readme

1. Use data.table package to read and manipulate data, because it is faster and more convenient than data.frame
2. Use fread to read data from text files.
3. Use rbind to merge data from test set and training set.
4. Features that contain "mean()" or "std()" are selected.
5. Name the activities by looking up the activity labels table.
6. Create the tiny data table by melting all features with ids subject and activity. Then create the mean value of each set of subject, activity and feature.
7. Write the tiny data to a text file using read.table with row.names = FALSE. Thank to this step, the tiny data can be read by fread or read.table without any trouble.
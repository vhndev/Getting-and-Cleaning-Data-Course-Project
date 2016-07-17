#Getting and Cleaning Data Course Project Readme
This is the sulution for the course project of Getting and Cleaning Data on Coursera.

##How to run the code?
*Copy folder "UCI HAR Dataset" and file run_analysis.R into working directory.
*Run file run_analysis.R
*The tiny data is written to a new file called tiny_data.txt
*The output file can be read by read.table or fread.

##How do I solve the requirements of the project?

*Use data.table package to read and manipulate data, because it is faster and more convenient than data.frame
*Use fread to read data from text files.
*Use rbind to merge data from test set and training set.
*Features that contain "mean()" or "std()" are selected.
*Name the activities by looking up the activity labels table.
*Create the tiny data table by melting all features with ids subject and activity. Then create the mean value of each set of subject, activity and feature.
*Write the tiny data to a text file using read.table with row.names = FALSE. Thank to this step, the tiny data can be read by fread or read.table without any trouble.

Thank you!
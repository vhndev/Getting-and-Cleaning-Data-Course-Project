#Getting and Cleaning Data Course Project Code Book

"xTestTbl"          : list of measurements for test set
"yTestTbl"          : list of activities for test set
"subjTestTbl"       : subjects list for test set, read from subject_test.txt 
"xTrainTbl"         : list of measurements for training set
"yTrainTbl"         : list of activities for training set
"subjTrainTbl"      : subjects list for training set, read from subject_train.txt 
"featuresTbl"       : table of features, read from features.txt 
"activityLabelsTbl" : table of activity labels, read from activity_labels.txt
"xTbl"              : the combination of xTestTbl and xTrainTbl
"yTbl"              : the combination of yTestTbl and yTrainTbl
"subjTbl"           : the combination of subjTestTbl and subjTrainTbl
"selectedFeatures"  : vector of features extracted from featuresTbl on the mean and standard deviation for each measurement.
"activityTbl"       : table of activities in yTbl with activity labels looked up from activityLabelsTbl
"dataTbl"           : data table after step 4 of the project requirement
"meltedDataTbl"     : table of data melted from "dataTbl"
"tinyData"          : final data table that meets the requirement

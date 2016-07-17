# Getting and Cleaning Data Course Project Code Book

## Variables in the tidy data
* subject           : (int) the number represented for the subject who was tested. 
* activity          : Factor w/ 6 levels ALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 
* feature           : (chr) name of features
* feature.value.mean: (num) mean value of each combination of subject, acitivity and feature.

## Explain some variables using in the run_analysis.R file.
* "xTestTbl"          : list of measurements for test set
* "yTestTbl"          : list of activities for test set
* "subjTestTbl"       : subjects list for test set, read from subject_test.txt 
* "xTrainTbl"         : list of measurements for training set
* "yTrainTbl"         : list of activities for training set
* "subjTrainTbl"      : subjects list for training set, read from subject_train.txt 
* "featuresTbl"       : table of features, read from features.txt 
* "activityLabelsTbl" : table of activity labels, read from activity_labels.txt
* "xTbl"              : the combination of xTestTbl and xTrainTbl
* "yTbl"              : the combination of yTestTbl and yTrainTbl
* "subjTbl"           : the combination of subjTestTbl and subjTrainTbl
* "selectedFeatures"  : vector of features extracted from featuresTbl on the mean and standard deviation for each measurement.
* "activityTbl"       : table of activities in yTbl with activity labels looked up from activityLabelsTbl
* "dataTbl"           : data table after step 4 of the project requirement
* "meltedDataTbl"     : table of data melted from "dataTbl"
* "tinyData"          : final data table that meets the requirement
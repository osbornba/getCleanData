# Get and Clean Data

## Project 1 Code Book

========================================================

This Codebook describes the "Second" Tidy Data set as described in part 5 of the project. The data set is named: activity_subject_means.csv. This data set contains the average of each of the reduced set of feature variables for each activity and subject. 

## Original Data

The original data used for this project can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The zipped data file was downloaded from here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A description of the files associated with the original data can be found in the README.txt file.

features.txt contains a list of the 561 feature variables and activity_lables.txt provides a mapping of activity numbers to activity names.

The test and train data are contained in separate subdirectories.

## Project 1 Analysis

The test and train data sets were combined into a single data set. The differentian between test data and training data was forfeited.

The set of 561 feature variables was reduced to a set of 79 "mean" and "standard deviation" feature Variables. Of the 561 features, any features whose names contained "mean" or "std" were retained. This resulted in the reduced set of 79 features.

The subject and activity data sets were then associated with the data to produce an 81 column data set. 79 columns of feature variables, 1 column for the activity 1 column for the subject. The features, activity and subject are described below.

Features: There are 79 features associated with mean or std. They are:

[1] "tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"              
 [3] "tBodyAcc-mean()-Z"               "tBodyAcc-std()-X"               
 [5] "tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"               
 [7] "tGravityAcc-mean()-X"            "tGravityAcc-mean()-Y"           
 [9] "tGravityAcc-mean()-Z"            "tGravityAcc-std()-X"            
[11] "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
[13] "tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
[15] "tBodyAccJerk-mean()-Z"           "tBodyAccJerk-std()-X"           
[17] "tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"           
[19] "tBodyGyro-mean()-X"              "tBodyGyro-mean()-Y"             
[21] "tBodyGyro-mean()-Z"              "tBodyGyro-std()-X"              
[23] "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              
[25] "tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"         
[27] "tBodyGyroJerk-mean()-Z"          "tBodyGyroJerk-std()-X"          
[29] "tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"          
[31] "tBodyAccMag-mean()"              "tBodyAccMag-std()"              
[33] "tGravityAccMag-mean()"           "tGravityAccMag-std()"           
[35] "tBodyAccJerkMag-mean()"          "tBodyAccJerkMag-std()"          
[37] "tBodyGyroMag-mean()"             "tBodyGyroMag-std()"             
[39] "tBodyGyroJerkMag-mean()"         "tBodyGyroJerkMag-std()"         
[41] "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
[43] "fBodyAcc-mean()-Z"               "fBodyAcc-std()-X"               
[45] "fBodyAcc-std()-Y"                "fBodyAcc-std()-Z"               
[47] "fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"          
[49] "fBodyAcc-meanFreq()-Z"           "fBodyAccJerk-mean()-X"          
[51] "fBodyAccJerk-mean()-Y"           "fBodyAccJerk-mean()-Z"          
[53] "fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"           
[55] "fBodyAccJerk-std()-Z"            "fBodyAccJerk-meanFreq()-X"      
[57] "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[59] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
[61] "fBodyGyro-mean()-Z"              "fBodyGyro-std()-X"              
[63] "fBodyGyro-std()-Y"               "fBodyGyro-std()-Z"              
[65] "fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"         
[67] "fBodyGyro-meanFreq()-Z"          "fBodyAccMag-mean()"             
[69] "fBodyAccMag-std()"               "fBodyAccMag-meanFreq()"         
[71] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"      
[73] "fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"        
[75] "fBodyBodyGyroMag-std()"          "fBodyBodyGyroMag-meanFreq()"    
[77] "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"     
[79] "fBodyBodyGyroJerkMag-meanFreq()"

Activity: There are 6 possible activities. They are:
- 1 WALKING
- 2 WALKING_UPSTAIRS
- 3 WALKING_DOWNSTAIRS
- 4 SITTING
- 5 STANDING
- 6 LAYING

Subject: There were 30 subjects numbered 1 to 30.

# Tidy Data Set
Tidy Data Set: activity_subject_means.csv

This data set contains the average of each of the 79 feature variables for each activity and subject.  

There are 14200 observation (rows) with 4 variables (columns) per observation.

Variables:  
- Activity: One of 6 activities as listed above (see Activity)  
- Subject: Subject number from 1 to 30  
- Variable: One of the 79 features listed above.   
- Mean: the numeric mean of the variable (feature) for the given activity and subject.    

The 14220 observations come from 30 subjects x 6 activities x 79 features = 14220.


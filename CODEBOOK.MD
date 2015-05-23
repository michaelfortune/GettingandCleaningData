Getting and Cleaning Data Project CodeBook
==========================================

Description
===========
This file contains details in relation to the data, variables etc. used in the project. Read this in conjunction with README.MD and run_analysis.R 

Data
====
The source data for this project is:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The files need to be extracted from the zip file and placed in the current directory. 

Data Set Information
====================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The steps to process the data within run_analysis.R are:
========================================================
Read the activity labels from activity_labels.txt found in the UCI HAR Dataset folder 

Read the column names from features.txt found in the UCI HAR Dataset 

Select mean and standard deviation data 

Read the X_test data from the X_test.txt file within the test subfolder of the UCI HAR Dataset folder 

Read the y_test data from the y_test.txt file within the test subfolder of the UCI HAR Dataset folder 

Read the subject test data from the subject_test.txt file within the test subfolder of the UCI HAR Dataset folder

Set the column names for X_tst

Select mean and Standard deviation data 


Load activity labels 
Set the column names for Y_tst

Set the column name for sub_tst

Combine the data 

Read the X_train data from the X_train.txt file within the train subfolder of the UCI HAR Dataset folder 

Read the y_train data from the y_train.txt file within the train subfolder of the UCI HAR Dataset folder 

Read the subject_train data from the subject_train.txt file within the train subfolder of the UCI HAR Dataset folder 

Set the column names for X_trn

Select mean and Standard deviation data 

Load activity data 

Set the column names for y_trn

Set the column name for sub_trn

Combine the data 

Combine the test and training data

Set id labels etc.

Differnce between column names and id_labs

Stack data

Calculate the mean and apply to the data

Output the final data to tidy.txt in the current directory. columns are comma separated

Extracted Fields include e.g.:

tBodyAcc-mean()-X   
tBodyAcc-mean()-Y   
tBodyAcc-mean()-Z   
tBodyAcc-std()-X   
tBodyAcc-std()-Y  
tBodyAcc-std()-Z   
tGravityAcc-mean()-X   
tGravityAcc-mean()-Y   
tGravityAcc-mean()-Z   
tGravityAcc-std()-X   
tGravityAcc-std()-Y  
tGravityAcc-std()-Z   
tBodyAccJerk-mean()-X    
tBodyAccJerk-mean()-Y   
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X   
tBodyAccJerk-std()-Y   
tBodyAccJerk-std()-Z   
tBodyGyro-mean()-X   
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z   
tBodyGyro-std()-X   
tBodyGyro-std()-Y   
tBodyGyro-std()-Z   
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y   
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X   
tBodyGyroJerk-std()-Y   
tBodyGyroJerk-std()-Z   
tBodyAccMag-mean()   
tBodyAccMag-std()   
tGravityAccMag-mean()   
tGravityAccMag-std()   
tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()   
tBodyGyroMag-mean()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-mean()   
tBodyGyroJerkMag-std()   
fBodyAcc-mean()-X   
fBodyAcc-mean()-Y   
fBodyAcc-mean()-Z   
fBodyAcc-std()-X   
fBodyAcc-std()-Y  
fBodyAcc-std()-Z   
fBodyAccJerk-mean()-X   
fBodyAccJerk-mean()-Y   
fBodyAccJerk-mean()-Z  
fBodyAccJerk-std()-X   
fBodyAccJerk-std()-Y   
fBodyAccJerk-std()-Z   
fBodyGyro-mean()-X   
fBodyGyro-mean()-Y   
fBodyGyro-mean()-Z  
fBodyGyro-std()-X   
fBodyGyro-std()-Y   
fBodyGyro-std()-Z   
fBodyAccMag-mean()   
fBodyAccMag-std()   
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()   
fBodyBodyGyroMag-mean()   
fBodyBodyGyroMag-std()   
fBodyBodyGyroJerkMag-mean()   
fBodyBodyGyroJerkMag-std()   


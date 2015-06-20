---
title: Codebook
author: Karan Seth
date: 20/06/2015
output:
  html_document: https://github.com/karandravs/getdata-015_tidydata/blob/master/tiny_data.txt
    keep_md: yes
---
 
## Project Description
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. Using the data collected from the accelerometers from the Samsung Galaxy S smartphone, we create a tidy data set giving the average of means and standard deviation for each activity and each subject.
 
##Study design and data processing
The experiments were been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The subjects are numbered 1-30 to denote the 30 volunteers. 
 
###Collection of the raw data
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
 
###Notes on the original (raw) data 
There are a total of 561 features collected for each acitivity for each subject. The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
 
##Creating the tidy datafile
The tidy data file averages the mean and standard deviation of each feature for each activity and each subject. The steps to construct the tidy data file are
1) Merging training and test files
2) Subsetting features for mean and standard deviation
3) Appending subject and activity labels
4) Appending correct variable feature names
5) Calculating average of variable features for each activity and each subject.

###Guide to create the tidy data file
1) run the run_analysis.R script

###Cleaning of the data
The zip file is downloaded if data doesn't exist in the working directory. The activity and feature labels are read and stored. Training and test files for X vectors and y labels, along with the subject are read into the memory and bind together. Feature values that contain mean and standard deviation are filtered out. The activity numeric values are replaced with the activity labels. The data is then melted down to simpler dimensions, with activity and subject being the id columns and all other feature values becoming the measured variables. The mean is calculated for each of activity for each of subject for every measured value. This data is outputted to the tiny data. 
 
##Description of the variables in the tiny_data.txt file
General description of the file including:
  -  The data set consists of 180 obs of 68 variables
  -  The prefix 't' in variables name denotes time
  -  The prefix 'f' in variables name denotes frequency domain signals
  -  Features are normalized and bounded within [-1,1].
  -  Variables present in the dataset
 
###Variable 1 Subject
Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

###Variable 2 Activity
Each row identifies the activity performed for each window sample. Its 6 different values, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

###Variable 3 tBodyAcc-mean()-X
The Body Acceleration signals mean value in X axis. prefix 't' to denote time. 

###Variable 4 tBodyAcc-mean()-Y
The Body Acceleration signals mean value in Y axis. prefix 't' to denote time. 

###Variable 5 tBodyAcc-mean()-Z
The Body Acceleration signals mean value in Z axis. prefix 't' to denote time. 

###Variable 6 tGravityAcc-mean()-X
The Gravity Acceleration signals mean value in X axis. prefix 't' to denote time. 

###Variable 7 tGravityAcc-mean()-Y
The Gravity Acceleration signals mean value in Y axis. prefix 't' to denote time. 

###Variable 8 tGravityAcc-mean()-Z
The Gravity Acceleration signals mean value in Z axis. prefix 't' to denote time. 

###Variable 9 tBodyAccJerk-mean()-X
The linear acceleration signals to obtain jerk mean value in X axis. prefix 't' to denote time. 

###Variable 10 tBodyAccJerk-mean()-Y
The linear acceleration signals to obtain jerk mean value in Y axis. prefix 't' to denote time. 

###Variable 11 tBodyAccJerk-mean()-Z
The linear acceleration signals to obtain jerk mean value in Z axis. prefix 't' to denote time. 

###Variable 12 tBodyGyro-mean()-X
The angular velocity signals mean value in X axis. prefix 't' to denote time. 

###Variable 13 tBodyGyro-mean()-Y
The angular velocity signals mean value in axis -y. prefix 't' to denote time.

###Variable 14 tBodyGyro-mean()-Z
The angular velocity signals mean value in Z axis. prefix 't' to denote time. 

###Variable 15 tBodyGyroJerk-mean()-X
The angular velocity signals to obtain jerk mean value in X axis. prefix 't' to denote time.

###Variable 16 tBodyGyroJerk-mean()-Y
The angular velocity signals to obtain jerk mean value in Y axis. prefix 't' to denote time.

###Variable 17 tBodyGyroJerk-mean()-Z
The angular velocity signals to obtain jerk mean value in Z axis. prefix 't' to denote time.

###Variable 18 tBodyAccMag-mean()
The Body Acceleration signals mean value calculated using the Euclidean norm. prefix 't' to denote time. 

###Variable 19 tGravityAccMag-mean()
The Gravity Acceleration signals mean value calculated using the Euclidean norm. prefix 't' to denote time.

###Variable 20 tBodyAccJerkMag-mean()
The Linear Acceleration signals mean value to obtain jerk calculated using the Euclidean norm. prefix 't' to denote time.

###Variable 21 tBodyGyroMag-mean()
The Angular Velocity signals mean value using the Euclidean norm. prefix 't' to denote time.

###Variable 22 tBodyGyroJerkMag-mean()
The Angular Velocity signals mean value to obtain jerk calculated using the Euclidean norm. prefix 't' to denote time.

###Variable 23 fBodyAcc-mean()-X
Fast Fourier Transform (FFT) applied to the Body Acceleration signals mean value in X axis. prefix 'f' to indicate frequency domain signals.

###Variable 24 fBodyAcc-mean()-Y
Fast Fourier Transform (FFT) applied to the Body Acceleration signals mean value in Y axis. prefix 'f' to indicate frequency domain signals.

###Variable 25 fBodyAcc-mean()-Z
Fast Fourier Transform (FFT) applied to the Body Acceleration signals mean value in Z axis. prefix 'f' to indicate frequency domain signals.

###Variable 26 fBodyAccJerk-mean()-X
Fast Fourier Transform (FFT) applied to the linear acceleration signals to obtain jerk mean value in X axis. prefix 'f' to indicate frequency domain signals.

###Variable 27 fBodyAccJerk-mean()-Y
Fast Fourier Transform (FFT) applied to the linear acceleration signals to obtain jerk mean value in Y axis. prefix 'f' to indicate frequency domain signals.

###Variable 28 fBodyAccJerk-mean()-Z
Fast Fourier Transform (FFT) applied to the linear acceleration signals to obtain jerk mean value in Z axis. prefix 'f' to indicate frequency domain signals.

###Variable 29 fBodyGyro-mean()-X
Fast Fourier Transform (FFT) applied to the angular velocity signals mean value in X axis. prefix 'f' to indicate frequency domain signals.

###Variable 30 fBodyGyro-mean()-Y
Fast Fourier Transform (FFT) applied to the angular velocity signals mean value in Y axis. prefix 'f' to indicate frequency domain signals.

###Variable 31 fBodyGyro-mean()-Z
Fast Fourier Transform (FFT) applied to the angular velocity signals mean value in Z axis. prefix 'f' to indicate frequency domain signals.

###Variable 32 fBodyAccMag-mean()
Fast Fourier Transform (FFT) applied to the Linear Body Acceleration signals mean value calculated using the Euclidean norm. prefix 'f' to indicate frequency domain signals.

###Variable 33 fBodyBodyAccJerkMag-mean() 
Fast Fourier Transform (FFT) applied to the Linear Body Acceleration signals to obtain jerk mean value calculated using the Euclidean norm. prefix 'f' to indicate frequency domain signals.

###Variable 34 fBodyBodyGyroMag-mean() 
Fast Fourier Transform (FFT) applied to the angular velocity signals mean value calculated using the Euclidean norm. prefix 'f' to indicate frequency domain signals.

###Variable 35 fBodyBodyGyroJerkMag-mean() 
Fast Fourier Transform (FFT) applied to the angular velocity signals to obtain jerk mean value calculated using the Euclidean norm. prefix 'f' to indicate frequency domain signals.

###Variable 36 tBodyAcc-std()-X
The Body Acceleration signals standard deviation value in X axis. prefix 't' to denote time. 

###Variable 37 tBodyAcc-std()-Y
The Body Acceleration signals standard deviation value in Y axis. prefix 't' to denote time. 

###Variable 38 tBodyAcc-std()-Z
The Body Acceleration signals standard deviation value in Z axis. prefix 't' to denote time. 

###Variable 39 tGravityAcc-std()-X
The Gravity Acceleration signals standard deviation value in X axis. prefix 't' to denote time. 

###Variable 40 tGravityAcc-std()-Y
The Gravity Acceleration signals standard deviation value in Y axis. prefix 't' to denote time. 

###Variable 41 tGravityAcc-std()-Z
The Gravity Acceleration signals standard deviation value in Z axis. prefix 't' to denote time. 

###Variable 42 tBodyAccJerk-std()-X
The linear acceleration signals to obtain jerk standard deviation value in X axis. prefix 't' to denote time. 

###Variable 43 tBodyAccJerk-std()-Y
The linear acceleration signals to obtain jerk standard deviation value in Y axis. prefix 't' to denote time. 

###Variable 44 tBodyAccJerk-std()-Z
The linear acceleration signals to obtain jerk standard deviation value in Z axis. prefix 't' to denote time. 

###Variable 45 tBodyGyro-std()-X
The angular velocity signals standard deviation value in X axis. prefix 't' to denote time. 

###Variable 46 tBodyGyro-std()-Y
The angular velocity signals standard deviation value in axis -y. prefix 't' to denote time.

###Variable 47 tBodyGyro-std()-Z
The angular velocity signals standard deviation value in Z axis. prefix 't' to denote time. 

###Variable 48 tBodyGyroJerk-std()-X
The angular velocity signals to obtain jerk standard deviation value in X axis. prefix 't' to denote time.

###Variable 49 tBodyGyroJerk-std()-Y
The angular velocity signals to obtain jerk standard deviation value in Y axis. prefix 't' to denote time.

###Variable 50 tBodyGyroJerk-std()-Z
The angular velocity signals to obtain jerk standard deviation value in Z axis. prefix 't' to denote time.

###Variable 51 tBodyAccMag-std()
The Body Acceleration signals standard deviation value calculated using the Euclidean norm. prefix 't' to denote time. 

###Variable 52 tGravityAccMag-std()
The Gravity Acceleration signals standard deviation value calculated using the Euclidean norm. prefix 't' to denote time.

###Variable 53 tBodyAccJerkMag-std()
The Linear Acceleration signals standard deviation value to obtain jerk calculated using the Euclidean norm. prefix 't' to denote time.

###Variable 54 tBodyGyroMag-std()
The Angular Velocity signals standard deviation value using the Euclidean norm. prefix 't' to denote time.

###Variable 55 tBodyGyroJerkMag-std()
The Angular Velocity signals standard deviation value to obtain jerk calculated using the Euclidean norm. prefix 't' to denote time.

###Variable 56 fBodyAcc-std()-X
Fast Fourier Transform (FFT) applied to the Body Acceleration signals standard deviation value in X axis. prefix 'f' to indicate frequency domain signals.

###Variable 57 fBodyAcc-std()-Y
Fast Fourier Transform (FFT) applied to the Body Acceleration signals standard deviation value in Y axis. prefix 'f' to indicate frequency domain signals.

###Variable 58 fBodyAcc-std()-Z
Fast Fourier Transform (FFT) applied to the Body Acceleration signals standard deviation value in Z axis. prefix 'f' to indicate frequency domain signals.

###Variable 59 fBodyAccJerk-std()-X
Fast Fourier Transform (FFT) applied to the linear acceleration signals to obtain jerk standard deviation value in X axis. prefix 'f' to indicate frequency domain signals.

###Variable 60 fBodyAccJerk-std()-Y
Fast Fourier Transform (FFT) applied to the linear acceleration signals to obtain jerk standard deviation value in Y axis. prefix 'f' to indicate frequency domain signals.

###Variable 61 fBodyAccJerk-std()-Z
Fast Fourier Transform (FFT) applied to the linear acceleration signals to obtain jerk standard deviation value in Z axis. prefix 'f' to indicate frequency domain signals.

###Variable 62 fBodyGyro-std()-X
Fast Fourier Transform (FFT) applied to the angular velocity signals standard deviation value in X axis. prefix 'f' to indicate frequency domain signals.

###Variable 63 fBodyGyro-std()-Y
Fast Fourier Transform (FFT) applied to the angular velocity signals standard deviation value in Y axis. prefix 'f' to indicate frequency domain signals.

###Variable 64 fBodyGyro-std()-Z
Fast Fourier Transform (FFT) applied to the angular velocity signals standard deviation value in Z axis. prefix 'f' to indicate frequency domain signals.

###Variable 65 fBodyAccMag-std()
Fast Fourier Transform (FFT) applied to the Linear Body Acceleration signals standard deviation value calculated using the Euclidean norm. prefix 'f' to indicate frequency domain signals.

###Variable 66 fBodyBodyAccJerkMag-std() 
Fast Fourier Transform (FFT) applied to the Linear Body Acceleration signals to obtain jerk standard deviation value calculated using the Euclidean norm. prefix 'f' to indicate frequency domain signals.

###Variable 67 fBodyBodyGyroMag-std() 
Fast Fourier Transform (FFT) applied to the angular velocity signals standard deviation value calculated using the Euclidean norm. prefix 'f' to indicate frequency domain signals.

###Variable 68 fBodyBodyGyroJerkMag-std() 
Fast Fourier Transform (FFT) applied to the angular velocity signals to obtain jerk standard deviation value calculated using the Euclidean norm. prefix 'f' to indicate frequency domain signals.

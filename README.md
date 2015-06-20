Getting and Cleaning Data

The repository is the implementation of Getting Data course project. The aim is to demonstate the ability to collect, work with, and clean a data set. 

## Objective
Using the sensor data set, subset on the mean and standard deviations feature parameters given in the training and test data sets, and calculate the average of all variables for each activity and for each subject. 

## Description of Raw Data 
The raw data consists of sensor magnitude for 30 different volunteers performing 6 different activities. The data has 561 different features which are listed. 

## Description of Tidy Data
Each row of the tidy data gives an averages of certain mean and standard deviation features for each activity for each subject. There are 30 subjects and 6 activities, giving a total of 180 different observations of 66 mean and standard deviation variables. 
The tidy data set consists of train and test data combined, with 180 rows and 68 columns. The header is included too. 

## Contents
The repository contains
  - README.md
  - run_analysis.R : A 'R' script to read in data and generate a tidy data for means and standard deviation per activity per subject.
  - Codebook.md : A codebook to enumerate and describe the set of variables in tidy data set and methods to generate tidy data set from a raw set. 
  - tidy_data.txt : The tidy data set. 

## Approach to obtain Tidy Data
The run_analysis.R script contains the code to fetch raw data and process raw data into tidy data set. 
The steps involved in the code are
  - Fetch zip file is folder does not exist, unzip and extract contents of zip file. 
  - Read the activity labels and feature labels from activity_labels.txt and features.txt respectively
  - Go to train directory and read the X vectors, the y labels and subject list. 
  - Go to test directory and read the X vectors, the y labels and subject list. 
  - Bind x vectors, y labels and subject list from train and test variable. 
  - Rename y labels from activity labels, by matching the numeric value to its corresponding integer value. 
  - Subset merged X vectors data for only columns which match "mean()" or "std()" in feature labels. For the tidy data set we are only interested in these columns.
  - Bind a new column with the activity labels and the subject id's. 
  - Rename columns for each of "mean()" and "std()" from feature labels. 
  - Melt the data into simpler dimensions. The activity label and subject columns become the id to differentiate each activity and subject. All other mean and standard deviation feature columns become the measured values. 
  - Cast the melted data into a frame on the activity label and subject vs the variable means. 
  - Write the casted data into a file. 

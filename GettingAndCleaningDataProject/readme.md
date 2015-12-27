## Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

 You should create one R script called run_analysis.R that does the following. 

     1- Merges the training and the test sets to create one data set.
         2- Extracts only the measurements on the mean and standard deviation for each   measurement. 
	     3- Uses descriptive activity names to name the activities in the data set
	         4- Appropriately labels the data set with descriptive variable names. 
		     5- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
		         
			 The script run_analysis.R performs the following tasks to create a tidydata file:

			 1)Read all train and test files into R data frames
			 2)Read activity lables from activity_labels.txt into r data frame
			 3)Making labels for X files from features.txt and eliminate duplicate labels
			 4)Rename columns of X files using x_labels file created from step 3
			 5)Rename columns of avtivity files
			 6)Rename columns of subject files
			 7)Combine subject, activity, and features train and test data frames using cbind
			 8)Append train and test data frames into one data frame
			 9)Select mean and standard deviation data
			 10)Merge the mean and standard deviation file with the activity_labels file to associate activity numbers with names.
			 11)Reshape data using melt function
			 12)Calculate average mean and standard deviation for all features using dcast
			 13)Remove the activity number column
			 14)Create readable feature names
			 15)Apply readable feature names to column names
			 16)Write tidydata.txt 

###   Coursera Geting Data - Class Project
###   Author: David Jones
###   Due Date: Sun 27 Jul 4:30 pm

  The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

      
Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

      https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

For more information about this dataset contact: activityrecognition@smartlab.ws
         url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/00240/"

   License:
   ========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

###Project Requirements:

 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive variable names. 
 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

###This Repo contains:

readme.MD - This file to describe the REPO
codebook.MD - Describing the output datasets
run_analysis.R - Repeatable Data Transformation of the Human Activity Recognition database for easy use of standard deviation and mean metrics.

ods2_ave_by_act_sub.csv - Detail Data in tidy dataset format simple read.csv() to use file in a data.table
ods1_detail_mean_std.csv - measurement metrics to compare you loading of the detail dataset.  Contains the average or each metric x activity and person.

The script assumes that you will be running the process in "~/datasciencecoursera/GetDataProject/UCI HAR Dataset" directory.  And that the Data has been downloaded and uncompressed in the same directory.




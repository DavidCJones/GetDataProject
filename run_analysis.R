# run_analysis.R 
#   (R script)
#
#   Author: David Jones
#   Coursera Geting Data - Class Project
#   Due Date: Sun 27 Jul 4:30 pm
#
#  The purpose of this project is to demonstrate your ability to collect, work with, and clean 
#  a data set. The goal is to prepare tidy data that can be used for later analysis. You will 
#  be graded by your peers on a series of yes/no questions related to the project. You will be 
#  required to submit: 
#     1) a tidy data set as described below
#     2) a link to a Github repository with your script for performing the analysis
#     3) a code book that describes the variables, the data, and any transformations 
#        or work that you performed to clean up the data called CodeBook.md. You should 
#        also include a README.md in the repo with your scripts. This repo explains how 
#        all of the scripts work and how they are connected.
#
#  Using the following dataset 
#
#      Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing 
#      activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial
#      sensors.
#
#      https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#
#   For more information about this dataset contact: activityrecognition@smartlab.ws
#         url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/00240/"
#
#   License:
#   ========
#   Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
#   [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
#   This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
#   Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
#
# Project Requirements:
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

#     Download file and uncompress in :

  setwd("~/datasciencecoursera/GetDataProject/UCI HAR Dataset")

##
## LOAD DATA FILES
##

# Load Lables
  activity_labels <- read.table("activity_labels.txt")
  activity_labels <- as.vector(activity_lables$V2)  #Convert to a simple vector

# Load Features
  features <- read.table("features.txt")
  features <- as.vector(features$V2)  # Convert to a simple vector

# Load Test data
  xtest_fn <- "./test/X_test.txt"
  ytest_label_fn <- "./test/y_test.txt"
  ytest_label <- read.table(ytest_label_fn)
  ytest_label <- as.vector(ytest_label$V1)
  xtest <- read.table(xtest_fn)       # kiss principle works here

# Load Train data
  xtrain_fn <- "./train/X_train.txt"
  ytrain_label_fn <- "./train/y_train.txt"
  ytrain_label <- read.table(ytrain_label_fn)
  ytrain_label <- as.vector(ytrain_label$V1)

  xtrain <- read.table(xtrain_fn)     # kiss principle works here
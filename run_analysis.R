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


## SET ENV
  library(data.table)

##
## LOAD DATA FILES
##

# Load Lables
  activity_labels <- read.table("activity_labels.txt")
  #activity_labels <- as.vector(activity_labels$V2)  #Convert to a simple vector

# Load Features
  features <- read.table("features.txt")
  features <- as.vector(features$V2)  # Convert to a simple vector

  # Load Test data
  subject_test_fn <- "./test/subject_test.txt"
  subject_test <- read.table(subject_test_fn)
  subject_test <- as.vector(subject_test$V1)

  # Handle Activity Lables
  ytest_label_fn <- "./test/y_test.txt"
  ytest_label <- read.table(ytest_label_fn)
  test_label <- merge(ytest_label,activity_labels,by=c("V1"),sort=FALSE)
  setnames(test_label, "V1", "activity_code")
  setnames(test_label, "V2", "activity")

  # Load test dataset
  xtest_fn <- "./test/X_test.txt"
  xtest <- read.table(xtest_fn,col.names=features)

  # Limit xtest to the columns I want keep xtest for second dataset
  xtest2<- xtest[,grep("gravityMean|tBodyAccMean|tBodyAccJerkMean|tBodyGyroMean|tBodyGyroJerkMean|mean()|std()"
              , names(xtest), value = TRUE) ]

  xtest2 <- cbind(test_label,xtest2)          # Add activity label and codes
  xtest2 <- cbind(subject_test,xtest2)        # Add subject identifier
  xtest2 <- cbind(segment = "test", xtest2)   # Add Segment description

  # Load Train data
  subject_train_fn <- "./train/subject_train.txt"
  subject_train <- read.table(subject_train_fn)
  subject_train <- as.vector(subject_train$V1)

  # Handle Activity Lables
  ytrain_label_fn <- "./train/y_train.txt"
  ytrain_label <- read.table(ytrain_label_fn)
  train_label <- merge(ytrain_label,activity_labels,by=c("V1"),sort=FALSE)
  setnames(train_label, "V1", "activity_code")
  setnames(train_label, "V2", "activity")

  # Load train dataset
  xtrain_fn <- "./train/X_train.txt"
  xtrain <- read.table(xtrain_fn,col.names=features)
  xtrain <- cbind(train_label,xtrain)

  # Limit xxtrain to the columns I want keep xtest for second dataset
  xtrain2<- xtrain[,grep("gravityMean|tBodyAccMean|tBodyAccJerkMean|tBodyGyroMean|tBodyGyroJerkMean|mean()|std()"
                     , names(xtrain), value = TRUE) ]

  xtrain2 <- cbind(test_label,xtrain2)          # Add activity label and codes
  xtrain2 <- cbind(subject_test,xtrain2)        # Add subject identifier
  xtrain2 <- cbind(segment = "train", xtrain2)  # Add Segment description

  # Merge Datasets together (test + train)

  # Output Files


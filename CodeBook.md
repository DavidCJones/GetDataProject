Coursera - GetData - Project : CodeBook.md

Input TEXT FILES:

'README.txt': information about files in the data folder.
'features_info.txt': information about the estimated variables used for the vector.
'features.txt': List of all estimated variables (features).
'activity_labels.txt': Links the class labels with their activity names.

SUBFOLDERS:

'test' : results for test set subjects.
'Inertial Signals' : accelerometer and gyroscope readings from 3-axial angular velocoties and accelerations (X, Y, Z).

'subject_test.txt': links to volunteers who performed each activity in test set.

'X_test.txt': features values for Test set.

'y_test.txt': Test Activity labels.

'train' : results for training set subjects.
'Inertial Signals' : accelerometer and gyroscope readings from 3-axial angular velocoties and accelerations (X, Y, Z).

'subject_train.txt': links to volunteers who performed each activity in training set.

'X_train.txt': Training set.

'y_train.txt': Training Activity labels.

Files used for data gathering:

'features.txt'
A (561 x 2) table where V1 represents numbered valued 1:561 and V2 represents character names of each estimated variable in the X_test.txt file.

'activity_labels.txt'
A (6 x 2) table where V1 represents activity labels and V2 represents activities for indexed label.

'X_test.txt'
A (2947 x 561) table where each row represents an instance of an experiment for test set and each column represents estimated variable values for each instance.

'y_test.txt'
A (2947 x 1) integer table each row represents the activity label of the activity carried out at that instance in test set.

'subject_test.txt'
A (2947 x 1) integer table each row represents the volunteer who performed of the activity carried out at that instance.

'X_train.txt'
A (2947 x 561) table where each row represents an instance of an experiment for train set and each column represents estimated variable values for each instance.

'y_train.txt'
A (2947 x 1) integer table each row represents the activity label of the activity carried out at that instance in train set.

'subject_train.txt'
A (2947 x 1) integer table each row represents the volunteer who performed of the activity carried out at that instance.


Transformation Script :Run_Analysis.r



OutPut Files

ods1_detail_mean_std.csv
 - Merge Datasets together (test + train)
 - Note the file willbe stored in the root of the working directory
 
 File can be read into R using :
   read.table("ods1_detail_mean_std.csv", header = TRUE, sep = ",", row.names = 1)
     -OR-
   read.csv("ods1_detail_mean_std.csv", row.names = 1)
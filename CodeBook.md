###Coursera - GetData - Project : CodeBook.md

###Input TEXT FILES:

Here are the input data for the project: 
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

README.txt: information about files in the data folder.
features_info.txt: information about the estimated variables used for the vector.
features.txt: List of all estimated variables (features).
activity_labels.txt: Links the class labels with their activity names.
subject_test.txt: links to volunteers who performed each activity in test set.
X_test.txt: features values for Test set.
y_test.txt: Test Activity labels.
subject_train.txt: links to volunteers who performed each activity in training set.
X_train.txt: Training set.
y_train.txt: Training Activity labels.

* All other input files are ignored


###Transformation Script :Run_Analysis.r

*** Download file and uncompress in :

  setwd("~/datasciencecoursera/GetDataProject/UCI HAR Dataset")

###PROCESS FLOW
    1. SET ENV
    2. LOAD DATA FILES
    2.a Load Lables - activity_labels.txt
    2.b Load Features - features.txt
    2.c Load Test data and subjects
    2.c.1 Read
    2.c.2 Merge
    2.c.3 Handle Activity Lables clean up headings
    3.c Load Train data and subjects
    3.c.1 Read
    3.c.2 Merge
    3.c.3 Handle Activity Lables clean up headings
    4. Append Test and Train  
    5. OUTPUT ODS1 - 
    6.  Create second Data Set with control Average of each variable 
  END PROCESS FLOW  

###OutPut Files

###ods1_detail_mean_std.csv
 - Merge Datasets together (test + train)
 - Note the file willbe stored in the root of the working directory
 
 File can be read into R using :
   read.table("ods1_detail_mean_std.csv", header = TRUE, sep = ",", row.names = 1)
     -OR-
   read.csv("ods1_detail_mean_std.csv", row.names = 1)
   
###Rows:
  Test    2,947 Obs.
  Train   7,352 Obs.
  Total: 10,299 Obs.of 90 variables
   
###Column Headings
 [0] ""  - Row Number 
 [1] "segment"          - Text (test|train) identifies original source file                          
 [2] "subject"          - Integer [1:30] idcentifies a unique person in the test                             
 [3] "activity_code"    - Integer that maps to "activity"                      
 [4] "activity"         - Text Activity description                         
 [5] "tBodyAcc.mean...X"       *** Remaining metrics have not been modified from the source and are decimal numbers (real)            
 [6] "tBodyAcc.mean...Y"                   
 [7] "tBodyAcc.mean...Z"                   
 [8] "tBodyAcc.std...X"                    
 [9] "tBodyAcc.std...Y"                    
[10] "tBodyAcc.std...Z"                    
[11] "tGravityAcc.mean...X"                
[12] "tGravityAcc.mean...Y"                
[13] "tGravityAcc.mean...Z"                
[14] "tGravityAcc.std...X"                 
[15] "tGravityAcc.std...Y"                 
[16] "tGravityAcc.std...Z"                 
[17] "tBodyAccJerk.mean...X"               
[18] "tBodyAccJerk.mean...Y"               
[19] "tBodyAccJerk.mean...Z"               
[20] "tBodyAccJerk.std...X"                
[21] "tBodyAccJerk.std...Y"                
[22] "tBodyAccJerk.std...Z"                
[23] "tBodyGyro.mean...X"                  
[24] "tBodyGyro.mean...Y"                  
[25] "tBodyGyro.mean...Z"                  
[26] "tBodyGyro.std...X"                   
[27] "tBodyGyro.std...Y"                   
[28] "tBodyGyro.std...Z"                   
[29] "tBodyGyroJerk.mean...X"              
[30] "tBodyGyroJerk.mean...Y"              
[31] "tBodyGyroJerk.mean...Z"              
[32] "tBodyGyroJerk.std...X"               
[33] "tBodyGyroJerk.std...Y"               
[34] "tBodyGyroJerk.std...Z"               
[35] "tBodyAccMag.mean.."                  
[36] "tBodyAccMag.std.."                   
[37] "tGravityAccMag.mean.."               
[38] "tGravityAccMag.std.."                
[39] "tBodyAccJerkMag.mean.."              
[40] "tBodyAccJerkMag.std.."               
[41] "tBodyGyroMag.mean.."                 
[42] "tBodyGyroMag.std.."                  
[43] "tBodyGyroJerkMag.mean.."             
[44] "tBodyGyroJerkMag.std.."              
[45] "fBodyAcc.mean...X"                   
[46] "fBodyAcc.mean...Y"                   
[47] "fBodyAcc.mean...Z"                   
[48] "fBodyAcc.std...X"                    
[49] "fBodyAcc.std...Y"                    
[50] "fBodyAcc.std...Z"                    
[51] "fBodyAcc.meanFreq...X"               
[52] "fBodyAcc.meanFreq...Y"               
[53] "fBodyAcc.meanFreq...Z"               
[54] "fBodyAccJerk.mean...X"               
[55] "fBodyAccJerk.mean...Y"               
[56] "fBodyAccJerk.mean...Z"               
[57] "fBodyAccJerk.std...X"                
[58] "fBodyAccJerk.std...Y"                
[59] "fBodyAccJerk.std...Z"                
[60] "fBodyAccJerk.meanFreq...X"           
[61] "fBodyAccJerk.meanFreq...Y"           
[62] "fBodyAccJerk.meanFreq...Z"           
[63] "fBodyGyro.mean...X"                  
[64] "fBodyGyro.mean...Y"                  
[65] "fBodyGyro.mean...Z"                  
[66] "fBodyGyro.std...X"                   
[67] "fBodyGyro.std...Y"                   
[68] "fBodyGyro.std...Z"                   
[69] "fBodyGyro.meanFreq...X"              
[70] "fBodyGyro.meanFreq...Y"              
[71] "fBodyGyro.meanFreq...Z"              
[72] "fBodyAccMag.mean.."                  
[73] "fBodyAccMag.std.."                   
[74] "fBodyAccMag.meanFreq.."              
[75] "fBodyBodyAccJerkMag.mean.."          
[76] "fBodyBodyAccJerkMag.std.."           
[77] "fBodyBodyAccJerkMag.meanFreq.."      
[78] "fBodyBodyGyroMag.mean.."             
[79] "fBodyBodyGyroMag.std.."              
[80] "fBodyBodyGyroMag.meanFreq.."         
[81] "fBodyBodyGyroJerkMag.mean.."         
[82] "fBodyBodyGyroJerkMag.std.."          
[83] "fBodyBodyGyroJerkMag.meanFreq.."     
[84] "angle.tBodyAccMean.gravity."         
[85] "angle.tBodyAccJerkMean..gravityMean."
[86] "angle.tBodyGyroMean.gravityMean."    
[87] "angle.tBodyGyroJerkMean.gravityMean."
[88] "angle.X.gravityMean."                
[89] "angle.Y.gravityMean."                
[90] "angle.Z.gravityMean."
   
#################################################################################################   

###ods2_ave_by_act_sub.csv - second Data Set with control Average of each variable rolled up by activity and subject


###Rows:
  Total: 40 Obs.of 88 variables

###Column Headings
 [0] ""  - Row Number 
 [1] "subject"                             
 [2] "activity"                            
 [3] "tBodyAcc.mean...X"     *** All values are the Average of the coresponding variable in the detail data set              
 [4] "tBodyAcc.mean...Y"                   
 [5] "tBodyAcc.mean...Z"                   
 [6] "tBodyAcc.std...X"                    
 [7] "tBodyAcc.std...Y"                    
 [8] "tBodyAcc.std...Z"                    
 [9] "tGravityAcc.mean...X"                
[10] "tGravityAcc.mean...Y"                
[11] "tGravityAcc.mean...Z"                
[12] "tGravityAcc.std...X"                 
[13] "tGravityAcc.std...Y"                 
[14] "tGravityAcc.std...Z"                 
[15] "tBodyAccJerk.mean...X"               
[16] "tBodyAccJerk.mean...Y"               
[17] "tBodyAccJerk.mean...Z"               
[18] "tBodyAccJerk.std...X"                
[19] "tBodyAccJerk.std...Y"                
[20] "tBodyAccJerk.std...Z"                
[21] "tBodyGyro.mean...X"                  
[22] "tBodyGyro.mean...Y"                  
[23] "tBodyGyro.mean...Z"                  
[24] "tBodyGyro.std...X"                   
[25] "tBodyGyro.std...Y"                   
[26] "tBodyGyro.std...Z"                   
[27] "tBodyGyroJerk.mean...X"              
[28] "tBodyGyroJerk.mean...Y"              
[29] "tBodyGyroJerk.mean...Z"              
[30] "tBodyGyroJerk.std...X"               
[31] "tBodyGyroJerk.std...Y"               
[32] "tBodyGyroJerk.std...Z"               
[33] "tBodyAccMag.mean.."                  
[34] "tBodyAccMag.std.."                   
[35] "tGravityAccMag.mean.."               
[36] "tGravityAccMag.std.."                
[37] "tBodyAccJerkMag.mean.."              
[38] "tBodyAccJerkMag.std.."               
[39] "tBodyGyroMag.mean.."                 
[40] "tBodyGyroMag.std.."                  
[41] "tBodyGyroJerkMag.mean.."             
[42] "tBodyGyroJerkMag.std.."              
[43] "fBodyAcc.mean...X"                   
[44] "fBodyAcc.mean...Y"                   
[45] "fBodyAcc.mean...Z"                   
[46] "fBodyAcc.std...X"                    
[47] "fBodyAcc.std...Y"                    
[48] "fBodyAcc.std...Z"                    
[49] "fBodyAcc.meanFreq...X"               
[50] "fBodyAcc.meanFreq...Y"               
[51] "fBodyAcc.meanFreq...Z"               
[52] "fBodyAccJerk.mean...X"               
[53] "fBodyAccJerk.mean...Y"               
[54] "fBodyAccJerk.mean...Z"               
[55] "fBodyAccJerk.std...X"                
[56] "fBodyAccJerk.std...Y"                
[57] "fBodyAccJerk.std...Z"                
[58] "fBodyAccJerk.meanFreq...X"           
[59] "fBodyAccJerk.meanFreq...Y"           
[60] "fBodyAccJerk.meanFreq...Z"           
[61] "fBodyGyro.mean...X"                  
[62] "fBodyGyro.mean...Y"                  
[63] "fBodyGyro.mean...Z"                  
[64] "fBodyGyro.std...X"                   
[65] "fBodyGyro.std...Y"                   
[66] "fBodyGyro.std...Z"                   
[67] "fBodyGyro.meanFreq...X"              
[68] "fBodyGyro.meanFreq...Y"              
[69] "fBodyGyro.meanFreq...Z"              
[70] "fBodyAccMag.mean.."                  
[71] "fBodyAccMag.std.."                   
[72] "fBodyAccMag.meanFreq.."              
[73] "fBodyBodyAccJerkMag.mean.."          
[74] "fBodyBodyAccJerkMag.std.."           
[75] "fBodyBodyAccJerkMag.meanFreq.."      
[76] "fBodyBodyGyroMag.mean.."             
[77] "fBodyBodyGyroMag.std.."              
[78] "fBodyBodyGyroMag.meanFreq.."         
[79] "fBodyBodyGyroJerkMag.mean.."         
[80] "fBodyBodyGyroJerkMag.std.."          
[81] "fBodyBodyGyroJerkMag.meanFreq.."     
[82] "angle.tBodyAccMean.gravity."         
[83] "angle.tBodyAccJerkMean..gravityMean."
[84] "angle.tBodyGyroMean.gravityMean."    
[85] "angle.tBodyGyroJerkMean.gravityMean."
[86] "angle.X.gravityMean."                
[87] "angle.Y.gravityMean."                
[88] "angle.Z.gravityMean." 
   

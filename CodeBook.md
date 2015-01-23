Code Book for Human Activity Analysis
------------------------------------------

Step -1
-------
* Read *feature table*, *activity table*
* Read *Training* data and *label* data for each of the observation
* Read *Test* data and *label* data for each of the observation
* Read *Subject* details for both *Test* and *Training* observations

Step -2 
--------
1. Column Bind to merge *Test* data by adding columns of *Test* data, *Label*,*Subject* data
2.  Column Bind to merge *Training* data by adding columns of *Training* observation, *Label*, *subject* data
3. Row Bind the above two tables obtained from 1 & 2 and call it as **merged_set** 

Step -3
--------
* Extract the factors from *feature_table* which represents each of observation columns
* Set factors as column names for **merged_set** along with two new columns at the end for *Activity Label* and *Subject Detail*
* Select (using dplyr)  only columns which contains either **mean** or **std** in their column name

Step -4
---------
* Set the Activity labels to the column containing numerical values

Step -5
---------
* Group the data set by Activity Label, then by Subject Detail and finally summarize by *means* of their value
* Write the tidy data set  as *final_output.txt*


Observation Field/Column Details
----------------------------------

* Analysis data is tidied up to grouped by 
	-	**Activity_Label** [belonging to one of six activities WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING], 
	- 	**Subject_Detail** [1 to 30 participants] 
  -   and *mean* of various parameters observed
* Dimension of the tidy- data is *180 rows* and *88 columns*
* The Columns of the data set is represented below

**"activity_label"**
    - Activity belong to one of the types of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
    
**"subject_detail"** 
    - Representing 1 of 30 participants                   

*"tBodyAcc.mean...X" 
"tBodyAcc.mean...Y"                   
"tBodyAcc.mean...Z"                   
"tGravityAcc.mean...X"                
"tGravityAcc.mean...Y"                
"tGravityAcc.mean...Z"                
"tBodyAccJerk.mean...X"               
"tBodyAccJerk.mean...Y"               
"tBodyAccJerk.mean...Z"               
"tBodyGyro.mean...X"                  
"tBodyGyro.mean...Y"                  
"tBodyGyro.mean...Z"                  
"tBodyGyroJerk.mean...X"              
"tBodyGyroJerk.mean...Y"              
"tBodyGyroJerk.mean...Z"              
"tBodyAccMag.mean.."                  
"tGravityAccMag.mean.."               
"tBodyAccJerkMag.mean.."              
"tBodyGyroMag.mean.."                 
"tBodyGyroJerkMag.mean.."             
"fBodyAcc.mean...X"                   
"fBodyAcc.mean...Y"                   
"fBodyAcc.mean...Z"                   
"fBodyAcc.meanFreq...X"               
"fBodyAcc.meanFreq...Y"               
"fBodyAcc.meanFreq...Z"               
"fBodyAccJerk.mean...X"               
"fBodyAccJerk.mean...Y"               
"fBodyAccJerk.mean...Z"               
"fBodyAccJerk.meanFreq...X"           
"fBodyAccJerk.meanFreq...Y"           
"fBodyAccJerk.meanFreq...Z"           
"fBodyGyro.mean...X"                  
"fBodyGyro.mean...Y"                  
"fBodyGyro.mean...Z"                  
"fBodyGyro.meanFreq...X"              
"fBodyGyro.meanFreq...Y"              
"fBodyGyro.meanFreq...Z"              
"fBodyAccMag.mean.."                  
"fBodyAccMag.meanFreq.."              
"fBodyBodyAccJerkMag.mean.."          
"fBodyBodyAccJerkMag.meanFreq.."      
"fBodyBodyGyroMag.mean.."             
"fBodyBodyGyroMag.meanFreq.."         
"fBodyBodyGyroJerkMag.mean.."         
"fBodyBodyGyroJerkMag.meanFreq.."     
"angle.tBodyAccMean.gravity."         
"angle.tBodyAccJerkMean..gravityMean."
"angle.tBodyGyroMean.gravityMean."    
"angle.tBodyGyroJerkMean.gravityMean."
"angle.X.gravityMean."                
"angle.Y.gravityMean."                
"angle.Z.gravityMean."*
  
- **Mean/Average value of various parameters**
  
*"tBodyAcc.std...X"                    
"tBodyAcc.std...Y"                    
"tBodyAcc.std...Z"                    
"tGravityAcc.std...X"                 
"tGravityAcc.std...Y"                 
"tGravityAcc.std...Z"                 
"tBodyAccJerk.std...X"                
"tBodyAccJerk.std...Y"                
"tBodyAccJerk.std...Z"                
"tBodyGyro.std...X"                   
"tBodyGyro.std...Y"                   
"tBodyGyro.std...Z"                   
"tBodyGyroJerk.std...X"               
"tBodyGyroJerk.std...Y"               
"tBodyGyroJerk.std...Z"               
"tBodyAccMag.std.."                   
"tGravityAccMag.std.."                
"tBodyAccJerkMag.std.."               
"tBodyGyroMag.std.."                  
"tBodyGyroJerkMag.std.."              
"fBodyAcc.std...X"                    
"fBodyAcc.std...Y"                    
"fBodyAcc.std...Z"                    
"fBodyAccJerk.std...X"                
"fBodyAccJerk.std...Y"                
"fBodyAccJerk.std...Z"                
"fBodyGyro.std...X"                   
"fBodyGyro.std...Y"                   
"fBodyGyro.std...Z"                   
"fBodyAccMag.std.."                   
"fBodyBodyAccJerkMag.std.."
"fBodyBodyGyroMag.std.."              
"fBodyBodyGyroJerkMag.std.."*

- **Std.Deviation of various observations **
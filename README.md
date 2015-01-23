
README for the Assignment 
--------------------------

How the Script Works
---------------------

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


Running the Script
--------------------
* Extract the zip file containing assignment data files
* Set the Working Directory to contain the extract of Samsung zip file  in R studio or R console

* The directory structure of extracted zip data should be containing files like below
    + activity_lables.txt
    + features.txt
    + features_info.txt
    + **test**
        + X_test.txt
        + y_test.txt  & other files
    + **train**
        + X_test.txt
        + y_test.txt  & other files
        
* *run_analysis.R* is the R script to combine/merge data from various files and produces the desired output, it is available in the github repo as this *README.md*

* run *run_analysis.R* from the same directory as the extracted files of samsung data

* The output data set is generated in the same directory and it is named as *final_data.txt* which contains the tidy data

* The codebook for the *final_data.txt* is available in the current repository in github as *CodeBook.md*

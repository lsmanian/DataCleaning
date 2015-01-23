
# script to read files, merge data and tidy up
# README: Please refer to README.md before proceeding
library(dplyr)

print("/_/_/_/_ Please refer README.md in GitHub before proceeding, ensure the files/directories are properly placed /_/_/_")
#read feature vector (file ) as table
feature_vector_table <- read.table("features.txt")
#read activity labels as table
activity_table <- read.table("activity_labels.txt")
training_set <- read.table("train/X_train.txt")
#dimension is 7352 rows (observations) and 561 columns (features)
training_set_label <-read.table("train/y_train.txt")
#dimenstion is 7352 rows(label of activity)
test_set <- read.table("test/X_test.txt")
#dimension is 2947 rows(observations) and 561 columns (features)
test_set_label <- read.table("test/y_test.txt")
#dimension is 2947 rows (label of activity)
train_subject_detail <- read.table("train/subject_train.txt")
#7352 rows
test_subject_detail <- read.table("test/subject_test.txt")
# 2947 rows


# create a merged table with
# a. Add columns of (test_set + test_set_label + test_subject_detail)
test_data_merged <- cbind(test_set,test_set_label,test_subject_detail)
# b. Add columns of (training_set + training_set_label+ train_subject_detail)
training_data_merged <- cbind(training_set,training_set_label,train_subject_detail)
# Add b as a row addition to 'a'
merged_set <- rbind(test_data_merged,training_data_merged)

#read each row from feature table
feature_col <- as.character(feature_vector_table$V2)
feature_col <-make.names(feature_col,unique=TRUE)

#set the column names to the merged set along with new labels at the end
colnames(merged_set) <- c(feature_col,"activity_label","subject_detail")

#select columns containing mean/std deviation observed  and last 2 columns added for activity label and subject_detail
filtered_set <- select(merged_set,contains("mean"),contains("std"),contains("activity_label"),contains("subject_detail"))


#set the factor value for integer or numeric value of factor activity
activity_fact <- activity_table$V2
filtered_set$activity_label<-levels(activity_fact)[as.numeric(filtered_set$activity_label)]

#set this option to display all columns and avoid variables not shown warning
options(dplyr.width = Inf)
#summary_by_subject <- merged_set %>% group_by(subject_detail)  %>% summarise_each(funs(mean))
#summary_by_activity <- merged_set %>% group_by(activity_label) %>% summarise_each(funs(mean))

# group first by activity and then by subject and summarize for mean
final_data <- filtered_set %>% group_by(activity_label,subject_detail)  %>% summarise_each(funs(mean))
#write the final output as "final_output.txt"
write.table(final_data,file="final_output.txt",row.name=FALSE)

print("/_/_/_/_ successfully written find_output.txt to the current directory/_/_/_")

TidyData
========

Month 3 Assignment
1.	Read X_train file using read.table to create data frame
2.	Read features file using read.table to create data frame
3.	Read Activity_labels using read.table to create data frame
4.	Assign column names “activity_id” & “activity_desc” to the columns in Activity_label file
5.	Assign the features names to columns (observations) for training file
6.	Read subject_train file using read.table to create data frame
7.	Read y_train file using read.table to create data frame
8.	Assign “subject” column name to subjects in subject_Trai data frame
9.	Assign “activity” column name to activity column to activities in training file
10.	Column merge (X_train,y_train,subject_train) data frames using cbind
11.	Repeat steps #1 to # 10 for test files (X_test,y_test,subject_test)
12.	Combine the resultant Test and Train dataframes using rbind to combine the rows from Test and Train data frames
13.	Extracts only the measurements on the mean and standard deviation for each measurement by Subsetting columns mean and standard deviation from the combined dataframe in step # 12
14.	Uses descriptive activity names to name the activities in the data set by merging the acivity dataframe with dataframe in step # 14  to get the activity names
15.	Create a tidy dataset with the average of each variable for each activity and each subject the average of each variable for each activity and each subject
16.	Write the tidy datset in “TidyDataset.txt”


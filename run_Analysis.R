run_analysis <- function(){
  
  # Read X_training file   
  train.file <- read.table("C:/Users/srinivas/Documents/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "")
  # Read features file 
  feat.file <- read.table("C:/Users/srinivas/Documents/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt", header = FALSE, sep = "")
  # Read Activity file
  act.file <- read.table("C:/Users/srinivas/Documents/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = "") 
  names(act.file) <- c("activity_id","activity_desc")
  # Question 4:Appropriately labels the data set with descriptive variable namesAssign names from features file to training file
  names(train.file) <- feat.file[,2]  
  # Read subject train file
  subjtrain.file <- read.table("C:/Users/srinivas/Documents/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "")
 #Read Y_train
 ytrain.file <- read.table("C:/Users/srinivas/Documents/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "")
 
 # Assign col namnes to subject file and train activity file
 names(subjtrain.file) <- "subject"
 names(ytrain.file) <- "activity"
 
 # Add columns Subject and Activity to the training file
  train.file1 <- cbind(train.file,subjtrain.file,ytrain.file)
  
  #Read X_test file
  test.file <- read.table("C:/Users/srinivas/Documents/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "")
# Question 4:Appropriately labels the data set with descriptive variable namesAssign names from features file to test file
 names(test.file) <- feat.file[,2] 
 
 #Read subject test file
  subjtest.file <- read.table("C:/Users/srinivas/Documents/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "")
 
 names(subjtest.file) <- "subject"
 #Read Activity test file 
  ytest.file <- read.table("C:/Users/srinivas/Documents/R/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "")
 names(ytest.file) <- "activity"
 # Add columns Subject and Activity to the testing file
 test.file1 <- cbind(test.file,subjtest.file,ytest.file)
 
 
  # Question 1:Merges the training and the test sets to create one data setrbind to combine the rows of the training file and Test file
 comb.df <- rbind(test.file1,train.file1)
 
 # Question 2:Extracts only the measurements on the mean and standard deviation for each measurement.Subsetting columns mean and standard deviaiton
 mscomb.df <- comb.df[,c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,373,374,375,424,425,426,427,428,452,453,454,529,530,542,543,552,562,563
                          )]
 
 # Question 3:Uses descriptive activity names to name the activities in the data set.merge to get the activity names
 mergedata <- merge(mscomb.df, act.file, by.x = "activity", by.y = "activity_id") 
 
 # Question 5:Creates a second, independent tidy data set with the average of each variable for each activity and each subjectthe average of each variable for each activity and each subject
 aggrDF <- aggregate(. ~ subject+activity_desc, mergedata,mean)
 Tidy.aggrDF <- aggrDF[,-3]
 
 # Write tidy dataset
 
 write.table(Tidy.aggrDF, file = "TidyDataset.txt", append = FALSE, quote = TRUE, sep = " ",
             eol = "\n", na = "NA", dec = ".", row.names = TRUE,
             col.names = TRUE, qmethod = c("escape", "double"),
             fileEncoding = "")

}

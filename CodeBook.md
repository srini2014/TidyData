
Description of the study:
  "Human Activity Recognition Using Smartphones " was a study carried out by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto at Smartlab - Non Linear Complex Systems Laboratory.
Sampling information:
This study involved experiments on 30 volunteers within age group of 19-48 years wearing smartphone (Samsung Galaxy S II) and performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).Using the  embedded accelerometer and gyroscope of the smart phone,3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Technical information about the input files:
1.	X_Train.Txt : Training set with 561 time and frequency domain variables(Variables described below). These variables are Numeric 
2.	X_Test.Txt: Test set with 561 time and frequency domain variables(Variables described below). These variables are Numeric .
⦁	tBodyAcc-XYZ - Body Acceleration Signals. 
⦁	tGravityAcc-XYZ - gravity acceleration signals.
⦁	tBodyAccJerk-XYZ - Body linear Acceleration Jerk signals 
⦁	tBodyGyroJerk-XYZ - Body angular velocity
⦁	tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag - magnitude of these three-dimensional signals 
⦁	fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag - Frequency of domain signals
⦁	** '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions
The set of variables that were estimated from these signals are: 

⦁	mean(): Mean value
⦁	std(): Standard deviation
⦁	mad(): Median absolute deviation 
⦁	max(): Largest value in array
⦁	min(): Smallest value in array
⦁	sma(): Signal magnitude area
⦁	energy(): Energy measure. Sum of the squares divided by the number of values. 
⦁	iqr(): Interquartile range 
⦁	entropy(): Signal entropy
⦁	arCoeff(): Autorregresion coefficients with Burg order equal to 4
⦁	correlation(): correlation coefficient between two signals
⦁	maxInds(): index of the frequency component with largest magnitude
⦁	meanFreq(): Weighted average of the frequency components to obtain a mean frequency
⦁	skewness(): skewness of the frequency domain signal 
⦁	kurtosis(): kurtosis of the frequency domain signal 
⦁	bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
⦁	angle(): Angle between to vectors.
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

⦁	gravityMean
⦁	tBodyAccMean
⦁	tBodyAccJerkMean
⦁	tBodyGyroMean
⦁	tBodyGyroJerkMean

3. subject_test / subject_train: File with the information on the 30 volunteers participating the experiment. Subjects represeted by numeric data of length 1.

4. y_train/y_test: File with information with 6 activities. Activities represnted by numeric data of length 1.
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

5.features: File with informaiton of the features measured for the subjects


Cleaning of data and creation of Tidy Data set:

I.	Read the Test and Train data sets.
II.	Assign the column names from features  to the Test and Train data sets
III.	Merge the Test ,activity and subject datasets to create a combined dataset for the Test experiment
IV.	Merge the Train ,activity and subject datasets to create a combined dataset for the Test experiment
V.	Combine the resultant Test and Train datasets from steps III and IV 
VI.	Create a Tidy Dataset by adding the activiy descriptions for the dataset in step 5 and with the average of each variable for each activity and each subject

# CodeBook for Getting and Cleaning Data Course Project

Every variable in the dataset except for the **Subject** and **Activity** is the 
mean value of the data obtained for the respective **Subject** and **Activity**.

In the following description postfix '-XYZ' means that this dictionary item 
describes three similar variables at once (measurements with respect to the X,
Y and Z axes). Postfixes '-mean()' and '-std()' describe mean value and standard
deviation of measurements.

## Data Dictionary

**Subject** &mdash; code of subject individual (int: min = 1, max = 30)

**Activity** &mdash; one of six activity types (factor: one of [LAYING, SITTING,
 STANDING, WALKING, WALKING\_DOWNSTAIRS, WALKING\_UPSTAIRS])

**tBodyAcc-mean()-XYZ** &mdash; mean of the mean body acceleration signal in the
 time domain (float)
 
**tBodyAcc-std()-XYZ** &mdash; mean of the standard deviation of the body 
acceleration signal in the time domain (float)

**tGravityAcc-mean()-XYZ** &mdash; mean of the mean gravity acceleration 
signal in the time domain (float)

**tGravityAcc-std()-XYZ** &mdash; mean of the standard deviation of the
 gravity acceleration signal in the time domain (float)

**tBodyAccJerk-mean()-XYZ** &mdash; mean of the mean body linear acceleration derivative in the time domain
**tBodyAccJerk-std()-XYZ** &mdash; mean of the standard deviation of the body linear acceleration derivative in the time domain

**tBodyGyro-mean()-XYZ** &mdash; mean of the mean body angular velocity in the time domain
**tBodyGyro-std()-XYZ** &mdash; mean of the standard deviation of the body angular velocity in the time domain

**tBodyGyroJerk-mean()-XYZ** &mdash; mean of the mean body angular velocity derivative in the time domain
**tBodyGyroJerk-std()-XYZ** &mdash; mean of the standard deviation of the body angular velocity derivative in the time domain

**tBodyAccMag-mean()** &mdash; mean of the mean magnitude (Euclidean norm) of the body acceleration signal in the time domain
**tBodyAccMag-std()** &mdash; mean of the standard deviation of the magnitude (Euclidean norm) of the body acceleration signal in the time domain

**tGravityAccMag-mean()** &mdash; mean of the mean magnitude (Euclidean norm) of the gravity acceleration signal in the time domain
**tGravityAccMag-std()** &mdash; mean of the standard deviation of the magnitude (Euclidean norm) of the gravity acceleration signal in the time domain

**tBodyAccJerkMag-mean()** &mdash; mean of the mean magnitude (Euclidean norm) of the body linear acceleration derivative in the time domain
**tBodyAccJerkMag-std()** &mdash; mean of the standard deviation of the magnitude (Euclidean norm) of the body linear acceleration derivative in the time domain

**tBodyGyroMag-mean()** &mdash; mean of the mean magnitude (Euclidean norm) of the body angular velocity in the time domain
**tBodyGyroMag-std()** &mdash; mean of the standard deviation of the magnitude (Euclidean norm) of the body angular velocity in the time domain

**tBodyGyroJerkMag-mean()** &mdash; mean of the mean magnitude (Euclidean norm) of the body angular velocity derivative in the time domain
**tBodyGyroJerkMag-std()** &mdash; mean of the standard deviation of the magnitude (Euclidean norm) of the body angular velocity derivative in the time domain

**fBodyAcc-mean()-XYZ** &mdash; mean of the mean Fast Fourier Transform of the 'tBodyAcc-' variables
**fBodyAcc-std()-XYZ** &mdash; mean of the standard deviation of the Fast Fourier Transform of the 'tBodyAcc-' variables

**fBodyAccJerk-mean()-XYZ** &mdash; mean of the mean Fast Fourier Transform of the 'tBodyAccJerk-' variables
**fBodyAccJerk-std()-XYZ** &mdash; mean of the standard deviation of the Fast Fourier Transform of the 'tBodyAccJerk-' variables

**fBodyGyro-mean()-XYZ** &mdash; mean of the mean Fast Fourier Transform of the 'tBodyGyro-' variables
**fBodyGyro-std()-XYZ** &mdash; mean of the standard deviation of the Fast Fourier Transform of the 'tBodyGyro-' variables

**fBodyAccMag-mean()** &mdash; mean of the mean Fast Fourier Transform of the 'tBodyAccMag-' variables
**fBodyAccMag-std()** &mdash; mean of the standard deviation of the Fast Fourier Transform of the 'tBodyAccMag-' variables

**fBodyBodyAccJerkMag-mean()** &mdash; mean of the mean Fast Fourier Transform of the unknown variables
**fBodyBodyAccJerkMag-std()** &mdash; mean of the standard deviation of the Fast Fourier Transform of the unknown variables

**fBodyBodyGyroMag-mean()** &mdash; mean of the mean Fast Fourier Transform of the unknown variables
**fBodyBodyGyroMag-std()** &mdash; mean of the standard deviation of the Fast Fourier Transform of the unknown variables

**fBodyBodyGyroJerkMag-mean()** &mdash; mean of the mean Fast Fourier Transform of the unknown variables
**fBodyBodyGyroJerkMag-std()** &mdash; mean of the standard deviation of the Fast Fourier Transform of the unknown variables

## How to Get the Data

You can either load the data from the *mean_df.txt* file
```{r}
tidy_df <- read.table('mean_df.txt', header = TRUE, sep = " ")
```
or run the *run_analysis.R* script, which performs the following operations:

- reads and merges train and test datasets
- selects the columns, that contain measurements for mean() and std() 
variables described above
- reads activity labels from *activity_labels.txt*
- merges two data frames to form new activity column from activity labels
- removes unnecessary columns: row id and activity id
- reads features list from *features.txt* and sets the descriptive names to the
 columns of the dataset-
- creates tidy data frame with mean of each value for each subject/activity 
combination
- writes tidy data frame into *mean_df.txt* file


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

**tBodyAccJerk-mean()-XYZ** &mdash; mean of the mean body linear acceleration derivative in the time domain (float)

**tBodyAccJerk-std()-XYZ** &mdash; mean of the standard deviation of the body linear acceleration derivative in the time domain (float)

**tBodyGyro-mean()-XYZ** &mdash; mean of the mean body angular velocity in the time domain (float)

**tBodyGyro-std()-XYZ** &mdash; mean of the standard deviation of the body angular velocity in the time domain (float)

**tBodyGyroJerk-mean()-XYZ** &mdash; mean of the mean body angular velocity derivative in the time domain (float)

**tBodyGyroJerk-std()-XYZ** &mdash; mean of the standard deviation of the body angular velocity derivative in the time domain (float)

**tBodyAccMag-mean()** &mdash; mean of the mean magnitude (Euclidean norm) of the body acceleration signal in the time domain (float)

**tBodyAccMag-std()** &mdash; mean of the standard deviation of the magnitude (Euclidean norm) of the body acceleration signal in the time domain (float)

**tGravityAccMag-mean()** &mdash; mean of the mean magnitude (Euclidean norm) of the gravity acceleration signal in the time domain (float)

**tGravityAccMag-std()** &mdash; mean of the standard deviation of the magnitude (Euclidean norm) of the gravity acceleration signal in the time domain (float)

**tBodyAccJerkMag-mean()** &mdash; mean of the mean magnitude (Euclidean norm) of the body linear acceleration derivative in the time domain (float)

**tBodyAccJerkMag-std()** &mdash; mean of the standard deviation of the magnitude (Euclidean norm) of the body linear acceleration derivative in the time domain (float)

**tBodyGyroMag-mean()** &mdash; mean of the mean magnitude (Euclidean norm) of the body angular velocity in the time domain (float)

**tBodyGyroMag-std()** &mdash; mean of the standard deviation of the magnitude (Euclidean norm) of the body angular velocity in the time domain (float)

**tBodyGyroJerkMag-mean()** &mdash; mean of the mean magnitude (Euclidean norm) of the body angular velocity derivative in the time domain (float)

**tBodyGyroJerkMag-std()** &mdash; mean of the standard deviation of the magnitude (Euclidean norm) of the body angular velocity derivative in the time domain (float)

**fBodyAcc-mean()-XYZ** &mdash; mean of the mean Fast Fourier Transform of the 'tBodyAcc-' variables (float)

**fBodyAcc-std()-XYZ** &mdash; mean of the standard deviation of the Fast Fourier Transform of the 'tBodyAcc-' variables (float)

**fBodyAccJerk-mean()-XYZ** &mdash; mean of the mean Fast Fourier Transform of the 'tBodyAccJerk-' variables (float)

**fBodyAccJerk-std()-XYZ** &mdash; mean of the standard deviation of the Fast Fourier Transform of the 'tBodyAccJerk-' variables (float)

**fBodyGyro-mean()-XYZ** &mdash; mean of the mean Fast Fourier Transform of the 'tBodyGyro-' variables (float)

**fBodyGyro-std()-XYZ** &mdash; mean of the standard deviation of the Fast Fourier Transform of the 'tBodyGyro-' variables (float)

**fBodyAccMag-mean()** &mdash; mean of the mean Fast Fourier Transform of the 'tBodyAccMag-' variables (float)

**fBodyAccMag-std()** &mdash; mean of the standard deviation of the Fast Fourier Transform of the 'tBodyAccMag-' variables (float)

**fBodyBodyAccJerkMag-mean()** &mdash; mean of the mean Fast Fourier Transform of the unknown variables (float)

**fBodyBodyAccJerkMag-std()** &mdash; mean of the standard deviation of the Fast Fourier Transform of the unknown variables (float)

**fBodyBodyGyroMag-mean()** &mdash; mean of the mean Fast Fourier Transform of the unknown variables (float)

**fBodyBodyGyroMag-std()** &mdash; mean of the standard deviation of the Fast Fourier Transform of the unknown variables (float)

**fBodyBodyGyroJerkMag-mean()** &mdash; mean of the mean Fast Fourier Transform of the unknown variables (float)

**fBodyBodyGyroJerkMag-std()** &mdash; mean of the standard deviation of the Fast Fourier Transform of the unknown variables (float)

## Notes for the Data Dictionary

It is unclear from the documentation how did the authors of the original dataset
 obtained last six variables, so I could not describe them properly.

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


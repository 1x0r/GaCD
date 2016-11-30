### Task 1: Merge the training and the test sets to create one data set.
# reading train and test sets...
X_train       <- read.table(file.path('train', 'X_train.txt'))
y_train       <- read.table(file.path('train', 'y_train.txt'))
subject_train <- read.table(file.path('train', 'subject_train.txt'))
X_test        <- read.table(file.path('test', 'X_test.txt'))
y_test        <- read.table(file.path('test', 'y_test.txt'))
subject_test  <- read.table(file.path('test', 'subject_test.txt'))

# merging train and test sets...
d1 <- cbind(rbind(X_train, X_test), 
            rbind(subject_train, subject_test),
            rbind(y_train, y_test))

### Task 2: Extract only the measurements on the mean and standard deviation for each measurement.
# defining the column numbers, that contain measurements described above 
# (numbers were taken from 'features.txt' file)
cols <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228,
          240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517,
          529:530, 542:543, 562, 563)

# filtering data
d1 <- d1[, cols]

### Task 3: Use descriptive activity names to name the activities in the data set.
# reading activity labels...
act_labels <- read.table('activity_labels.txt')

# getting activity column (former y_train & y_test data frames)
act_column <- dim(d1)[2]

# creating auxilliary column with row number
d1$id <- 1:nrow(d1)

# merging two data frames to form new activity column from activity labels
d1 <- merge(d1, act_labels, by.x = act_column, by.y = 1)

# resorting data frame in the original order
d1 <- d1[order(d1$id), ]

# removing extra columns: row id and activity id
d1[1] <- NULL
d1$id <- NULL

# resetting index
row.names(d1) <- 1:nrow(d1)

### Task 4: Appropriately label the data set with descriptive variable names.
# reading features...
features <- read.table('features.txt')

# filtering features...
features <- features[cols[1:(length(cols)-2)], 2]

# here I set the descriptive names to the columns of the dataset
names(d1) <- c(as.vector(features), c("Subject", "Activity"))

### Task 5: From the data set in step 4, creates a second, independent tidy data set
###         with the average of each variable for each activity and each subject.
# loading library for convenient summarizing and grouping/ungrouping
library(dplyr)

# creating tidy data frame with mean of each value for each subject/activity combination
tidy_df <- ungroup(summarize_all(group_by(d1, Subject, Activity), mean))

# writing tidy data frame into file with space (" ") delimiter
write.table(tidy_df, file = "mean_df.txt", sep = " ", row.names = FALSE)







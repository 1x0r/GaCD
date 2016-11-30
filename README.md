# Peer-graded Assignment: Getting and Cleaning Data Course Project

This repository contains R code (in *run_analysis.R*), assignment and work 
description (*README.md*, this file) and file with variables description 
(*CodeBook.md*).

## Instructions from the Coursera

The purpose of this project is to demonstrate the ability to collect, work with,
and clean a data set.

### Review criteria

- The submitted data set is tidy.
- The Github repo contains the required scripts.
- GitHub contains a code book that modifies and updates the available codebooks
with the data to indicate all the variables and summaries calculated, along with
 units, and any other relevant information.
- The README that explains the analysis files is clear and understandable.
- The work submitted for this project is the work of the student who submitted 
it.

### Source dataset short description

One of the most exciting areas in all of data science right now is wearable 
computing &mdash; see for example this article. Companies like Fitbit, Nike, and
Jawbone Up are racing to develop the most advanced algorithms to attract new 
users. The data linked to from the course website represent data collected from 
the accelerometers from the Samsung Galaxy S smartphone. 

A full description is available at the 
[UCI ML Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

Data for this project was obtained from [this source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

### Data processing

R script called *run_analysis.R* does processes source data to obtain **tidy** 
dataset. It follows these steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each
 measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with
 the average of each variable for each activity and each subject.

For the reviewer's convenience I commented each step in *run_analysis.R* 
according to this list.

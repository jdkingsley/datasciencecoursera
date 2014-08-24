## run_analysis.R
## August 24, 2014

## The purpose of this script is to collect, clean, and tidy data found at the
## UCI Machine Learning Repository collected by acceleration and gryo
## sensors within a cell phone. The sensor data was collected during various
## activities. The resulting tidy data file contains mean of the mean and
## standard deviation of the magnitude of acceleration of the body for the
## activities.

## Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
## Citation: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L.
## Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly
## Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012).
## Vitoria-Gasteiz, Spain. Dec 2012

## This script will read data files from the working directory of the current R
## session.

library(reshape2)
library(plyr)

## Read the various files for the training and test datasets
test.subject<-read.table("UCI HAR Dataset//test//subject_test.txt")
test.x<-read.table("UCI HAR Dataset//test//X_test.txt")
test.y<-read.table("UCI HAR Dataset//test//y_test.txt")
train.subject<-read.table("UCI HAR Dataset//train//subject_train.txt")
train.x<-read.table("UCI HAR Dataset//train/X_train.txt")
train.y<-read.table("UCI HAR Dataset//train//y_train.txt")

## Read lables for activities and features
activity<-read.table("UCI HAR Dataset//activity_labels.txt")
feature<-read.table("UCI HAR Dataset//features.txt")

## give some columns more meaningful names. This will be useful in the next steps
colnames(train.subject) <- c("subject")
colnames(train.y) <- c("activityId")
colnames(test.subject) <- c("subject")
colnames(test.y) <- c("activityId")

## Combine the 3 files of the training dataset into one data frame named train
train<-cbind(train.subject, train.y, train.x)
## Combine the 3 files of the test dataset into one data frame named test
test<-cbind(test.subject, test.y, test.x)
## combine the rows of training and test data frames
alldata <- rbind(train, test)

## Extract the columns of interest (ids, mean, standard deviation); all rows;
## then add better names for the measurement columns
mean_sd <- alldata[,c("subject","activityId", "V201", "V202")]
colnames(mean_sd) <- c("activityId", "subject", "Mean_Body_Acc_Magnitude","StdDev_Body_Acc_Magnitude")

## Add descriptive names for activities; mostly for clarity
colnames(activity)<-c("activityId","activity")

## Join the descriptive names of the actitities (found in activity.txt)
## to the activity Ids found in training and test data sets. Note that inner
## join is used to eliminate any data that does not have an acctivity assigned
mean_sd <- join(activity, mean_sd, by="activityId", type="inner")

## Create a tall tidy frame of the Body Acceleration Magnitude measurements
tidy.mean_sd <- melt(mean_sd, id.vars=c("activity","subject"), measure.vars=
                         c("Mean_Body_Acc_Magnitude","StdDev_Body_Acc_Magnitude") )

## Cast the Body Acceleration Magnitudes into a table as the mean of each
## activity and persist it in a file.
tidy.bodyAccActivity <- dcast(tidy.mean_sd, activity~variable,mean)
write.table(tidy.bodyAccActivity, "BodyAccActivity.txt", row.name=FALSE)

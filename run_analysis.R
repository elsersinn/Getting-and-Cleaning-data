
library(plyr)

## Read raw data

features <- read.table ("./features.txt")
activity_labels <- read.table ("./activity_labels.txt")

test_obs <- read.table ("./test/X_test.txt")
test_activity <- read.table ("./test/y_test.txt")

train_obs <- read.table ("./train/X_train.txt")
train_activity <- read.table ("./train/y_train.txt")

activity_labels <- read.table ("./activity_labels.txt")

## Add activity data 

colnames(test_obs)<- features[,2]
test_obs <- cbind(test_obs,test_activity)
colnames(test_obs)[562]<- "activity"



colnames(train_obs)<- features[,2]
train_obs <- cbind(train_obs,train_activity)
colnames(train_obs)[562]<- "activity"


## Prepare activity reference data

colnames(activity_labels)<-c("activity","activity_description")


## Merge train,test and activity data

complete_data <-rbind(test_obs,train_obs)

complete_data <- merge(complete_data,activity_labels,all=TRUE)






## subset mean and std data

subset <- complete_data[,grepl('mean',colnames(complete_data))&!grepl('meanF',colnames(complete_data))|grepl('std',colnames(complete_data))]
subset <- cbind(subset,complete_data$activity_description)


## Set proper colnames

colnames (subset) <- c("Signal_body_acceleration_X_axis_mean","Signal_body_acceleration_Y_axis_mean",
                       "Signal_body_acceleration_Z_axis_mean","Signal_body_acceleration_X_axis_st_dev",
                       "Signal_body_acceleration_Y_axis_st_dev","Signal_body_acceleration_Z_axis_st_dev",
                       "Signal_gravity_acceleration_X_axis_mean","Signal_gravity_acceleration_Y_axis_mean",
                       "Signal_gravity_acceleration_Z_axis_mean","Signal_gravity_acceleration_X_axis_st_dev",
                       "Signal_gravity_acceleration_Y_axis_st_dev","Signal_gravity_acceleration_Z_axis_st_dev",
                       "Signal_AccJerk_acceleration_X_axis_mean","Signal_AccJerk_acceleration_Y_axis_mean",
                       "Signal_AccJerk_acceleration_Z_axis_mean","Signal_AccJerk_acceleration_X_axis_st_dev",
                       "Signal_AccJerk_acceleration_Y_axis_st_dev","Signal_AccJerk_acceleration_Z_axis_st_dev",
                       "Signal_gyroscope_acceleration_X_axis_mean","Signal_gyroscope_acceleration_Y_axis_mean",
                       "Signal_gyroscope_acceleration_Z_axis_mean","Signal_gyroscope_acceleration_X_axis_st_dev",
                       "Signal_gyroscope_acceleration_Y_axis_st_dev","Signal_gyroscope_acceleration_Z_axis_st_dev",
                       "Signal_gyrojerk_acceleration_X_axis_mean","Signal_gyrojerk_acceleration_Y_axis_mean",
                       "Signal_gyrojerk_acceleration_Z_axis_mean","Signal_gyrojerk_acceleration_X_axis_st_dev",
                       "Signal_gyrojerk_acceleration_Y_axis_st_dev","Signal_gyrojerk_acceleration_Z_axis_st_dev",
                       "Signal_body_acceleration_magnitude_mean","Signal_body_acceleration_magnitude_st_dev",
                       "Signal_gravity_acceleration_magnitude_mean", "Signal_gravity_acceleration_magnitude_st_dev",
                       "Signal_AccJerk_acceleration_magnitude_mean","Signal_AccJerk_acceleration_magnitude_st_dev",
                       "Signal_gyroscope_acceleration_magnitude_mean","Signal_gyroscope_acceleration_magnitude_st_dev",
                       "Signal_gyrojerk_acceleration_magnitude_mean","Signal_gyrojerk_acceleration_magnitude_st_mean",
                       "Signal_body_acceleration_X_axis_mean","Signal_body_acceleration_Y_axis_mean",
                       "Signal_body_acceleration_Z_axis_mean","Signal_body_acceleration_X_axis_st_dev",
                       "Signal_body_acceleration_Y_axis_st_dev","Signal_body_acceleration_Z_axis_st_dev",
                       "Signal_AccJerk_acceleration_X_axis_mean","Signal_AccJerk_acceleration_Y_axis_mean",
                       "Signal_AccJerk_acceleration_Z_axis_mean","Signal_AccJerk_acceleration_X_axis_st_dev",
                       "Signal_AccJerk_acceleration_Y_axis_st_dev","Signal_AccJerk_acceleration_Z_axis_st_dev",
                       "Signal_gyroscope_acceleration_X_axis_mean","Signal_gyroscope_acceleration_Y_axis_mean",
                       "Signal_gyroscope_acceleration_Z_axis_mean","Signal_gyroscope_acceleration_X_axis_st_dev",
                       "Signal_gyroscope_acceleration_Y_axis_st_dev","Signal_gyroscope_acceleration_Z_axis_st_dev",   
                       "Signal_body_acceleration_magnitude_mean","Signal_body_acceleration_magnitude_st_dev",
                       "Signal_gravity_acceleration_magnitude_mean", "Signal_gravity_acceleration_magnitude_st_dev",
                       "Signal_AccJerk_acceleration_magnitude_mean","Signal_AccJerk_acceleration_magnitude_st_dev",
                       "Signal_gyroscope_acceleration_magnitude_mean","Signal_gyroscope_acceleration_magnitude_st_dev",
                       "Activity")



## 5 - Create datawith the average of each variable for each activity 
library(reshape2)
datamelt <- melt(subset,id="Activity")

final <- dcast(datamelt,Activity~variable,mean)

write.table(final,"final.txt", row.name=FALSE) 
dev.off()

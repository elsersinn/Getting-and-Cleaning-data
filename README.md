The script expects the files to be in the working directory. The steps followed are:


## Read raw data

## Add activity data 

## Prepare activity reference data

## Merge train,test and activity data

## subset mean and std data

## Set proper colnames

## Create datawith the average of each variable for each activity 



The data book is:

Variables:

"Signal_body_acceleration_X_axis_mean","Signal_body_acceleration_Y_axis_mean",
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
                       "Activity"
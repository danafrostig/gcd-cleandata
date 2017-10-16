CodeBook
----


## Data

This code book summarizes the data in ```tidy_data.txt``` (created in ```run_analysis.R```)

## Variables
### Identifiers
* **subject**  - ranges from 1-30, identifies subject

* **activity** - 6 activities were recorded
    + WALKING
    + WALKING_UPSTAIRS
    + WALKING_DOWNSTAIRS
    + SITTING
    + STANDING
    + LAYING

### Variables
* Each row contains the following information for each subject/activity
    + timeBodyAccMeanX
    + timeBodyAccMeanY                   
    + timeBodyAccMeanZ
    + timeBodyAccStdDevX
    + timeBodyAccStdDevY
    + timeBodyAccStdDevZ
    + timeGravityAccMeanX
    + timeGravityAccMeanY
    + timeGravityAccMeanZ
    + timeGravityAccStdDevX
    + timeGravityAccStdDevY
    + timeGravityAccStdDevZ
    + timeBodyAccJerkMeanX
    + timeBodyAccJerkMeanY
    + timeBodyAccJerkMeanZ            
    + timeBodyAccJerkStdDevX              
    + timeBodyAccJerkStdDevY              
    + timeBodyAccJerkStdDevZ              
    + timeBodyGyroMeanX                   
    + timeBodyGyroMeanY                   
    + timeBodyGyroMeanZ                   
    + timeBodyGyroStdDevX                 
    + timeBodyGyroStdDevY                 
    + timeBodyGyroStdDevZ                 
    + timeBodyGyroJerkMeanX               
    + timeBodyGyroJerkMeanY               
    + timeBodyGyroJerkMeanZ               
    + timeBodyGyroJerkStdDevX             
    + timeBodyGyroJerkStdDevY             
    + timeBodyGyroJerkStdDevZ             
    + timeBodyAccMagMean                 
    + timeBodyAccMagStdDev                
    + timeGravityAccMagMean               
    + timeGravityAccMagStdDev             
    + timeBodyAccJerkMagMean              
    + timeBodyAccJerkMagStdDev            
    + timeBodyGyroMagMean                 
    + timeBodyGyroMagStdDev               
    + timeBodyGyroJerkMagMean             
    + timeBodyGyroJerkMagStdDev           
    + freqBodyAccMeanX                    
    + freqBodyAccMeanY                    
    + freqBodyAccMeanZ                    
    + freqBodyAccStdDevX                  
    + freqBodyAccStdDevY                  
    + freqBodyAccStdDevZ                  
    + freqBodyAccMeanFreqX                
    + freqBodyAccMeanFreqY                
    + freqBodyAccMeanFreqZ                
    + freqBodyAccJerkMeanX                
    + freqBodyAccJerkMeanY                
    + freqBodyAccJerkMeanZ                
    + freqBodyAccJerkStdDevX              
    + freqBodyAccJerkStdDevY              
    + freqBodyAccJerkStdDevZ              
    + freqBodyAccJerkMeanFreqX            
    + freqBodyAccJerkMeanFreqY            
    + freqBodyAccJerkMeanFreqZ            
    + freqBodyGyroMeanX                   
    + freqBodyGyroMeanY                   
    + freqBodyGyroMeanZ                   
    + freqBodyGyroStdDevX                 
    + freqBodyGyroStdDevY                 
    + freqBodyGyroStdDevZ                 
    + freqBodyGyroMeanFreqX               
    + freqBodyGyroMeanFreqY               
    + freqBodyGyroMeanFreqZ              
    + freqBodyAccMagMean                 
    + freqBodyAccMagStdDev                
    + freqBodyAccMagMeanFreq              
    + freqBodyAccJerkMagMean              
    + freqBodyAccJerkMagStdDev            
    + freqBodyAccJerkMagMeanFreq          
    + freqBodyGyroMagMean                 
    + freqBodyGyroMagStdDev               
    + freqBodyGyroMagMeanFreq             
    + freqBodyGyroJerkMagMean             
    + freqBodyGyroJerkMagStdDev           
    + freqBodyGyroJerkMagMeanFreq         
    + angle(tBodyAccMean,Gravity)         
    + angle(tBodyAccJerkMean),GravityMean)
    + angle(tBodyGyroMean,GravityMean)    
    + angle(tBodyGyroJerkMean,GravityMean)
    + angle(X,GravityMean)                
    + angle(Y,GravityMean)                
    + angle(Z,GravityMean)                
         
    
## Transformations
The following changes were applied to the source data:

1. The training and tests sets were merged together to form one data set
2. The data for mean and standard deviation were extracted for each measurement
3. The activity identifiers were applied to the dataset
4. Variable names were cleaned up
    i) special characters were removed
    ii) ```t``` and ```f``` were translated to ```time``` and ```freq```, per appropriate domain
    iii) cases were corrected and abbreviations were clarified
5. Another data set was created with the average of each variable for each activity and each subject.

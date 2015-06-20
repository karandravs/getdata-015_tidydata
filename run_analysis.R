directoryName <- "UCI HAR Dataset"

if(!file.exists(directoryName)){

        # Create and download temporary zip file from url
        temp <- tempfile()
        remoteFile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(remoteFile,temp)
        
        # Unzip and delete zip file
        unzip(temp,overwrite = TRUE)
        unlink(temp)
}


# load activity labels
activityFilePath <- file.path(getwd(),directoryName,"activity_labels.txt")
activityData <- read.delim(activityFilePath, header = FALSE, sep=" ")


# load features
featureFilePath <- file.path(getwd(),directoryName,"features.txt")
featureData <- read.delim(featureFilePath, header = FALSE, sep=" ")

# create indexes vector for mean and standard deviation from features
meanIndexes <- grep("mean()",featureData$V2,fixed=TRUE)
stdIndexes <- grep("std()",featureData$V2,fixed=TRUE)

# load training data set
trainingFolderPath <- file.path(getwd(),directoryName,"train")
trainingXFile <- file.path(trainingFolderPath,"X_train.txt")
trainingYFile <- file.path(trainingFolderPath,"y_train.txt")
subjectTrainingFile <- file.path(trainingFolderPath,"subject_train.txt")
trainingX <- read.delim(trainingXFile, header = FALSE, sep="")
trainingY <- read.delim(trainingYFile, header = FALSE, sep=" ")
trainingSubject <- read.delim(subjectTrainingFile, header = FALSE, sep=" ")

# load test data set
testFolderPath <- file.path(getwd(),directoryName,"test")
testXFile <- file.path(testFolderPath,"X_test.txt")
testYFile <- file.path(testFolderPath,"y_test.txt")
subjectTestFile <- file.path(testFolderPath,"subject_test.txt")
testX <- read.delim(testXFile, header = FALSE, sep="")
testY <- read.delim(testYFile, header = FALSE, sep=" ")
testSubject <- read.delim(subjectTestFile, header = FALSE, sep=" ")

# merge training and test data frames on row bind
mergedData <- rbind(trainingX,testX)
mergedDataActivity <- rbind(trainingY,testY)
mergedSubject <-rbind(trainingSubject,testSubject)

# create labels of Y from activity data for labels 
mergedDataActivity[,] <- activityData[mergedDataActivity[,],2]
# Assign col name for activity
colnames(mergedDataActivity) <- "Activity"
# Assign col name for subject
colnames(mergedSubject) <- "Subject"

# extract and assign only data from meanIndexes and standardIndexes columns
mergedData <- mergedData[,c(meanIndexes,stdIndexes)]
# assign colnames from feature txts
colnames(mergedData)<-featureData[c(meanIndexes,stdIndexes),2]

# column bind data for activity and subject
tidyData <- cbind(mergedData,mergedDataActivity,mergedSubject)

# melt data by using activity and subject as id and all other colnames as variables for measurement
meltedData <- melt(tidyData,id=c("Activity","Subject"),measure.vars=featureData[c(meanIndexes,stdIndexes),2])

# cast data into table format by grouping on id's subject and activity vs mean of variables
castData <- dcast(meltedData, Subject+Activity~variable,mean)

# write data to txt file 
write.table(castData,file="output.txt",row.name=FALSE)

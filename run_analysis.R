#Set the file URL for the zipped data file and download the data
fileURL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile="UCI_HAR_Data.zip")

#unzip the data set
unzip("UCI_HAR_Data.zip")

#Read the test data, test subject file and the test activity file
testDat<-read.table("./UCI HAR Dataset/test/X_test.txt")
testSubj<-read.table("./UCI HAR Dataset/test/subject_test.txt")
testAct<-read.table("./UCI HAR Dataset/test/y_test.txt")

#Read the activity file and features file which apply to both the test and train data
activity<-read.table("./UCI HAR Dataset/activity_labels.txt")
features<-read.table("./UCI HAR Dataset/features.txt", colClasses=c("numeric", "character"))

#find columns containing mean and std measures
x<-grep("mean|std", features[,2])

#extract measures for mean and std for the test data set
testDatsel<-testDat[,x]

#read in the training data set along with the activity and subject data
trainDat<-read.table("./UCI HAR Dataset/train/X_train.txt")
trainSubj<-read.table("./UCI HAR Dataset/train/subject_train.txt")
trainAct<-read.table("./UCI HAR Dataset/train/y_train.txt")

#extract measures for mean and std for the train data set
trainDatsel<-trainDat[,x]

#merge the test and train data sets, with mean and std already extracted
data<-testDatsel
data<-rbind(data, trainDatsel)

#merge the activity data for test and train
dataActivity<-testAct
dataActivity<-rbind(dataActivity, trainAct)

#merge the subject data for test and train
dataSubject<-testSubj
dataSubject<-rbind(dataSubject, trainSubj)

#add descriptive activity names to the data set
activityText<- activity[dataActivity[,1], "V2"]
data$Activity<-activityText

#add subject to the data set
data$Subject<-dataSubject[,"V1"]

#rename variables with descriptive names
reducedFeatures<-features[x,"V2"]
reducedFeatures<-append(reducedFeatures, "Activity")
reducedFeatures<-append(reducedFeatures, "Subject")
names(data)<-reducedFeatures

#melt data to get a skinny set with activity, subject, feature and value.
redFeat<-reducedFeatures[1:79]
dataMelt<-melt(data, id=c("Activity", "Subject"), measure.vars=redFeat)

#Part 5: Get the mean for each feature by subject and activity.
pt5<-tapply(dataMelt[,"value"], list(dataMelt$Activity, dataMelt$Subject, dataMelt$variable), mean)
flat<-as.data.frame.table(pt5, responseName="mean")
names(flat) <- c("Activity", "Subject", "Variable", "Mean")

#Output data set to a csv file
write.csv(flat, file="activity_subject_means.csv")

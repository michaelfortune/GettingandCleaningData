## run_analysis.R
## Coursera - Getting and Cleaning Data
## Create and output a data set containing mean and standard deviation data 
## using combined training and test data relating to the Samsung Galaxy S, read from files contained in subdirectories

# Load and attach data.table
# If not already installed, remove # in next line i.e. install.packages("data.table")
#install.packages("data.table")
require("data.table") 

#Load and attach reshape2 
# If not already installed, remove # in next line i.e. install.packages("reshape2")
#install.packages("reshape2") 
require("reshape2") 

# Read the activity labels from activity_labels.txt found in the UCI HAR Dataset directory 
act_labs <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2] 

# Read the column names from features.txt found in the UCI HAR Dataset 
col_nmes <- read.table("./UCI HAR Dataset/features.txt")[,2] 

# select mean and standard deviation data 
selected_data <- grepl("mean|std", col_nmes) 

# Read the X_test data from the X_test.txt file within the test subdirectory of the UCI HAR Dataset directory 
X_tst <- read.table("./UCI HAR Dataset/test/X_test.txt") 

# Read the y_test data from the y_test.txt file within the test subdirectory of the UCI HAR Dataset directory 
y_tst <- read.table("./UCI HAR Dataset/test/y_test.txt") 

# Read the subject test data from the subject_test.txt file within the test subdirectory of the UCI HAR Dataset directory
sub_tst <- read.table("./UCI HAR Dataset/test/subject_test.txt") 

# Set the column names for X_tst
names(X_tst) = col_nmes 

# Select mean and Standard deviation data 
X_tst = X_tst[,selected_data] 

# Load activity labels 
y_tst[,2] = act_labs[y_tst[,1]] 

# Set the column names for Y_tst
names(y_tst) = c("Act_ID", "Activity_Label") 

# Set the column name for sub_tst
names(sub_tst) = "Subject" 

# Combine the data 
tst_data <- cbind(as.data.table(sub_tst), y_tst, X_tst) 

# Read the X_train data from the X_train.txt file within the train subdirectory of the UCI HAR Dataset directory 
X_trn <- read.table("./UCI HAR Dataset/train/X_train.txt") 

# Read the y_train data from the y_train.txt file within the train subdirectory of the UCI HAR Dataset directory 
y_trn <- read.table("./UCI HAR Dataset/train/y_train.txt") 

# Read the subject_train data from the subject_train.txt file within the train subdirectory of the UCI HAR Dataset directory 
sub_trn <- read.table("./UCI HAR Dataset/train/subject_train.txt") 

# Set the column names for X_trn
names(X_trn) = col_nmes 

# Select mean and Standard deviation data 
X_trn = X_trn[,selected_data] 

# Load activity data 
y_trn[,2] = act_labs[y_trn[,1]] 

# Set the column names for y_trn
names(y_trn) = c("Act_ID", "Activity_Label") 

# Set the column name for sub_trn
names(sub_trn) = "Subject" 

# Combine the data 
trn_data <- cbind(as.data.table(sub_trn), y_trn, X_trn) 

# Combine the test and training data
all_data = rbind(tst_data, trn_data) 

# Set id labels etc.
id_labs = c("Subject", "Act_ID", "Activity_Label") 

# difffernce between column names and id_labs
data_labs = setdiff(colnames(all_data), id_labs) 

# Stack data
stack_data = melt(all_data, id = id_labs, measure.vars = data_labs) 

# Calculate the mean and apply to the data
fin_data = dcast(stack_data, Subject + Activity_Label ~ variable, mean) 

# Output the final data to tidy.txt in the current directory. columns are comma separated
write.table(fin_data, file = "./Tidy.txt", row.names = FALSE, sep = ",") 

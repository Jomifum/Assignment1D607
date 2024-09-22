#Brief introduction

#The Steak-Risk Survey is designed to examine the connections between people's risk-taking 
#behaviors and their lifestyle choices, particularly their steak preferences. It gathers data on 
#habits such as smoking, drinking, gambling, and driving, along with more adventurous activities 
#like skydiving. The survey also asks participants how they like their steak and whether they 
#eat it. Demographic information, including gender, age, income, education, and regional location,
#is collected to better understand how these factors relate to individual behaviors and preferences.

# Set the file path
file_path <- "C:/Users/Dell/Downloads/steak-risk-survey.csv"

# Read the CSV file
data <- read.csv(file_path)

# View the first few rows of the data
head(data)

# Rename complex column names for easier handling
colnames(data)[2] <- "Lottery_Choice"

# Check the new column names
colnames(data)

# View the structure of the dataset
str(data)

# Convert relevant columns into factors (categorical data)
data$Gender <- as.factor(data$Gender)
data$Lottery_Choice <- as.factor(data$Lottery_Choice)

# Summary statistics for age
summary(data$Age)

# Print all column names to identify the correct column name
colnames(data)

# Clean column names to remove extra spaces or special characters
colnames(data) <- make.names(colnames(data))

# Check column names again after cleaning
colnames(data)

# Rename the column (assuming it's now "Consider.the.following.hypothetical.situations..")
colnames(data)[2] <- "Lottery_Choice"

# Convert relevant columns to factors
data$Gender <- as.factor(data$Gender)
data$Lottery_Choice <- as.factor(data$Lottery_Choice)

# Check the updated structure
str(data)

#Visualizing Data
# Set CRAN mirror
options(repos = c(CRAN = "https://cran.rstudio.com/"))

# Install ggplot2 if not already installed
if (!require(ggplot2)) {
  install.packages("ggplot2")
  library(ggplot2)
}


# Bar plot for Gender
barplot(table(data$Gender), 
        main = "Distribution of Gender", 
        xlab = "Gender", 
        ylab = "Frequency", 
        col = "lightblue")

# Bar plot for Lottery Choice
barplot(table(data$Lottery_Choice), 
        main = "Lottery Choice Distribution", 
        xlab = "Lottery Choice", 
        ylab = "Frequency", 
        col = "lightgreen")

# Pie chart for Gender distribution
gender_distribution <- table(data$Gender)
pie(gender_distribution, 
    main = "Gender Distribution", 
    col = c("lightblue", "pink"))

# Pie chart for Lottery Choice distribution
lottery_distribution <- table(data$Lottery_Choice)
pie(lottery_distribution, 
    main = "Lottery Choice Distribution", 
    col = c("lightgreen", "lightcoral"))

install.packages("ggplot2")

# Load ggplot2 library
library(ggplot2)

# Bar plot for Gender using ggplot2
ggplot(data, aes(x = Gender)) + 
  geom_bar(fill = "lightblue") + 
  ggtitle("Gender Distribution") + 
  xlab("Gender") + 
  ylab("Frequency")

# Boxplot of Age by Gender using ggplot2
ggplot(data, aes(x = Gender, y = Age)) + 
  geom_boxplot(fill = "lightblue") + 
  ggtitle("Age by Gender") + 
  xlab("Gender") + 
  ylab("Age")

install.packages("ggplot2")
library(ggplot2)


# Creating a sample dataset
data <- data.frame(
  Gender = c("Male", "Female", "Female", "Male", "Male", "Female"),
  Age = c(23, 25, 30, 22, 28, 26)
)

# Bar plot for Gender using ggplot2
ggplot(data, aes(x = Gender)) + 
  geom_bar(fill = "lightblue") + 
  ggtitle("Gender Distribution") + 
  xlab("Gender") + 
  ylab("Frequency")

# Boxplot of Age by Gender using ggplot2
ggplot(data, aes(x = Gender, y = Age)) + 
  geom_boxplot(fill = "lightblue") + 
  ggtitle("Age by Gender") + 
  xlab("Gender") + 
  ylab("Age")

#Discusion
#It the gender distribution is analyzed with Age versus Gender is obvious there is a bigger 
#of female population above of 26 years comparing than the male individuals in this group rounding
#their 22 years and a half. By gender distribution also is notable that the female and male are equal
#meaning the same quantity expressed in the pie chart. In other hand by Lottery choice distribution
#that those interviewed on Lottery B is lighted large population than Lottery A. 

#Conclusion
#This dataset reveals connections between risk-taking behaviors
#and personal preferences, particularly steak consumption. It explores habits like smoking,
#drinking, and gambling, alongside demographic factors such as age, gender, and income.
#By analyzing these elements, the dataset helps identify patterns between lifestyle choices
#and behaviors, offering insights into how personal preferences may relate to risk tolerance
#across different groups.




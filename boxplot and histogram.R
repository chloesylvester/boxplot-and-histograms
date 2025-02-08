#define the dataset
frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1) #"bad" = 1, "good" = 0
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1) #"low" = 0, "high" = 1
Final_Decision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1) #"low" = 0, "high" = 1

#create a side-by-side boxplot
boxplot(BP, First, Second, Final_Decision,
        names = c("BP", "First","Second","Final_Decision"),
        main = "Boxplot of Blood Pressure & MD Ratings",
        ylab = "Values", col = c("lightblue","lightgreen","lightyellow","pink"))

#create a histogram
hist(BP, main ="Histogram of Blood Pressure",
     xlab = "Blood Pressure", ylab = "Frequency",
     col = "lightblue", border = "black", breaks = 5)
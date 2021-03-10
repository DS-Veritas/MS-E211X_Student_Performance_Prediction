install.packages("GGally")
library(GGally)

install.packages('prettydoc') #template
install.packages('readr') #for reading in the data
install.packages('dplyr') #exploratory data analysis
install.packages('tidyverse')#tidying up the data and exploratory data analysis
install.packages('gsheet')#Reading from google sheets
install.packages('readxl') #Reading in Excel Files
install.packages('knitr') #Kable function for printing tables
install.packages('DT') #Printing dataframes concisely
install.packages('caret') #Dummy Variables for Correlation Matrix
install.packages('gridExtra') #Multiple plots 
install.packages('rpart') #Decision Tree

library(prettydoc) #template
library(readr) #for reading in the data
library(dplyr) #exploratory data analysis
library(ggplot2)#visualizations
library(tidyverse)#tidying up the data and exploratory data analysis
library(gsheet)#Reading from google sheets
library(readxl) #Reading in Excel Files
library(knitr) #Kable function for printing tables
library(DT) #Printing dataframes concisely
library(caret) #Dummy Variables for Correlation Matrix
library(gridExtra) #Multiple plots 
library(rpart) #Decision Tree

student.mat <- read.csv("student-mat.csv",sep=";")
student.por <- read.csv("student-por.csv",sep=";")
ggpairs(student.mat)

glimpse(student.mat)
glimpse(student.por)

hist(student.mat$G3)

summary(student.mat)

data(water)

variablelist <- gsheet2tbl('https://docs.google.com/spreadsheets/d/1mDsF0aMNgODx7063l2mxV1_zP32fAe_P55SBmtG72G8')
kable(variablelist)


install.packages("devtools")
library("devtools")
install_github("kassambara/factoextra")
library("factoextra")

# convert predictors to numeric
for(i in colnames(student.mat)){
  student.mat[,i] <- as.numeric(student.mat[,i])
}

d1_pca <- data.frame(scale(student.mat))

K <- 5
mathMod.km <- kmeans(d1_pca,K,nstart=25) 

mathMod.pc <- prcomp(d1_pca)
fviz_pca_var(mathMod.pc) + 
  ggtitle("Correspondence Analysis of the stduent-mat")


install.packages("ca")
library(ca)
math_mca <- mjca(student.mat, lambda = "indicator", reti = T)
names(math_mca)
math_mca$factors
cumsum(math_mca$sv^2 / sum(math_mca$sv^2))

plot(math_mca, arrows = c(T,T))

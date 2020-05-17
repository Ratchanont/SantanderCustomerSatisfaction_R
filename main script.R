#libraries

library(caTools)
library(dplyr)
library(tidyr)
library(purrr)
library(ggplot2)
library(stringi)

#load data & first check

train_df <- read.csv('D:/Data science/Kaggle/SantanderCustomerSatisfaction/train.csv')

str(train_df)
summary(train_df)
head(train_df)

names(train_df)

stri_extract_first_regex(names(train_df),"[0-9]+")

column_names <- names(train_df)

column_names

column_names2 <- ifelse(substr(column_names,1,3) == 'var','var'
                        ,substr(column_names,1,7))

column_class <- unique(column_names2)
column_class <- column_class[!column_class %in% c('ID','TARGET')]

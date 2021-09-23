library(haven)
data <- read_sas("ADULT_SAS_PUF_2020.zip")

data
View(data)
summary(data)

getwd()

str(data)

#Data self reported age SRAGE_P1

data$SRAGE_P1
tab <- table(data$SRAGE_P1)
barplot(tab, xlab= "Reported Age of Individuals", ylab=
          "Frequency", main= "Population of Different Ages", col= data$SRAGE_P1)

summary(data$SRAGE_P1)

hist(tab)




#AB! General health condition
# 1 excellent, 2 very good, 3 good, 4 fair, 5 poor

data$AB1

#Diabetes Value 1: Yes  Value2: NO
data$DIABETES

has_diabetes <- sum(data$DIABETES == 1)
no_diabetes <- sum(data$DIABETES == 2)

diabetes_table <- table(has_diabetes, no_diabetes)
diabetes_data <- as.data.frame(diabetes_table)

diabetes_data



#Diabetes taking insulin AB24 -1 inapplicable 1 Yes 2 NO

data$
  
  
  
  
#Correlate Diabetes with something
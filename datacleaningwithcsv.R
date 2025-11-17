setwd("C:/Users/sanja/Downloads/archive")
data <- read.csv("dataset_v3.csv")
sum(is.na(data))
is.na(data)

library(dplyr)
data <- rename(data, latkaadhu = Longitude)

data <- mutate(data, result = ifelse(NDWI >= 0.5, "yes", "no"))

no_dup <- distinct(data, Emis_31, .keep_all = TRUE)

sum(duplicated(data$Emis_31))
sum(duplicated(no_dup$Emis_31))

duplicated(data$Emis_31)
duplicated(no_dup$Emis_31)
no_dup <- distinct(data, Emis_31)

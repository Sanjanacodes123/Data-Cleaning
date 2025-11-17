data <- data.frame(
  names = c("rk", "kallu", "anji", "rk"),
  marks = c(NA, 29, NA, 28)
)
sum(is.na(data))
is.na(data)

na.omit(data)
data$marks[is.na(data$marks)] <- 0
data
library(dplyr)
data <- rename(data, students = names, scores = marks)
data

colnames(data)
data <- mutate(data, result = ifelse(scores >= 25, "pass", "fail"))
data <- mutate(data, scores = scores + 5)

new_data <- distinct(data)
new_data
new_data2 <- distinct(data, students, .keep_all = TRUE)
new_data2
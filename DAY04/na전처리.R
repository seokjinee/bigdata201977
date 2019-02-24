file <- read.csv("D:/CSJ/DAY04/naData.csv")
file
str(file)
mean(file$english)
mean(file$math)

file$math <- ifelse(is.na(file$math),0,file$math)

mean(file$english)

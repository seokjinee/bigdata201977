library(dplyr)

exam <- read.csv("D:/CSJ/DAY3/DAY3/간단_분석용_데이터/csv_exam.csv")
View(exam)

exam %>% filter(class == 1) %>% head(3) # exam이 변하지는 않음

class1 <- exam %>% filter(class == 1) 
class2 <- exam %>% filter(class == 2) 
class3 <- exam %>% filter(class == 3) 
class4 <- exam %>% filter(class == 4) 

classnot1 <- exam %>% filter(class != 1)

exam %>% filter(english <= 80 & class==3) # | 넣으면 or과 같은 처리

exam %>% filter(math >= 75 | science >= 80)

# %>% 이런거는 dplyr 패키지 부착되어야 가능

exam %>% filter(class==1 | class==3 | class==5)
exam %>% filter(class %in% c(1,3,5)) 

# class1의 평균
mean(class1$math)
max(class1$math)
mean(class1$english)
mean(class1$science)

# ggplot2 : package + dataset
install.packages("ggplot2")
library(ggplot2)
library(dplyr)
mpg <- as.data.frame(ggplot2::mpg)
mpg %>% head(20)
# ford차량의 고속도로 연비 평균
ford1 <- mean((mpg %>% filter(manufacturer == "ford"))$hwy)
ford1

# 1번: class가 compact의 고속도로 평균연비
temp1 <- mean((mpg %>% filter(class == "compact"))$hwy)
# 2번: class가 SUV의 고속도로 평균연비
temp2 <- mean((mpg %>% filter(class == "suv"))$hwy)
temp1
temp2
max(temp1,temp2)

exam

exam %>% select(math)
exam %>% select(-math)

exam %>% select(math,english)

# R은 들여쓰기가 의미가 없음. 가독성때문에 하는 것.
# 파이썬은 들여쓰기가 문법의 일부
exam %>% 
  filter(class == 1) %>% 
  select(english) %>% 
  head(2)

# 정렬
exam %>% arrange(class,math)
exam %>% arrange(desc(class),math)

# 파생변수 total 만들기
exam %>% mutate(total = math+english+science)
exam %>% 
  group_by(class) %>% 
  summarise(mean(math),
            sumMath = sum(math),
            median = median(math), # median() 중간값 함수
            n = n()
  )
mpg
mpg %>% group_by(manufacturer) %>% 
  filter(class=="suv") %>% 
  mutate(tot = (cty+hwy)/2) %>% 
  summarise(meantot = mean(tot)) %>%
  arrange(desc(meantot)) %>%
  head(5)
)
#http://cafe.daum.net/gardenpro/lEbw/23 문제

              

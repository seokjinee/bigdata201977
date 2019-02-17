car1 <- read.csv("D:/CSJ/DAY3/DAY3/car1.csv")
View(car1)

str(car1)
names(car1) <- c("이름","밤낮","사고수", "사망", "중상", "부상", "고통", "리포트")

names(car1) <- c("name","DayNight","count","death","injury","Sinjury","wound","report")
car1

car1$result <- ifelse(car1$DayNight == 1,"낮","밤")
#car1 에 result라는 column을 추가
car1
car1$result2 <- ifelse(car1$name=="과속","속도문제","x")
car1$result3 <- ifelse(car1$count > 5000,"큰사고","작은사고")
car1

table(car1$result)
table(car1$result2)

plot(table(car1$DayNight))
plot(car1$result)
install.packages("ggplot2")
library("ggplot2")
qplot(car1$DayNight)

#없는 컬럼을 하나 변수로 만들어서 추가 => 파생변수
car1$result4 <- ifelse(car1$death>=1000,"대형사고",
                ifelse(car1$death>=100,"중형사고","보통사고"))

table(car1$result4)
qplot(car1$result4)

car2 <- data.frame(name = car1$name,count = car1$count,result = car1$result4)
View(car2)

# 요약함수(table함수)
# 막대그래프(qplot함수)

# 부분 추출 함수 (subset(추출대상, 조건))
daycount <- subset(car1$count, car1$DayNight==1)
daycount
daysum <- sum(daycount)
typeof(daycount)
class(daycount)
str(daycount)

sum(daycount)
nightcount <- subset(car1$count,car1$DayNight==0)
nightcount
nightsum <- sum(nightcount)
daynightcount <- data.frame(day = daycount,night = nightcount)
daynightcount
daynightsum <- data.frame(daysum,nightsum)
table(daynightsum)
# 2) 요약해보세요.
table(daynightcount)

table(car1$count)

hist(daynightsum$daysum)
hist(daynightsum$nightsum)

sum(daycount)
mean(daycount)
max(daycount)
min(daycount)
sum(nightcount)
mean(nightcount)

# 조건 ifelse(조건1 & 조건2)
# 밤에 과속인 경우
# 밤에 신호위반인 경우
overspeed <- subset(car1$count,car1$DayNight==0 & car1$name=="과속")
overspeed2 <- sum(ifelse(car1$DayNight==0 & car1$name=="과속", car1$count,0))
overspeed2
ignoresignal <- subset(car1$count,car1$DayNight==0 & car1$name=="신호위반")
ignoresignal2 <- sum(ifelse(car1$DayNight==0&car1$name=="신호위반",car1$count,0))
ignoresignal
max(overspeed,ignoresignal)
temp <- data.frame(overspeed,ignoresignal)
temp
exam <- read.csv("D:/CSJ/DAY3/DAY3/간단_분석용_데이터/csv_exam.csv")

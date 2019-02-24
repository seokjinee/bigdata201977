install.packages("foreign")

library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

raw_welfare <- read.spss(file="D:/CSJ/DAY04/Koweps_hpc10_2015_beta1.sav",to.data.frame=T)

welfare <- raw_welfare

welfare <- rename(welfare, 
                  gender = h10_g3,
                  birth = h10_g4,
                  marriage = h10_g10,
                  religion = h10_g11,
                  income = p1002_8aq1,
                  code_job=h10_eco9,
                  code_region=h10_reg7
)
count(welfare, gender)

welfare$gender <- ifelse(welfare$gender == 9, NA, welfare$gender)
welfare$gender

table(is.na(welfare$gender))

welfare$gender <- ifelse(welfare$gender == 1, "남","여")
table(welfare$gender)

qplot(welfare$gender)

class(welfare$income)

summary(welfare$income)
qplot(welfare$income) + xlim(0,1000)

table(is.na(welfare$income))

welfare$income <- ifelse(welfare$income %in% c(0,9999),NA,welfare$income)
table(is.na(welfare$income))

# 성별 월급의 비교
#1. NA는 빼고 분석
#2. 성별로 그룹! (dplyr)
#3. 평균!

gender_income <- welfare %>%
  filter(!is.na(income)) %>%
  group_by(gender) %>%
  summarise(mean_income = mean(income))
gender_income

gender_income
ggplot(data=gender_income, aes(x=gender,y=mean_income)) +geom_col()

qplot(welfare$birth)

# 파생변수(열을 하나 더 만드는 것)
welfare$age <- 2015 - welfare$birth + 1
summary(welfare$age)
qplot(welfare$age)

gender_income <- welfare %>%
  filter(!is.na(income)) %>%
  group_by(age) %>%
  summarise(mean_income = mean(income))
gender_income
# income에서 na제거
age_income <- welfare %>%
  filter(!is.na(income))%>%
  group_by(age)%>%
  summarise(mean_income2 = mean(income))
ggplot(data = age_income,aes(x=age,y=mean_income2)) + geom_line()
# 나이별 평균 월급
# 시각화까지(시계열로!:geom_line())

# 연령대별
# 평균 월급
welfare <- welfare%>%
  mutate(age2 = ifelse(age < 30,"young",
                       ifelse(age<60,"middle","old")))
welfare$age2

table(welfare$age2)

age2_income <- welfare%>%
  filter(!is.na(income)) %>%
  group_by(age2) %>%
  summarise(mean_income3 = mean(income))

age2_income
ggplot(data=age2_income, aes(x=age2,y=mean_income3)) + 
  geom_col() + scale_x_discrete(limits=c("young","middle","old"))
qplot(welfare$age2)

# 연령대별 평균 수입
age3_income <- welfare%>%
  filter(!is.na(income)) %>%
  group_by(age2,gender) %>%
  summarise(mean_income4 = mean(income))
age3_income

#나이+성별 평균 월급의 흐름을 알고 싶습니다.

agesex_income <- welfare %>%
  filter(!is.na(income)) %>%
  group_by(age,gender) %>%
  summarise(mean_income5 = mean(income))
agesex_income
#분석 후 시각화(시계열로!)
ggplot(data = agesex_income,aes(x=age, y=mean_income5,col= gender)+
       geom_line())
#시계열인 경우 fill 옵션 대신, "col=()"사용!

#################################################
library(readxl)
list_job <- read_excel("D:/CSJ/DAY04/Koweps_Codebook.xlsx",col_names = T, sheet=2)
list_job

head(welfare$code_job)

welfare <- left_join(welfare,list_job, id = "code_job")
head(welfare$job)

age5_income <- welfare %>%
  filter(!is.na(income)&!is.na(age)) %>%
  group_by(job) %>%
  summarise(mean_income6 = mean(income))

head(age5_income)
age5_income %>%
  arrange(desc(mean_income6)) %>%
  head(10)

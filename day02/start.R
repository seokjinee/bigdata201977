a <- 100
b <- 200
print(a + b)

# 주석 (설명)
# 프로그램 전체 제어문
#1. 프로그램은 순차적으로 실행
#2. 조건
#3. 반복
# 데이터의 자료 구조
# 데이터프레임 =벡터(열) + 리스트(행)

name <- c(1, 2, 3, 4, 5)
name[3] #인덱스[]사용
name[3] <- 333
name[3]
name

name <- c("김지훈", "이유진", "박동현", "김민지")

name
eng <- c(90,80,60,70)
math <- c(50,60,100,20)

frame <- data.frame(name,eng,math)
frame
name[4] <- "송민지"
frame
str(name) #구조
table(name) #요약
class(name)
class(eng) #데이터의 타입
typeof(eng) #데이터의 타입(상세)

str(frame)
class(frame)

#자동완성 (컨트롤 + 스페이스바)

str(frame) #구조
table(frame) #요약
class(frame)
typeof(frame) #데이터의 타입(상세)

View(frame)

###################################################

#2. 직접 데이터프레임을 만들어 봅시다.
lastTerm <- data.frame(name2 = c("Kim","Na","Park","Lee"), eng2 = c(100,30,50,50), math2 = c(50,100,75,80))
View(lastTerm)
lastTerm$name2
lastTerm$eng2

str(lastTerm$name2)
str(lastTerm$eng2)
table(lastTerm$eng2)

test <- c("apple", "banana", "kiwi","apple","banana","apple")
table(test)


mean(lastTerm$eng2)
mean(lastTerm$math2)

midTerm2 <- read.csv("C:/Users/PC/Desktop/choisj/day02/midTerm2.csv")
midTerm2
str(midTerm2)

library("readxl")
midTerm3 <- read_excel("C:/Users/PC/Desktop/choisj/day02/midTerm2.xlsx")
View(midTerm3)

str(midTerm3)
rm() #변수 삭제 (remove)
ls() #변수들의 리스트
list <- ls()
class(list)
rm(ls())
rm(list = ls())

ls()
######################
midTerm3
midTerm3$name

submidTerm <- data.frame(midTerm3$name,midTerm3$tel)
submidTerm

submidTerm2 <- data.frame(name2 = midTerm3$name, tel2 = midTerm3$tel)
submidTerm2
#간소화됨 깔끔해짐

write.csv(submidTerm2, file = "submidTerm2.csv")

submidTerm2
submidTerm2$age2 <- c(20,30,40)

submidTerm2

# alt + -
addr <- c("Seoul", "Busan","Kyounggi")

submidTerm2$addr <- addr
submidTerm2

names(submidTerm2)


#행, 열 추출
submidTerm2[1] #열추출 => name2
submidTerm2[1,]
submidTerm2[2,1]
submidTerm2[1,4]
submidTerm2[3,1]
submidTerm2[3,3]

#행, 열 삭제
submidTerm2[,-1]
submidTerm3 <- submidTerm2[,-1] #이렇게 해야 저장됨.
submidTerm3
submidTerm2

submidTerm4 <- submidTerm2[-1,]
submidTerm4
submidTerm5 <- submidTerm2[,-c(2:4)]
submidTerm5
submidTerm6 <- submidTerm2[,-c(1,3)]
submidTerm6

temp1 <- c(1:100)
temp1

temp2 <- c(1,3,5,7,9)
temp2

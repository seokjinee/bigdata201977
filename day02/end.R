a <- 100
b <- 200
c <- 100
a==b
a==c
if(a!=b){
  print("different numbers")
} #if-close

# 괄호 => (:open, ):close
# ()소괄호: 함수, 조건
# {}중괄호: 포함
# []대괄호: 인덱스, 리스

################################
# 순차적 실행 기본
# 조건문(조건에 따라서 다르게 처리해야하는 경우)
# 반복문(여러번 반복해서 처리해야하는 경우)

i2 <- "빅데이터"
if(i2=="빅데이터"){
  print("빅데이터반이네요요")
}else if(i2 == "파이썬"){
  print("파이썬반이네요")
}else{
  print("아무반도 아니네요")}

i3 <- "사과"
if(i3 == "사과"){
  print("사과이면 제철이군요")
}else if(i3 == "배"){
  print("배는 설에 먹어요")
}else if(i3 == "키위"){
  print("키위는 수입이예요")
}else{
  print("아무것도 아니면 과일이 아닌가봐요.")
}

install.packages("lubridate")
library(lubridate)
date <- now()
date
year(date)
month(date)
day(date)
wday(date, label = T)

hour(date)
minute(date)
second(date)

# 11시 전이면 굿모닝
if(hour(date)<11){
  print("굿모닝")
}else if(hour(date)<15){
  print("굿 애프터눈")
}else if(hour(date)<20){
  print("굿 이브닝")
}else{
  print("굿나잇")
}

date + minutes(10) # date에 10분을 더한 날짜와 시각
date

########################################################
# 입력받은 값 판별
input <- scan(what = "") #scan에 문자값을 입력받을 때는 what = "" 넣기
if(input == "100점"){
  print("만점입니다.")
} else{
  print("다음 기회에")
}

# 삼항 연산자
temp3 <- 80
result <- ifelse(temp3 >= 80,"통과","실패")
result

########################################################
temp4 <- 10 #무한루프 중단 단축키: 컨트롤 씨
while(temp4 > 8){
  print("7보다 크다")
  temp4 <- temp4-1
}
for(i in c(1:5)){
  print("%")
}
temp5 <- c(1:5)
for(temp6 in temp5){
  print(temp6)
}

name <- c("김아무개","박아무개","송아무개","정아무개")
for(temp8 in name){
  cat("당신의 이름은", temp8,  "이군요\n")  # 역슬러시 n
}

student <- data.frame(name2 = name, age2 = c(30,50,15,40))
student

for(temp9 in student$name2){
  print(temp9)
}

input2 <- scan()
while(TRUE){
  input2 <- scan()
  print(input2)
  if(input2==0){
    print("종료합니다")
    break
  }
}

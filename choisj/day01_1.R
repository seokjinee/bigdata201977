# 외부 라이브러리 설치
install.packages("glue")
install.packages("ggplot2")

# 외부 라이브러리 사용
library(glue)
library(glue2)

# 여기에 glue를 이용해서 프린트 연습
# temp 변수: 아무것도 안붙어있음. 정적인 값 저장
# temp() 함수: 동적인 처리
# print()

# 벡터 만들어보기
# 할당 연산자(알트키 -)
ages <- c(10,30,50)
ages[3]  
  # 평균 %>% 정렬 %>% 프린트
  # 파이프연산자(컨+시+m)
ages[1] <- 20

# 이름，벡터를 만들고，
# 두번째 사람이 박아무개로 개명
# 이름의 전체 내용을 출력

names <- c("김","이","박")
names[2] <- "박아무개"

# factor 구분하기
address <- c("서울","대구","부산","군산","서울","청주","서울","청주")
address
str(address)

str(year)
# structure => 한눈에 알아볼 수 있게 보여주는 것

address2 <- as.factor(address)
address2
str(address2)

address2[1] <- "부산"
address2

# factor는 그 이외 값은 들어가지 않게 한다. Charactor 는 가능

# 입력의 다양한 형태
x <- scan()
x
# a real = 실수
# 100 정수(integer, int)
# 100.0 실수(real, float)

x2 <- scan()
x2

str(x2)
class(x2)
typeof(x2)
# double 은 real과 비슷한 말 - 소수점 16자리까지 나타냄

food <- scan(what = "")
food

str(food)
class(food)
typeof(food)

favorite <- food[1]
cat("내가 제일 좋아하는 음식은?", favorite)

library(glue)
second <- food[2]
glue("{second}은 내가 2번 째로 좋아하는 음식이예요.")


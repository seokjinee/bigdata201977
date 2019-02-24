#1. 네트워크로 연결
library(rvest)
library(dplyr)
#2. 문서를 읽어야 한다.
url <- "http://music.naver.com/listen/top100.nhn?domain=DOMESTIC&duration=1h"
download.file(url,destfile = "navermusic.html",quiet = T)
naver_music <- read_html("navermusic.html")
naver_music
# \r\r\r\n 이런것들 전처리 대상
#3. 데이터 추출(열: 벡터), 전처리
# 순위
ranking <- naver_music %>% 
  html_nodes("._tracklist_move .ranking") %>%
  html_text() %>%
  as.numeric()
ranking
# 문자 1,2,3,...,10
# 순위 변동
gap <- naver_music %>% 
  html_nodes("._tracklist_move .change") %>%
  html_text() %>%
  gsub(pattern = "\r\n||\t||\n||\r", replacement = "")
gap
# 노래 제목
title <- naver_music %>% 
  html_nodes("._tracklist_move .title span") %>%
  html_text() %>%
  gsub(pattern = "\r\n||\t||\n||\r", replacement = "")
title

# 가수
artist <- naver_music %>% 
  html_nodes("._tracklist_move .artist a") %>%
  html_text() %>%
  gsub(pattern = "\r\n||\t||\n||\r", replacement = "")
artist

#4. 데이터 프레임에 넣으세요

musicTop50 <- data.frame(ranking, gap, title, artist)
View(musicTop50)

View(musicTop50 %>% head(5))
View(musicTop50 %>% tail(5))

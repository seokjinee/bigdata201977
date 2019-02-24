library(ggplot2)
library(dplyr)

mpg <- as.data.frame(ggplot2::mpg)
mpg

ggplot(data=mpg, aes(x=displ, y=hwy)) + geom_point()

midwest <- as.data.frame(ggplot2::midwest)
midwest

ggplot(data = midwest, aes(x=popasian,y=poptotal)) +geom_point()
mpg

df_mpg <- mpg %>%
  group_by(drv)%>%
  summarise(mean_hwy = mean(hwy))

ggplot(data=df_mpg, aes(x=drv,y=mean_hwy)) + geom_point()

ggplot(data=mpg,aes(x=drv,y=hwy)) + geom_boxplot()

#카페글 제목: [R]데이터 다루기-그래프그리기
install.packages("rvest")
library(rvest) #램에다가 올린다

url <- "http://www.daum.net"
htmlText <- read_html(url)
htmlText

#크롤링은 크롬으로 해야 함

news <- html_nodes(htmlText,"#news")
news

product <- html_nodes(htmlText,".screen_out")
product

product2 <- html_nodes(htmlText,"h2")
product2

productText <- html_text(product)
productText

product3 <- html_nodes(htmlText,".txt_pctop.link_kakaotv")
product3

product4 <- html_text(product3)
product4

dataframe <- data.frame(productText)
dataframe

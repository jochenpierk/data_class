

library(rvest)
library(tidyverse)

#Specifying the url for desired website to be scraped
url <- paste("https://jochenpierk.github.io/data_class/Data.html")

#Reading the HTML code from the website
webpage <- read_html(url)

table <- webpage %>%
  html_node("table") %>%
  html_table()


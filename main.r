library(ggplot2)
library(readxl)
library(dplyr)
#setwd("Your Folder Name")
NBA<- read_excel("NBA.xlsx")
NBAWOTeam <- NBA[c(2:4)]
cor(NBAWOTeam)
# fit2 = lm(NBAWOTeam$Wins ~ NBAWOTeam$`Field Goal%` ~ NBAWOTeam$`Field Goal % Allowed`)
fit <- lm(NBAWOTeam)
res <-  residuals(fit)

summary(fit)

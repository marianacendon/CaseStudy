########################
# Analysis of geData
# Mariana Llamas-Cendon
# DS Post Live Assignment 6
# Updated Oct 25 2016
#########################

setwd("/Users/marianallamas-cendon/Desktop/git_repositories/CaseStudy/Analysis")

# Load packages:

library(plyr)
library(tidyr)
library(dplyr)
library(ggplot2)
library(Hmisc)

## Create data frame ge.sorted to sort variable Gdp.Ranking in descending 
## order so USA is last.

ge.sorted <- geData[order(-geData$GDP.Ranking),] 

## To find the country located in the 13th place after the sorting,
## use column 4, the one that contains countries full names.

ge.sorted[13,4]

## Coerce Income.Group from character to factor and eliminate NAs

ge.sorted$Income.Group <- as.factor(ge.sorted$Income.Group)

gincome <-is.na(ge.sorted$Income.Group)

ge.sorted <- ge.sorted[!gincome,]


## Eliminate unused columns

ge.cleaned <- ge.sorted[,-c(3:10, 13:40)]

## Calculate the mean of GDP.Rankings for Income.group: 
## High income: OECD" and "High income: nonOECD"


mean(ge.cleaned$GDP.Ranking[ge.cleaned$Income.Group=="High income: OECD" ])
mean(ge.cleaned$GDP.Ranking[ge.cleaned$Income.Group=="High income: nonOECD"])

## Plot the GDP.Ranking for all of the countries by Income.Group

qplot(ge.cleaned$GDP.Ranking, ge.cleaned$Income.Group, main = "GDP Ranking vs. Income Group", xlab = "GDP Ranking", ylab = "Income Group", color = "red")

## Cut GDP.Ranking into 5 separate quantile groups. 

ge.cleaned$Rank.Countries <- cut2(ge.cleaned$GDP.Ranking, g=5)

# Make a table versus Income.Group.

table(ge.cleaned$Rank.Countries, ge.cleaned$Income.Group)

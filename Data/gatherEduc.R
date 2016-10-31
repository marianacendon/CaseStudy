########################
# Reading and clean Educational raw data
# Mariana Llamas-Cendon
# DS Post Live Assignment 6
# Updated Oct 25 2016
# Data downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv
#########################



# Download Gross Gross Domestic Product data
# From https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv
### Note: above link does not work, try: http://data.worldbank.org/data-catalog/ed-stats

setwd("/Users/marianallamas-cendon/Desktop/git_repositories/CaseStudy/Data")
## Use command read.csv data, using option stringsAsFactors = FALSE to coerce factors
## to other types such as characters, numeric, integer.

EducData <-read.csv("educationstats.csv", sep=",", stringsAsFactors= FALSE, header=TRUE)

## Check dimensions of data set

dim(EducData)

## Explore first rows of data

head(EducData)

## Check names of columns

names(EducData)

## Check types of columns to verify that there are not any factors.

str(EducData)

## Check number of rows of data set

nrow(EducData)



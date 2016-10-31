########################
# Reading and clean Gross Domestic Product raw data 
# Mariana Llamas-Cendon
# DS Post Live Assignment 6
# Updated Oct 25 2016
# Data downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv
#########################

setwd("/Users/marianallamas-cendon/Desktop/git_repositories/CaseStudy/Data")

# Download Gross Gross Domestic Product data
# From https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv

## Use command read.csv data, using option stringsAsFactors = FALSE to coerce factors
## to other types such as characters, numeric, integer.
## First observations start on row 4, use option skip = 4 to eliminate 
## information from previous rows

GdpData <- read.csv("gdpdata.csv", sep=",", skip=4, stringsAsFactors=FALSE, header=TRUE)

## Check dimensions of data set

dim(GdpData)

## Explore first rows of data

head(GdpData)

## Check names of columns

names(GdpData)

## Check types of columns to verify that there are not any factors.

str(GdpData)

## Columns related to Country Codes and GDP Rankings have generic X names
## To change the column names of those columns that will be used for analysis
## use colnames command

colnames(GdpData)[1]<- "CountryCode"
colnames(GdpData)[2]<- "GDP.Ranking"

## Verify that names of the columns have been changed to: CountryCode and GDP.Ranking

names(GdpData)

## Check number of rows of data set

nrow(GdpData)


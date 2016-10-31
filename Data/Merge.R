########################
# Merging GdpData and EducData 
# Mariana Llamas-Cendon
# DS Post Live Assignment 6
# Updated Oct 25 2016
#########################

setwd("/Users/marianallamas-cendon/Desktop/git_repositories/CaseStudy/Data")

## Merge data as geData by CoutryCode
## Since GdpData has 326 rows and EducData has 234, by including option all = FALSE 
## all the rows from GdpData that are not contained in EducData are not merged.

geData <- merge(GdpData, EducData, by = "CountryCode", all = FALSE) 

## Check number of rows of new data frame geData

nrow(geData)

## Check dimensions of data frame 

dim(geData)

## Explore first rows of data

head(geData)

## Check names of columns

names(geData)

## Check types of columns to verify that there are not any factors.

str(geData)



## Check for any NAs on GDP.Ranking variable

is.na(geData$GDP.Ranking)

## Check to see if blank values are present and how many in GDP.Ranking 

geData$GDP.Ranking

## To eliminate those blanks that are not NAs: 

geData <- geData[geData$GDP.Ranking >= 1,]

geData$GDP.Ranking

geData <- geData[geData$Income.Group >= 1,]


## Check to see if there are any NAs or blanks in CountryCode

sum(is.na(geData$CountryCode))

geData$CountryCode

## Check rows of geData after blanks from GDP.Ranking were removed

nrow(geData)

## Variable GDP.Ranking is character type, coercing it into numerical is
## important to manipulate it

geData$GDP.Ranking <- as.numeric(as.character(geData$GDP.Ranking))

## Verify that the coercion to numeric was successful

str(geData$GDP.Ranking)


library(tidyverse)
library(here)
library(summarytools)

## read in csv
wildlife_impacts <- read_csv(here("tidytuesday","data","2019","2019-07-23","wildlife_impacts.csv"))

## examine structure
str(wildlife_impacts)
head(wildlife_impacts)
tail(wildlife_impacts)

## print df summary
summarytools::dfSummary(wildlife_impacts)

## print df summary for Taxi phase of flight
phase_taxi <- filter(wildlife_impacts, wildlife_impacts$phase_of_flt == "Taxi")
dfSummary(phase_taxi)


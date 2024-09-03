rm(list = ls())

# 1. Load the packages and initialize functions
# require(tidyverse)
library(ggplot2)
library(magrittr)
library(dplyr)
library(stringr)
library(readr)

fit_and_write <-function(data, write_location, plot = FALSE){
  model <- lm(sum_of_applicants ~ ., data = data)
  
  if (plot){ plot(model) }
  
  beta_fits <- coeff(model)
  write_csv(beta_fits, write_location)
}

# sql-query-from-database.sql will provide one row for each fiscal_year, fiscal_month, and each unit_id. 
#
# Assume the output is called applicants.csv
#
# The most important column is called sum_of_applicants. Like this:
#
# fiscal_year fiscal_month  unit_id sum_of_applicants
#        2024           01       6F               735
#        2024           02       5J              1132
#        2024           01       2B               467
#        2024           02       6C               943
# ...3566 more rows

# 2. Get the data ready for the model
applicants <- read_csv('applicants.csv')

applicants <- applicants %>%
  mutate(
    fymo = str_c(fiscal_year,fiscal_month, sep = '-'),
    unit_sublevel_1 = str_sub(unit_id, 1, 1),
    unit_sublevel_2 = str_sub(unit_id, 2, 1)
  )%>%
select(-fiscal_year, -fiscal_month)

# 3. Fit the model and write the coefficients

fit_and_write(applicants, 'applicants_beta_fitted.csv')

# END
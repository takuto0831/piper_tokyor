library(tidyverse)
library(skimr)
view_data <- function(data){
  print("use skim function");  skim(data) %>% kable
  print("use glimpse function"); glimpse(data)
}

shape_data <- function(data){
  sprintf("データは%d行, %d列です!!",
          NROW(data), NCOL(data))
}


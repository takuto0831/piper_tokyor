library(tidyverse)
library(stringi)
library(fst) 

# len: データ長
fun <- function(len){
  df1 <- tibble(aaa = 1:len,
                bbb = 10000:10000+len,
                ccc = 1000000:1000000+len,
                ddd = rbinom(len,1,0.5),
                eee = rnorm(len, 0, 100000),
                fff = rlnorm(len, 0, 100),
                ggg = stri_rand_strings(n = len, length = 10), 
                hhh = seq(as.Date("2018-03-07"), by = "day", length.out = len)) 
  return(df1)
}

down_memory <- function(data){
  path <- ("~/Desktop/TokyoR/data/tmp.fst") #create a temporary '.fst' file
  write_fst(data, path) #write the dataframe into the '.fst' file
  ft <- fst(path) #load the data as an fst object
  return(ft)
}




load <- function(x){
  suppressPackageStartupMessages({
  x <- as.data.frame(x)
  for( i in 1:nrow(x)){
    if(x[i,1] %in% installed.packages()[,1]){
      library(x[i,1],character.only = TRUE)
      cat(paste(x[i,1], "LOADING..... SUCCESSFULL\n"))
    }else {
      install.packages(x[i,1], quiet = TRUE)
      library(x[i,1], character.only = TRUE)
      cat(paste(x[i,1], "INSTALLATION AND LOADING..... SUCCESSFULL"))
    }
  }
  }
  )
}
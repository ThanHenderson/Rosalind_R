#Set working directory
setwd("P:/R_Practice/009_SUBS")

data <- readLines("009_SUBS.txt")

haystack <- strsplit(data[1],"")[[1]]
needle <- strsplit(data[2],"")[[1]]
ind <- vector()

i <- 1
while(i < length(haystack)-length(needle)){
  if(substring(paste(haystack,collapse = ""), i, i+length(needle)-1) == paste(needle,collapse = "")){
    ind <- c(ind,i)
  }
  i <- i+1
}

ind

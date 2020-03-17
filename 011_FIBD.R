#Set working directory
setwd("P:/R_Practice/011_FIBD")

library(gmp)

fib <- function(n, m){
  
  # m is life expectancy
  
  v <- c()
  v <- append(v, 1)
  v <- append(v, 1)
  
  for(i in 3:n){
    count <- as.bigs(tail(v, 2)[1]) + as.bigs(tail(v, 1)[1])
    if(i < m+1){
      v <- append(v, count)
    }else if(i == m+1 | i == m+2){
      v <- append(v, as.bigs(count-1))
    }
    else{
      v <- append(v, as.bigz(count) - as.bigs(tail(v, m+1)[1]))
    }
  }
  
  return(v)
}

result = fib(81,19)

print(as.bigz(result[length(result)]))
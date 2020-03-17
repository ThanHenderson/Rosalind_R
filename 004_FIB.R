#Set working directory
setwd("P:/R_Practice/004_FIB")

fib <- function(n, k = 1){
  v <- vector()
  v[1] = 1
  v[2] = 1
  
  for(i in 3:n){
    v[i] <- v[i-1]+v[i-2]*k
  }
  
  return(v)
}

result = fib(5,3)

print(result[length(result)])
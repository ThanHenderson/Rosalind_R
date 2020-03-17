#Set working directory
setwd("P:/R_Practice/007_IPRB")

kmn <- strsplit(readLines("007_IPRB.txt"), " ")[[1]]

k <- as.numeric(kmn[1])
m <- as.numeric(kmn[2])
n <- as.numeric(kmn[3])

t <- k + m + n 

probDom <- (k*(k-1) + k*m + k*n + m*k + .75*(m*(m-1)) + .5*(m*n) + n*(k-1) + n*m)/(t*(t-1))

probDom

# or

probDom2 <- 1.0 - (n*(n-1) + .5*n*m + .5*m*n + .25*m*(m-1))/(t*(t-1))

probDom2

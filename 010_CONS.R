#Set working directory
setwd("P:/R_Practice/010_CONS")

library("Biostrings")
data <- readDNAStringSet("010_CONS.txt", format = "fasta")

ids <- names(data)
dna_strs <- paste(data)

m <- length(ids)
n <- length(strsplit(sub("^\\s+", "", dna_strs[1]), "")[[1]])

mat <- matrix(0L, nrow=4, ncol=n)
rownames(mat) <- c("A", "C", "G", "T")

i <- 1
while(i <= m){
  j <- 1
  while(j <= n){
    if(substring(dna_strs[i], j, j) == "A"){
      mat[1,j] = mat[1,j] + 1
    } else if(substring(dna_strs[i], j, j) == "C"){
      mat[2,j] = mat[2,j] + 1
    } else if(substring(dna_strs[i], j, j) == "G"){
      mat[3,j] = mat[3,j] + 1
    } else if(substring(dna_strs[i], j, j) == "T"){
      mat[4,j] = mat[4,j] + 1
    }
    j <- j+1
  }
  i <- i+1
}

maxBase <- NULL
i <- 1
while(i <= n){
  maxBase <- c(maxBase, names(which(mat[,i] == max(mat[,i]))))
  i <- i+1
}

paste(maxBase, collapse="")


sprintf("A: %s", paste(mat[1,], collapse=" ", sep=" "))
sprintf("C: %s", paste(mat[2,], collapse=" ", sep=" "))
sprintf("G: %s", paste(mat[3,], collapse=" ", sep=" "))
sprintf("T: %s", paste(mat[4,], collapse=" ", sep=" "))
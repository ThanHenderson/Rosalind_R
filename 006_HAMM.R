#Set working directory
setwd("P:/R_Practice/006_HAMM")


library("Biostrings")
seqs <- readLines("006_HAMM.txt")

s1 <- unlist(strsplit(seqs[1],""))
s2 <- unlist(strsplit(seqs[2],""))

sum(s1 != s2)

#or using bioconductor

neditAt(seqs[1], seqs[2])

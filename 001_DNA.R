#Set working directory
setwd("P:/R_Practice/001_DNA")

#use the stringr library for str_count
library(stringr)


dna <- readLines("001_DNA.txt")
A = str_count(dna, "A")
C = str_count(dna, "C")
G = str_count(dna, "G")
T = str_count(dna, "T")

#print(c(var,var,var)) for multiple values
print(c(A,C,G,T))
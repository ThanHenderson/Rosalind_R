#Set working directory
setwd("P:/R_Practice/002_RNA")

dna <- readLines("002_RNA.txt")

#gsub() function replaces all matches of a string
rna = gsub("T", "U", dna)

sprintf("DNA: %s ", dna)
sprintf("RNA: %s ", rna)


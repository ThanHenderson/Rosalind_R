#Set working directory
setwd("P:/R_Practice/005_GC")


library("Biostrings")

#read the dna from the fasta formatted file
seq <- readDNAStringSet("005_GC.txt", format = "fasta") 

#Load the ids into a vector
ids <- names(seq)

#Load the corrsponding sequences into a vector
seqs <- paste(seq)

#Calculate the gc content

GC <- rowSums(alphabetFrequency(seq)[,c(2,3)]/width(seq))*100

#name the summed rows with the correct names from the file
names(GC) <- ids

#calculate the max GC from GC vector
maxGC <- GC[which.max(GC)]

maxGC
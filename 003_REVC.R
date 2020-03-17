#Set working directory
setwd("P:/R_Practice/003_REVC")


seq <- readLines("003_REVC.txt")

#chartr takes two strings of the same length and the 
# vector to change
revC = chartr("atgcATGC", "tacgTACG", rev(strsplit(seq, "")[[1]]))


print(seq)

#paste concatenated the list objects together 
# collapse = "" changes the vector to a string
print(paste(revC, collapse = ""))
### import libraries 
### set current directories

library(DECIPHER)
library(rstudioapi)
library(ggplot2)
library(ggtree)
library(ape)
library(phangorn)
library(dplyr)
library(stringr)
library(R.utils)


#set current working path to script folder

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

#######################################
######################################################

### The world gisaid data set at May 26 consists of over 32047 sequences
### It is stored in 33 fasta files in ./chunks/May26/chunks1000/
### This r-script implements a high coverage filter which removes:
### - non human sequences
### - sequences shorter than 29000 characters
### - sequences with more than 300 N characters
### The resulting files are then joined in 16 files together with the Wuhan reference sequences and aligned

animals <- c("bat","env","canine","mink","cat","pangolin","tiger")



### FILTERING
for (i in 1:33){
  print(i)
  semifas <- paste(paste("chunk",i,sep=""),".fasta",sep="")
  fas <- paste("chunks/May26/chunks1000/",semifas,sep="")
  seq <- readDNAStringSet(fas)
  nnn <- strsplit(names(seq),"/")
  f<- function(c){c[2]}
  nnn <- sapply(nnn,f)
  seq <- RemoveGaps(seq,removeGaps = "all", processors = 1)
  
  an.seq <- which(nnn %in% animals)
  if (length(an.seq) > 0 ) {
    seq <- seq[-an.seq]
  }
  
  seq.29k <-which(width(seq) < 29000) 
  if (length(seq.29k) > 0 ) {
    seq <- seq[-seq.29k]
  }

  bad <- {}
  for (j in 1:length(seq)){
    print (j)
    aa <- alphabetFrequency(seq[j])
    if (aa[1,"N"] > 300) { bad<- c(bad,j)}
  }
  if (length(bad) > 0 ) {
    seq <- seq[-bad]
  }
cl.ch <-paste(paste("chunks/May26/chunks1000/cleaned_chunk",i,sep=""),".fasta",sep="")
write.dna(seq,cl.ch,format ="fasta",colsep="")
}


### ALIGNMENT
wu.seq <- readDNAStringSet("InternationalData/singleWuhan.fasta")
for (j in 1:15){
  print(j)
  jj <- 2*j-1
  jj1 <- 2*j
  fas <- paste(paste("chunks/May26/chunks1000/cleaned_chunk",jj,sep=""),".fasta",sep="")
  fas1 <- paste(paste("chunks/May26/chunks1000/cleaned_chunk",jj1,sep=""),".fasta",sep="")
  seq <- readDNAStringSet(fas)
  seq1 <- readDNAStringSet(fas1)
  seqq <- c(seq,seq1,wu.seq)
  als <- AlignSeqs(seqq, processors=NULL, iterations=4, refinements=2,verbose=TRUE)
  al.ch <-paste(paste("chunks/May26/chunks1000/aligned_chunk",j,sep=""),".fasta",sep="")
  write.dna(als,al.ch,format ="fasta",colsep="")
}
fas <- paste(paste("chunks/May26/chunks1000/cleaned_chunk",31,sep=""),".fasta",sep="")
fas1 <- paste(paste("chunks/May26/chunks1000/cleaned_chunk",32,sep=""),".fasta",sep="")
fas2 <- paste(paste("chunks/May26/chunks1000/cleaned_chunk",33,sep=""),".fasta",sep="")
seq <- readDNAStringSet(fas)
seq1 <- readDNAStringSet(fas1)
seq2 <- readDNAStringSet(fas2)
seqq <- c(seq,seq1,seq2,wu.seq)
als <- AlignSeqs(seqq, processors=NULL, iterations=4, refinements=2,verbose=TRUE)
al.ch <-paste(paste("chunks/May26/chunks1000/aligned_chunk",16,sep=""),".fasta",sep="")
write.dna(als,al.ch,format ="fasta",colsep="")


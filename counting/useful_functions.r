### This R-script contains some useful functions

### find_gaps_wuhan:
### -input: a set of aligned sequences containing the reference Wuhan sequence
### -output: the indices of the gaps in the wuhan reference sequence
find_gaps_wuhan <- function(aligned.sequences){
  al.wuhan <- aligned.sequences$"NC_045512.2"
  wu.seq <- unlist(strsplit(as.character(al.wuhan),""))
  gaps <- which((wu.seq %in% "-")==TRUE)
  return(gaps)
}


### indices_wuhan:
### - input: a set of aligned functions containing the Wuhan reference sequence
### - output: a vector of length equal to the width of the aligned sequences.
###           the entries of the vector are the indices of each position in accordance to the Wuhan reference
indices_wuhan <- function(aligned.sequences){
  al.wuhan <- aligned.sequences$"NC_045512.2"
  wu.seq <- unlist(strsplit(as.character(al.wuhan),""))
  gaps <- find_gaps_wuhan(aligned.sequences)
  wu.length <- length(wu.seq) - length(gaps)
  indices <- c(1:wu.length)
  for(g in gaps) {
    indices <- insert(indices,g,0)}
  return(indices)
}


### my.subseq
### input: a set of aligned sequences
###        a vector
### output: the set of subsequences corresponding to the indices listed in the vector
my.subseq <- function(mystring,sites){
  current <- subseq(mystring,start=sites[1],end=sites[1])
  u <- function(p){xscat(current,p)}
  for (s in sites[-1]){
    current <- u(subseq(mystring,start=s,end=s))
  }
  return(current)
}



### extract.haplo:
### - input: the name of a haplotype in the haplotype table (stored as data frame with name hap_list)
###          a set of aligned sequences containing the Wuhan reference sequence
### - output: the subset of sequences with the considered haplotype
extract.haplo <- function(hap,aligned.sequences){
  indx <- indices_wuhan(aligned.sequences)
  without.wu <- aligned.sequences[-length(aligned.sequences)]
  wu.seq <- aligned.sequences[length(aligned.sequences)]
  hap_pos <- c(as.numeric(hap_list[hap][[1]][1][[1]]))
  hap_bas <- hap_list[hap][[1]][2][[1]]
  f <- function(n){which(indx==n)}
  hap_pos_adj <- sapply(hap_pos,f)
  f <- function(n){subseq(without.wu,start=n,end=n)}
  TTT <- NULL
  for (j in 1:length(without.wu)){TTT <- c(TTT,TRUE)}
  for (j in 1:length(hap_pos_adj)){
    TTT <- TTT & (f(hap_pos_adj[j]) == hap_bas[j])
  }
  without.wu[which(TTT)]
}

### count.haplo:
### - input: the name of a haplotype in the haplotype table (stored as data frame)
###          a set of aligned sequences containing the Wuhan reference sequence
### - output: the number of sequences with the considered haplotype
count.haplo <- function(hap,aligned.sequences){
  indx <- indices_wuhan(aligned.sequences)
  without.wu <- aligned.sequences[-length(aligned.sequences)]
  wu.seq <- aligned.sequences[length(aligned.sequences)]
  hap_pos <- hap_list[hap][[1]][1][[1]]
  hap_bas <- hap_list[hap][[1]][2][[1]]
  f <- function(n){which(indx==n)}
  hap_pos_adj <- sapply(hap_pos,f)
  f <- function(n){subseq(without.wu,start=n,end=n)}
  TTT <- NULL
  for (j in 1:length(without.wu)){TTT <- c(TTT,TRUE)}
  for (j in 1:length(hap_pos_adj)){
    TTT <- TTT & (f(hap_pos_adj[j]) == hap_bas[j])
  }
  sum(TTT)
}


### extract.new.mutation:
### - input: a list with the same format as the haplotypes in the haplotype table data frame
###          a set of aligned sequences containing the Wuhan reference sequence
### - output: the subset of sequences with the considered mutation
extract.new.mutation <- function(new.hap,aligned.sequences){
  indx <- indices_wuhan(aligned.sequences)
  without.wu <- aligned.sequences[-length(aligned.sequences)]
  wu.seq <- aligned.sequences[length(aligned.sequences)]
  hap_pos <- new.hap$pos
  hap_bas <- new.hap$bas
  f <- function(n){which(indx==n)}
  hap_pos_adj <- sapply(hap_pos,f)
  f <- function(n){subseq(without.wu,start=n,end=n)}
  TTT <- NULL
  for (j in 1:length(without.wu)){TTT <- c(TTT,TRUE)}
  for (j in 1:length(hap_pos_adj)){
    TTT <- TTT & (f(hap_pos_adj[j]) == hap_bas[j])
  }
  result <- without.wu[which(TTT)]
  return(result)
}


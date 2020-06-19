#------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------
#Help functions written by Fulvio Gesmundo
#------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------


count.one.haplo <- function(hap,aligned.sequences){
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

extract.new.haplo <- function(new.hap,aligned.sequences){
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

country.count <- function(als){
  nnn <- strsplit(names(als),"/")
  f<- function(c){c[2]}
  nnn <- sapply(nnn,f)
  un <- unique(nnn)
  count <- list()
  f <- function(c){count$c <- sum(nnn == c)}
  count<- sapply(un,f)
  return(count)
}

my.subseq <- function(mystring,sites){
  current <- subseq(mystring,start=sites[1],end=sites[1])
  u <- function(p){xscat(current,p)}
  for (s in sites[-1]){
    current <- u(subseq(mystring,start=s,end=s))
  }
  return(current)
}

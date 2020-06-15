create_haplo_list_without_A<- function(){  
  haplo_type_ll<-list()
  #Apparently, there is no A1, only A1a
  haplo_type_ll[["A1a"]][["pos"]]<-c(11083, 26144)
  haplo_type_ll[["A1a"]][["bas"]]<- c("T","T")
  haplo_type_ll[["A1a1"]][["pos"]]<-c(haplo_type_ll[["A1a"]][["pos"]], 14805)
  haplo_type_ll[["A1a1"]][["bas"]]<- c(haplo_type_ll[["A1a"]][["bas"]],"T")
  haplo_type_ll[["A1a1a"]][["pos"]]<-c(haplo_type_ll[["A1a1"]][["pos"]], 17247)
  haplo_type_ll[["A1a1a"]][["bas"]]<- c(haplo_type_ll[["A1a1"]][["bas"]],"C")
  haplo_type_ll[["A1a1a1"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 5142)
  haplo_type_ll[["A1a1a1"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"T")
  haplo_type_ll[["A1a1a2"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 1321)
  haplo_type_ll[["A1a1a2"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"C")
  haplo_type_ll[["A1a1a3"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 3034, 16054, 17859, 29751)
  haplo_type_ll[["A1a1a3"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"C", "T", "C", "C")
  haplo_type_ll[["A1a1a4"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 1515)
  haplo_type_ll[["A1a1a4"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"G")
  haplo_type_ll[["A1a1a5"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 7479)
  haplo_type_ll[["A1a1a5"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"G")
  haplo_type_ll[["A1a1b"]][["pos"]]<-c(haplo_type_ll[["A1a1"]][["pos"]], 2558)
  haplo_type_ll[["A1a1b"]][["bas"]]<- c(haplo_type_ll[["A1a1"]][["bas"]],"T")
  haplo_type_ll[["A1a2"]][["pos"]]<-c(haplo_type_ll[["A1a1"]][["pos"]], 7876)
  haplo_type_ll[["A1a2"]][["bas"]]<- c(haplo_type_ll[["A1a1"]][["bas"]],"A")
  #A2
  haplo_type_ll[["A2"]][["pos"]]<-c(241,3037,23403)
  haplo_type_ll[["A2"]][["bas"]]<- c("T","T","G")
  haplo_type_ll[["A2a"]][["pos"]]<-c(haplo_type_ll[["A2"]][["pos"]], 14408)
  haplo_type_ll[["A2a"]][["bas"]]<- c(haplo_type_ll[["A2"]][["bas"]], "T")
  haplo_type_ll[["A2a1"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],28881, 28882,28883)
  haplo_type_ll[["A2a1"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "A", "A", "C")
  haplo_type_ll[["A2a1a"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],27046)
  haplo_type_ll[["A2a1a"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "T")
  haplo_type_ll[["A2a1a1"]][["pos"]]<-c(haplo_type_ll[["A2a1a"]][["pos"]],25958)
  haplo_type_ll[["A2a1a1"]][["bas"]]<- c(haplo_type_ll[["A2a1a"]][["bas"]], "G")
  haplo_type_ll[["A2a1a2"]][["pos"]]<-c(haplo_type_ll[["A2a1a"]][["pos"]],28344)
  haplo_type_ll[["A2a1a2"]][["bas"]]<- c(haplo_type_ll[["A2a1a"]][["bas"]], "A")
  haplo_type_ll[["A2a1a3"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],23086)
  haplo_type_ll[["A2a1a3"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "T")
  haplo_type_ll[["A2a1b"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],10097,23731)
  haplo_type_ll[["A2a1b"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "A","T")
  haplo_type_ll[["A2a1c"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],19839)
  haplo_type_ll[["A2a1c"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "C")
  haplo_type_ll[["A2a1d"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],27430)
  haplo_type_ll[["A2a1d"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "A")
  
  haplo_type_ll[["A2a2"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],25563)
  haplo_type_ll[["A2a2"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  
  haplo_type_ll[["A2a2"]][["pos"]]<-c(haplo_type_ll[["A2"]][["pos"]], 25563)
  haplo_type_ll[["A2a2"]][["bas"]]<- c(haplo_type_ll[["A2"]][["bas"]], "T")
  
  haplo_type_ll[["A2a2a"]][["pos"]]<-c(haplo_type_ll[["A2a2"]][["pos"]],1059)
  haplo_type_ll[["A2a2a"]][["bas"]]<- c(haplo_type_ll[["A2a2"]][["bas"]], "T")
  haplo_type_ll[["A2a3"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],20268)
  haplo_type_ll[["A2a3"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a3a"]][["pos"]]<-c(haplo_type_ll[["A2a3"]][["pos"]],10323)
  haplo_type_ll[["A2a3a"]][["bas"]]<- c(haplo_type_ll[["A2a3"]][["bas"]], "G")
  haplo_type_ll[["A2a4"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],2455,10450)
  haplo_type_ll[["A2a4"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T","T")
  haplo_type_ll[["A2a5"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],26530)
  haplo_type_ll[["A2a5"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a6"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],24862)
  haplo_type_ll[["A2a6"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a7"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],25429)
  haplo_type_ll[["A2a7"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a8"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],15324)
  haplo_type_ll[["A2a8"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a9"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],187)
  haplo_type_ll[["A2a9"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a10"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]], 25350)
  haplo_type_ll[["A2a10"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a11"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],20275)
  haplo_type_ll[["A2a11"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "A")
  haplo_type_ll[["A2a12"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],24077)
  haplo_type_ll[["A2a12"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a13"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],28836)
  haplo_type_ll[["A2a13"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  #A3
  haplo_type_ll[["A3"]][["pos"]]<-c(1397, 11083, 28688, 29742)
  haplo_type_ll[["A3"]][["bas"]]<- c("A","T", "C","T")
  #A6
  haplo_type_ll[["A6"]][["pos"]]<-c(514)
  haplo_type_ll[["A6"]][["bas"]]<- c("C")
  #A7
  haplo_type_ll[["A7"]][["pos"]]<-c(9924)
  haplo_type_ll[["A7"]][["bas"]]<- c("T")
  #A8
  haplo_type_ll[["A8"]][["pos"]]<-c(1440, 2891)
  haplo_type_ll[["A8"]][["bas"]]<- c("A","A")
  haplo_type_ll[["28851"]][["pos"]]<-c(28851)
  haplo_type_ll[["28851"]][["bas"]]<- c("T")
  haplo_type_ll[["4140"]][["pos"]]<-c(4140)
  haplo_type_ll[["4140"]][["bas"]]<- c("G")
  haplo_type_ll[["27661"]][["pos"]]<-c(27661)
  haplo_type_ll[["27661"]][["bas"]]<- c("T")
  #A9
  haplo_type_ll[["A9"]][["pos"]]<-c(1604, 20270)
  haplo_type_ll[["A9"]][["bas"]]<- c("A","T")
  #A10
  haplo_type_ll[["A10"]][["pos"]]<-c(1218, 27806, 29711)
  haplo_type_ll[["A10"]][["bas"]]<- c("T","T","T")
  ###B
  haplo_type_ll[["B"]][["pos"]]<-c(28144)
  haplo_type_ll[["B"]][["bas"]]<- c("C")
  #B1
  haplo_type_ll[["B1"]][["pos"]]<-c(haplo_type_ll[["B"]][["pos"]],18060)
  haplo_type_ll[["B1"]][["bas"]]<- c(haplo_type_ll[["B"]][["bas"]],"T")
  #B1a
  haplo_type_ll[["B1a"]][["pos"]]<-c(haplo_type_ll[["B1"]][["pos"]],17858)
  haplo_type_ll[["B1a"]][["bas"]]<- c(haplo_type_ll[["B1"]][["bas"]],"G")
  #B1a1
  haplo_type_ll[["B1a1"]][["pos"]]<-c(haplo_type_ll[["B1a"]][["pos"]],17747)
  haplo_type_ll[["B1a1"]][["bas"]]<- c(haplo_type_ll[["B1a"]][["bas"]],"T")
  #B1a1a
  haplo_type_ll[["B1a1a"]][["pos"]]<-c(haplo_type_ll[["B1a1"]][["pos"]],24694)
  haplo_type_ll[["B1a1a"]][["bas"]]<- c(haplo_type_ll[["B1a1"]][["bas"]],"T")
  #B1a1a1
  haplo_type_ll[["B1a1a1"]][["pos"]]<-c(haplo_type_ll[["B1a1a"]][["pos"]],9445)
  haplo_type_ll[["B1a1a1"]][["bas"]]<- c(haplo_type_ll[["B1a1a"]][["bas"]],"C")
  #B1a1a1a
  haplo_type_ll[["B1a1a1a"]][["pos"]]<-c(haplo_type_ll[["B1a1a1"]][["pos"]],17531, 18756)
  haplo_type_ll[["B1a1a1a"]][["bas"]]<- c(haplo_type_ll[["B1a1a1"]][["bas"]],"C", "T")
  #B1a1a1b
  haplo_type_ll[["B1a1a1b"]][["pos"]]<-c(haplo_type_ll[["B1a1a1"]][["pos"]],29140)
  haplo_type_ll[["B1a1a1b"]][["bas"]]<- c(haplo_type_ll[["B1a1a1"]][["bas"]],"T")
  #B2
  haplo_type_ll[["B2"]][["pos"]]<-c(haplo_type_ll[["B"]][["pos"]],29095)
  haplo_type_ll[["B2"]][["bas"]]<- c(haplo_type_ll[["B"]][["bas"]],"T")
  #B4
  haplo_type_ll[["B4"]][["pos"]]<-c(haplo_type_ll[["B"]][["pos"]],28878, 29742)
  haplo_type_ll[["B4"]][["bas"]]<- c(haplo_type_ll[["B"]][["bas"]],"A", "A")
  #X1 T346L
  haplo_type_ll[["X1"]][["pos"]]<-c(1302)
  haplo_type_ll[["X1"]][["bas"]]<- c("T") #Ref: C 
  #X2  A2249V
  haplo_type_ll[["X2"]][["pos"]]<-c(7011)
  haplo_type_ll[["X2"]][["bas"]]<- c("T") #Ref: C
  #X3 R2841R
  haplo_type_ll[["X3"]][["pos"]]<-c(8788)
  haplo_type_ll[["X3"]][["bas"]]<- c("C") #Ref: T
  #X4 N2187T
  haplo_type_ll[["X4"]][["pos"]]<-c(6825)
  haplo_type_ll[["X4"]][["bas"]]<- c("C") #Ref: A
  #X5 V143V
  haplo_type_ll[["X5"]][["pos"]]<-c(26951)
  haplo_type_ll[["X5"]][["bas"]]<- c("A") #Ref: G
  #X6 N2537N
  haplo_type_ll[["X6"]][["pos"]]<-c(7834) 
  haplo_type_ll[["X6"]][["bas"]]<- c("T") #Ref: C
  #X7 This one is not the old X7
  haplo_type_ll[["X7"]][["pos"]]<-c(11074) 
  haplo_type_ll[["X7"]][["bas"]]<- c("T") #Ref: C
  #seqs <- OrientNucleotides(clear_gap_seqs)
  #X8 A5039S  - reported as 15379!! Plot to see this!
  haplo_type_ll[["X8"]][["pos"]]<-c(15380) 
  haplo_type_ll[["X8"]][["bas"]]<- c("T") #Ref: G
  #seqs <- OrientNucleotides(clear_gap_seqs)
  #X9 P309P
  haplo_type_ll[["X9"]][["pos"]]<-c(29200) 
  haplo_type_ll[["X9"]][["bas"]]<- c("T") #Ref: ??
  
  #New haplotypes per 19-05
  
  #X10 
  haplo_type_ll[["X10"]][["pos"]]<-c(3743) 
  haplo_type_ll[["X10"]][["bas"]]<- c("T") #Ref: C
  
  #X11 
  haplo_type_ll[["X11"]][["pos"]]<-c(12781) 
  haplo_type_ll[["X11"]][["bas"]]<- c("T") #Ref:C
  
  
  #X12 
  haplo_type_ll[["X12"]][["pos"]]<-c(15842) 
  haplo_type_ll[["X12"]][["bas"]]<- c("A") #Ref: C
  
  
  #X13 
  haplo_type_ll[["X13"]][["pos"]]<-c(16887) 
  haplo_type_ll[["X13"]][["bas"]]<- c("T") #Ref: C
  
  
  #X14 
  haplo_type_ll[["X14"]][["pos"]]<-c(19086) 
  haplo_type_ll[["X14"]][["bas"]]<- c("T") #Ref:G
  
  
  
  #X15 
  haplo_type_ll[["X15"]][["pos"]]<-c(22103) 
  haplo_type_ll[["X15"]][["bas"]]<- c("C") #Ref:G
  
  
  #X16 
  haplo_type_ll[["X16"]][["pos"]]<-c(24368) 
  haplo_type_ll[["X16"]][["bas"]]<- c("T") #Ref:G
  
  
  #X17 
  haplo_type_ll[["X17"]][["pos"]]<-c( 28253) 
  haplo_type_ll[["X17"]][["bas"]]<- c("A") #Ref:C
  
  return(haplo_type_ll)
}  




create_haplo_list<- function(){  
  haplo_type_ll<-list()
  haplo_type_ll[["A"]][["pos"]]<-c(20229,13064,18483,8017)
  haplo_type_ll[["A"]][["bas"]]<- c("T", "T", "C","G")
  haplo_type_ll[["A1a"]][["pos"]]<-c(11083, 26144)
  haplo_type_ll[["A1a"]][["bas"]]<- c("T","T")
  haplo_type_ll[["A1a1"]][["pos"]]<-c(haplo_type_ll[["A1a"]][["pos"]], 14805)
  haplo_type_ll[["A1a1"]][["bas"]]<- c(haplo_type_ll[["A1a"]][["bas"]],"T")
  haplo_type_ll[["A1a1a"]][["pos"]]<-c(haplo_type_ll[["A1a1"]][["pos"]], 17247)
  haplo_type_ll[["A1a1a"]][["bas"]]<- c(haplo_type_ll[["A1a1"]][["bas"]],"C")
  haplo_type_ll[["A1a1a1"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 5142)
  haplo_type_ll[["A1a1a1"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"T")
  haplo_type_ll[["A1a1a2"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 1321)
  haplo_type_ll[["A1a1a2"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"C")
  haplo_type_ll[["A1a1a3"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 3034, 16054, 17859, 29751)
  haplo_type_ll[["A1a1a3"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"C", "T", "C", "C")
  haplo_type_ll[["A1a1a4"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 1515)
  haplo_type_ll[["A1a1a4"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"G")
  haplo_type_ll[["A1a1a5"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 7479)
  haplo_type_ll[["A1a1a5"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"G")
  haplo_type_ll[["A1a1b"]][["pos"]]<-c(haplo_type_ll[["A1a1"]][["pos"]], 2558)
  haplo_type_ll[["A1a1b"]][["bas"]]<- c(haplo_type_ll[["A1a1"]][["bas"]],"T")
  haplo_type_ll[["A1a2"]][["pos"]]<-c(haplo_type_ll[["A1a1"]][["pos"]], 7876)
  haplo_type_ll[["A1a2"]][["bas"]]<- c(haplo_type_ll[["A1a1"]][["bas"]],"A")
  #A2
  haplo_type_ll[["A2"]][["pos"]]<-c(241,3037,23403)
  haplo_type_ll[["A2"]][["bas"]]<- c("T","T","G")
  haplo_type_ll[["A2a"]][["pos"]]<-c(haplo_type_ll[["A2"]][["pos"]], 14408)
  haplo_type_ll[["A2a"]][["bas"]]<- c(haplo_type_ll[["A2"]][["bas"]], "T")
  haplo_type_ll[["A2a1"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],28881, 28882,28883)
  haplo_type_ll[["A2a1"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "A", "A", "C")
  haplo_type_ll[["A2a1a"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],27046)
  haplo_type_ll[["A2a1a"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "T")
  haplo_type_ll[["A2a1a1"]][["pos"]]<-c(haplo_type_ll[["A2a1a"]][["pos"]],25958)
  haplo_type_ll[["A2a1a1"]][["bas"]]<- c(haplo_type_ll[["A2a1a"]][["bas"]], "G")
  haplo_type_ll[["A2a1a2"]][["pos"]]<-c(haplo_type_ll[["A2a1a"]][["pos"]],28344)
  haplo_type_ll[["A2a1a2"]][["bas"]]<- c(haplo_type_ll[["A2a1a"]][["bas"]], "A")
  haplo_type_ll[["A2a1a3"]][["pos"]]<-c(haplo_type_ll[["A2a1a"]][["pos"]],23086)
  haplo_type_ll[["A2a1a3"]][["bas"]]<- c(haplo_type_ll[["A2a1a"]][["bas"]], "T")
  haplo_type_ll[["A2a1b"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],10097,23731)
  haplo_type_ll[["A2a1b"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "A","T")
  haplo_type_ll[["A2a1c"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],19839)
  haplo_type_ll[["A2a1c"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "C")
  haplo_type_ll[["A2a1d"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],27430)
  haplo_type_ll[["A2a1d"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "A")
  haplo_type_ll[["A2a2"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],25563)
  haplo_type_ll[["A2a2"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a2"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]], 25563)
  haplo_type_ll[["A2a2"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a2a"]][["pos"]]<-c(haplo_type_ll[["A2a2"]][["pos"]],1059)
  haplo_type_ll[["A2a2a"]][["bas"]]<- c(haplo_type_ll[["A2a2"]][["bas"]], "T")
  haplo_type_ll[["A2a3"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],20268)
  haplo_type_ll[["A2a3"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a3a"]][["pos"]]<-c(haplo_type_ll[["A2a3"]][["pos"]],10323)
  haplo_type_ll[["A2a3a"]][["bas"]]<- c(haplo_type_ll[["A2a3"]][["bas"]], "G")
  haplo_type_ll[["A2a4"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],2455,10450)
  haplo_type_ll[["A2a4"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T","T")
  haplo_type_ll[["A2a5"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],26530)
  haplo_type_ll[["A2a5"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a6"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],24862)
  haplo_type_ll[["A2a6"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a7"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],25429)
  haplo_type_ll[["A2a7"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a8"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],15324)
  haplo_type_ll[["A2a8"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a9"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],187)
  haplo_type_ll[["A2a9"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a10"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]], 25350)
  haplo_type_ll[["A2a10"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a11"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],20275)
  haplo_type_ll[["A2a11"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "A")
  haplo_type_ll[["A2a12"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],24077)
  haplo_type_ll[["A2a12"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a13"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],28836)
  haplo_type_ll[["A2a13"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  #A3
  haplo_type_ll[["A3"]][["pos"]]<-c(1397, 11083, 28688, 29742)
  haplo_type_ll[["A3"]][["bas"]]<- c("A","T", "C","T")
  #A6
  haplo_type_ll[["A6"]][["pos"]]<-c(514)
  haplo_type_ll[["A6"]][["bas"]]<- c("C")
  #A7
  haplo_type_ll[["A7"]][["pos"]]<-c(9924)
  haplo_type_ll[["A7"]][["bas"]]<- c("T")
  #A8
  haplo_type_ll[["A8"]][["pos"]]<-c(1440, 2891)
  haplo_type_ll[["A8"]][["bas"]]<- c("A","A")
  #A9
  haplo_type_ll[["A9"]][["pos"]]<-c(1604, 20270)
  haplo_type_ll[["A9"]][["bas"]]<- c("A","T")
  #A10
  haplo_type_ll[["A10"]][["pos"]]<-c(1218, 27806, 29711)
  haplo_type_ll[["A10"]][["bas"]]<- c("T","T","T")
  ###B
  haplo_type_ll[["B"]][["pos"]]<-c(28144)
  haplo_type_ll[["B"]][["bas"]]<- c("C")
  #B1
  haplo_type_ll[["B1"]][["pos"]]<-c(haplo_type_ll[["B"]][["pos"]],18060)
  haplo_type_ll[["B1"]][["bas"]]<- c(haplo_type_ll[["B"]][["bas"]],"T")
  #B1a
  haplo_type_ll[["B1a"]][["pos"]]<-c(haplo_type_ll[["B1"]][["pos"]],17858)
  haplo_type_ll[["B1a"]][["bas"]]<- c(haplo_type_ll[["B1"]][["bas"]],"G")
  #B1a1
  haplo_type_ll[["B1a1"]][["pos"]]<-c(haplo_type_ll[["B1a"]][["pos"]],17747)
  haplo_type_ll[["B1a1"]][["bas"]]<- c(haplo_type_ll[["B1a"]][["bas"]],"T")
  #B1a1a
  haplo_type_ll[["B1a1a"]][["pos"]]<-c(haplo_type_ll[["B1a1"]][["pos"]],24694)
  haplo_type_ll[["B1a1a"]][["bas"]]<- c(haplo_type_ll[["B1a1"]][["bas"]],"T")
  #B1a1a1
  haplo_type_ll[["B1a1a1"]][["pos"]]<-c(haplo_type_ll[["B1a1a"]][["pos"]],9445)
  haplo_type_ll[["B1a1a1"]][["bas"]]<- c(haplo_type_ll[["B1a1a"]][["bas"]],"C")
  #B1a1a1a
  haplo_type_ll[["B1a1a1a"]][["pos"]]<-c(haplo_type_ll[["B1a1a1"]][["pos"]],17531, 18756)
  haplo_type_ll[["B1a1a1a"]][["bas"]]<- c(haplo_type_ll[["B1a1a1"]][["bas"]],"C", "T")
  #B1a1a1b
  haplo_type_ll[["B1a1a1b"]][["pos"]]<-c(haplo_type_ll[["B1a1a1"]][["pos"]],29140)
  haplo_type_ll[["B1a1a1b"]][["bas"]]<- c(haplo_type_ll[["B1a1a1"]][["bas"]],"T")
  #B2
  haplo_type_ll[["B2"]][["pos"]]<-c(haplo_type_ll[["B"]][["pos"]],29095)
  haplo_type_ll[["B2"]][["bas"]]<- c(haplo_type_ll[["B"]][["bas"]],"T")
  #B4
  haplo_type_ll[["B4"]][["pos"]]<-c(haplo_type_ll[["B"]][["pos"]],28878, 29742)
  haplo_type_ll[["B4"]][["bas"]]<- c(haplo_type_ll[["B"]][["bas"]],"A", "A")
  
  
  return(haplo_type_ll)
} 


create_haplo_list_ONLY_X <- function(){  
  haplo_type_ll<-list()
  ############# NEW HAPLOTYPES ###############
  
  

  #X1 T346L
  haplo_type_ll[["C1302T"]][["pos"]]<-c(1302)
  haplo_type_ll[["C1302T"]][["bas"]]<- c("T") #Ref: C 
  #X2  A2249V
  haplo_type_ll[["C7011T"]][["pos"]]<-c(7011)
  haplo_type_ll[["C7011T"]][["bas"]]<- c("T") #Ref: C
  #X3 R2841R
  haplo_type_ll[["T8788C"]][["pos"]]<-c(8788)
  haplo_type_ll[["T8788C"]][["bas"]]<- c("C") #Ref: T
  #X4 N2187T
  haplo_type_ll[["A6825C"]][["pos"]]<-c(6825)
  haplo_type_ll[["A6825C"]][["bas"]]<- c("C") #Ref: A
  #X5 V143V
  haplo_type_ll[["G26951A"]][["pos"]]<-c(26951)
  haplo_type_ll[["G26951A"]][["bas"]]<- c("A") #Ref: G
  #X6 N2537N
  haplo_type_ll[["C7834T"]][["pos"]]<-c(7834) 
  haplo_type_ll[["C7834T"]][["bas"]]<- c("T") #Ref: C
  #X7 
  haplo_type_ll[["G11074T"]][["pos"]]<-c(11074) 
  haplo_type_ll[["G11074T"]][["bas"]]<- c("T") #Ref: C
  #X8 A5039S  - reported as 15379!! Plot to see this!
  haplo_type_ll[["G15380T"]][["pos"]]<-c(15380) 
  haplo_type_ll[["G15380T"]][["bas"]]<- c("T") #Ref: G
  #X9 P309P
  haplo_type_ll[["C29200T"]][["pos"]]<-c(29200) 
  haplo_type_ll[["C29200T"]][["bas"]]<- c("T") #Ref: ??
  
  #New haplotypes per 19-05
  
  #X10 
  haplo_type_ll[["C3743T"]][["pos"]]<-c(3743) 
  haplo_type_ll[["C3743T"]][["bas"]]<- c("T") #Ref: C
  #X11 
  haplo_type_ll[["C12781T"]][["pos"]]<-c(12781) 
  haplo_type_ll[["C12781T"]][["bas"]]<- c("T") #Ref:C
  #X12 
  haplo_type_ll[["C15842A"]][["pos"]]<-c(15842) 
  haplo_type_ll[["C15842A"]][["bas"]]<- c("A") #Ref: C
  #X13 
  haplo_type_ll[["C16887T"]][["pos"]]<-c(16887) 
  haplo_type_ll[["C16887T"]][["bas"]]<- c("T") #Ref: C
  #X14 
  haplo_type_ll[["G19086T"]][["pos"]]<-c(19086) 
  haplo_type_ll[["G19086T"]][["bas"]]<- c("T") #Ref:G
  #X15 
  haplo_type_ll[["G22103C"]][["pos"]]<-c(22103) 
  haplo_type_ll[["G22103C"]][["bas"]]<- c("C") #Ref:G
  #X16 
  haplo_type_ll[["G24368T"]][["pos"]]<-c(24368) 
  haplo_type_ll[["G24368T"]][["bas"]]<- c("T") #Ref:G
  #X17 
  haplo_type_ll[["C28253A"]][["pos"]]<-c(28253) 
  haplo_type_ll[["C28253A"]][["bas"]]<- c("A") #Ref:C
  
  haplo_type_ll[["T99C"]][["pos"]]<-c(99) 
  haplo_type_ll[["T99C"]][["bas"]]<- c("C") 
  
  haplo_type_ll[["C218T"]][["pos"]]<-c(218) 
  haplo_type_ll[["C218T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["A518G"]][["pos"]]<-c(518) 
  haplo_type_ll[["A518G"]][["bas"]]<- c("G")
  
  haplo_type_ll[["T658C"]][["pos"]]<-c(658) 
  haplo_type_ll[["T658C"]][["bas"]]<- c("C")
  
  haplo_type_ll[["C4002T"]][["pos"]]<-c(4002) 
  haplo_type_ll[["C4002T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["A4548G"]][["pos"]]<-c(4548) 
  haplo_type_ll[["A4548G"]][["bas"]]<- c("G")
  
  haplo_type_ll[["C4668T"]][["pos"]]<-c(4668) 
  haplo_type_ll[["C4668T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C6539T"]][["pos"]]<-c(6539) 
  haplo_type_ll[["C6539T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C7029T"]][["pos"]]<-c(7029) 
  haplo_type_ll[["C7029T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C7819T"]][["pos"]]<-c(7819) 
  haplo_type_ll[["C7819T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["A9280G"]][["pos"]]<-c(9280) 
  haplo_type_ll[["A9280G"]][["bas"]]<- c("G")
  
  haplo_type_ll[["C9803T"]][["pos"]]<-c(9803) 
  haplo_type_ll[["C9803T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C9979T"]][["pos"]]<-c(9979) 
  haplo_type_ll[["C9979T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["G10465A"]][["pos"]]<-c(10465) 
  haplo_type_ll[["G10465A"]][["bas"]]<- c("A")
  
  haplo_type_ll[["C13536T"]][["pos"]]<-c(13536) 
  haplo_type_ll[["C13536T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["G15906A"]][["pos"]]<-c(15906) 
  haplo_type_ll[["G15906A"]][["bas"]]<- c("A")
  
  haplo_type_ll[["C18744T"]][["pos"]]<-c(18744) 
  haplo_type_ll[["C18744T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C18877T"]][["pos"]]<-c(18877) 
  haplo_type_ll[["C18877T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C19263T"]][["pos"]]<-c(19263) 
  haplo_type_ll[["C19263T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["G20398A"]][["pos"]]<-c(20398) 
  haplo_type_ll[["G20398A"]][["bas"]]<- c("A")
  
  haplo_type_ll[["G20419T"]][["pos"]]<-c(20419) 
  haplo_type_ll[["G20419T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["G20887A"]][["pos"]]<-c(20887) 
  haplo_type_ll[["G20887A"]][["bas"]]<- c("A")
  
  haplo_type_ll[["C21707T"]][["pos"]]<-c(21707) 
  haplo_type_ll[["C21707T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C21742T"]][["pos"]]<-c(21742) 
  haplo_type_ll[["C21742T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C21855T"]][["pos"]]<-c(21855) 
  haplo_type_ll[["C21855T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["T21976C"]][["pos"]]<-c(21976) 
  haplo_type_ll[["T21976C"]][["bas"]]<- c("C")
  
  haplo_type_ll[["A23975G"]][["pos"]]<-c(23975) 
  haplo_type_ll[["A23975G"]][["bas"]]<- c("G")
  
  haplo_type_ll[["G25785T"]][["pos"]]<-c(25785) 
  haplo_type_ll[["G25785T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C28629T"]][["pos"]]<-c(28629) 
  haplo_type_ll[["C28629T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["G28899T"]][["pos"]]<-c(28899) 
  haplo_type_ll[["G28899T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C29719T"]][["pos"]]<-c(29719) 
  haplo_type_ll[["C29719T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["G29734C"]][["pos"]]<-c(29734) 
  haplo_type_ll[["G29734C"]][["bas"]]<- c("C")
  
  haplo_type_ll[["G29779T"]][["pos"]]<-c(29779) 
  haplo_type_ll[["G29779T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C29095T"]][["pos"]]<-c(29095) 
  haplo_type_ll[["C29095T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C7164T"]][["pos"]]<-c(7164) 
  haplo_type_ll[["C7164T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C619T"]][["pos"]]<-c(619) 
  haplo_type_ll[["C619T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C25499T"]][["pos"]]<-c(25499) 
  haplo_type_ll[["C25499T"]][["bas"]]<- c("T")
  
  
  
  return(haplo_type_ll)
}



create_haplo_list_with_NEWX<- function(){  
  haplo_type_ll<-list()
  #Apparently, there is no A1, only A1a
  haplo_type_ll[["A1a"]][["pos"]]<-c(11083, 26144)
  haplo_type_ll[["A1a"]][["bas"]]<- c("T","T")
  haplo_type_ll[["A1a1"]][["pos"]]<-c(haplo_type_ll[["A1a"]][["pos"]], 14805)
  haplo_type_ll[["A1a1"]][["bas"]]<- c(haplo_type_ll[["A1a"]][["bas"]],"T")
  haplo_type_ll[["A1a1a"]][["pos"]]<-c(haplo_type_ll[["A1a1"]][["pos"]], 17247)
  haplo_type_ll[["A1a1a"]][["bas"]]<- c(haplo_type_ll[["A1a1"]][["bas"]],"C")
  haplo_type_ll[["A1a1a1"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 5142)
  haplo_type_ll[["A1a1a1"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"T")
  haplo_type_ll[["A1a1a2"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 1321)
  haplo_type_ll[["A1a1a2"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"C")
  haplo_type_ll[["A1a1a3"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 3034, 16054, 17859, 29751)
  haplo_type_ll[["A1a1a3"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"C", "T", "C", "C")
  haplo_type_ll[["A1a1a4"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 1515)
  haplo_type_ll[["A1a1a4"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"G")
  haplo_type_ll[["A1a1a5"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 7479)
  haplo_type_ll[["A1a1a5"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"G")
  haplo_type_ll[["A1a1b"]][["pos"]]<-c(haplo_type_ll[["A1a1"]][["pos"]], 2558)
  haplo_type_ll[["A1a1b"]][["bas"]]<- c(haplo_type_ll[["A1a1"]][["bas"]],"T")
  haplo_type_ll[["A1a2"]][["pos"]]<-c(haplo_type_ll[["A1a1"]][["pos"]], 7876)
  haplo_type_ll[["A1a2"]][["bas"]]<- c(haplo_type_ll[["A1a1"]][["bas"]],"A")
  #A2
  haplo_type_ll[["A2"]][["pos"]]<-c(241,3037,23403)
  haplo_type_ll[["A2"]][["bas"]]<- c("T","T","G")
  haplo_type_ll[["A2a"]][["pos"]]<-c(haplo_type_ll[["A2"]][["pos"]], 14408)
  haplo_type_ll[["A2a"]][["bas"]]<- c(haplo_type_ll[["A2"]][["bas"]], "T")
  haplo_type_ll[["A2a1"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],28881, 28882,28883)
  haplo_type_ll[["A2a1"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "A", "A", "C")
  haplo_type_ll[["A2a1a"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],27046)
  haplo_type_ll[["A2a1a"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "T")
  haplo_type_ll[["A2a1a1"]][["pos"]]<-c(haplo_type_ll[["A2a1a"]][["pos"]],25958)
  haplo_type_ll[["A2a1a1"]][["bas"]]<- c(haplo_type_ll[["A2a1a"]][["bas"]], "G")
  haplo_type_ll[["A2a1a2"]][["pos"]]<-c(haplo_type_ll[["A2a1a"]][["pos"]],28344)
  haplo_type_ll[["A2a1a2"]][["bas"]]<- c(haplo_type_ll[["A2a1a"]][["bas"]], "A")
  haplo_type_ll[["A2a1a3"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],23086)
  haplo_type_ll[["A2a1a3"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "T")
  haplo_type_ll[["A2a1b"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],10097,23731)
  haplo_type_ll[["A2a1b"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "A","T")
  haplo_type_ll[["A2a1c"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],19839)
  haplo_type_ll[["A2a1c"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "C")
  haplo_type_ll[["A2a1d"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],27430)
  haplo_type_ll[["A2a1d"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "A")
  
  haplo_type_ll[["A2a2"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],25563)
  haplo_type_ll[["A2a2"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  
  haplo_type_ll[["A2a2"]][["pos"]]<-c(haplo_type_ll[["A2"]][["pos"]], 25563)
  haplo_type_ll[["A2a2"]][["bas"]]<- c(haplo_type_ll[["A2"]][["bas"]], "T")
  
  haplo_type_ll[["A2a2a"]][["pos"]]<-c(haplo_type_ll[["A2a2"]][["pos"]],1059)
  haplo_type_ll[["A2a2a"]][["bas"]]<- c(haplo_type_ll[["A2a2"]][["bas"]], "T")
  haplo_type_ll[["A2a3"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],20268)
  haplo_type_ll[["A2a3"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a3a"]][["pos"]]<-c(haplo_type_ll[["A2a3"]][["pos"]],10323)
  haplo_type_ll[["A2a3a"]][["bas"]]<- c(haplo_type_ll[["A2a3"]][["bas"]], "G")
  haplo_type_ll[["A2a4"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],2455,10450)
  haplo_type_ll[["A2a4"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T","T")
  haplo_type_ll[["A2a5"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],26530)
  haplo_type_ll[["A2a5"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a6"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],24862)
  haplo_type_ll[["A2a6"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a7"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],25429)
  haplo_type_ll[["A2a7"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a8"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],15324)
  haplo_type_ll[["A2a8"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a9"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],187)
  haplo_type_ll[["A2a9"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a10"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]], 25350)
  haplo_type_ll[["A2a10"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a11"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],20275)
  haplo_type_ll[["A2a11"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "A")
  haplo_type_ll[["A2a12"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],24077)
  haplo_type_ll[["A2a12"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a13"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],28836)
  haplo_type_ll[["A2a13"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  #A3
  haplo_type_ll[["A3"]][["pos"]]<-c(1397, 11083, 28688, 29742)
  haplo_type_ll[["A3"]][["bas"]]<- c("A","T", "C","T")
  #A6
  haplo_type_ll[["A6"]][["pos"]]<-c(514)
  haplo_type_ll[["A6"]][["bas"]]<- c("C")
  #A7
  haplo_type_ll[["A7"]][["pos"]]<-c(9924)
  haplo_type_ll[["A7"]][["bas"]]<- c("T")
  #A8
  haplo_type_ll[["A8"]][["pos"]]<-c(1440, 2891)
  haplo_type_ll[["A8"]][["bas"]]<- c("A","A")
  haplo_type_ll[["28851"]][["pos"]]<-c(28851)
  haplo_type_ll[["28851"]][["bas"]]<- c("T")
  haplo_type_ll[["4140"]][["pos"]]<-c(4140)
  haplo_type_ll[["4140"]][["bas"]]<- c("G")
  haplo_type_ll[["27661"]][["pos"]]<-c(27661)
  haplo_type_ll[["27661"]][["bas"]]<- c("T")
  #A9
  haplo_type_ll[["A9"]][["pos"]]<-c(1604, 20270)
  haplo_type_ll[["A9"]][["bas"]]<- c("A","T")
  #A10
  haplo_type_ll[["A10"]][["pos"]]<-c(1218, 27806, 29711)
  haplo_type_ll[["A10"]][["bas"]]<- c("T","T","T")
  ###B
  haplo_type_ll[["B"]][["pos"]]<-c(28144)
  haplo_type_ll[["B"]][["bas"]]<- c("C")
  #B1
  haplo_type_ll[["B1"]][["pos"]]<-c(haplo_type_ll[["B"]][["pos"]],18060)
  haplo_type_ll[["B1"]][["bas"]]<- c(haplo_type_ll[["B"]][["bas"]],"T")
  #B1a
  haplo_type_ll[["B1a"]][["pos"]]<-c(haplo_type_ll[["B1"]][["pos"]],17858)
  haplo_type_ll[["B1a"]][["bas"]]<- c(haplo_type_ll[["B1"]][["bas"]],"G")
  #B1a1
  haplo_type_ll[["B1a1"]][["pos"]]<-c(haplo_type_ll[["B1a"]][["pos"]],17747)
  haplo_type_ll[["B1a1"]][["bas"]]<- c(haplo_type_ll[["B1a"]][["bas"]],"T")
  #B1a1a
  haplo_type_ll[["B1a1a"]][["pos"]]<-c(haplo_type_ll[["B1a1"]][["pos"]],24694)
  haplo_type_ll[["B1a1a"]][["bas"]]<- c(haplo_type_ll[["B1a1"]][["bas"]],"T")
  #B1a1a1
  haplo_type_ll[["B1a1a1"]][["pos"]]<-c(haplo_type_ll[["B1a1a"]][["pos"]],9445)
  haplo_type_ll[["B1a1a1"]][["bas"]]<- c(haplo_type_ll[["B1a1a"]][["bas"]],"C")
  #B1a1a1a
  haplo_type_ll[["B1a1a1a"]][["pos"]]<-c(haplo_type_ll[["B1a1a1"]][["pos"]],17531, 18756)
  haplo_type_ll[["B1a1a1a"]][["bas"]]<- c(haplo_type_ll[["B1a1a1"]][["bas"]],"C", "T")
  #B1a1a1b
  haplo_type_ll[["B1a1a1b"]][["pos"]]<-c(haplo_type_ll[["B1a1a1"]][["pos"]],29140)
  haplo_type_ll[["B1a1a1b"]][["bas"]]<- c(haplo_type_ll[["B1a1a1"]][["bas"]],"T")
  #B2
  haplo_type_ll[["B2"]][["pos"]]<-c(haplo_type_ll[["B"]][["pos"]],29095)
  haplo_type_ll[["B2"]][["bas"]]<- c(haplo_type_ll[["B"]][["bas"]],"T")
  #B4
  haplo_type_ll[["B4"]][["pos"]]<-c(haplo_type_ll[["B"]][["pos"]],28878, 29742)
  haplo_type_ll[["B4"]][["bas"]]<- c(haplo_type_ll[["B"]][["bas"]],"A", "A")

  #X1 T346L
  haplo_type_ll[["C1302T"]][["pos"]]<-c(1302)
  haplo_type_ll[["C1302T"]][["bas"]]<- c("T") #Ref: C 
  #X2  A2249V
  haplo_type_ll[["C7011T"]][["pos"]]<-c(7011)
  haplo_type_ll[["C7011T"]][["bas"]]<- c("T") #Ref: C
  #X3 R2841R
  haplo_type_ll[["T8788C"]][["pos"]]<-c(8788)
  haplo_type_ll[["T8788C"]][["bas"]]<- c("C") #Ref: T
  #X4 N2187T
  haplo_type_ll[["A6825C"]][["pos"]]<-c(6825)
  haplo_type_ll[["A6825C"]][["bas"]]<- c("C") #Ref: A
  #X5 V143V
  haplo_type_ll[["G26951A"]][["pos"]]<-c(26951)
  haplo_type_ll[["G26951A"]][["bas"]]<- c("A") #Ref: G
  #X6 N2537N
  haplo_type_ll[["C7834T"]][["pos"]]<-c(7834) 
  haplo_type_ll[["C7834T"]][["bas"]]<- c("T") #Ref: C
  #X7 
  haplo_type_ll[["G11074T"]][["pos"]]<-c(11074) 
  haplo_type_ll[["G11074T"]][["bas"]]<- c("T") #Ref: C
  #X8 A5039S  - reported as 15379!! Plot to see this!
  haplo_type_ll[["G15380T"]][["pos"]]<-c(15380) 
  haplo_type_ll[["G15380T"]][["bas"]]<- c("T") #Ref: G
  #X9 P309P
  haplo_type_ll[["C29200T"]][["pos"]]<-c(29200) 
  haplo_type_ll[["C29200T"]][["bas"]]<- c("T") #Ref: ??
  
  #New haplotypes per 19-05
  
  #X10 
  haplo_type_ll[["C3743T"]][["pos"]]<-c(3743) 
  haplo_type_ll[["C3743T"]][["bas"]]<- c("T") #Ref: C
  #X11 
  haplo_type_ll[["C12781T"]][["pos"]]<-c(12781) 
  haplo_type_ll[["C12781T"]][["bas"]]<- c("T") #Ref:C
  #X12 
  haplo_type_ll[["C15842A"]][["pos"]]<-c(15842) 
  haplo_type_ll[["C15842A"]][["bas"]]<- c("A") #Ref: C
  #X13 
  haplo_type_ll[["C16887T"]][["pos"]]<-c(16887) 
  haplo_type_ll[["C16887T"]][["bas"]]<- c("T") #Ref: C
  #X14 
  haplo_type_ll[["G19086T"]][["pos"]]<-c(19086) 
  haplo_type_ll[["G19086T"]][["bas"]]<- c("T") #Ref:G
  #X15 
  haplo_type_ll[["G22103C"]][["pos"]]<-c(22103) 
  haplo_type_ll[["G22103C"]][["bas"]]<- c("C") #Ref:G
  #X16 
  haplo_type_ll[["G24368T"]][["pos"]]<-c(24368) 
  haplo_type_ll[["G24368T"]][["bas"]]<- c("T") #Ref:G
  #X17 
  haplo_type_ll[["C28253A"]][["pos"]]<-c(28253) 
  haplo_type_ll[["C28253A"]][["bas"]]<- c("A") #Ref:C
  
  haplo_type_ll[["T99C"]][["pos"]]<-c(99) 
  haplo_type_ll[["T99C"]][["bas"]]<- c("C") 
  
  haplo_type_ll[["C218T"]][["pos"]]<-c(218) 
  haplo_type_ll[["C218T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["A518G"]][["pos"]]<-c(518) 
  haplo_type_ll[["A518G"]][["bas"]]<- c("G")
  
  haplo_type_ll[["T658C"]][["pos"]]<-c(658) 
  haplo_type_ll[["T658C"]][["bas"]]<- c("C")
  
  haplo_type_ll[["C4002T"]][["pos"]]<-c(4002) 
  haplo_type_ll[["C4002T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["A4548G"]][["pos"]]<-c(4548) 
  haplo_type_ll[["A4548G"]][["bas"]]<- c("G")
  
  haplo_type_ll[["C4668T"]][["pos"]]<-c(4668) 
  haplo_type_ll[["C4668T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C6539T"]][["pos"]]<-c(6539) 
  haplo_type_ll[["C6539T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C7029T"]][["pos"]]<-c(7029) 
  haplo_type_ll[["C7029T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C7819T"]][["pos"]]<-c(7819) 
  haplo_type_ll[["C7819T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["A9280G"]][["pos"]]<-c(9280) 
  haplo_type_ll[["A9280G"]][["bas"]]<- c("G")
  
  haplo_type_ll[["C9803T"]][["pos"]]<-c(9803) 
  haplo_type_ll[["C9803T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C9979T"]][["pos"]]<-c(9979) 
  haplo_type_ll[["C9979T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["G10465A"]][["pos"]]<-c(10465) 
  haplo_type_ll[["G10465A"]][["bas"]]<- c("A")
  
  haplo_type_ll[["C13536T"]][["pos"]]<-c(13536) 
  haplo_type_ll[["C13536T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["G15906A"]][["pos"]]<-c(15906) 
  haplo_type_ll[["G15906A"]][["bas"]]<- c("A")
  
  haplo_type_ll[["C18744T"]][["pos"]]<-c(18744) 
  haplo_type_ll[["C18744T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C18877T"]][["pos"]]<-c(18877) 
  haplo_type_ll[["C18877T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C19263T"]][["pos"]]<-c(19263) 
  haplo_type_ll[["C19263T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["G20398A"]][["pos"]]<-c(20398) 
  haplo_type_ll[["G20398A"]][["bas"]]<- c("A")
  
  haplo_type_ll[["G20419T"]][["pos"]]<-c(20419) 
  haplo_type_ll[["G20419T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["G20887A"]][["pos"]]<-c(20887) 
  haplo_type_ll[["G20887A"]][["bas"]]<- c("A")
  
  haplo_type_ll[["C21707T"]][["pos"]]<-c(21707) 
  haplo_type_ll[["C21707T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C21742T"]][["pos"]]<-c(21742) 
  haplo_type_ll[["C21742T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C21855T"]][["pos"]]<-c(21855) 
  haplo_type_ll[["C21855T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["T21976C"]][["pos"]]<-c(21976) 
  haplo_type_ll[["T21976C"]][["bas"]]<- c("C")
  
  haplo_type_ll[["A23975G"]][["pos"]]<-c(23975) 
  haplo_type_ll[["A23975G"]][["bas"]]<- c("G")
  
  haplo_type_ll[["G25785T"]][["pos"]]<-c(25785) 
  haplo_type_ll[["G25785T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C28629T"]][["pos"]]<-c(28629) 
  haplo_type_ll[["C28629T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["G28899T"]][["pos"]]<-c(28899) 
  haplo_type_ll[["G28899T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C29719T"]][["pos"]]<-c(29719) 
  haplo_type_ll[["C29719T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["G29734C"]][["pos"]]<-c(29734) 
  haplo_type_ll[["G29734C"]][["bas"]]<- c("C")
  
  haplo_type_ll[["G29779T"]][["pos"]]<-c(29779) 
  haplo_type_ll[["G29779T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C29095T"]][["pos"]]<-c(29095) 
  haplo_type_ll[["C29095T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C7164T"]][["pos"]]<-c(7164) 
  haplo_type_ll[["C7164T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C619T"]][["pos"]]<-c(619) 
  haplo_type_ll[["C619T"]][["bas"]]<- c("T")
  
  haplo_type_ll[["C25499T"]][["pos"]]<-c(25499) 
  haplo_type_ll[["C25499T"]][["bas"]]<- c("T")
  
  
  
  
  
  
  
  
  return(haplo_type_ll)
}  




create_haplo_list<- function(){  
  haplo_type_ll<-list()
  haplo_type_ll[["A"]][["pos"]]<-c(20229,13064,18483,8017)
  haplo_type_ll[["A"]][["bas"]]<- c("T", "T", "C","G")
  haplo_type_ll[["A1a"]][["pos"]]<-c(11083, 26144)
  haplo_type_ll[["A1a"]][["bas"]]<- c("T","T")
  haplo_type_ll[["A1a1"]][["pos"]]<-c(haplo_type_ll[["A1a"]][["pos"]], 14805)
  haplo_type_ll[["A1a1"]][["bas"]]<- c(haplo_type_ll[["A1a"]][["bas"]],"T")
  haplo_type_ll[["A1a1a"]][["pos"]]<-c(haplo_type_ll[["A1a1"]][["pos"]], 17247)
  haplo_type_ll[["A1a1a"]][["bas"]]<- c(haplo_type_ll[["A1a1"]][["bas"]],"C")
  haplo_type_ll[["A1a1a1"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 5142)
  haplo_type_ll[["A1a1a1"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"T")
  haplo_type_ll[["A1a1a2"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 1321)
  haplo_type_ll[["A1a1a2"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"C")
  haplo_type_ll[["A1a1a3"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 3034, 16054, 17859, 29751)
  haplo_type_ll[["A1a1a3"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"C", "T", "C", "C")
  haplo_type_ll[["A1a1a4"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 1515)
  haplo_type_ll[["A1a1a4"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"G")
  haplo_type_ll[["A1a1a5"]][["pos"]]<-c(haplo_type_ll[["A1a1a"]][["pos"]], 7479)
  haplo_type_ll[["A1a1a5"]][["bas"]]<- c(haplo_type_ll[["A1a1a"]][["bas"]],"G")
  haplo_type_ll[["A1a1b"]][["pos"]]<-c(haplo_type_ll[["A1a1"]][["pos"]], 2558)
  haplo_type_ll[["A1a1b"]][["bas"]]<- c(haplo_type_ll[["A1a1"]][["bas"]],"T")
  haplo_type_ll[["A1a2"]][["pos"]]<-c(haplo_type_ll[["A1a1"]][["pos"]], 7876)
  haplo_type_ll[["A1a2"]][["bas"]]<- c(haplo_type_ll[["A1a1"]][["bas"]],"A")
  #A2
  haplo_type_ll[["A2"]][["pos"]]<-c(241,3037,23403)
  haplo_type_ll[["A2"]][["bas"]]<- c("T","T","G")
  haplo_type_ll[["A2a"]][["pos"]]<-c(haplo_type_ll[["A2"]][["pos"]], 14408)
  haplo_type_ll[["A2a"]][["bas"]]<- c(haplo_type_ll[["A2"]][["bas"]], "T")
  haplo_type_ll[["A2a1"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],28881, 28882,28883)
  haplo_type_ll[["A2a1"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "A", "A", "C")
  haplo_type_ll[["A2a1a"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],27046)
  haplo_type_ll[["A2a1a"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "T")
  haplo_type_ll[["A2a1a1"]][["pos"]]<-c(haplo_type_ll[["A2a1a"]][["pos"]],25958)
  haplo_type_ll[["A2a1a1"]][["bas"]]<- c(haplo_type_ll[["A2a1a"]][["bas"]], "G")
  haplo_type_ll[["A2a1a2"]][["pos"]]<-c(haplo_type_ll[["A2a1a"]][["pos"]],28344)
  haplo_type_ll[["A2a1a2"]][["bas"]]<- c(haplo_type_ll[["A2a1a"]][["bas"]], "A")
  haplo_type_ll[["A2a1a3"]][["pos"]]<-c(haplo_type_ll[["A2a1a"]][["pos"]],23086)
  haplo_type_ll[["A2a1a3"]][["bas"]]<- c(haplo_type_ll[["A2a1a"]][["bas"]], "T")
  haplo_type_ll[["A2a1b"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],10097,23731)
  haplo_type_ll[["A2a1b"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "A","T")
  haplo_type_ll[["A2a1c"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],19839)
  haplo_type_ll[["A2a1c"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "C")
  haplo_type_ll[["A2a1d"]][["pos"]]<-c(haplo_type_ll[["A2a1"]][["pos"]],27430)
  haplo_type_ll[["A2a1d"]][["bas"]]<- c(haplo_type_ll[["A2a1"]][["bas"]], "A")
  haplo_type_ll[["A2a2"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],25563)
  haplo_type_ll[["A2a2"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a2"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]], 25563)
  haplo_type_ll[["A2a2"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a2a"]][["pos"]]<-c(haplo_type_ll[["A2a2"]][["pos"]],1059)
  haplo_type_ll[["A2a2a"]][["bas"]]<- c(haplo_type_ll[["A2a2"]][["bas"]], "T")
  haplo_type_ll[["A2a3"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],20268)
  haplo_type_ll[["A2a3"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a3a"]][["pos"]]<-c(haplo_type_ll[["A2a3"]][["pos"]],10323)
  haplo_type_ll[["A2a3a"]][["bas"]]<- c(haplo_type_ll[["A2a3"]][["bas"]], "G")
  haplo_type_ll[["A2a4"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],2455,10450)
  haplo_type_ll[["A2a4"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T","T")
  haplo_type_ll[["A2a5"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],26530)
  haplo_type_ll[["A2a5"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a6"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],24862)
  haplo_type_ll[["A2a6"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a7"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],25429)
  haplo_type_ll[["A2a7"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a8"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],15324)
  haplo_type_ll[["A2a8"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a9"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],187)
  haplo_type_ll[["A2a9"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "G")
  haplo_type_ll[["A2a10"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]], 25350)
  haplo_type_ll[["A2a10"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a11"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],20275)
  haplo_type_ll[["A2a11"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "A")
  haplo_type_ll[["A2a12"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],24077)
  haplo_type_ll[["A2a12"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  haplo_type_ll[["A2a13"]][["pos"]]<-c(haplo_type_ll[["A2a"]][["pos"]],28836)
  haplo_type_ll[["A2a13"]][["bas"]]<- c(haplo_type_ll[["A2a"]][["bas"]], "T")
  #A3
  haplo_type_ll[["A3"]][["pos"]]<-c(1397, 11083, 28688, 29742)
  haplo_type_ll[["A3"]][["bas"]]<- c("A","T", "C","T")
  #A6
  haplo_type_ll[["A6"]][["pos"]]<-c(514)
  haplo_type_ll[["A6"]][["bas"]]<- c("C")
  #A7
  haplo_type_ll[["A7"]][["pos"]]<-c(9924)
  haplo_type_ll[["A7"]][["bas"]]<- c("T")
  #A8
  haplo_type_ll[["A8"]][["pos"]]<-c(1440, 2891)
  haplo_type_ll[["A8"]][["bas"]]<- c("A","A")
  #A9
  haplo_type_ll[["A9"]][["pos"]]<-c(1604, 20270)
  haplo_type_ll[["A9"]][["bas"]]<- c("A","T")
  #A10
  haplo_type_ll[["A10"]][["pos"]]<-c(1218, 27806, 29711)
  haplo_type_ll[["A10"]][["bas"]]<- c("T","T","T")
  ###B
  haplo_type_ll[["B"]][["pos"]]<-c(28144)
  haplo_type_ll[["B"]][["bas"]]<- c("C")
  #B1
  haplo_type_ll[["B1"]][["pos"]]<-c(haplo_type_ll[["B"]][["pos"]],18060)
  haplo_type_ll[["B1"]][["bas"]]<- c(haplo_type_ll[["B"]][["bas"]],"T")
  #B1a
  haplo_type_ll[["B1a"]][["pos"]]<-c(haplo_type_ll[["B1"]][["pos"]],17858)
  haplo_type_ll[["B1a"]][["bas"]]<- c(haplo_type_ll[["B1"]][["bas"]],"G")
  #B1a1
  haplo_type_ll[["B1a1"]][["pos"]]<-c(haplo_type_ll[["B1a"]][["pos"]],17747)
  haplo_type_ll[["B1a1"]][["bas"]]<- c(haplo_type_ll[["B1a"]][["bas"]],"T")
  #B1a1a
  haplo_type_ll[["B1a1a"]][["pos"]]<-c(haplo_type_ll[["B1a1"]][["pos"]],24694)
  haplo_type_ll[["B1a1a"]][["bas"]]<- c(haplo_type_ll[["B1a1"]][["bas"]],"T")
  #B1a1a1
  haplo_type_ll[["B1a1a1"]][["pos"]]<-c(haplo_type_ll[["B1a1a"]][["pos"]],9445)
  haplo_type_ll[["B1a1a1"]][["bas"]]<- c(haplo_type_ll[["B1a1a"]][["bas"]],"C")
  #B1a1a1a
  haplo_type_ll[["B1a1a1a"]][["pos"]]<-c(haplo_type_ll[["B1a1a1"]][["pos"]],17531, 18756)
  haplo_type_ll[["B1a1a1a"]][["bas"]]<- c(haplo_type_ll[["B1a1a1"]][["bas"]],"C", "T")
  #B1a1a1b
  haplo_type_ll[["B1a1a1b"]][["pos"]]<-c(haplo_type_ll[["B1a1a1"]][["pos"]],29140)
  haplo_type_ll[["B1a1a1b"]][["bas"]]<- c(haplo_type_ll[["B1a1a1"]][["bas"]],"T")
  #B2
  haplo_type_ll[["B2"]][["pos"]]<-c(haplo_type_ll[["B"]][["pos"]],29095)
  haplo_type_ll[["B2"]][["bas"]]<- c(haplo_type_ll[["B"]][["bas"]],"T")
  #B4
  haplo_type_ll[["B4"]][["pos"]]<-c(haplo_type_ll[["B"]][["pos"]],28878, 29742)
  haplo_type_ll[["B4"]][["bas"]]<- c(haplo_type_ll[["B"]][["bas"]],"A", "A")
  
  
  return(haplo_type_ll)
} 






create_uncertainty_list <- function(){
  lists <- list(c("A", "R", "N"),
             c("G", "R", "N"),
             c("Y", "C", "N"),
             c("Y", "T", "N"),
             c("W", "A", "N"),
             c("W", "T", "N"),
             c("K", "G", "N"),
             c("K", "T", "N"),
             c("M", "A", "N"),
             c("M", "C", "N"))
  return(lists)
}




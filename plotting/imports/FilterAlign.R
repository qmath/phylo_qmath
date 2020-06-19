#--------------------------------------------------------------#
#This is the file with the functions for the filtering and alignment. 
#We first filter the data and only keep what we call high coverage.
#Then, we align the data together with the Wuhan sequence NC...
#--------------------------------------------------------------#
library(DECIPHER)
#This function returns TRUE if dnastring is highcoverage.
highcoverage <- function(dnastring, max_gap){
return(alphabetFrequency(dnastring)[15] < max_gap &#15 <-> 'n'
       alphabetFrequency(dnastring)[16] < max_gap )#16 <-> '-'
}

throw_out_low_coverage <- function(dnastringset,
                                   min_length, max_gap,  show_report = T){
  cat("Filtering the sequences.\n")
  tot <- length(dnastringset)
  good <- 0
  bad <- 0
  pb = txtProgressBar(min = 0, max = tot, initial = 0)
  for (i in tot:1){
    if (highcoverage(dnastringset[i], max_gap) & width(dnastringset)[i] > min_length) {
      good <- good + 1
    } else{
      dnastringset[i]<- NULL
      bad <- bad + 1
    }
    setTxtProgressBar(pb,(tot - i))
  }
  close(pb)
  if (show_report){
    cat('\n')
    cat("Report:\n\n")
    cat(paste("The data set contained", tot, "sequences.\n"))
    cat(paste("Of them,", good, "were high coverage,\n"))
    cat(paste("and", bad, "were not high coverage.\n"))
    cat(paste("There are now", length(dnastringset), "sequences left.\n\n"))
  }
  return(dnastringset)
}


get_HCseqs_name<- function(dir_name, out_name, the_date){
  return(paste0(dir_name, "/", out_name, 'HCseqs', 
         the_date, '.rds'))
}


get_HCseqsaligned_name<- function(dir_name, out_name, the_date){
  return(paste0(dir_name, "/", out_name, 'HCseqsaligned',
         the_date, '.rds'))
}


filter_combine_align <- function(in_file_name, out_name, dir_name, wuhan, the_date, 
                                 min_length = 29000, max_gap = 300){
  data <- readDNAStringSet(in_file_name)
  data <- throw_out_low_coverage(data, min_length, max_gap)
  data <- DNAStringSet(c(data, wuhan))
  data<-data[!duplicated(names(data))]#Sort out duplicates.
  saveRDS(data, get_HCseqs_name(dir_name, out_name, the_date))#We save it for later.
  cat("I saved the high coverage sequences in ", dir_name, "\n\n")
  #Align the data.
  cat("Alignment starts.\n\n")
  clear_gap_seqs<-RemoveGaps(data,removeGaps = "all", processors = 1)
  alignment <- AlignSeqs(clear_gap_seqs, iterations = 4, refinements = 2)
  saveRDS(alignment, get_HCseqsaligned_name(dir_name, out_name, the_date))#We save it for later.
  cat("I saved the alignment in ", dir_name, '\n\n')
  return(alignment)
}

set_up_new_dir <- function(out_name, the_date){
  dir_name <- paste0(out_name, the_date)#Name of new directory.
  if(dir.exists(dir_name)){
    cat("!!!WARNING!!!
  You probably used the same name before today:
  This folder already contains a subfolder with this name.
  Please change the variable out_name.")
  return(NULL)
  }else {
    dir.create(dir_name)#Creates a directory where all the stuff will be saved.
    cat("I created the directory", dir_name)
    write(paste("My out_name was:", out_name,
                "\nThis was done on date:", the_date), paste0(dir_name, "/info_file.txt"))
    return(dir_name)
  }
}



get_dir_name <- function(out_name, the_date){
  return(paste0(out_name, the_date))#Name of new directory.
}
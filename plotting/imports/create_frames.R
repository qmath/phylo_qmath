#--------------------------------------------------------------#
#This is the file contains everything about creating the 
#colorfull haploframes!
#--------------------------------------------------------------#
library(R.utils)
library(dplyr)
library(ggtree)



get_wuhan_seq <- function(phydat){#Extracts the Wuhan sequence from phangorn data in nice way
  wuhan_pos<-which(names(phydat)=="NC_045512.2")
  wuhan_seq<-unlist(str_split(toString(phydat[wuhan_pos]),", "))
  return(wuhan_seq)
}



find_gaps_wuhan <- function(phydat){#finds the gaps that wuhan has
  wuhan_seq <- get_wuhan_seq(phydat)
  gaps <- which((wuhan_seq %in% "-")==TRUE)
  return(gaps)
}

indices_wuhan <- function(phydat){#returns the actual indices wrt wuhan respecting gaps
  gaps <- find_gaps_wuhan(phydat)
  whole_length <- length(gaps)+length(get_wuhan_seq(phydat))
  wuhan_indices <- c(1:whole_length)
  wuhan_indices <- wuhan_indices[!wuhan_indices %in% gaps]
  return(wuhan_indices)
}



#This tells us which sequences differs from wuhan in which position.
itff <- function(phydat_string, wuhan_seq,wuhan_indices ,lcut, rcut){ 
  mm<-unlist(str_split(toString(phydat_string),", "))
  bm<-which(!mm[wuhan_indices]==wuhan_seq[wuhan_indices] & !mm[wuhan_indices] =="n")
  return(bm[bm>=lcut&bm<=rcut])
}







get_pos_frame_name <- function(dir_name, out_name, the_date){
  return(paste0(dir_name, "/", out_name, 'positionframe',
         the_date, '.rds'))
}


throw_out_measurement_uncertainty <- function(hhh_full, aligned_data, phydat){
  lists <- create_uncertainty_list()
  wuhan_seq <- get_wuhan_seq(phydat)
  wuhan_indices <- indices_wuhan(phydat)
  h <- hhh_full
  for (position_tilde in as.integer(colnames(hhh_full))){#include wuhan indices!!!
    position <- wuhan_indices[position_tilde]
    print(position)
    cat("Position:", position, '\n')
    freqs <- nucleotideFrequencyAt(aligned_data, at = as.integer(position))
    freq_sum <- freqs["A"]+freqs["C"] + freqs["G"] + freqs["T"]
    cat("Normal stuff:",freq_sum, '\n')
    if (freq_sum < length(rownames(hhh_full))){#First check with the fast nucleotideFrequencyAt
      #function if there is anything to do!
      cat("Will investigate...", "\n")
      stuff_at_pos <- c()
      for (name in rownames(hhh_full)){
        str_sub(toString(aligned_data[which(names(aligned_data)==name)]), start = position
                , end = position)
        stuff_at_pos <- c(stuff_at_pos, str_sub(toString(aligned_data[which
                                                                      (names(aligned_data)==name)]), start = position,
                                                end = position))
      }
      not_spotted <- T
      i = 1
      while (not_spotted){
        if (all(unique(stuff_at_pos)%in%lists[i][[1]])){
          h <- h[-which(colnames(h) %in%c(position))]
          not_spotted <- F
        }else if (i == length(lists)){
          not_spotted <- F
        }
        print(unique(stuff_at_pos))
        print(lists[i])
        i =i + 1
      }
    }else{cat('\n nothing to check here \n')}
  }
  #Now, we deleted all columns which consist only of ONE base and ambiguity characters.
  #We still need to change entries to false when a sequence has an ambiguity character there.
  cat("All unneccessary columns are thrown out. \n")
  cat("I will now delete entries coming from ambiguity characters!\n")
  contains_stuff <- c()
  for (col in colnames(h)){
    subsequence <- my.subseq(aligned_data, as.integer(as.integer(col)))
    hallo <- h[[col]]
    if (any(c("R", "Y", "S", "K", "M", "B", "D", "H", "V") %in% 
            my.subseq(aligned_data, wuhan_indices[as.integer(col)]))){
      cat(col, '\n')
      contains_stuff <- c(contains_stuff, col)
    }
  }
  for (col in contains_stuff){
    not_good <- which(rownames(h) %in% 
                        names(aligned_data)[which(my.subseq(aligned_data, wuhan_indices[as.integer(col)])%in%
                                                    c("R", "Y", "S", "K", "M", "B", "D", "H", "V"))])
    
    h[[col]][not_good] <- rep(FALSE, length(h[[col]][not_good]))
  }
  
  return(h)
}



create_position_frame<- function(aligned_data, phydat, out_name, dir_name,the_date, threshold = 3,
                                 lcut = 100, rcut = 30000){
  wuhan_seq <- get_wuhan_seq(phydat)
  wuhan_indices <- indices_wuhan(phydat)
  changell<-list()
  for(nn in names(phydat)){
    changell[[nn]]<-itff(phydat[nn],wuhan_seq, wuhan_indices, lcut, rcut)
  }
  mmyy<-do.call(c,changell)
  res<-sort(unique(mmyy))
  redd<-list()
  for(row in names(changell)){
    redd[[row]][["seq"]]<-row
    for(tt in res){
      redd[[row]][[toString(tt)]]<-tt%in%changell[[row]]
    }
  }
  redd <- lapply(redd, function(x){return(as.list(x))})
  redd <- lapply(redd,function(x){
    lapply(x, function(y){
      if(y == "FALSE"){
        return(FALSE)
      }
      else if (y=="TRUE"){
        return(TRUE)
      }
      else{
        return(y)
      }
    })
  })
  hhh_full<-as.data.frame(data.table::rbindlist(redd))
  hhh_full<-hhh_full[,c(TRUE,hhh_full%>%select(-seq)%>%colSums()>threshold)]
  rownames(hhh_full)<- hhh_full$seq
  hhh_full$seq<- NULL
  for (col in colnames(hhh_full)){
    len <- length(hhh_full[[col]][which(hhh_full[[col]])])
    hhh_full[[col]][which(hhh_full[[col]])]<-
      rep(col, len)
  }
  
  cat("I will now throw out unneccessary stuff.\n")
  hhh_full <- throw_out_measurement_uncertainty(hhh_full, aligned_data, phydat)
  
  
  saveRDS(hhh_full, get_pos_frame_name(dir_name, out_name, the_date))#We save it for later.
  cat("I saved the position frame in the folder", dir_name,'.\n')
  cat("It's called", get_pos_frame_name(dir_name, out_name, the_date))
  return(hhh_full)
}



fitting_df <- function(meta_data, hap_data){#This is without shading.
  for (name in colnames(hap_data)){
    vector <- meta_data
    vector[hap_data[[name]]==F] <- ""
    hap_data[[name]] <- vector
  }
  return(hap_data)
}

fitting_df_with_shading<-function(hap_data){#This is with shading
  for (col in colnames(hap_data)){
    vector <- as.vector(hap_data[[col]])
    vector[which(vector==F)]<-paste("light", col)
    hap_data[[col]]<- vector
  }
  return(hap_data)
}


#Shade a color: 
t_col <- function(color, percent = 50, name = NULL) {
  #      color = color name
  #    percent = % transparency
  #       name = an optional name for the color
  ## Get RGB values for named color
  rgb.val <- col2rgb(color)
  ## Make new color using input color as base and alpha set by transparency
  t.col <- rgb(rgb.val[1], rgb.val[2], rgb.val[3],
               max = 255,
               alpha = (100 - percent) * 255 / 100,
               names = name)
  ## Save the color
  invisible(t.col)
}


#This makes a color lighter without shading.
make_light <- function(foreground_col, background_col = 1, foreground_shad= 0.2, background_shad= 1){
  new_val = foreground_col * foreground_shad + background_col * background_shad * (1 - foreground_shad)
  return(new_val)}

t_col_without_shading <- function(color){
  rgb.val <- col2rgb(color)
  return(rgb(make_light(rgb.val[1]/255), 
             make_light(rgb.val[2]/255), 
             make_light(rgb.val[3]/255),
             alpha = 1))
}


rgb.val <- col2rgb('blue')
t.col <- rgb(make_light(rgb.val[1]), make_light(rgb.val[2]), make_light(rgb.val[3]), max = 255,
             alpha = 1, names = NULL)



#This here just creates a vector of the form 
#    [blue, light blue, red, light red, orange, light orange, ...]
#which will be used to color the frame.
create_hap_shade_col_vec <- function(shading_level, needed_colors = 100){
  cat("Creating color vector. I assume you have at most 700 different haplotypes in total!")
  return(rep(c("blue", t_col("blue", shading_level),
               "red", t_col("red", shading_level),
               "orange", t_col("orange", shading_level),
               "black", t_col("black", shading_level),
               "forestgreen", t_col("forestgreen", shading_level),
               "violet", t_col("violet", shading_level),
               "brown", t_col("brown", shading_level)), needed_colors)) 
}



create_hap_non_shade_vec <- function(needed_colors = 100){
  cat("Creating color vector. I assume you have at most 700 different haplotypes in total!")
  return(rep(c("blue", t_col_without_shading("blue"),
               "red", t_col_without_shading("red"),
               "orange", t_col_without_shading("orange"),
               "black", t_col_without_shading("black"),
               "forestgreen", t_col_without_shading("forestgreen"),
               "violet", t_col_without_shading("violet"),
               "brown", t_col_without_shading("brown")), needed_colors)) 
}



create_breaks_for_shad<- function(hap_data){
  the_breaks_tilde <- colnames(hap_data)
  the_breaks <- c()
  for (x in the_breaks_tilde){
    the_breaks <- c(the_breaks, x , paste("light", x)) 
  }
  return(the_breaks)
}



shorten_haplo_frame <- function(haplo_frame, initial_lb){
  return(haplo_frame[, colSums(initial_lb != F) != 0])
}



create_named_hap_shade_col_vec<- function(color_vector, the_breaks){
  if(length(the_breaks)< length(color_vector)+1){
    color_vector <- color_vector[1:length(the_breaks)]
    names(color_vector)<- the_breaks
    return(color_vector)}
  cat("Length of the breaks can't be bigger than the length of the colors.\n")
  cat("Please increase the input 'needed_colors'.")
}




shorten_color_vector<- function(named_color_vector, short_haplo_frame){
  used_colors <- c()
  for (name in names(named_color_vector)){
    if(any(name == short_haplo_frame)){
      used_colors <- c(used_colors, name)
    }
  }
  return(named_color_vector[used_colors])
}





  
  




toSTringDNA <- function(x, data){
  paste(strsplit(toupper(toString(data[x])),", ", fixed=TRUE)[[1]],collapse="")
}


#Find positions that differ between two strings
comDNA<-function(x,y, exclChar=c("N","-")){
  charll1<-strsplit(toString(x), "")[[1]]
  charll2<-strsplit(toString(y), "")[[1]]
  which(charll1!=charll2&(!charll1%in%exclChar)&(!charll2%in%exclChar))
}


#Functions to check types
CheckHapType <- function(str, possl, charl, hapname, returnname = TRUE) {
  if (length(possl) != length(charl)) { cat("Problem: lengths differ")}
  res = TRUE
  seq = toString(str)
  for (int in c(1:length(possl))) { 
    res <-  res & unlist(substring(seq,possl[[int]],possl[[int]])) == charl[[int]]
  }
  if(returnname){return(if(res){hapname}else{FALSE})
  }else{return(res)}
}





get_haplo_frame_name<- function(dir_name, out_name, the_date){
  return(paste0(dir_name, "/", out_name, 'haploframe',
                the_date, '.rds'))
}


#This creates for a given tree comming from data a data frame whos columns represent the 
#possible haplotypes, the rows the datapoints
#Important: Function breaks if the labels of the tips of the tree and of the data don't
#conincide!!
create_haplo_frame <- function(data, phydat, haplo_type_ll, dir_name, out_name, the_date){
  #First check if this would throw an error because the things have different labels
  if (unique(names(data)==names(data))){
    lb <- data.frame("seqnnd"=names(data))
    lb
    wuhan_indices <- indices_wuhan(phydat)
    for(nn in names(haplo_type_ll)){
      cat(paste("processing Haplotype: ",nn,"\n"))
      tdd<-sapply(lb$seqnnd, function(x){
        CheckHapType(toSTringDNA(x, data), sapply(as.integer(haplo_type_ll[[nn]][["pos"]]), 
                          function(x){return(wuhan_indices[x])}),
                     haplo_type_ll[[nn]][["bas"]],nn)})
      tdd
      lb[[nn]]<- tdd
    }
    rownames(lb)<-names(data)
    lb[["seqnnd"]]<- NULL
    bad_names <- c()
    for (col in colnames(lb)){
      if(all(lb$col==FALSE)){
        bad_names <- c(bad_names, col)
      }
    }
    lb<- shorten_haplo_frame(lb, lb)
    saveRDS(lb, get_haplo_frame_name(dir_name, out_name, the_date))#We save it for later.
    cat("I saved the haplo frame in the folder", dir_name,'.\n')
    cat("It's called", get_haplo_frame_name(dir_name, out_name, the_date))
    return(lb)}
  cat("Inappropriate data set: Your data probably has dudplicates or you changed\n the names
      in a bad way.")
}






update_colnames <- function(hhh_full, aligned_data, phydat){
  wu_inds <- indices_wuhan(phydat)
  possibilities <- list(c('R', 'A', 'G','N'),
                        c('Y', 'C', 'T','N'),
                        c('S', 'G', 'C','N'),
                        c('W', 'A', 'T','N'),
                        c('K', 'G', 'T','N'),
                        c('M', 'A', 'C','N'),
                        c('N','A', '-'),
                        c('N','C','-'),
                        c('N','G','-'),
                        c('N','T','-')
                        )
  new_colnames <- c()
  go_over <- as.integer(colnames(hhh_full))
  for (pos in go_over){
    cat(pos, '\n')
    already_renamed <- F
    for (i in 1:length(possibilities)){
      if (all(unique(my.subseq(aligned_data, wu_inds[as.integer(pos)])) %in% possibilities[[i]])&
           !already_renamed){
        
        if(!already_renamed){
        already_renamed <- TRUE
        first_letter <- toString(my.subseq(aligned_data, wu_inds[as.integer(pos)])[
          which(names(my.subseq(aligned_data, as.integer(pos)))=='NC_045512.2')])
        last_letter <- possibilities[[i]][c(2,3)][which(possibilities[[i]][c(2,3)] != first_letter)]
        cat(possibilities[[i]], '\n')
        cat(first_letter, '\n')
        cat(last_letter, '\n\n')
        new_colnames <- c(new_colnames, paste0(first_letter, pos, last_letter))
        next()
        }
      }
    }
    
    if (!already_renamed){new_colnames <- c(new_colnames, pos)}
  }
  return(new_colnames)
}















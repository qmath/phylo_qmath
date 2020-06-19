#--------------------------------------------------------------#
#This file provides a function that builds a maximum likelihood
#tree.
#--------------------------------------------------------------#
library(phangorn)
library(stringr)


get_phy_name <- function(dir_name, out_name, the_date){
  return(paste0(dir_name, '/', out_name, the_date, 'phy.rds'))
}


create_and_save_phy <- function(aligned_data, out_name, dir_name, the_date){
  cat("Converting data to phangorn \n\n")
  phydat <- phyDat(as(aligned_data, 'matrix'), 'DNA')
  saveRDS(phydat, get_phy_name(dir_name, out_name, the_date))
  cat("I saved the phangorn data in ", dir_name, "\n")
  cat("Can find it in\n")
  cat(get_phy_name(dir_name, out_name, the_date))
  return(phydat)
}


get_ml_tree_name <- function(dir_name, out_name, the_date){
  return(paste0(dir_name, '/', out_name, the_date, 'MLtree.nwk'))
}


#Builds a maximum likelihood tree.
build_ml_tree <- function(phydat, out_name, dir_name, the_date){
  distMat<-dist.hamming(phydat)
  cat("I just built the distance matrix.\n\n")
  #Build Tree
  NJTree<-nj(distMat)
  cat("I just built the neighbor joining tree.\n\n")
  #convert to optimization object
  NJpml<-pml(NJTree,data=phydat)
  
  #this checks different models with respect to ML & other information measures
  cat("Now, I will perform a model test.\n")
  mt = modelTest(NJpml)
  #Find the best model
  modCh<-mt$Model[which(mt$logLik==max(mt$logLik))]
  cat("The optimal model is", modCh, "\n\n")
  #modelTest saves the optimization steps already done - so we extract them 
  # in the next two lines in order to save time
  env <- attr(mt, "env")
  fit <- eval(get(modCh, env), env)
  #Optimzation step - see
  #https://cran.r-project.org/web/packages/phangorn/vignettes/Trees.pdf
  cat("I will now perform the ml optimization, that might take some time...\n\n")
  if (str_sub(modCh, end = 2)=='JC'){
  fint<-optim.pml(fit, rearrangement = "stochastic",
                      optGamma=TRUE, optInv=TRUE, model="JC")
  }else{
    fint<-optim.pml(fit, rearrangement = "stochastic",
                        optGamma=TRUE, optInv=TRUE, model=
                          str_sub(modCh, end = 3))
  }
  cat("Optimization done!\n\n")
  wuhan_pos<-which(fint$tree$tip.label=="NC_045512.2")
  newtree<-root(fint$tree, outgroup = wuhan_pos)
  cat("I rooted the tree at NC_045512.2\n\n")
  write.tree(newtree, get_ml_tree_name(dir_name, out_name, the_date))
  cat("I wrote the tree in newick format in ", dir_name, ".\n\n")
  cat("You can find it in ", get_ml_tree_name(dir_name, out_name, the_date))
  return(newtree)
}





create_date_labeling <- function(tree){
  labeling_vector <- tree$tip.label
  labeling_vector[which(labeling_vector != "NC_045512.2")] <-
    str_sub(labeling_vector[which(labeling_vector != "NC_045512.2")], start = -10)
  
  labeling_vector <- c(labeling_vector, rep("hallo", tree$Nnode))
  return(labeling_vector)
}



create_epiisl_date_labeling <- function(tree){
  labeling_vector <- tree$tip.label
  labeling_vector[which(labeling_vector != "NC_045512.2")] <-
    str_sub(labeling_vector[which(labeling_vector != "NC_045512.2")], start = -25)
  
  labeling_vector <- c(labeling_vector, rep("hallo", tree$Nnode))
  return(labeling_vector)
}

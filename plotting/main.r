#--------------------------------------------------------------#
#This is the main file doing all steps from a fasta file to a 
#nice plot.
#The folder fastafiles contains an example file which was created
#by hand.
#@Vincent Steffan
#--------------------------------------------------------------#

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))#Tell R where we are.

#import the functions from folders
source('imports/FilterAlign.R')
source('imports/BuildTree.R')
source('imports/create_frames.R')
source('imports/Create_haplo_list_v2.r')
source('imports/HelpFunctions.R')



library(ggtree)
library(ggplot2)#These two are for plotting




#This is the name of the fasta file we want to import.
in_file_name <- "fastafiles/test_fasta_file.fasta"

#This is how all created outputfiles will be called later on.
out_name <- "Test"
the_date <- Sys.Date()

#This creates a new directory where all our stuff will be saved.
#The name of the directory will be saved in dir_name.
dir_name <-set_up_new_dir(out_name, the_date)


#Load the Wuhan data:
wuhan <- readDNAStringSet("fastafiles/WuhanTest.fasta")

#Combine our data with the Wuhan sequences, filter out high coverage and align:
aligned_data <- filter_combine_align(in_file_name, out_name, dir_name, wuhan, the_date, min_length = 25,
                                     max_gap = 14)


#Uncomment if you first want to check out your sequences
#This can be hard for your computer if you have many or long sequences.
#BrowseSeqs(aligned_data, highlight = 0)


#Convert to phangorn data type
phydat <- create_and_save_phy(aligned_data, out_name, dir_name, the_date)

hhh_full <- create_position_frame(aligned_data, phydat, out_name, dir_name, the_date, threshold = 0,
                                  lcut = 0,rcut = 30000)#the position frame


#Build tree --> Can take some time!!
newtree <- build_ml_tree(phydat, out_name, dir_name, the_date)


#With this you can find out which of the last ones should be thrown out
#By Browsing you see how much is in the end just because there is stuff missing.
BrowseSeqs(my.subseq(aligned_data, indices_wuhan(phydat)[
  as.integer(colnames(hhh_full))]), highlight = 0)

update_colnames(hhh_full, aligned_data, phydat)

#These are the right numbers for the test file.
min_col <- 0
max_col <- 51
hhh_full <- hhh_full[which(as.integer(colnames(hhh_full))>min_col)]
hhh_full <- hhh_full[which(as.integer(colnames(hhh_full))<max_col)]

#Check the names once more:
update_colnames(hhh_full, aligned_data,phydat)



#Order columns -- if you want that
hhh_full <- hhh_full[order(colSums(hhh_full == F))]


#the position frame in the right way for plotting
fitted_heatmap <- fitting_df_with_shading(hhh_full)

#Create breaks which tell the plot which things to color how
the_breaks <- create_breaks_for_shad(fitted_heatmap)

#Create our colors
colors <- create_hap_non_shade_vec()

#For plotting, the colors need to be in a named vector
named_colors <- create_named_hap_shade_col_vec(colors, the_breaks)

#Throw out colors that will not be used for coloring
the_right_color_vector <- shorten_color_vector(named_colors, fitted_heatmap)


#Now, we rename the names of the mutations e.g. from '241' to 'C241T'
colnames(fitted_heatmap) <- 
  update_colnames(hhh_full, aligned_data, phydat)

#In very rare cases, there are weird mutations. 
#Then, weird_cols is not empty. 
weird_cols<-which(!str_sub(colnames(fitted_heatmap), start = 1, end = 1) %in% c("G", "T", "C", "A"))
#If that would be the case, you can check out the situation by yourself and do some hands on work :-)
if (any(which(!str_sub(colnames(fitted_heatmap), start = 1, end = 1) %in% c("G", "T", "C", "A")))){
  BrowseSeqs(my.subseq(aligned_data, as.integer(colnames(fitted_heatmap[weird_cols]))))
}


#We are ready for the plot!!
#Unfortunately, the parameters here always have to be adjusted manually
#until it looks nice.
ploton <- ggtree(newtree,size = 0.2, branch.length = 'none')+geom_tiplab(size = 2.4)
gheatmap(ploton, fitted_heatmap, offset=10, width=1.5, font.size=2.4, 
  colnames_angle=-45, hjust=0,legend_title = NULL, colnames_offset_y = 0.4) +
  scale_x_ggtree() +
  scale_fill_manual(values = the_right_color_vector) +theme(legend.position = 'none')


















    
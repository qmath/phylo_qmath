setwd(dirname(rstudioapi::getActiveDocumentContext()$path))#Tell R where we are.
#--------------------------------------------------------------#
#This is the main file doing all steps from a fasta file to a 
#nice plot.
#@Vincent Steffan
#--------------------------------------------------------------#

source('imports/FilterAlign.R')
source('imports/BuildTree.R')
source('imports/create_frames.R')
source('imports/Create_haplo_list_v2.r')
source('imports/FulviosFunctions.R')



library(ggtree)
library(ggplot2)




#This is the name of the fasta file we want to import.
in_file_name <- "fastafiles/Denmark_May26_aligned.fasta"

#This is how all created outputfiles will be called later on.
out_name <- "FINALDenmark"

the_date <- Sys.Date()

#This creates a new directory where all our stuff will be saved.
#The name of the directory will be saved in dir_name.
dir_name <-set_up_new_dir(out_name, the_date)


#Load the Wuhan data:
wuhan <- readDNAStringSet("fastafiles/singleWuhan.fasta")

#Combine our data with the Wuhan sequences, filter out high coverage and align:
aligned_data <- filter_combine_align(in_file_name, out_name, dir_name, wuhan, the_date)



#Convert to phangorn data type
phydat <- create_and_save_phy(aligned_data, out_name, dir_name, the_date)

#Build tree --> Can take some time!!
newtree <- build_ml_tree(phydat, out_name, dir_name, the_date)

#Let us do our first plot


hhh_full <- create_position_frame(phydat, out_name, dir_name, the_date, threshold = 2)#the position frame

#We can check if some things in the position frame just come because of measurement uncertainty 
#(e.g. if everything is A in a column and there is one R, this column will be deleted.)
lists <- create_uncertainty_list()

hhh_full <- throw_out_measurement_uncertainty(hhh_full, aligned_data, lists, phydat)


BrowseSeqs(my.subseq(aligned_data,indices_wuhan(aligned_data)[as.integer(colnames(hhh_full))]), highlight = 0)


#Order columns

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
  update_colnames(hhh_full, aligned_data)

#In very rare cases, there are weird mutations. 
#Then, weird_cols is not empty. 
weird_cols<-which(!str_sub(colnames(fitted_heatmap), start = 1, end = 1) %in% c("G", "T", "C", "A"))
#If that would be the case, you can check out the situation by yourself and do some hands on work :-)
if (any(which(!str_sub(colnames(fitted_heatmap), start = 1, end = 1) %in% c("G", "T", "C", "A")))){
  BrowseSeqs(my.subseq(aligned_data, as.integer(colnames(fitted_heatmap[weird_cols]))))
}

#We are ready for the first plot!!
#Unfortunately, the parameters here always have to be adjusted manually
#until it looks nice.
ploton <- ggtree(newtree,size = 0.2, branch.length = 'none')+geom_tiplab(size = 1.4)
gheatmap(ploton, fitted_heatmap, offset=10, width=1.5, font.size=1.1, 
  colnames_angle=-45, hjust=0,legend_title = NULL, colnames_offset_y = 0.4) +
  scale_x_ggtree() +
  scale_fill_manual(values = the_right_color_vector) +theme(legend.position = 'none')



#We can also only display the dates.
labels <- create_epiisl_date_labeling(newtree)

ploton <- ggtree(newtree,size = 0.2, branch.length = 'none')+geom_tiplab(aes(
  label = labels),size = .4)
gheatmap(ploton, fitted_heatmap, offset=20, width=1.4, font.size=1.1, 
         colnames_angle=-45, hjust=0,legend_title = NULL, colnames_offset_y = 0.4) +
  scale_x_ggtree() +
  scale_fill_manual(values = the_right_color_vector) +theme(legend.position = 'none')



#With this, we can check out how much sense this frame makes.
#Change this to T if you want to..
i_want_to_check_this_out <- F
if(i_want_to_check_this_out){
  BrowseSeqs(my.subseq(mystring = aligned_data, sites = as.integer(colnames(hhh_full))))
}




#-------------------------------------------------------------------#
#We actually don't do stuff like the below any more...
#This gives then these haploframes
#-------------------------------------------------------------------#







#We can also easily plot haplotype tables. We use here the haplotypes as defined in 
#Create_haplo_list_v2.r, you can also use another one, just check out in that file
#how the table should look like and add it.
haplo_table <- create_haplo_list_with_NEWX()

haplo_frame <- create_haplo_frame(aligned_data,phydat,haplo_table, dir_name, out_name, the_date)


#The exact same procedure as above will bring it in the right shape and provide all
#we need for plotting.
shading_level <- 80
fitted_haplo_frame <- fitting_df_with_shading(haplo_frame)

#Create breaks which tell the plot which things to color how
the_haplo_breaks <- create_breaks_for_shad(fitted_haplo_frame)

#Create our colors
colors <- create_hap_shade_col_vec(shading_level)

#For plotting, the colors need to be in a named vector
named_haplo_colors <- create_named_hap_shade_col_vec(colors, the_haplo_breaks)

#Throw out colors that will not be used for coloring
the_right_haplo_color_vector <- shorten_color_vector(named_haplo_colors, fitted_haplo_frame)

rownames(fitted_haplo_frame) <- str_sub(rownames(fitted_haplo_frame), start = -25)

newtree$tip.label <- str_sub(newtree$tip.label, start = -25)

#Unfortunately, the parameters here always have to be adjusted manually
#until it looks nice.
ploton <- ggtree(newtree,size = 0.1, branch.length = 'none')+geom_tiplab(size = 1)
gheatmap(ploton, fitted_haplo_frame, offset=10, width=1.2, font.size=2, 
         colnames_angle=-45, hjust=0,legend_title = NULL) +
  scale_x_ggtree() +
  scale_fill_manual(values = the_right_haplo_color_vector) +theme(legend.position = 'none')









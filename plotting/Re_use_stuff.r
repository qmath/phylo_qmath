setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
#--------------------------------------------------------------#
#This is the re_do file doing all steps from a fasta file to a 
#gorgeous plot, when you already ran the main.r file on your data.
#@Vincent Steffan
#--------------------------------------------------------------#

source('imports/FilterAlign.R')
source('imports/BuildTree.R')
source('imports/create_frames.R')
source('imports/Create_haplo_list_v2.r')
source('imports/HelpFunctions.R')


library(ggtree)
library(ggplot2)


#This was your out_name when you did these calculations.
#You can find it in the info file of the corresponding folder.
out_name <- "Test"

#This was the date on which you did your calculations, 
#that can also be found in the info file.
#Format: yyyy-mm-dd
the_date <- "2020-06-19"

dir_name <- get_dir_name(out_name, the_date)


#get all the stuff in the folder in here.

aligned_data <- readRDS(get_HCseqsaligned_name(dir_name, out_name, the_date))

phydat <- readRDS(get_phy_name(dir_name, out_name, the_date))

newtree <- read.tree(get_ml_tree_name(dir_name, out_name, the_date))

hhh_full <- readRDS(get_pos_frame_name(dir_name, out_name, the_date))


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




#Order columns -- if you want that
hhh_full <- hhh_full[order(colSums(hhh_full == F))]

#plot as usual without long calculations:


#the position frame in the right way for plotting
fitted_heatmap <- fitting_df_with_shading(hhh_full)

#Create breaks which tell the plot which things to color how
the_breaks <- create_breaks_for_shad(fitted_heatmap)

#Create our colors with shading
#colors <- create_hap_shade_col_vec()

#For .eps files, shading is not allowed, we need to use something else here.
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




#We are ready for the  plot!!
#Unfortunately, the parameters here always have to be adjusted manually
#until it looks nice.

#Sometimes the newtree$tip.label or rownames(fitted_heatmap) are changed. Then you need to change back...




ploton <- ggtree(newtree,size = 0.2, branch.length = 'none')+geom_tiplab(size = 0.8)
                   

gheatmap(ploton, fitted_heatmap, offset=3, width=1.2, font.size=1.5, 
         colnames_angle=-45, hjust=0,legend_title = NULL) +
  scale_x_ggtree() +
  scale_fill_manual(values = the_right_color_vector) +theme(legend.position = 'none')








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
source('imports/FulviosFunctions.R')








library(ggtree)
library(ggplot2)


#This was your out_name when you did these calculations.
#You can find it in the info file of the corresponding folder.
out_name <- "Austria"

#This was the date on which you did your calculations, 
#that can also be found in the info file.
#Format: yyyy-mm-dd
the_date <- "2020-06-12"

dir_name <- get_dir_name(out_name, the_date)


#get all the stuff in the folder in here.

aligned_data <- readRDS(get_HCseqsaligned_name(dir_name, out_name, the_date))

phydat <- readRDS(get_phy_name(dir_name, out_name, the_date))

newtree <- read.tree(get_ml_tree_name(dir_name, out_name, the_date))

hhh_full <- readRDS(get_pos_frame_name(dir_name, out_name, the_date))




#We can check if some things in the position frame just come because of measurement uncertainty 
#(e.g. if everything is A in a column and there is one R, this column will be deleted.)
lists <- create_uncertainty_list()


length(lists)
hhh_full <- throw_out_measurement_uncertainty(hhh_full, aligned_data, lists, phydat)
#plot as usual without any long calculations.




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

ploton <- ggtree(newtree,size = 0.2, branch.length = 'none')+geom_tiplab(size = 0.8)
                                    
gheatmap(ploton, fitted_heatmap, offset=3, width=1.2, font.size=1.5, 
         colnames_angle=-45, hjust=0,legend_title = NULL) +
  scale_x_ggtree() +
  scale_fill_manual(values = the_right_color_vector) +theme(legend.position = 'none')

#We can also only display the dates.
labels <- create_date_labeling(newtree)
#or include the epi_isl number
labels <- create_epiisl_date_labeling(newtree)

ploton <- ggtree(newtree,size = 0.2, branch.length = 'none')+geom_tiplab(aes(
  label = labels),size = 0.6)
gheatmap(ploton, fitted_heatmap, offset=2, width=1.4, font.size=0.8, 
              colnames_angle=-45, hjust=0,legend_title = NULL) +
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




#The exact same procedure as above will bring it in the right shape and provide all
#we need for plotting.

#If you didn't run the last part of the main.r file, the lower thing does not exist. 
haplo_frame <- readRDS(get_haplo_frame_name(dir_name, out_name, the_date))



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



ploton <- ggtree(newtree,size = 0.2, branch.length = 'none')+geom_tiplab(size = 1.5)
gheatmap(ploton, fitted_haplo_frame, offset=15, width=1.9, font.size=1.9, 
         colnames_angle=-45, hjust=0,legend_title = NULL) +
  scale_x_ggtree() +
  scale_fill_manual(values = the_right_haplo_color_vector) +theme(legend.position = 'none')




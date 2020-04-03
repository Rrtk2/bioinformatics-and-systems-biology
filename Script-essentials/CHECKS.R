#-----------------------------------------------------------------------------------------------------#
#							CHECKS
#-----------------------------------------------------------------------------------------------------#
# Do checks if sctipt CAN be run
if(length(dir(input_data_dir))==0){stop("input_data_dir incorrect!")}
if(length(grep(pattern = data_name,x=dir(input_data_dir)))==0){stop(paste0("No temp_annotation('",annotation_file_name,"') file found in folder '",input_data_dir,"'"))}

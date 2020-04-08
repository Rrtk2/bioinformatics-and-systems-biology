#-----------------------------------------------------------------------------------------------------#
# 							GENERAL INFORMATION
#-----------------------------------------------------------------------------------------------------#
#	File description:
#		Name
#	  	EXAMPLE-SCRIPT-1.R
#
#   	Purpose 
# 		Use iris dataset to plot an PCA image
#  
#   	Inputs
#		iris (included data)
#		
#		Outputs
#		Images (in plotter)
#
#
# 	Copyright statement comment:
#  	 	Script which is part of the Rrtk2/bioinformatics-and-systems-biology 
#		github repopository, script definition is described in 'Purpose' under 
#		GENERAL INFORMATION section.
#		Copyright (C) 2020  Rick Reijnders
#
#	    	This program is free software: you can redistribute it and/or modify
#	    	it under the terms of the GNU General Public License as published by
#	    	the Free Software Foundation, either version 3 of the License, or
#	    	(at your option) any later version.
#
#	    	This program is distributed in the hope that it will be useful,
#	    	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	    	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	    	GNU General Public License for more details.
#
#	    	You should have received a copy of the GNU General Public License
#	    	along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
#
# 	Author comment:
#  		Rick Reijnders i6167500
#   		ra.reijnders@student.maastrichtuniversity.nl
#		Rick.Reijnders@home.nl
#		This code is made to be an example for the general formatting guide
#
#
#	Script METRICS description:
#		"Health"
#		The state of the code, if it can be run and to which extend; NUMERIC value 1 - 4
#		(1) Broken
#		(2) Running with specific DATASET
#		(3) Running with specific DATA STRUCTURE
#		(4) Running with automatic DATA STRUCTURE DETECTION
#		
#		"Status"
#		The state of development of the code to reach it's purpose. NUMERIC value 1 - 4
#  		(1) Experimental; BIG CHANGES VERY LIKELY and many upcoming modifications
#		(2) In-progress; BIG CHANGES UNLIKELY, structure changes likely.
#		(3) Pre-final; Structure of code remains as it is, very unlikely changes, and MAINLY BUGFIXING.
#		(4) Final; No planned changes, ESSENTIAL BUGFIXES ONLY.
#
#		"Completion"
#		Essential things that the script SHOULD have; for every item that is COMPLETED, "Completion" gets a point. Max 8 points.
#		[x] GENERAL INFORMATION - (meta) information is complete and clear
#		[x] CHECKS - Script checks if items sucessfully do what they should do, and alerts user if certain objects/variables misbehave.
#		[x] SETTINGS - general settings used in script
#		[x] (INSTALL &) LOAD PACKAGES - Install packages if needed, then load all required
#		[x] INPUT - imports data / define the object that is going to be modified
#		[x] MAIN - The main algorithm that will be used. This can be separated into several sub-sections ofcourse. The collection will be MAIN.
#		[x] OUTPUT - Export the data variables as text/images/variables (output)
#		[x] REMOVE TEMP_ FILES/VARIABLES - Removes unneeded objects from the workspace to run efficiently
#
#	Script METRICS:
#		Health = 2/4
#		Status = 4/4
#		Completion = 8/8
#


#-----------------------------------------------------------------------------------------------------#
#							CHECKS
#-----------------------------------------------------------------------------------------------------#
# Do checks if sctipt CAN be run
if(!exists("iris")){stop("iris does not exist!")}


#-----------------------------------------------------------------------------------------------------#
#							SETTINGS
#-----------------------------------------------------------------------------------------------------#
# Define packages which should be loaded
s_requiredpackages = c("ggfortify")

# iris dataset column 5 contains species; should be indicated here
c_irisClassColumn = 5

#-----------------------------------------------------------------------------------------------------#
# 							(INSTALL &) LOAD PACKAGES
#-----------------------------------------------------------------------------------------------------#
# Insert all packages in requiredpackages
#s_requiredpackages = s_requiredpackages

# Install packages if needed and load, or just load packages
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager", ask = F)

for (i in s_requiredpackages) {
	if (!requireNamespace(i, quietly = TRUE))
		BiocManager::install(i, ask = F)  # dependencies = c("Depends", "Imports")
	require(as.character(i), character.only = TRUE)
	#print(i)
}


#-----------------------------------------------------------------------------------------------------#
# 							INPUT
#-----------------------------------------------------------------------------------------------------#
# Use Iris dataset as data
temp_Data = iris


#-----------------------------------------------------------------------------------------------------#
#							MAIN
#-----------------------------------------------------------------------------------------------------#
# PCA of iris
temp_PCAplot = autoplot(prcomp(temp_Data[,-c_irisClassColumn]),temp_Data,col="Species")


#-----------------------------------------------------------------------------------------------------#
#							OUTPUT
#-----------------------------------------------------------------------------------------------------#
# Store temp object in resulting object
ResultPlot = temp_PCAplot

# Show the PCA in the plotter
ResultPlot

#-----------------------------------------------------------------------------------------------------#
#							REMOVE TEMP_ FILES/VARIABLES
#-----------------------------------------------------------------------------------------------------#
# Detect all variables and removes all starting with "temp_"
rm(list = ls()[grep("temp_",x = ls())])









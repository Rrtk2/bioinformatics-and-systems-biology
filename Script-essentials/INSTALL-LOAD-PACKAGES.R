#-----------------------------------------------------------------------------------------------------#
# 							(INSTALL &) LOAD PACKAGES
#-----------------------------------------------------------------------------------------------------#
# Insert all packages in requiredpackages
s_requiredpackages = c("edgeR","data.table")

# Install packages if needed and load, or just load packages
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager", ask = F)

for (i in s_requiredpackages) {
	if (!requireNamespace(i, quietly = TRUE))
		BiocManager::install(i, ask = F)  # dependencies = c("Depends", "Imports")
	require(as.character(i), character.only = TRUE)
	#print(i)
}

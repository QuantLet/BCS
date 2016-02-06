# Cleaning up all quantlets in a folder

rm(list = ls())
require(formatR)
require(stringr)
require(stringi)
sPathRoot = "C:/Users/Christoph/Documents/GitHub/BCS/BCS"
setwd(sPathRoot)
lQEs = list.dirs(path = ".")
lQEs = lQEs[grep("BCS_", lQEs, fixed = T)]
iNbQEs = length(lQEs)

for(iCounterQEs in 1:iNbQEs){
  
  sFile = paste(sPathFile = sub('./', '', lQEs[iCounterQEs]), '.r', sep ='')
  setwd(paste(sPathRoot, sub('./', '', lQEs[iCounterQEs]), sep = '/', collapse = ''))
  tidy_source(source = sFile, comments = TRUE, indent = 4)
  close(file(sFile))
}
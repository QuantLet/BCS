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
packageshelp = NaN

for(iCounterQEs in 1:iNbQEs){
  #iCounterQEs=11
  sFile = paste(sPathFile = sub('./', '', lQEs[iCounterQEs]), '.r', sep ='')
  setwd(paste(sPathRoot, sub('./', '', lQEs[iCounterQEs]), sep = '/', collapse = ''))
  QBody = readLines(sFile)
  lIndLibrary = grepl("library", QBody)
  lIndRequire = grepl('require', QBody)
  
  
  if(any(lIndRequire)){ 
    iPosStartRequire = regexpr('require(', QBody[lIndRequire], fixed = T)
    
    if (any(iPosStartRequire != -1)){
    iPosStartRequire = iPosStartRequire[which(iPosStartRequire != -1)] + nchar('require(')
    iNbRequire = length(iPosStartRequire)
    
    if( is.numeric(iPosStartRequire))
      for(iCounterRequire in 1:iNbRequire){
        iPosStart = iPosStartRequire[iCounterRequire]
        listPosEnd   = regexpr(')', QBody[lIndRequire], fixed = T)
        iPosEnd = listPosEnd[min(which(listPosEnd > iPosStart))] - 1
      
        packageshelp = c(substring(QBody[lIndRequire], iPosStart, iPosEnd), packageshelp)
      }
    }
  }
  
    
  if(any(lIndLibrary)){ 
    iPosStartLibrary = regexpr('library(', QBody[lIndLibrary], fixed = T)
    
    if (any(iPosStartLibrary != -1)){
      iPosStartLibrary = iPosStartLibrary[which(iPosStartLibrary != -1)] + nchar('library(')
      iNbLibrary = length(iPosStartLibrary)
      
      if( is.numeric(iPosStartLibrary))
        for(iCounterLibrary in 1:iNbLibrary){
          iPosStart = iPosStartLibrary[iCounterLibrary]
          listPosEnd   = regexpr(')', QBody[lIndLibrary], fixed = T)
          iPosEnd = listPosEnd[min(which(listPosEnd > iPosStart))] - 1
          
          packageshelp = c(substring(QBody[lIndLibrary], iPosStart, iPosEnd), packageshelp)
        }
    }
  }
  
  close(file(sFile))
}
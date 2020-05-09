#' Read InfoStat and InfoGen files
#'
#' Read InfoStat IDB2 and InfoGen IGDB files.
#'
#' @param file The file to be read, must be created by InfoStat/InfoGen or R.
#' @return A data frame.
#' @export

read.IDB <- function(file){
  idb <- readLines(file,skipNul = T, encoding = "latin1")
  rows <- as.numeric(sub(".*[=]", "", grep("Rows", idb, value = TRUE), perl = T))
  cols <- as.numeric(sub(".*[=]", "", grep("Cols", idb, value = TRUE), perl = T))
  col.names <- as.character(sub(".*[=]", "", grep("Col.name", idb, value = TRUE), perl = T))
  col.data.types <- as.numeric(sub(".*[=]", "", grep("Col.data.type", idb, value = TRUE), perl = T))
  col.decimals <- as.numeric(sub(".*[=]", "", grep("Col.decimals", idb, value = TRUE), perl = T))
  col.separator <- as.character(sub(")", "", sub(".*[(]", "", grep("DecimalSeparator", idb, value = TRUE), perl = T)))
  if(length(col.separator) == 0) col.separator <- "."
  block.end <- grep("block data", idb)
  df <- data.frame(idb[(block.end+rows+1):(block.end+rows*(2))])
  for(i in 1:cols){
    options(digits = (col.decimals[i]+1))
    if(col.data.types[i] == 1){
      df[,i] <- as.numeric(sub(col.separator, ".", as.character(idb[(block.end+1+rows*i):(block.end+rows*(i+1))]), fixed = TRUE))
    }
    else{
      df[,i] <- as.character(idb[(block.end+1+rows*i):(block.end+rows*(i+1))])
    }
    names(df)[i] <- col.names[i]
  }
  df[df == ""] <- NA
  return(df)
}

#' Write InfoStat and InfoGen files
#'
#' Write InfoStat IDB2 and InfoGen IGDB files.
#'
#' @param x The object to be written, must be a data frame.
#' @param file The file to create. Remember that InfoStat handles .idb2 and InfoGen .igdb files.
#' @param sep The separators to use in numerical (real) vectors. Default is "."
#' @param dec The number of decimal positions to write. Default is 2.
#' @export

write.IDB <- function(x,file,sep=".",dec=2){
  idb <- c(
    "Version=3",
    paste0("DecimalSeparator=(",sep,")"),
    paste0("Cols=",ncol(x)),
    paste0("Rows=",nrow(x)),
    "Font.Name=Arial",
    "Font.Size=9",
    "DefaultRowHeight=24",
    "ClientWidth=150",
    "ClientHeight=301",
    "Grid.left=0",
    "Grid.top=0",
    "font.style.fsbold=0",
    "font.style.fsItalic=0",
    "font.style.fsUnderline=0",
    "font.style.fsStrikeOut=0",
    "{columns data}")
  for(c in 1:ncol(x)) {
    dt <- if(class(x[,c]) == 'integer') 0 else ifelse(class(x[,c]) == 'numeric' || class(x[,c]) == 'double',1,3)
    idb <- c(idb,
             paste0("Col.name=",colnames(x)[c]),
             "Col.description=",
             paste0("Col.data.type=",dt),
             paste0("Col.decimals=",ifelse(dt == 1,dec,0)),
             "Col.alignment=1",
             paste0("Col.width=",nchar(colnames(x)[c])*10),
             "Col.formula=",
             "Col.color=16777215",
             "Col.visible=1",
             "Col.grouplabels=",
             "{end of column}")
  }
  idb <- c(idb,
           "{row data}",
           "{end row data}",
           "{block data}",
           rep(1,nrow(x)))
  for(c in 1:ncol(x)) {
    idb <- c(idb,x[[c]])
  }
  writeLines(idb,file)
}

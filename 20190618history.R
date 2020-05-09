}
names(df)[i] <- col.names[i]
return(df)
df
for(i in 1:cols){
if(!exists("df")){
df <- data.frame(idb[(block.end+rows+1):(block.end+rows*(2))])
}
options(digits = (col.decimals[i]+1))
if(col.data.types[i] == 1){
df[,i] <- as.numeric(sub(col.separator, ".", as.character(idb[(block.end+1+rows*i):(block.end+rows*(i+1))]), fixed = TRUE))
}
else{
df[,i] <- as.character(idb[(block.end+1+rows*i):(block.end+rows*(i+1))])
}
names(df)[i] <- col.names[i]
}
df
idb <- readLines("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Idioma.idb2",skipNul = T, encoding = "latin1")
rows <- as.numeric(sub(".*[=]", "", grep("Rows", idb, value = TRUE), perl = T))
cols <- as.numeric(sub(".*[=]", "", grep("Cols", idb, value = TRUE), perl = T))
col.names <- as.character(sub(".*[=]", "", grep("Col.name", idb, value = TRUE), perl = T))
rm(list = ls())
read.IDB("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Idioma.idb2")
idb <- readLines("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Idioma.idb2",skipNul = T, encoding = "latin1")
rows <- as.numeric(sub(".*[=]", "", grep("Rows", idb, value = TRUE), perl = T))
cols <- as.numeric(sub(".*[=]", "", grep("Cols", idb, value = TRUE), perl = T))
col.names <- as.character(sub(".*[=]", "", grep("Col.name", idb, value = TRUE), perl = T))
col.data.types <- as.numeric(sub(".*[=]", "", grep("Col.data.type", idb, value = TRUE), perl = T))
col.decimals <- as.numeric(sub(".*[=]", "", grep("Col.decimals", idb, value = TRUE), perl = T))
col.separator <- as.character(sub(")", "", sub(".*[(]", "", grep("DecimalSeparator", idb, value = TRUE), perl = T)))
block.end <- grep("block data", idb)
for(i in 1:cols){
if(!exists("df")){
df <- data.frame(idb[(block.end+rows+1):(block.end+rows*(2))])
}
options(digits = (col.decimals[i]+1))
if(col.data.types[i] == 1){
df[,i] <- as.numeric(sub(col.separator, ".", as.character(idb[(block.end+1+rows*i):(block.end+rows*(i+1))]), fixed = TRUE))
}
else{
df[,i] <- as.character(idb[(block.end+1+rows*i):(block.end+rows*(i+1))])
}
names(df)[i] <- col.names[i]
}
if(!exists("df")){
df <- data.frame(idb[(block.end+rows+1):(block.end+rows*(2))])
}
options(digits = (col.decimals[i]+1))
if(col.data.types[i] == 1){
df[,i] <- as.numeric(sub(col.separator, ".", as.character(idb[(block.end+1+rows*i):(block.end+rows*(i+1))]), fixed = TRUE))
}
1:cols
col.data.types[1]
col.data.types[2]
as.character(idb[(block.end+1+rows*i):(block.end+rows*(i+1))])
options(digits = (col.decimals[i]+1))
if(col.data.types[i] == 1){
df[,i] <- as.numeric(sub(col.separator, ".", as.character(idb[(block.end+1+rows*i):(block.end+rows*(i+1))]), fixed = TRUE))
}
idb <- readLines("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Idioma.idb2",skipNul = T, encoding = "latin1")
rows <- as.numeric(sub(".*[=]", "", grep("Rows", idb, value = TRUE), perl = T))
rm(list = ls())
idb <- readLines("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Idioma.idb2",skipNul = T, encoding = "latin1")
rows <- as.numeric(sub(".*[=]", "", grep("Rows", idb, value = TRUE), perl = T))
cols <- as.numeric(sub(".*[=]", "", grep("Cols", idb, value = TRUE), perl = T))
col.names <- as.character(sub(".*[=]", "", grep("Col.name", idb, value = TRUE), perl = T))
col.data.types <- as.numeric(sub(".*[=]", "", grep("Col.data.type", idb, value = TRUE), perl = T))
col.decimals <- as.numeric(sub(".*[=]", "", grep("Col.decimals", idb, value = TRUE), perl = T))
col.separator <- as.character(sub(")", "", sub(".*[(]", "", grep("DecimalSeparator", idb, value = TRUE), perl = T)))
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
df
read.IDB <- function(file){
idb <- readLines(file,skipNul = T, encoding = "latin1")
rows <- as.numeric(sub(".*[=]", "", grep("Rows", idb, value = TRUE), perl = T))
cols <- as.numeric(sub(".*[=]", "", grep("Cols", idb, value = TRUE), perl = T))
col.names <- as.character(sub(".*[=]", "", grep("Col.name", idb, value = TRUE), perl = T))
col.data.types <- as.numeric(sub(".*[=]", "", grep("Col.data.type", idb, value = TRUE), perl = T))
col.decimals <- as.numeric(sub(".*[=]", "", grep("Col.decimals", idb, value = TRUE), perl = T))
col.separator <- as.character(sub(")", "", sub(".*[(]", "", grep("DecimalSeparator", idb, value = TRUE), perl = T)))
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
return(df)
}
rm(list = ls())
read.IDB <- function(file){
idb <- readLines(file,skipNul = T, encoding = "latin1")
rows <- as.numeric(sub(".*[=]", "", grep("Rows", idb, value = TRUE), perl = T))
cols <- as.numeric(sub(".*[=]", "", grep("Cols", idb, value = TRUE), perl = T))
col.names <- as.character(sub(".*[=]", "", grep("Col.name", idb, value = TRUE), perl = T))
col.data.types <- as.numeric(sub(".*[=]", "", grep("Col.data.type", idb, value = TRUE), perl = T))
col.decimals <- as.numeric(sub(".*[=]", "", grep("Col.decimals", idb, value = TRUE), perl = T))
col.separator <- as.character(sub(")", "", sub(".*[(]", "", grep("DecimalSeparator", idb, value = TRUE), perl = T)))
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
return(df)
}
read.IDB("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Idioma.idb2")
read.IDB("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/AguaVarieades.IDB2")
read.IDB("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Agua.IDB2")
read.IDB("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Ajoblanco.idb2")
rownames(read.IDB("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Ajoblanco.idb2"))
read.IDB("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/UpdateD.txt")
read.IDB("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Vecinos.IDB2")
read.IDB("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Bell-Doksum.idb2")
a <- read.IDB("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Bell-Doksum.idb2")
rownames(a) <- NULL
a
rownames(a)
read.IDB <- function(file){
idb <- readLines(file,skipNul = T, encoding = "latin1")
rows <- as.numeric(sub(".*[=]", "", grep("Rows", idb, value = TRUE), perl = T))
cols <- as.numeric(sub(".*[=]", "", grep("Cols", idb, value = TRUE), perl = T))
col.names <- as.character(sub(".*[=]", "", grep("Col.name", idb, value = TRUE), perl = T))
col.data.types <- as.numeric(sub(".*[=]", "", grep("Col.data.type", idb, value = TRUE), perl = T))
col.decimals <- as.numeric(sub(".*[=]", "", grep("Col.decimals", idb, value = TRUE), perl = T))
col.separator <- as.character(sub(")", "", sub(".*[(]", "", grep("DecimalSeparator", idb, value = TRUE), perl = T)))
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
return(df)
}
list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/")
grep(idb,list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T)
grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T)
grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)
for(i in 1:grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),ignore.case = T)) {
file <- grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)
read.IDB(paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",file)
}
read.IDB(paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",file))
for(i in 1:grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),ignore.case = T)) {
file <- grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)
read.IDB(paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",file))
}
for(i in 1:length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/")),ignore.case = T)) {
file <- grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)
read.IDB(paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",file))
}
length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/")
for(i in 1:length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/")),ignore.case = T)) {
file <- grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)
read.IDB(paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",file))
}
length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"))
for(i in 1:length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/")),ignore.case = T)) {
file <- grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)
read.IDB(paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",file))
}
length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/")))
length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),ignore.case = T))
1:length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),ignore.case = T))
for(i in 1:length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),ignore.case = T))) {
file <- grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)
read.IDB(paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",file))
}
paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",file)
for(i in 1:length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),ignore.case = T))) {
file <- grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)[i]
file <- paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",file)
read.IDB()
}
grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)[1]
grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)[2
]
paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)[2])
paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)[2])
for(i in 1:length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),ignore.case = T))) {
file <- grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)[i]
file <- paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",file)
read.IDB(file)
}
for(i in 1:length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),ignore.case = T))) {
file <- grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)[i]
file <- paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",file)
read.IDB(file)
}
file
read.IDB(as.character(file))
for(i in 1:length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),ignore.case = T))) {
file <- grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)[i]
file <- paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",file)
read.IDB(as.character(file))
}
for(i in 1:length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),ignore.case = T))) {
file <- grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)[i]
file <- paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",file)
file <- read.IDB(as.character(file))
print(file)
}
read.IDB("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Testigos_apareados.IDB2")
?read_xls
read.IDB('./drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB')
read.IDB('~/wine/drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB')
read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB')
read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB')[62,1]
read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB')[62,2]
grep("",read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB'))
grep("",read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB')[1])
grep("",read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB')[,1])
grep("",read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB')[,2])
a <- read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB')
a[ a == 0]
a[ a == ""]
a[ a == ""] <- NA
a
read.IDB <- function(file){
idb <- readLines(file,skipNul = T, encoding = "latin1")
rows <- as.numeric(sub(".*[=]", "", grep("Rows", idb, value = TRUE), perl = T))
cols <- as.numeric(sub(".*[=]", "", grep("Cols", idb, value = TRUE), perl = T))
col.names <- as.character(sub(".*[=]", "", grep("Col.name", idb, value = TRUE), perl = T))
col.data.types <- as.numeric(sub(".*[=]", "", grep("Col.data.type", idb, value = TRUE), perl = T))
col.decimals <- as.numeric(sub(".*[=]", "", grep("Col.decimals", idb, value = TRUE), perl = T))
col.separator <- as.character(sub(")", "", sub(".*[(]", "", grep("DecimalSeparator", idb, value = TRUE), perl = T)))
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
df[df == 0] <- NA
return(df)
}
read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB')
read.IDB <- function(file){
idb <- readLines(file,skipNul = T, encoding = "latin1")
rows <- as.numeric(sub(".*[=]", "", grep("Rows", idb, value = TRUE), perl = T))
cols <- as.numeric(sub(".*[=]", "", grep("Cols", idb, value = TRUE), perl = T))
col.names <- as.character(sub(".*[=]", "", grep("Col.name", idb, value = TRUE), perl = T))
col.data.types <- as.numeric(sub(".*[=]", "", grep("Col.data.type", idb, value = TRUE), perl = T))
col.decimals <- as.numeric(sub(".*[=]", "", grep("Col.decimals", idb, value = TRUE), perl = T))
col.separator <- as.character(sub(")", "", sub(".*[(]", "", grep("DecimalSeparator", idb, value = TRUE), perl = T)))
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
df[df == 0] <- NA
return(df)
}
read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB')
is.na(read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB'))
read.IDB <- function(file){
idb <- readLines(file,skipNul = T, encoding = "latin1")
rows <- as.numeric(sub(".*[=]", "", grep("Rows", idb, value = TRUE), perl = T))
cols <- as.numeric(sub(".*[=]", "", grep("Cols", idb, value = TRUE), perl = T))
col.names <- as.character(sub(".*[=]", "", grep("Col.name", idb, value = TRUE), perl = T))
col.data.types <- as.numeric(sub(".*[=]", "", grep("Col.data.type", idb, value = TRUE), perl = T))
col.decimals <- as.numeric(sub(".*[=]", "", grep("Col.decimals", idb, value = TRUE), perl = T))
col.separator <- as.character(sub(")", "", sub(".*[(]", "", grep("DecimalSeparator", idb, value = TRUE), perl = T)))
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
read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB')
rm(list = ls())
read.IDB <- function(file){
idb <- readLines(file,skipNul = T, encoding = "latin1")
rows <- as.numeric(sub(".*[=]", "", grep("Rows", idb, value = TRUE), perl = T))
cols <- as.numeric(sub(".*[=]", "", grep("Cols", idb, value = TRUE), perl = T))
col.names <- as.character(sub(".*[=]", "", grep("Col.name", idb, value = TRUE), perl = T))
col.data.types <- as.numeric(sub(".*[=]", "", grep("Col.data.type", idb, value = TRUE), perl = T))
col.decimals <- as.numeric(sub(".*[=]", "", grep("Col.decimals", idb, value = TRUE), perl = T))
col.separator <- as.character(sub(")", "", sub(".*[(]", "", grep("DecimalSeparator", idb, value = TRUE), perl = T)))
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
read.IDB("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Idioma.idb2")
read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/VG Isoenzimas.IGDB')
for(i in 1:length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),ignore.case = T))) {
file <- grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/"),value = T,ignore.case = T)[i]
file <- paste0("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/",file)
file <- read.IDB(as.character(file))
print(file)
}
for(i in 1:length(grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoGen/Data/"),ignore.case = T))) {
file <- grep("idb",list.files("~/.wine/drive_c/Program Files (x86)/InfoGen/Data/"),value = T,ignore.case = T)[i]
file <- paste0("~/.wine/drive_c/Program Files (x86)/InfoGen/Data/",file)
file <- read.IDB(as.character(file))
print(file)
}
for(i in 1:length(grep("igdb",list.files("~/.wine/drive_c/Program Files (x86)/InfoGen/Data/"),ignore.case = T))) {
file <- grep("igdb",list.files("~/.wine/drive_c/Program Files (x86)/InfoGen/Data/"),value = T,ignore.case = T)[i]
file <- paste0("~/.wine/drive_c/Program Files (x86)/InfoGen/Data/",file)
file <- read.IDB(as.character(file))
print(file)
}
for(i in 1:length(grep("igdb",list.files("~/.wine/drive_c/Program Files (x86)/InfoGen/Data/"),ignore.case = T))) {
file <- grep("igdb",list.files("~/.wine/drive_c/Program Files (x86)/InfoGen/Data/"),value = T,ignore.case = T)[i]
file <- paste0("~/.wine/drive_c/Program Files (x86)/InfoGen/Data/",file)
file <- read.IDB(as.character(file))
print(file)
}
na.list.files("~/.wine/drive_c/Program Files (x86)/InfoGen/Data/")
list.files("~/.wine/drive_c/Program Files (x86)/InfoGen/Data/")
read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/BushRat SinglePop.IGDB')
read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/Calidad de Maní.IGDB')
idb <- readLines('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/Calidad de Maní.IGDB',skipNul = T, encoding = "latin1")
rows <- as.numeric(sub(".*[=]", "", grep("Rows", idb, value = TRUE), perl = T))
cols <- as.numeric(sub(".*[=]", "", grep("Cols", idb, value = TRUE), perl = T))
col.names <- as.character(sub(".*[=]", "", grep("Col.name", idb, value = TRUE), perl = T))
col.data.types <- as.numeric(sub(".*[=]", "", grep("Col.data.type", idb, value = TRUE), perl = T))
col.decimals <- as.numeric(sub(".*[=]", "", grep("Col.decimals", idb, value = TRUE), perl = T))
col.separator <- as.character(sub(")", "", sub(".*[(]", "", grep("DecimalSeparator", idb, value = TRUE), perl = T)))
col.separator
col.separator == character(0)
col.separator == "character(0)"
col.separator
exists(col.separator)
exists("col.separator")
is.character("col.separator")
length(col.separator)
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
for(i in 1:length(grep("igdb",list.files("~/.wine/drive_c/Program Files (x86)/InfoGen/Data/"),ignore.case = T))) {
file <- grep("igdb",list.files("~/.wine/drive_c/Program Files (x86)/InfoGen/Data/"),value = T,ignore.case = T)[i]
file <- paste0("~/.wine/drive_c/Program Files (x86)/InfoGen/Data/",file)
file <- read.IDB(as.character(file))
print(file)
}
read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/Calidad de Maní.IGDB')
rm(list = ls())
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
read.IDB('~/.wine/drive_c/Program Files (x86)/InfoGen/Data/Calidad de Maní.IGDB')
rm(list = ls())
read.IDB("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Idioma.idb2")
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
read.IDB("~/.wine/drive_c/Program Files (x86)/InfoStat/Datos/Idioma.idb2")
library(read.IDB)
library(read.IDB)
?write.IDB()
?read.IDB
?write.IDB()
library(read.IDB)
library(read.IDB)
?read.IDB
?write.csv()
library(read.IDB)
?read.IDB
?write.IDB
library(read.IDB)
?read.IDB
?read.IDB
library(read.IDB)
library(read.IDB)
?read.IDB
library(read.IDB)
?read.IDB
rm(list = ls())
?read.IDB
library(read.IDB)
?read.IDB
library(read.IDB)
read.IDB("hola.idb2")

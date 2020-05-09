library(adegenet)
library(ade4)
obj <-df2genind(Prosopis_acpe[, 6:11], ploidy = 2, sep="_", type="codom")
xy=Prosopis_acpe[, 3:4]
ACPeProsopis<-spca(obj, xy = xy, ask = FALSE, scannf = FALSE)
plot(ACPeProsopis)
CPe1<-ACPeProsopis$li
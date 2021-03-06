library(adegenet)
library(ade4)
library(geoR)
ACPeg <- df2genind(Polylepis[, 4:247], ploidy = 1, type= "PA", pop=Polylepis$population)
ACPegpop<-genind2genpop(ACPeg, ACPeg@pop)
xy=Polylepis_Frecuencias.alelicas[, 494:495]
ACPePoly <- spca(ACPegpop, xy = xy, ask = FALSE, scannf = FALSE)
plot(ACPePoly)
CP1e<-ACPePoly$li #recupera la CP1 como vector
xyACPe<-ACPePoly$xy  #recupera las coordenadas
#convertir los vectores de la CP1 y las coordenadas a tabla de InfoStat, unir y cargar
ACPegeo<-as.geodata(CP1e_xy_Polylepis, coords.col=4:5, data.col=1)
ACPegeo.v<-variog(ACPegeo, max.dist=800)
points(ACPegeo)
plot(ACPegeo.v)
spca.vfgauss<-variofit(ACPegeo.v, cov.model="gauss")
#spca.vfexp<-variofit(ACPegeo.v, cov.model="exp")
#spca.vfsphe<-variofit(ACPegeo.v, cov.model="sphe")
#spca.vfl<-variofit(ACPegeo.v, cov.model="linear")
lines(spca.vfgauss)
#lines(spca.vfexp)
#lines(spca.vfsphe)
#lines(spca.vfl)
gr<-expand.grid(x=seq(-66, -64, by=0.05) , y=seq(-32, -22, by=0.05))
KrigCont<-krige.control(obj.mo=spca.vfgauss)
spca.vfgauss.K<-krige.conv(ACPegeo, loc=gr, krige=KrigCont)
image(spca.vfgauss.K, loc=gr , col=grey(seq(0,1,1/21)))
points(ACPegeo, add=T, cex.max=2)
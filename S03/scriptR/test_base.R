##script d'initiation a R
##traitement donnée http://www.data.gouv.fr/fr/dataset/agriculture-bio-2008-2011-productions-vegetales-surfaces-par-departement-idf
setwd("~/github/coursL1_stat_geographie/S01/data/")
data<-read.csv(file="agriculture_bio_2008-2011_-_productions_vegetales_-_surfaces_par_departement.csv", header=TRUE, sep=";")

str(data) ##pour connaitre la structure des données
subdata<-subset(data,select = c(annee,departement,cultures))
tdata<-as.matrix(subdata)
addmargins(tdata,2)

n1<-margin.table(tdata,2)
ac<-table(data$departement,data$cultures)
ad<-addmargins(ac)
freqabs<-round(ad/130*100,2)
str(freqabs)

m<-margin.table(ac)


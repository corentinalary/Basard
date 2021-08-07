dur<-c(91.6, 35.7, 251.3, 24.3, 5.4, 67.3, 170.9, 9.5, 118.4, 57.1)
n=length(dur)

#Estimateur du Maximum de Vraisemblance
(EMV<-1/mean(dur))

#Estimateur optimal
(Eopt<-(n-1)/sum(dur))

#intervalles de confiance
alpha=0.01

qchisq(alpha/2,2*n)/2/sum(dur)
qchisq(1-alpha/2,2*n)/2/sum(dur)#pour le bilateral
qchisq(1-alpha,2*n)/2/sum(dur)#pour le supérieur
qchisq(alpha,2*n)/2/sum(dur)#pour l'inférieur

alpha=0.05

qchisq(alpha/2,2*n)/2/sum(dur)
qchisq(1-alpha/2,2*n)/2/sum(dur)#pour le bilateral
qchisq(1-alpha,2*n)/2/sum(dur)#pour le supérieur
qchisq(alpha,2*n)/2/sum(dur)#pour l'inférieur

alpha= 0.1

qchisq(alpha/2,2*n)/2/sum(dur)
qchisq(1-alpha/2,2*n)/2/sum(dur)#pour le bilateral
qchisq(1-alpha,2*n)/2/sum(dur)#pour le supérieur
qchisq(alpha,2*n)/2/sum(dur)#pour l'inférieur

alpha=0.5

qchisq(alpha/2,2*n)/2/sum(dur)
qchisq(1-alpha/2,2*n)/2/sum(dur)#pour le bilateral
qchisq(1-alpha,2*n)/2/sum(dur)#pour le supérieur
qchisq(alpha,2*n)/2/sum(dur)#pour l'inférieur




#Pourcentage
source("Pourcentage.R")

Pourcentage(1000,1000,0.01,10)
Pourcentage(1000,1000,0.05,10)
Pourcentage(1000,1000,0.1,10)
Pourcentage(1000,1000,0.5,10)

Pourcentage(1000,10,0.01,10)
Pourcentage(1000,10,0.05,10)
Pourcentage(1000,10,0.1,10)
Pourcentage(1000,10,0.5,10)

Pourcentage(10,1000,0.01,10)
Pourcentage(10,1000,0.05,10)
Pourcentage(10,1000,0.1,10)
Pourcentage(10,1000,0.5,10)



#histogramme et biais
source("histolarg_mine.R")
source("EMV_hist_biais.R")

EMVhistbiais(1000,5,10)
EMVhistbiais(1000,50,10)
EMVhistbiais(1000,500,10)
EMVhistbiais(1000,5000,10)

#Erreur quadratique moyenne
source("EMVerrquad.R")

EMVerrquad(1000,5,10)
EMVerrquad(1000,50,10)
EMVerrquad(1000,500,10)
EMVerrquad(1000,5000,10)





#Comparaison avec estimateur optimal
source("EMVetEoptBEQ.R")

EMVetEoptBEQ(1000,5,10)
EMVetEoptBEQ(1000,50,10)
EMVetEoptBEQ(1000,500,10)
EMVetEoptBEQ(1000,5000,10)




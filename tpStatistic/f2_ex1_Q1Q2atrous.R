#Pr?liminaire 
source("histolarg_corr_f1e2.R")

ech1000<-rnorm(1000, 2,1)
ech20<-rnorm(20, 2,1)

par(mfrow=c(1,2))
histolarg(ech1000)
curve(dnorm(x,2,1),-1,5, col="blue",add=TRUE)
histolarg(ech20)
curve(dnorm(x,2,1),-1,5, col="blue",add=TRUE)



# Q1
bruit=c(54.8, 55.4, 57.7, 59.6, 60.1, 61.2, 62.0, 63.1, 63.5, 64.2, 65.2, 65.4, 65.9, 66.0, 67.6, 68.1, 69.5, 70.6, 71.5, 73.4)

summary(bruit)

var(bruit)

sqrt(var(bruit))

#ou
sd(bruit)

# si on veut vraiment la quantit? d?finie dans le cours on corrige par le facteur en (n-1)/n
n=length(bruit)
#? compl?ter pour le calcul de cv_n

sqrt((n-1)/n)*sd(bruit)/mean(bruit)

#Q2

# Histogramme ? classes de m?me largeur
# Si on veut tout faire ? la main (NB: bruit est d?j? ordonn?)
a0=bruit[1]-0.025*(bruit[n]-bruit[1])
a5=bruit[n]+0.025*(bruit[n]-bruit[1])
h=(a5-a0)/5
bornes=seq(a0,a5,h)
hist(bruit,prob=T,breaks=bornes)

# Si on veut utiliser une fonction
# Si on veut utiliser le code de la Fiche 1 Exo 2
#source("histolarg_corr_f1e2.R")
# Si on veut se faire la sienne
#source("histolarg_mine.R")
histolarg(bruit)

# Histogramme ? classes de m?me effectif
source("histoeff_corr_f1e2.R")
histoeff(bruit)


#si on veut les deux c?te ? c?te
#? compl?ter
histolarg(bruit)
histoeff(bruit)



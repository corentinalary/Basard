#Préliminaire 
source("histolarg_corr_f1e2.R")

ech1000<-rnorm(1000,2,1)
ech20<-rnorm(20,2,1)

par(mfrow=c(1,2))
histolarg(ech1000)
curve(dnorm(x,2,1),-1,5, col="blue",add=TRUE)
histolarg(ech20)
curve(dnorm(x,2,1),-1,5, col="blue",add=TRUE)



# Q1
bruit=c(54.8,55.4,57.7,59.6,60.1,61.2,62.0,63.1,63.5,64.2,65.2,65.4,65.9,66.0,67.6,68.1,69.5,70.6,71.5,73.4)

summary(bruit)

var(bruit)

#sqrt(var(bruit))
sd(bruit)

# si on veut vraiment la quantité définie dans le cours on corrige par le facteur en (n-1)/n
n=length(bruit)
sqrt((n-1)/n)*sd(bruit)/mean(bruit)

#Q2

# Histogramme à classes de même largeur
# Si on veut tout faire à la main (NB: bruit est déjà ordonné)
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

# Histogramme à classes de même effectif
source("histoeff_corr_f1e2.R")
histoeff(bruit)


#si on veut les deux côte à côte
par(mfrow=c(1,2))
histolarg(bruit)
histoeff(bruit)


# Graphe de probabilités

# "à la main" en s'aidant du cours p23-24
par(mfrow=c(1,1))
plot(bruit[1:n-1],qnorm(seq(1:(n-1))/n))

# "en automatique" avec la fonction qqnorm de R
qqnorm(bruit)

#les deux côte à côte
par(mfrow=c(1,2))
qqnorm(bruit)
plot(bruit[1:n-1],qnorm(seq(1:(n-1))/n))

# droite de Henry
abs<-bruit[1:n-1]
ord<-qnorm(seq(1:(n-1))/n)
reg<-lm(ord~abs)
reg$coefficients

abline(reg)


(1/reg$coefficients[2])^2

-reg$coefficients[1]/reg$coefficients[2]

# Q3
# (b)
1-pnorm((70-mean(bruit))/sd(bruit))

1-pnorm(70,mean(bruit),sd(bruit))

1-pnorm(74,mean(bruit),sd(bruit))

# (c)
qnorm(0.9,mean(bruit),sd(bruit))


# Q4
# (a)
(lambda=1/mean(bruit))

# (b)
1-pexp(70,lambda)

1-pexp(74,lambda)

# (c)
qexp(0.9,lambda)

par(mfrow=c(1,1))
plot(bruit[1:n-1],log(1-seq(1:(n-1))/n))
#abline(0,-lambda)
abs<-bruit[1:n-1]
ord<-log(1-seq(1:(n-1))/n)
reg<-lm(ord~abs)
abline(reg)


# Q5
Fn<-ecdf(bruit)#Fonction de répartition empirique
1-Fn(70)
1-Fn(74)

quantile(bruit,0.9)







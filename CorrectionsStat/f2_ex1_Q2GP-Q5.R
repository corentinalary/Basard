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


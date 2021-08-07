source("histolarg_corr_f1e2.R")
source("histoeff_corr_f1e2.R")

ech1000 <- rnorm(1000,2,1)
ech20 <- rnorm(20,2,1)

par(mfrow=c(1,2))
histolarg(ech1000)
curve(dnorm(x, 2, 1), -1, 5, col="red", add = TRUE)
histolarg(ech20)
curve(dnorm(x, 2, 1), -1, 5, col="yellow", add = TRUE)

#Q1
bruit=c(54.8,55.4,57.7,59.6,60.1,61.2,62.0,63.1,63.5,64.2,65.2,65.4,65.9,66.0,67.6,68.1,69.5,70.6,71.5,73.4)
bruit[1]
summary(bruit)
var(bruit)
sqrt(var(bruit))

sd(bruit)

cVn = sqrt((n-1)/n)*sd(bruit)/mean(bruit)

#Q2
a0=bruit[1]-0.025*(bruit[n]-bruit[1])
a5=bruit[n]+0.025*(bruit[n]-bruit[1])
h=(a5-a0)/5
bornes=seq(a0,a5,h)
par(mfrow=c(1,2))
hist(bruit, prob=T, breaks=bornes)

histoeff(bruit)

par(mfrow=c(1,1))
plot(bruit[1:n-1],qnorm(seq(1:(n-1))/n))


#Q4
par(mfrow=c(1,1))
plot(bruit[1:n-1], log(1-seq(1:(n-1))/n))
abs<-bruit[1:n-1]
ord<-log(1-seq(1:(n-1))/n)
reg<-lm(ord~abs)
reg$coefficients
abline(reg)

alpha <- (-reg$coefficients[1])
alpha

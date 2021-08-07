source("Pourcentage.R")
source("TD4EXO3.R")

ech<-c(91.6, 35.7, 251.3, 24.3, 5.4, 67.3, 170.9, 9.5, 118.4, 57.1)
ech<- sort(ech)

n<-length(ech)
n

summary(ech)
mean(ech)

lambdaChap <- 1/mean(ech)

lambdaChap

lambdaChapPrime <- (n-1)/(n*mean(ech))

lambdaChapPrime

alpha<-0.5



qchisq(alpha/2, 2*n)/2/sum(ech) # a
qchisq(1 - alpha/2, 2*n)/(2*n*mean(ech)) # b

Pourcentage(2000, 1000, 0.01, 10 )


m<- 100
n<- 5
lambda<- 10

histoBiais(m,n,lambda)






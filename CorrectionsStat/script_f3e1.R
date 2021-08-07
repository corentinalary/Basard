time=c(75, 265, 225, 402, 35, 105, 411, 346, 159, 229, 62, 256, 431, 177, 56, 144, 354, 178, 386, 294)

time

summary(time)

sd(time)

sd(time)/mean(time)

sqrt(19/20)*sd(time)/mean(time)

source("histolarg_mine.R")
source("histoeff_corr_f1e2.R")

par(mfrow=c(1,2))
histolarg(time)
histoeff(time)

time=sort(time)
n<-length(time)
par(mfrow=c(1,1))
plot(time,seq(1:n)/n)

abs<-time
ord<-seq(1:n)/n
reg<-lm(ord~abs)
reg$coefficients

abline(reg)

-reg$coefficients[1]/reg$coefficients[2]

(1-reg$coefficients[1])/reg$coefficients[2]


(n+1)/n*time[n]

(n+1)/n*time[n]/2

100/452.55

365*24/266


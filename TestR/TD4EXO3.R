source("histolarg_mine.R")

histoBiais<- function(m, n, lambda)
{
  ech<-c()
  
  for (i in 1:m)
  {
    simu<-rexp(n, lambda)
    lambdaChap<-1/mean(simu)
    ech<-c(ech,lambdaChap)
  }
  histolarg(ech)
  cat("biais estimé:", mean(ech - lambda), "\n")
}


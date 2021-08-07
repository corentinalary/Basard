Pourcentage <- function (m, n, alpha, lambda)
  {
  nb_fois <- 0
  for (i in 1:m)
    {
    ech <-rexp(n, lambda)
    a<-qchisq(alpha/2, 2*n)/(2*sum(ech))
    b<-qchisq(1-alpha/2, 2*n)/(2*sum(ech))
    
    nb_fois = nb_fois + ((lambda>= a) & (lambda <=b))
    
  }
  
  cat("pourcentage de fois où lambda est dans l'IC", nb_fois/m*100, "\n")
  
  }
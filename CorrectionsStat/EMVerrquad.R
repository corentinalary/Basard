EMVerrquad <- function (m,n, lambda)
    {
        echest<-NULL
        for (i in 1:m)
            {
                echexp <- rexp(n,lambda)
                echest<-c(echest, 1/mean(echexp))
            }

        
        #estimation biais
        cat("erreur quadratique estimée:", mean((echest-lambda)^2), "\n")

    }

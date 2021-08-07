EMVetEoptBEQ <- function (m,n, lambda)
    {
	echEMV<-NULL
        echestopt<-NULL
        for (i in 1:m)
            {
                echexp <- rexp(n,lambda)
		echEMV<-c(echEMV, 1/mean(echexp))
                echestopt<-c(echestopt, (n-1)/sum(echexp))
            }

        
        #estimation biais
	cat("biais estimé EMV:", mean(echEMV-lambda), "\n")
	cat("biais estimé Eopt:", mean(echestopt-lambda), "\n")
        cat("erreur quadratique estimée EMV:", mean((echEMV-lambda)^2), "\n")
	cat("erreur quadratique estimée Eopt:", mean((echestopt-lambda)^2), "\n")
    }

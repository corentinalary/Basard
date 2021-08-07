Pourcentage <- function (m,n,alpha, lambda)
    {
	nb_fois<-0
        #echest<-NULL
        for (i in 1:m)
            {
                echexp <- rexp(n,lambda)
		a=qchisq(alpha/2,2*n)/2/sum(echexp)                	
	        b=qchisq(1-alpha/2,2*n)/2/sum(echexp)
		nb_fois=nb_fois + ( (lambda >= a) &  (lambda <= b) )
                #if ( (lambda >= a) &  (lambda <= b) )
                    #nb_fois=nb_fois+1
            }

        
        #estimation pourcentage
        cat("pourcentage de fois où lambda dans l'IC:", nb_fois/m*100, "\n")

    }

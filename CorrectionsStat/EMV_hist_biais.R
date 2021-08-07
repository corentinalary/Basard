EMVhistbiais <- function (m,n, lambda)
    {
        echest<-NULL
        for (i in 1:m)
            {
                echexp <- rexp(n,lambda)
                echest<-c(echest, 1/mean(echexp))
            }

        #tracé figures
        histolarg(echest)#histogramme
        lines(c(lambda,lambda),c(0,10),col="blue")#ligne en bleu verticale en x=lambda
        lines(c(mean(echest),mean(echest)),c(0,10),col="red")#ligne en rouge en x=mean(echest)

        #estimation biais
        cat("biais estimé:", mean(echest-lambda), "\n")

    }

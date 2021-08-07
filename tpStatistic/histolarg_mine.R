 histolarg <- function (x)
    {
        n=length(x)
        x1s=min(x)
        xns=max(x)
        range=xns-x1s

        a0=x1s-0.025*range
        ak=xns+0.025*range

        #calcul du nombre de classe
        if (n < 23) k<-5 else k<-round(log2(n)+1)

        h=(ak-a0)/k
        bornes<-seq(a0,ak,h)

        hist(x, prob=T, breaks=bornes)

    }

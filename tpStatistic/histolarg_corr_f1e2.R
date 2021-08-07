histolarg <- function(x, xlim=NULL, ...)
{
  # nombre de donn?es
  n <- length(x) 
  # nombre de classes (r?gle de Sturges)
  if (n<12) k<-5 else k <- round(log2(n)+1) 
  # bornes des classes
  rangex <- max(x)-min(x)
  a0 <- min(x)-0.025*rangex
  ak <- max(x)+0.025*rangex
  bornes <- seq(a0, ak, length=k+1)
  # ?tendue du trac?
  if (is.null(xlim))
    xlim<-c(bornes[1], bornes[k+1])
  # histogramme
  histx<-hist(x, prob=T, breaks=bornes, xlim=xlim, ...)
  # histx
}

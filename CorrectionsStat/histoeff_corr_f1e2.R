histoeff <- function(x, xlim=NULL, ...)
{
sx <- sort(x)
n <- length(x)
k <- round(log(n)/log(2)+1)
rangex <- max(x)-min(x)
breaks <- c(min(x)-0.025*rangex, quantile(x, seq(1, k-1)/k), max(x)+0.025*rangex)
col <- 0
if (is.null(xlim)) xlim<-c(breaks[1], breaks[k+1])
hist(x, breaks=breaks, col=col, xlim=xlim, probability=T, ...)
}

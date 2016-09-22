completos <- function(directorio, id = 1:332){
  setwd("~/GitHub/Programacion_Actuarial_III_OT16/specdata")
  nobs <- vector("numeric", length(id))
  con<-1
  for (i in id){
    id1<-formatC(i,width = 3 ,flag = "0")
    readen <- read.csv(paste(id1, ".csv",sep=""), header=T)
    x <- (readen$sulfate)
    y <- (readen$nitrate)
    midata <- data.frame(x, y)
    nobs[con] <- nrow(midata[complete.cases(midata),])
    con<-con+1
  }
  data.frame(id=id,nobs=nobs)
}


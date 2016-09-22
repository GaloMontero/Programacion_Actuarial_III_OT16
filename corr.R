corr <- function(directorio, horizonte=0){
  setwd("~/GitHub/Programacion_Actuarial_III_OT16/specdata")
  correlajaja <- vector("numeric",0)
  ño <- 1
  for (i in 1:332){
    
    ids<-formatC(i,width = 3 ,flag = "0")
    readen <- read.csv(paste(ids, ".csv",sep=""),header = T)
    mydata <- data.frame(readen$sulfate,readen$nitrate)
    compl <- mydata[complete.cases(mydata),]
    n <- nrow(compl)
    
    if (n>horizonte){
      length(correlajaja) <- length(correlajaja)+1
      correlajaja[ño] <- cor(compl[,1],compl[,2])
      ño <- ño+1
    }
  }
  correlajaja
}


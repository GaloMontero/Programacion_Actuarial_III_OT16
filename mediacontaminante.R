mediacontaminante <- function(directorio,contaminante,id=1:322){

  setwd("~/GitHub/Programacion_Actuarial_III_OT16/specdata")
  
  sum <- numeric()
  for (i in id){
    
    ids <- formatC(i,width = 3 ,flag = "0")
    readen <- read.csv(paste(ids, ".csv",sep=""),header = T)
    
    if (contaminante == "sulfate"){
      
      
      sum <- c(sum,readen$sulfate)
    } else if (contaminante == "nitrate"){
      
      
      sum<- c(sum,readen$nitrate)
    } else {
      paste("El contaminante",contaminante,"no existe.")
    } 
    
  }
  p <- mean(sum, na.rm = T)
  p
}



mejor <- function(estado,resultado){
setwd("~/GitHub/Programacion_Actuarial_III_OT16/Hosp")
data <- read.csv("outcome-of-care-measures.csv")
N <- FALSE
n <-nrow(data)
    
    if(resultado== "infarto"){
        r <- 11
    }
    else if (resultado== "falla"){
        r <- 17
    }
    else if (resultado== "neumonia"){
        r <- 23
    }
    
    if (!((resultado == "infarto")|(resultado == "falla")| (resultado == "neumonia"))){
        stop("resultado inválido")
    }
    
a <- matrix(data[,r],n,1)
data[,r] <- suppressWarnings(as.numeric(a))
data[,2] <- as.character(data[,2])
    
b <- data[grep(estado,data$State),]
    
ordenar <- b[order(b[,r], b[,2], na.last=NA),]
    
e <- matrix(data[,7], n,1)
    
    for (i in 1:length(e))
        if(estado == e[i]){
            N <- TRUE
        }
    if(!N){
        stop("Estado inválido")
    }
    
    ordenar[1,2]
}




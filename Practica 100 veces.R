#practica

x <- c()
for(i in 1:100){
  z <- 5
  
  while (z>=3  && z<= 10) {
    
    moneda <- rbinom(1,1,0.5)
    
    if (moneda==1)
      
    { 
      z <- z + 1
    }else {
      z <- z -1
      
    }
    
  }
  if(z==2){
    x <- c(x,"Down")
  } else {if(z == 11){x <- c(x, "UP")}}
  
}
table(x)
m <- matrix(nrow=2, ncol=3)
m
dim(m)
attributes(m)
#cambio de dimensiones de 2x3 a 3x2
dim(m) <- c(3,2)
m
#crear una matrix con datos
m <- matrix(1:6,3,2)
m
m <- matrix(1:6,3,3,T)
m
class(m)
str(m)
dim(m) <- c(2,5)
x <- c(1,2,3)
y <- c("a","b","c")
z <- c(x,y)
z
m1 <- rbind(m,x)
m1

m2 <- cbind(m,x)
m2

rbind(m1,y)
cbind(m2,y)

#Factores 
x <- factor(c("si","no","si","si","no","si","no"))
x
table(x)
unclass(x)
x <- factor(c("si","no","si","si","no","si","no")),levels = c("si","no")
x

x <- factor(c("azul","azul","rojo","azul","amarillo","verde","azul"))
x
table(x)

#valores faltantes

x <- c(1,2,NA,10,3)
is.na(x)
is.nan(x)

x <- c(1,2,NaN,10,3)
is.na(x)
is.nan(x)

#Date frames
x <- data.frame(Erick= 1:4 , Lori= c(T,T,F,F))
x

row.names(x) <- c("Primero","segundo","tercero","cuarto")
x

nrow(x)
ncol(x)
attributes(x)

names(x)<-c("Yarely","Karen")
x

#Los nombrse no son esxclusivos de los data frames
x <- 1:3

names(x) #NULL
names(x) <- c("Hugo","Paco","Luis")
x

x <- list(a=1:10, b_=100:91,c=51:60)
x
names(x) <- c("Seq1","SEQ2","sEq3")
x

m <- matrix(1:4,2,2)
m

dimnames(m)
dimnames(m) <- list(c("fil1","fil2"),c("col1","col2"))
m

m <- matrix(NA,5,5)
m
dimnames(m) <- list(c("1:5"),c("A","B","C","D","F"))
m
#Lectura de Datos
getwd()

setwd("~/GitHub/Programacion_Actuarial_III_OT16")
data <- read.csv("Datos_S&P.csv")
data <- read.table("Datos_S&P.csv",T,",",nrows = 100)
clases <- sapply(data, class)
data <- read.table("Datos_S&P.csv",T,",",colClasses  = clases)
data
 
?sapply

#Uso de dput y dget
y <- data.frame(a = 1,b ="a") #data frame matrix dos por uno, columna 1 se llama a y la segund a b
dput(y)
dput(y, file="y.R")
nueva.y <- dget("y.R")
y
nueva.y

x <- "Programacion Actuarial III"
y <- data.frame(a=1, b="a")
dump(c("x","y"), file="data.R")
rm(x,y)
source("data.R")

a <- head(airquality)

dput(a)
dput(a,file="air_Galo.R")

a <- structure(airquality)

dput(a)
dput(a,file="airq_Galo.R")
#extraer
con <- url("http://www.fcfm.buap.mx/","r")
x <- readLines(con,7)
x

#subconjuntos
x<- c("a","b","c","c","d","e")
x
x[1]

x[2]
x[1:4]
x[x>"b"]

u<-x =="c"
u
x[u]

#ahora
x <- list(foo = 1:4 , bar = 0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x["bar"]

#creamos una lista de 3 elementos
x <- list(foo =1:4, bar =0.6 , baz="Hola")
#Extraemos el primer y tercer elemnto de la lista
x[c(1,3)]

x[[c(1,3)]]

#nueva lista
x <- list(a=list(10,12,14), b=list(3.14,2.81))
x[[c(1,3)]]

x[[1]][[3]]

x[[c(2,1)]]

#Extraccion matrix
x<- matrix(1:6,2,3)
x
#x1 es fila y x2 es columna (x1,x2)
x[1,2]
x[2,1]
x[1,]
x[,2]

#con drop= FALSE, se mnatiene la dimension y el resultadp sera una matriz 

x[1,2,drop=FALSE]

x <- list (aardvark = 1:5)
x$a
x[["a"]]
x[["a",exact=FALSE]]

#Valores faltantes

airquality[1:6,]
completos <- complete.cases(airquality)
airquality[completos,][1:6,]
airquality[1:6,][completos,]


#uso de operaciones en R para evitar usar tantos ciclos

x <- 1:4; y  <- 6:9
x + y

x>2
y==8

x*y
x/y

#operaciones con matrices

 x<- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2)
 x * y
 x/y
 #para multiplicacion tipo natrix es fila por columna
 x %*%y
 
 
 #ciclo while
 z <- 5
 while(z>=3 && z <=10) {
   print(z)
   moneda <- rbinom(1,1,0.5) #cada intento es independiente del anterior distribucion binomial
   
   if (moneda==1){ #caminata aleatoria
     z <- z + 1
     }else {
       z <- z -1
     }
 }

 
 #Modificar el anterior para que guarde en un solo vector 
x <- c()
 z <- 5
 
  while (z>=3  && z<= 10) {
   x <- c(x,z)
    moneda <- rbinom(1,1,0.5)
    
    if (moneda==1)
      
{ 
      z <- z + 1
    }else {
      z <- z -1
      
    }
  
  }
 x
 
 plot(x) #plot grafic
 x
 
 #El mismo anterior pero como el profe
 
 
 z <- 5
 caminata<- vector("numeric")
 while (z>=3  && z<= 10) {
  caminata <- c(caminata,z)
   moneda <- rbinom(1,1,0.5)
   
   if (moneda==1)
     
   { 
     z <- z + 0.5
   }else {
     z <- z -0.5
     
   }
   
 }
 caminata
 #plot(caminata)
 
 plot(caminata, type= "l")
 
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
 
 
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
data

data <- read.table("Datos_S&P.csv",T,",")
data
#Solucion Pregunta 1

x <- c(0,1) #vector definit
fx <- c(0.68,0.32)

#tabla de probavilidad
cbind(x,fx)
plot(x,fx, pch=16, col="blue")
lines(x,fx,type="h", col="red") #linia de la grafica

mu <- sum(x*fx)
mu

sigmasq <- sum((x-mu)^2*fx) #formula bernoulli
sigmasq


x
fx

n <- 43
Y <- function(i){sum(sample(x,n,prob=fx, replace=TRUE))}

#bucle
m <- 400000
muestra <- sapply(1:m,Y)
fi <- table(muestra)/m
fi
#frecuencias relativas
data.frame(fi, Fi=cumsum(fi))
 
barplot(fi)

###
#tabla de prob
data.frame(Y=0:43,Prob=dbinom(y,43,0.32))
y <- 0:43
fy <- dbinom(y,43,0.32)
plot(y, fy, pch=19, col="black")
lines(y,fy,col="red",type="h")
#####
y <- 0:44
df <- data.frame()
Pi <- dbinom(y,44,0.32)
Fi <- cumsum(Pi)

cbind(y,Pi,Fi)

plot(y, Fi, type="s", col="red")
#PART3
x <- 0:24
Pi <- dbinom(x,24,0.68)

mu <- sum(x*Pi)/n
mu
sum((x-mu)^2*Pi)

Fi <- cumsum(Pi)
qbinom(0.25,0.24,0.68)# F^-1







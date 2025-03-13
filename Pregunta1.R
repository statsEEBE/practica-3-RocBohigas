#Solucion Pregunta 1

x <- c(0,1) #vector definit
fx <- c(0.68,0.32)

#tabla de probavilidad
cbind(x,fx)
plot(x,fx, pch=16, col="blue")
lines(x,fx,type="h", col="red") #linia de la grafica

#Considerar una variable aleatoria X con distribución normal, 
#media igual a 50 y varianza igual a 25.

#Calcular la probabilidad de que X sea menor o igual a 48. 
#Es decir, P(X≤48).
pnorm(48, mean= 50, sd= sqrt(25))
## [1] 0.3445783

#Calcular la probabilidad de que X sea mayor a 48. Esto es P(X>48).
pnorm(48, mean= 50, sd= sqrt(25), lower.tail = FALSE)
## [1] 0.6554217

#Calcular la probabilidad de que X sea mayor o igual a 45 y menor que 55; 
#es decir P(45≤X<55).
pnorm(54, mean = 50, sd = sqrt(25)) - pnorm(45, mean = 50, sd = sqrt(25))
## [1] 0.6294893

#¿Cuál es el valor de X que deja a un 90% bajo él? P(X≤x0)=0,90.
qnorm(0.90, mean = 50, sd = sqrt(25))
## [1] 56.40776

#conjunto de 10 datos que sigan una distribución normal de media 50 y varianza 25:
x <- rnorm(10, mean=50, sd=25)
x
##  [1] 49.287168  2.669404 64.985082 29.347834 64.260053 41.781601 43.314779
##  [8] 36.525396 57.113004 37.712418
summary(x)


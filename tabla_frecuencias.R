#_________ Tablas de frecuencias________
#Se implementa la matriz iris
#importar la matriz de datos
data (iris)
#exploracion de la matriz
#Iris tiene 150 observaciones o individuos y cinco variables
dim(iris)
#nombre de las variables
colnames (iris)

#TIPO DE VARIABLES
#Conjunto de diferentes tipos de variables.
#La variable Species corresponde a un valor cualitativo
str(iris)

# 5.- Visualización de una variable especifica
# Despliegue los datos de una variable cuando su contenido es muy extenso
# La especie setosa se encuentra desde la fila 1 hasta la 50
# La especie Versicolor se encuentra desde la fila 51 hasta la 100
# La especie virginica se encuentra desde la fila 101 hasta la 150
iris$Species

#buscar datos faltantes (NA'S)
anyNA(iris)

#____ EXPLORACIoN DE LA  MATRIZ DE DATOS______

#____ GENERACIoN DE TABLAS______
#1.Convertir la matriz de datos en un DataFrame
#se agrupan los valores para la variables Petal.Lenght
#se calcula su frecuencia absoluta
tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))
#2. VISUALIZACIoN DE LA VARIBALE
tabla_PL
#3. se construye la tabla de frecuencias completas
#redondeando la frecuencia a tres decimales 

transform(tabla_PL,
                     freqAc=cumsum(Freq), #frecuencia acumulada
                     Rel=round(prop.table(Freq), 3), #frecuencia relativa
                     RelAc=round(cumsum(prop.table(Freq)), 3)) #frecuencia relativa acumulada 


#------------- GENERACIoN DE TABLAS AGRUPADAS----------------
#1. agrupacion de la variable PL a 8 de amplitud
tabla_clases<-as.data.frame(table(Petal.Lenght=factor(cut(iris$Petal.Length, breaks=8))))
#2. visualizar la tabla
tabla_clases
#3. construccion de la tabla completa
tabla<-transform(tabla_clases,
                     freqAc=cumsum(Freq), 
                     Rel=round(prop.table(Freq), 3), 
                     RelAc=round(cumsum(prop.table(Freq)), 3)) 
#visualizar tabla
tabla

#instalar librería knitr

#- Se abre la librería
library(knitr)

#Se visualiza la tabla
kable(tabla)

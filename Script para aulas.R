#### Estatística Básica####

#Medidas de Tendência central

##Média

#Utilizando a fórmula da média 

library(dplyr)
library (clipr)

funcionario <- c("Jose", "Pedro", "Lucas", "Joao", "Mateus")
idade <- c(25, 20, 29, 26, 39)

x_barra <- (25+20+29+26+39)/5
x_barra

x_barra <- sum(idade)/length(idade)

#Cálculo da média utilizando a função mean

mean(idade)

#Propriedades

#Propriedade 2

renda <- c(3000.5, 4598.3, 2578.2, 1900, 15000) #O novo vetor precisa apresentar length igual a 5


dados <- data.frame(funcionario, idade, renda)

dados

dados$renda_2 <- 500 + (dados$renda)

dados

mean_1 <- mean(dados$renda)

mean_2 <- mean(dados$renda_2)

mean_2 - mean_1


#Propriedade 3


# Criar a nova coluna "renda_3"
dados$renda_3 <- dados$renda * 2

# Calcular a média da coluna original "renda"
mean_3 <- mean(dados$renda_3)



# Imprimir as médias
cat("Média da renda original:", mean_1, "\n") 
cat("Média da renda somada:", mean_2, "\n")
cat("Média da renda dobrada:", mean_3, "\n")

#Propriedade 4

dados$desvio <- dados$renda - mean(dados$renda)

sum (dados$desvio)

#Influência de outliers sobre a média

dados$renda_outlier <- c(15000, 18000, 19500, 21000, 90000)

# Calcular a média dos salários com outlier

mean_4 <- mean(dados$renda_outlier)

mean_4


# Média para dados agrupados por valor

operacao <- data.frame(qtde = c(1, 2, 3, 4, 5, 6, 7, 9, 15, 16, 23),
                     freq = c(4, 2, 1, 4, 2, 3, 2, 3, 1, 1, 1))

#Calcular a média 

media_ponderada <- sum(operacao$qtde * operacao$freq) / sum(operacao$freq)

media_ponderada

#Média para dados agrupados com intervalo de classes

dados_agrupados <- data.frame(
  classe_inferior = c(0, 11, 21, 31, 41),
  classe_superior = c(10, 20, 30, 40, 50),
  frequencia = c(5, 8, 12, 7, 3)
)

# Calcular o ponto médio de cada classe
dados_agrupados$ponto_medio <- (dados_agrupados$classe_inferior + dados_agrupados$classe_superior) / 2

# Calcular a média ponderada das classes agrupadas
media_ponderada <- sum(dados_agrupados$frequencia * dados_agrupados$ponto_medio) / sum(dados_agrupados$frequencia)

# Imprimir o resultado
cat("A média ponderada das classes agrupadas é:", media_ponderada, "\n")

















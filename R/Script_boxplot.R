####---------------------- Análise exploratório de dados - avaliação do incremento de area basal ------------------------- ##

#Pacotes para carregar
library(pgirmess)

#importando a tabela
getwd()

#abrindo a pasta no diretório

files.path <- list.files(path = "Docs/Incremento.csv",
                         pattern = ".csv",
                         full.names = TRUE)

#abrindo a tabela que irei trabalhar (file), indicando que possuo cabeçalho (header) e qual o separador (sep)
Dinamica <- read.csv2(file = "Docs/Incremento.csv", header = TRUE, sep = ";")

head(Dinamica) #cabeçalho
dim(Dinamica) #numero de linhas e colunas
summary(Dinamica) #dados de cada observação

attach(Dinamica)

#teste de normalidade para os dados de Area Basal total
#normalidade

shapiro.test(Dinamica$InAB_total[1:54])

#Testando a significancia

kruskal.test(InAB_total[1:54],Intervalo [1:54])
kruskalmc(InAB_total[1:54],Intervalo [1:54])

#boxplot
boxplot(Dinamica$InAB_total [1:54]~Intervalo [1:54],xlab= "Intervalo de tempo" , ylab= "Incremento da Area Basal")








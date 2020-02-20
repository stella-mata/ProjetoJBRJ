####---------------------- Teste de correlação e regressão ------------------------- ##

#Pacotes para carregar
library(pgirmess)

#importando a tabela

getwd() #confirmando o diretório que estou trabalhando

#abrindo a pasta no diretório

files.path <- list.files(path = "02_Dados processados",
                         pattern = ".csv",
                         full.names = TRUE)

#abrindo a tabela que irei trabalhar (file), indicando que possuo cabeçalho (header) e qual o separador (sep)
Dinamica <- read.csv2(file = "02_Dados processados/Incremento.csv", header = TRUE, sep = ";")

head(Dinamica) #cabeçaçho
dim(Dinamica) #numero de linhas e colunas
summary(Dinamica) #dados de cada observação


#teste de normalidade para os dados de Area Basal total
#normalidade

shapiro.test(Dinamica$InAB_total[1:54])

#Testando a significancia

kruskal.test(InAB_total,Intervalo)
Kruskalmc(InAB_total,Intervalo)

#boxplot
boxplot(Dinamica$InAB_total~Intervalo)

#dispersão

plot(Intervalo,InAB_total)
plot(ano,ab_spp, type="p")
####---------------------- Análise exploratório de dados - avaliação do incremento de area basal ------------------------- ##

#Descobrindo o local de trabalho
getwd()

#Pacotes para carregar
library(pgirmess)

#abrindo a pasta no diretório

files.path <- list.files(path = "02_Docs/Incremento.csv",
                         pattern = ".csv",
                         full.names = TRUE)

#abrindo a tabela que irei trabalhar (file), indicando que possuo cabeçalho (header) e qual o separador (sep)
Dinamica <- read.csv2(file = "02_Docs/Incremento.csv", header = TRUE, sep = ";")

head(Dinamica) #cabeçalho
dim(Dinamica) #numero de linhas e colunas
summary(Dinamica) #dados de cada observação

attach(Dinamica)

#teste de normalidade para os dados de Area Basal total
#normalidade

shapiro.test(Dinamica$InAB_total[1:54])

#Testando a significancia

kruskal.test(Dinamica$InAB_total[1:54],Dinamica$Intervalo[1:54])
kruskalmc(Dinamica$InAB_total[1:54],Dinamica$Intervalo[1:54])

#boxplot
boxplot(Dinamica$InAB_total [1:54]~Intervalo [1:54],xlab= "Intervalo de tempo" , ylab= "Incremento da Area Basal")


#teste de normalidade para os dados ddo incremento de AB do camará e das outras spp.
#normalidade

shapiro.test(Dinamica$InAB_camara[1:54])
shapiro.test(Dinamica$InAB_spp[1:54])

#Testando a significancia

kruskal.test(Dinamica$InAB_camara [1:54],Dinamica$InAB_spp [1:54])

# correlação
cor(Dinamica$InAB_camara[1:54],Dinamica$InAB_spp[1:54],method="spearman")
cor.test(Dinamica$InAB_camara[1:54],Dinamica$InAB_spp[1:54],method="spearman") #coef. de correlação
cor(Dinamica$InAB_camara[1:54],Dinamica$InAB_spp[1:54],method="spearman")^2 #coef. de determinação






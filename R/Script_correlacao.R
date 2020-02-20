###--------------Analise de correlação entre Camará e demais espécies ao longo de 12 anos de regeneração--------------#

#importando a tabela
getwd()

#abrindo a pasta no diretório

files.path <- list.files(path = "Docs/Incremento.csv",
                         pattern = ".csv",
                         full.names = TRUE)

#abrindo a tabela que irei trabalhar (file), indicando que possuo cabeçalho (header) e qual o separador (sep)
Dinamica <- read.csv2(file = "Docs/Incremento.csv", header = TRUE, sep = ";")

#teste de normalidade para os dados ddo incremento de AB do camará e das outras spp.
#normalidade

shapiro.test(Dinamica$InAB_camara[1:54])
shapiro.test(Dinamica$InAB_spp[1:54])

#Testando a significancia

kruskal.test(InAB_camara [1:54],InAB_spp [1:54])


# correlação
cor(Dinamica$InAB_camara[1:54], Dinamica$InAB_spp[1:54])


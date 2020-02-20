#tRABALHO DE CONCLUSÃO
Reatório do curso de fluxo de trabalho.
#Objetivo 1
Analisar a mudança do incremento da comunidade ao longo de 12 anos de regeneração natural

#Descrição dos passos da analise de dados 
vou usar dados do meu doutorado.
Criação de uma pasta com dados do doutorado relativos ao incremento de área basal.
Estou refazendo todos os passos das aulas para fixar o que foi passado.

1-Inclusão da planilha de dinâmica

2-Importante lembrar de colocar que a planilha tem cabeçalho e colunas. Caso contrário, é lida como tendo uma única coluna

3- Testei se os dados são normais - Os dados não são normais

4- Testei se há diferença significativa entre os anos - há diferença significativa

Kruskal-Wallis rank sum test

data:  InAB_total[1:54] and Intervalo[1:54]
Kruskal-Wallis chi-squared = 9.0402, df = 2, p-value = 0.01089

Multiple comparison test after Kruskal-Wallis 
p.value: 0.05 
Comparisons
              obs.dif critical.dif difference
T1_T2-T1_T3  9.722222     12.55414      FALSE
T1_T2-T2_T3  5.888889     12.55414      FALSE
T1_T3-T2_T3 15.611111     12.55414       TRUE

5- Realizei um bloxplot para expor os dados nos diferentes anos

#Objetivo 2
Analisar a relação entro o incremento da area basal de Moquiniastrum polymorphum e as demais espécies da comunidade

1-Estou utilizando a mesma tabela "Incremento".
2-testando normalidade para os dados de camará e das outras spp - dados não normais.

3-testando se há diferença significativa entre o incremento do camará e das demais espécies - não há diferença significativa

Kruskal-Wallis rank sum test

data:  InAB_camara and InAB_spp
Kruskal-Wallis chi-squared = 120.83, df = 116, p-value = 0.3607

4 - teste de correlação

-0.325715

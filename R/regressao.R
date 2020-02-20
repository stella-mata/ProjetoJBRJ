setwd('C:/Users/Stella/Desktop/Planilhas doc R')
stella=read.table("2002_dinamica.txt", header=T)
stella

attach(stella)
 detach(stella)

#Dispersão

plot(parcela,ab_camara)
plot(ano,ab_spp, type="p")

#regressão
regressao<-lm(ab_camara~mortalidade_spp,data=stella) 

regressao

plot(ab_camara,riqueza) #reta de regressão
z = plot(ab_camara,riqueza)
grid(z) #aplicando grid ao gráfico
abline(regressao)
summary(z)
#normalidade
shapiro.test(stella$ab_camara[1:54])
shapiro.test(stella$riqueza[1:54])

#correlação método 1
cor(ab_camara,ab_spp)
cor(ab_camara,ab_spp)^2 #O Coeficiente de Determinação explica o grau de ajuste do modelo, ou o percentual de variação de y que é explicada pela variabilidade de x. Seu valor varia de 0 a 1.

#correlação método 2
cor(ab_camara,riqueza,method="spearman") #spearman para não paramétricos
cor.test(ab_camara,riqueza,method="spearman")

correl<-function(ab_camara,ab_spp){((sum(ab_camara*ab_spp))-(((sum(ab_camara))*(sum(ab_spp)))/length(ab_camara)))/ (sqrt(((sum(ab_camara^2)-(sum(ab_camara)^2/length(ab_spp)))*(sum(ab_spp^2)-(sum(ab_spp)^2/length(ab_spp))))))}
correl2<-function(ab_camara,ab_spp){(cov(ab_camara,ab_spp))/(sqrt((var(ab_camara)*var(ab_spp))))}

correl(ab_camara,ab_spp)
correl2(ab_camara,ab_spp)
cor(ab_camara,ab_spp,method="pearson")



entrada de dados
setwd("C:/R")
dados<-read.table(file="inga.txt",header=TRUE)
attach(dados)
names(stella)

# processar o modelo de regressão

model<-lm(recrutamento~parcela)
plot(recrutamento~parcela)
abline(model)
hist(residuals(model))
plot(residuals(model)~ab_camara)
abline(0,0)

model; summary(model)

reg<-lsfit(AB,Riqueza); ls.print(reg)





# função que descreve o intervalo de confiança da reta de predição
ci.lines<-function(model)
  + {xm<-mean(model[[12]][2])
  + n<-length(model[[12]][[2]])
  + ssx<- sum(model[[12]][2]^2)- sum(model[[12]][2])^2/n
  + s.t<- qt(0.975,(n-2))
  + xv<-seq(min(model[[12]][2]),max(model[[12]][2]),
            + (max(model[[12]][2])-min(model[[12]][2]))/100)
  + yv<- coef(model)[1]+coef(model)[2]*xv
  + se<-sqrt(summary(model)[[6]]^2*(1/n+(xv-xm)^2/ssx))
  + ci<-s.t*se
  + uyv<-yv+ci
  + lyv<-yv-ci
  + lines(xv,uyv,lty=2)
  + lines(xv,lyv,lty=2)}
# plotar o gráfico com o intervalo de confiança
range(Riqueza)
range(AB)
plot(AB,Riqueza,pch=16,xlim=c(0,100),ylim=c(0,100))

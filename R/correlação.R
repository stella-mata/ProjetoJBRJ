setwd('C:/Users/Stella/Desktop/Planilhas doc R')
stella=read.table("estrutura_scores2.txt", header=T)
stella

attach(stella)
detach(stella)

#normalidade
shapiro.test(stella$AB[1:90])
shapiro.test(stella$Riqueza[1:90])

cor(scores_pca1,freq_fogo,method="spearman")
cor.test(scores_pca1,freq_fogo,method="spearman")

correl<-function(AB,Riqueza){((sum(AB*Riqueza))-(((sum(AB))*(sum(Riqueza)))/length(AB)))/ (sqrt(((sum(AB^2)-(sum(AB)^2/length(Riqueza)))*(sum(Riqueza^2)-(sum(Riqueza)^2/length(Riqueza))))))}
correl2<-function(AB,Riqueza){(cov(AB,Riqueza))/(sqrt((var(AB)*var(Riqueza))))}

correl(AB,Riqueza)
correl2(AB,Riqueza)
cor(AB,Riqueza,method="pearson")



entrada de dados
setwd("C:/R")
dados<-read.table(file="inga.txt",header=TRUE)
attach(dados)
names(stella)

# processar o modelo de regressão
model<-lm(freq_fogo~scores_pca1)
plot(scores_pca1~freq_fogo)
plot(scores_pca1~freq_fogo)
abline(model)
hist(residuals(model))
plot(residuals(model)~AB)
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

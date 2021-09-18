USArrests # conjunto de dados
colnames(USArrests)<-c("Assassinato","Assalto","PMAU","VS")
medados<- rbind(apply(USArrests,2,mean),apply(USArrests,2,var),
                apply(USArrests,2,sd),
                100*apply(USArrests,2,sd)/apply(USArrests,2,mean),
                apply(USArrests,2,min),apply(USArrests,2,quantile,0.5),
                apply(USArrests,2,max))
rownames(medados)<-c("Média","Variância","DP","CV(%)","Mínimo","Mediana","Máximo")
xtable(medados)# cria tabela para latex ou html
plot(USArrests,cex=1.2,cex.lab=1.2,pch=16)
cov(USArrests)
cor(USArrests)
par(mfrow=c(1,1))
boxplot(USArrests,cex=1.2,cex.lab=1.2,xlab="variável")
par(mfrow=c(2,2)
boxplot(USArrests[,1],cex=1.2,cex.lab=1.2,main="assassinato")
boxplot(USArrests[,2],cex=1.2,cex.lab=1.2,main="assalto")
boxplot(USArrests[,3],cex=1.2,cex.lab=1.2,main="PMAU")
boxplot(USArrests[,4],cex=1.2,cex.lab=1.2,main="VS")
dev.off()#apaga todos os plots
par(mfrow=c(2,2))
hist(USArrests[,1],probability=TRUE,main="Assassinato",xlab="a",ylab="b")
hist(USArrests[,2],probability=TRUE,main="Assalto",xlab="",ylab="")
hist(USArrests[,3],probability=TRUE,main="PMAU",xlab="",ylab="")
hist(USArrests[,4],probability=TRUE,main="VS",xlab="",ylab="")

par(mfrow=c(2,2))
qqPlot(scale(USArrests[,1]),dist="norm",mean=0,sd=1,col.lines=1,grid="FALSE",xlab="quantil da N(0,1)",ylab="Assassinato",cex=1.2)
qqPlot(scale(USArrests[,2]),dist="norm",mean=0,sd=1,col.lines=1,grid="FALSE",xlab="quantil da N(0,1)",ylab="Assalto",cex=1.2)
qqPlot(scale(USArrests[,3]),dist="norm",mean=0,sd=1,col.lines=1,grid="FALSE",xlab="quantil da N(0,1)",ylab="PMAU",cex=1.2)
qqPlot(scale(USArrests[,4]),dist="norm",mean=0,sd=1,col.lines=1,grid="FALSE",xlab="quantil da N(0,1)",ylab="VS",cex=1.2)
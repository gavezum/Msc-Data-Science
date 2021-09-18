rank = 1:3 # cria um vetor de 1 a 3
names(rank) = c('first','second','third') #função names faz que o nome se refira a um objeto da lista
rank[1] == rank['first'] #posso chamar o vetor da mesma maneira

#################################
seq(5,9) # faz uma sequencia, onde primeiro argumento é inicio, segundo final e terceiro defaut é 1 porem pode escolher
seq(5,9,0.6) #igualassim

################################ Vectors manipulation

sentence <- c('walk', 'the', 'plank') #para criar um vetor sempre colocar o c. sempre o mesmo tipo de elemento não misturar

sentence[3] = 'plank alt' # altera o valor da terceira posição
sentence[4] = 'new value' #para adicionar um valor pode colocar um novo numero e não precisa usar append.
sentence[5:7] = c('one','two','three') #pode adicionar vários
  
sentence[c(1,3)] #seleciona o primeiro e terceiro item
sentence[2:4]# seleciona do segundo item ate o quarto

################################ BASIC VECTOR Operators
a = c(1,2,3)
b = c(4,5,6)
c = c(1,10,3)

a==c
a+1
a*2
a+b
a-b
sqrt(a)
a/2
a/b
a/(b+c)

################################ SCATTERPLOT
#plot(x,y) - scatterplot. 

a <- c(1, 3, NA, 7, 9)
sum(a, na.rm=TRUE) #na.rm= true exclui os valores NA e soma o vetor, caso contratio o R solta NA

##############################MATRIX
a <- c(1, 3, NA, 7, 9)
matrix(0,3,4)#cria matrix
matrix(a,5,4)# coloca um vector na matrix, porem ele coloca o vetor como uma coluna e repete igualmente
matrix(a,4,4)

plank<-1:8
plank = matrix(plank,2,4)

###############################creating list
x <- list(a = 2.5, b = TRUE, c = 1:3)# pode misturar os elementos
x
str(x) # structure

x <- list(2.5,TRUE,1:3)
x

x <- list(name="John", age = 19, speaks=c("English","Portuguese"))
x['age']
x[['age']] #pegar o valor
x$age # outro formato para pegar o mesmo valor
x$name
x[['speaks']][1]#quanto tem um vetor dentro de uma lista é preciso chamar a chame e depois em outro brackets a posição do vetor
x[['married']] = TRUE # adicionar ou alterar é igual a um vetor
x
x[['married']] = NULL #para excluir é preciso igualar a null
x

##########################################
limbs <- c(4, 3, 4, 3, 2, 4, 4, 4)
names(limbs) <- c('One-Eye', 'Peg-Leg','Smitty', 'Hook', 'Scooter','Dan', 'Mikey', 'Blackbeard')

barplot(limbs)
abline(h=mean(limbs))
limbs = append(limbs,14)

pounds <- c(45000, 50000, 35000, 40000, 35000, 45000, 10000, 15000)
barplot(pounds)
abline(h= mean(pounds)+sd(pounds)) # sd é standard deviation
abline(h=mean(pounds))
abline(h= mean(pounds)-sd(pounds))
##############
salary <- read.table("salary.txt", header=TRUE)# lendo tabela
salary2 <- read.table("salary.csv",header=TRUE, sep=",")#lendo em csv
salary2 <- read.csv("salary.csv")

############################ Matrix multiplication
A=matrix(c(1,2,2,3,4,3),ncol=2,byrow=TRUE)
B=matrix(c(4,2,1,3),ncol=2,byrow=TRUE)
A%*%B
I=matrix(0,nrow=4,ncol=4)# matrix identidades
diag(I)=c(1,1,1,1)




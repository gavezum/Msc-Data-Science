wine = read.csv("winequality-red.csv")

mean(wine$fixed.acidity)

sd(wine$fixed.acidity)

describe(wine)
#uma varia��o muito grande de varia��o dos dados � perigoso pqo programa pode interpetrar como uma forma ordenada
#explicar o outlier ou pq est� escluindo algo
#procurar oq � skew e kurtosis
#revisar mais matrixes
#covariance can show the relenship of variabels, and directions, but never the strenght.
#the scales of the varibles influences the covariance, because small values varia less then the greater ones.
#
###################################


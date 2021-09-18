wine = read.csv("winequality-red.csv")

mean(wine$fixed.acidity)

sd(wine$fixed.acidity)

describe(wine)
#uma variação muito grande de variação dos dados é perigoso pqo programa pode interpetrar como uma forma ordenada
#explicar o outlier ou pq está escluindo algo
#procurar oq é skew e kurtosis
#revisar mais matrixes
#covariance can show the relenship of variabels, and directions, but never the strenght.
#the scales of the varibles influences the covariance, because small values varia less then the greater ones.
#
###################################


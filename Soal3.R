# A
print( dpois (6, 4.5) )


# B
peluang = dpois (6, 4.5)
data = data.frame(y=c(peluang), x=c(1:365))
barplot(data$y, names.arg=data$x, ylab="Peluang", xlab="Hari ke-", ylim=0:1)

# C
#hasil a sama b hampir sama

# D
rata = 4.5
var = 4.5
#rataan
cat ("Rataan(??) = ", rata, "\n")

#varian
cat ("Varian(??²) = ", var, "\n")
x = 20 #variabel sampel
y = 0.2 #variabel peluang sembuh
z = 0.8 #variabel peluang tidak sembuh didapat dari 1-0,2

# A
print(dbinom(4, x, y))

# B

pel <- dbinom(1:20, 20, 0.2)
data = data.frame(y=c(pel), x=c(1:20))
barplot(data$y, names.arg=data$x, ylab="Peluang Sembuh", xlab="Jumlah Pasien yang Sembuh")

# C
rata = 4*y
cat ("Rataan(??) = ", rata, "\n")
var = 4*y*z
cat ("Varian(??²) = ", var, "\n")

# A
x = 3
p = 0.2
geom = function(x, p){
  return (p * ((1-p)^(x)))
}

print(paste("Peluang = ", geom(x, p)), quote=FALSE)


# B
n = 10000
set.seed(1)
x = rgeom(n , p)
mean(x == 3)

#C
# Hasil dari perhitungan poin A dan B hanya berselisih tipis, dengan hasil poin A adalah nilai yang konstan sedangkan poin B adalah hasil generasi random.

# D
hist(x, main = "Histogram Distribusi Geo")

#E

rata = 1/p
print(paste("Rataan(??) : ", rata))
var = (1-p)/p^2
print(paste("Varian(??²) : ", var))
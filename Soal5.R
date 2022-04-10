# A
lamda=3
dexp(3)

# B
par(mfrow = c(2, 2))
set.seed(1)
hist(rexp(10), main = "saat n = 10")
set.seed(1)
hist(rexp(100), main = "saat n = 100")
set.seed(1)
hist(rexp(1000), main = "saat n = 1000")
set.seed(1)
hist(rexp(10000), main = "saat n = 10000")


# C
rata = 3
cat ("Rataan(??) = ", rata, "\n")
var = lamda*3
cat ("Varian(??²) = ", var, "\n")

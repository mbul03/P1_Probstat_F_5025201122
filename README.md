# P1_Probstat_F_5025201122
Laporan Praktikum Modul 1 Probabilitas dan Statistik 2022
Marsyavero Charisyah Putra - 5025201122

# Soal 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya
## 1.a
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik).
```R
# A
x = 3
p = 0.2
geom = function(x, p){
  return (p * ((1-p)^(x)))
}
print(paste("Peluang = ", geom(x, p)), quote=FALSE)
```
![Hasil](https://user-images.githubusercontent.com/72655925/162618248-1fa399b7-b9ea-4314-9d66-5349cb06b8ed.png)

## 1.b
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 ).
```R
# B
n = 10000
set.seed(1)
x = rgeom(n , p)
mean(x == 3)
```
![hasil](https://user-images.githubusercontent.com/72655925/162618426-db18d1fd-1e49-421e-a972-67664962e5f5.png)
niai mean dapat dicari dengan mencari distribusi geometrik untuk n data kemudian dicari meannya untuk x = 3

## 1.c
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
```R
#C
# Hasil dari perhitungan poin A dan B hanya berselisih tipis, dengan hasil poin A adalah nilai yang konstan sedangkan poin B adalah hasil generasi random.
```
Hasil simulasi yang didapatkan mendekati hasil nyata dengan kesalahan relatif 3,03%

## 1.d
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
```R
# D
hist(x, main = "Histogram Distribusi Geo")
```
![image](https://user-images.githubusercontent.com/72655925/162618710-c5a0ce16-1952-4608-a89f-fd535043218d.png)

## 1.e
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
```R
rata = 1/p
print(paste("Rataan(μ) : ", rata))
var = (1-p)/p^2
print(paste("Varian(σ²) : ", var)
```
![image](https://user-images.githubusercontent.com/72655925/162618924-9892481b-a430-422b-9435-1418fd2d5475.png)

didapat dengan menggunakan rumus
μ = 1/p dan σ² = (1-p)/p^2

# Soal 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
## 2.a
Peluang terdapat 4 pasien yang sembuh
```R
x = 20 #variabel sampel
y = 0.2 #variabel peluang sembuh
z = 0.8 #variabel peluang tidak sembuh didapat dari 1-0,2

# A
print(dbinom(4, x, y))
```
![image](https://user-images.githubusercontent.com/72655925/162624478-abf9d2df-cf63-4d97-8922-c2a9389781db.png)
didapat menggunakan fungsi dbinom
## 2.b
Gambarkan grafik histogram berdasarkan kasus tersebut
```R
# B
pel <- dbinom(1:20, 20, 0.2)
data = data.frame(y=c(pel), x=c(1:20))
barplot(data$y, names.arg=data$x, ylab="Peluang Sembuh", xlab="Jumlah Pasien yang Sembuh")
```
![image](https://user-images.githubusercontent.com/72655925/162620129-7e234a9f-f365-4101-bbbb-c9f41af49e59.png)

## 2.c
Nilai rataan (μ) dan varian (σ²) dari distribusi Binomial
```R
# C
rata = 4*y
cat ("Rataan(μ) = ", rata, "\n")
var = 4*y*z
cat ("Varian(σ²) = ", var, "\n")
```
![image](https://user-images.githubusercontent.com/72655925/162620207-e2fc9848-1bd7-4845-b8fd-40c9d45e2c81.png)

# Soal 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
## 3.a
Peluang bahwa 6 bayi akan lahir di rumah sakit besok
```R
# A
print( dpois (6, 4.5) )
```
![image](https://user-images.githubusercontent.com/72655925/162622596-e87ef80e-342a-4c3d-b5b6-f9b8de8f957f.png)
## 3.b
simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
```R
# B
peluang = dpois (6, 4.5)
data = data.frame(y=c(peluang), x=c(1:365))
barplot(data$y, names.arg=data$x, ylab="Peluang", xlab="Hari ke-", ylim=0:1)
```
![image](https://user-images.githubusercontent.com/72655925/162622949-e77cc61d-b155-4a35-85dc-784bc5394997.png)
## 3.c
Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
```R 
# C
# Hasil a sama b tidak berubah.
```
didapatkan bahwa nilai distribusi poisson tidak berubah dari hari pertama hingga hari terakhir.
## 3.d
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson
```R 
# D
rata = 4.5
var = 4.5
#rataan
cat ("Rataan(μ) = ", rata, "\n")
#varian
cat ("Varian(σ²) = ", var, "\n"
```
![image](https://user-images.githubusercontent.com/72655925/162623150-1ffcc106-a313-49a7-a9cb-cd51e824de60.png)
# Soal 4
Diketahui nilai x = 2 dan v = 10. Tentukan:
## 4.a
Fungsi Probabilitas dari Distribusi Chi-Square.
```R 
#A
x<-2
v<-10
dchisq(2,10)
```
![image](https://user-images.githubusercontent.com/72655925/162624571-e14c221d-fbac-4cad-ba8d-9b14b8147683.png)

## 4.b
Histogram dari Distribusi Chi-Square dengan 100 data random.
```R 
#B
Hasil = rchisq(100, 10)
hist(Hasil)
```
![image](https://user-images.githubusercontent.com/72655925/162624614-c9a81f8b-d804-4c53-9457-06b7ebcfb522.png)
## 4.c
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
```R 
#C
rata = 10
cat ("Rataan(μ) = ", rata, "\n")
var = 2*10
cat ("Varian(σ²) = ", var, "\n")
```
![image](https://user-images.githubusercontent.com/72655925/162624671-9edf81ca-2052-4475-bc48-e56a6208a71b.png)
# Soal 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan:
## 5.a
Fungsi Probabilitas dari distribusi Exponensial
```R 
# A
lamda=3
dexp(3)
```
![image](https://user-images.githubusercontent.com/72655925/162625023-08309433-24c3-43fb-b515-516203acd7c3.png)
## 5.b
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
```R 
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
par(mfrow = c(1, 1))
```
![image](https://user-images.githubusercontent.com/72655925/162625146-1ea1f420-f13d-47cb-9f46-069fc2685774.png)
## 5.c
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
```R 
# C
rata = 3
cat ("Rataan(μ) = ", rata, "\n")
var = lamda*3
cat ("Varian(σ²) = ", var, "\n")
```
![image](https://user-images.githubusercontent.com/72655925/162625246-8e7684fa-18b7-4ef0-b162-68927eae0bc3.png)

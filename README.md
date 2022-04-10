# P1_Probstat_F_5025201122
Laporan Praktikum Modul 1 Probabilitas dan Statistik 2022

## Marsyavero Charisyah Putra - 5025201122

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


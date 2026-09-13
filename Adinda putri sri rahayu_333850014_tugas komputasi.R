#tugas 2 komputasi statistika
#nama:Adinda putri sri rahayu
#nim:3338250014
#kelas:B

# Memanggil package dplyr
library(dplyr)

# Memasukkan data iris
data(iris)


# 1. Menampilkan data Sepal.Length saja
iris %>%
  select(Sepal.Length)


# 2. Menyebutkan tipe data tiap kolom
iris %>%
  summarise(
    Sepal.Length = class(Sepal.Length),
    Sepal.Width = class(Sepal.Width),
    Petal.Length = class(Petal.Length),
    Petal.Width = class(Petal.Width),
    Species = class(Species)
  )


# 3. Membuat variabel turunan dari Sepal.Width
# Besar jika Sepal.Width > 3
# Kecil jika Sepal.Width <= 3

iris <- iris %>%
  mutate(
    turunan = ifelse(Sepal.Width > 3, "Besar", "Kecil")
  )

# Melihat hasilnya
iris


# 4. Mengubah nama variabel turunan menjadi sepal

iris <- iris %>%
  rename(sepal = turunan)

# Melihat hasil
iris


# 5. Mengambil data dengan sepal "Besar"
# dari species virginica

virginica_besar <- iris %>%
  filter(Species == "virginica", sepal == "Besar")

# Menampilkan hasil
virginica_besar


# 6. Mengecek jumlah species dalam data

iris %>%
  count(Species)


# 7. Memecah data iris menjadi 3 data frame
# berdasarkan species

iris_setosa <- iris %>%
  filter(Species == "setosa")

iris_versicolor <- iris %>%
  filter(Species == "versicolor")

iris_virginica <- iris %>%
  filter(Species == "virginica")


# Menampilkan masing-masing data frame

iris_setosa
iris_versicolor
iris_virginica


# 8. Mengurutkan masing-masing data frame
# berdasarkan Sepal.Width

iris_setosa <- iris_setosa %>%
  arrange(Sepal.Width)

iris_versicolor <- iris_versicolor %>%
  arrange(Sepal.Width)

iris_virginica <- iris_virginica %>%
  arrange(Sepal.Width)


# Menampilkan hasil pengurutan

iris_setosa
iris_versicolor
iris_virginica
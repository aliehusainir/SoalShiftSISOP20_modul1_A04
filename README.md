# SoalShiftSISOP20_modul1_A04
Praktikum Modul 1 Sisop 2020<br/>
05111840000051 Juwita Kartika Rani<br/>
05111840000097 Alie Husaini R.<br/>

# Soal 2
## 2a. dan 2b. Membuat password acak sepanjang 28 karakter alfanumerik, hasilnya disimpan ke file .txt
![Screenshot from 2020-02-21 16-33-14](https://user-images.githubusercontent.com/57984390/75024961-e9281080-54cc-11ea-88a8-5811ffb301be.png)<br/>
Pertama-tama, dibuat sebuah array berisi setiap huruf kecil, huruf besar dan angka.<br/>
Kemudian, dilakukan looping sebanyak 28x untuk memilih karakter acak dari array tersebut.<br/>
Terakhir, hasilnya disimpan ke dalam file yang namanya sesuai input argument.<br/>
![Screenshot from 2020-02-21 16-45-35](https://user-images.githubusercontent.com/57984390/75024976-edecc480-54cc-11ea-92dc-0092a5268a4b.png)<br/>
## 2c. Mengenkripsi nama file yang telah dibuat dengan Caesar Cipher
![Screenshot from 2020-02-21 16-48-46](https://user-images.githubusercontent.com/57984390/75024985-f04f1e80-54cc-11ea-9d82-1f5f8cc52e65.png)
Argumen disimpan ke dalam sebuah variabel, lalu dibuat variabel yang berisi `.txt`.<br/>
Nama variabel kedua dipotong dari variabel pertama agar ekstensi tidak ikut terenkripsi.<br/>
Jam disimpan dalam sebuah variabel menggunakan `date +%H`.<br/>
Lalu dibuat 2 array, masing-masing berisi setiap huruf kecil dan setiap huruf besar serta perulangannya.<br/>
Kemudian setiap huruf kecil digeser sejumlah `hour`, dan dilakukan yang sama untuk huruf besar.<br/>
Terakhir, ekstensi dikembalikan ke nama file, dan digunakan `mv` untuk me-rename file awal.
## 2d. Dekripsi file yang telah terenkripsi
![Screenshot from 2020-02-21 16-48-37](https://user-images.githubusercontent.com/57984390/75024984-ef1df180-54cc-11ea-9277-9be3aaf745a4.png)
Kurang lebih sama dengan 2c, hanya saja arah enkripsi dibalik.
# Soal 3

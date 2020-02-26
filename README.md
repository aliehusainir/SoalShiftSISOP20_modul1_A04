# SoalShiftSISOP20_modul1_A04
Praktikum Modul 1 Sisop 2020<br/>
05111840000051 Juwita Kartika Rani<br/>
05111840000097 Alie Husaini R.<br/>
# Soal 1
## 1a. Untuk menampilkan region yang memiliki profit yang paling sedikit
![1a](https://user-images.githubusercontent.com/56763570/75320145-f291df80-5822-11ea-95a4-4aa34a354985.PNG)
-F untuk memisahkan data menjadi kolom-kolom berdasarkan /t (tab). NR == 2 digunakan untuk memulai dari baris ke-2. Membuat variabel dari masing-masing region dan dijumlahkan semua profitnya menurut region masing-masing. Kemudian membuat suatu variabel min yang akan diisikan jumlah profit yang paling sedikit. Kemudian dibandingkan antara region dengan variabel min dan jika region lebih kecil dari mmin maka variabel min diupdate begitu juga dengan varaibel word yang berisi nama region, dan seterusnya sampai ketemu region dengan profit yang paling sedikit.
## 1b. Untuk menampilkan 2 state yang memiliki profit terendah berdasarkan hasil 1a.
![1b](https://user-images.githubusercontent.com/56763570/75320655-038f2080-5824-11ea-8632-77705e8dd368.PNG)
sama dengan cara 1a.
## 1c. Menampilkan 10 nama produk yang memiliki profit paling sedikit berdasarkan hasil 1b.
![1c](https://user-images.githubusercontent.com/56763570/75320816-5e287c80-5824-11ea-89e6-e52ca165d985.PNG)
-F untuk memisahkan data menjadi kolom-kolom berdasarkan /t (tab). NR == 2 digunakan untuk memulai dari baris ke-2. Kemudian dicari nama produk yang state-nya bernama Texas dan dimasukkan ke dalam array yang indexnya adalah nama produk dan isi dari arraynya adalah profit dari produk tersebut. Kemudian di print terlebih dahulu array[i], i. Setelah itu di sort argumen pertama dengan gk-1. Kemudian di print pada baris sebelum sama dengan 10 dan di print.
Hasil akhir sebagai berikut.
![WhatsApp Image 2020-02-25 at 22 34 23](https://user-images.githubusercontent.com/56763570/75319284-34218b00-5821-11ea-88df-db19af31c1a9.jpeg)
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
## 3a. Mengunduh 28 gambar dari link dan membuat log
![Screenshot from 2020-02-21 16-32-50](https://user-images.githubusercontent.com/57984390/75024956-e75e4d00-54cc-11ea-9f70-c00a15dab317.png)
Command `wget` digunakan untuk mengunduh dari link yang sudah disediakan sebanyak 28x.<br/>
Opsi `-O` digunakan untuk menentukan nama file yang diunduh, sedangkan `-a` digunakan untuk menambahkan log baru dari `wget` pada file log.<br/>
Berikut hasil folder `Downloads` setelah `downloader.sh` dijalankan:<br/>
![Screenshot from 2020-02-21 16-41-49](https://user-images.githubusercontent.com/57984390/75024963-ea593d80-54cc-11ea-9f89-5c4e6703c5f6.png)
## 3b. Mengatur crontab untuk mengunduh sesuai jadwal tertentu
![Screenshot from 2020-02-21 16-43-39](https://user-images.githubusercontent.com/57984390/75024972-ed542e00-54cc-11ea-856b-97f08847ce43.png)<br/>
Untuk menjalankan `downloader.sh` setiap 8 jam mulai jam 6.05, `*` pertama yang melambangkan menit di-set menjadi `5`.<br/>
Kemudian `*` kedua yang melambangkan jam di-set menjadi `6-22/8`.<br/>
`*` kelima yang melambangkan hari dalam seminggu diganti menjadi `1-5,7` (Senin-Jumat dan Minggu).<br/>
## 3c. Memindah file duplikat dan file non-duplikat ke folder masing-masing
![Screenshot from 2020-02-21 16-42-10](https://user-images.githubusercontent.com/57984390/75024968-eb8a6a80-54cc-11ea-821e-838abd53ca4d.png)<br/>
Untuk mengetahui file mana yang duplikat, dijalankan command `grep Location Downloads/wget.log > location.log` yang menyimpan detail lokasi pengunduhan file. Apabila ada yang angkanya sama, maka jelas itu duplikat.<br/>
![Screenshot from 2020-02-21 16-32-56](https://user-images.githubusercontent.com/57984390/75024958-e88f7a00-54cc-11ea-943d-ae72e81604e0.png)<br/>
`dupes.awk` adalah perintah awk yang digunakan untuk mengidentifikasi duplikat, dan menghasilkan baris-baris yang berisi duplikat tersebut.<br/>
![Screenshot from 2020-02-21 16-33-37](https://user-images.githubusercontent.com/57984390/75024962-e9c0a700-54cc-11ea-94dc-669d51edfa15.png)<br/>
`dupes.awk` sendiri dijalankan melalui script `relocate.sh` yang menyimpan hasil `dupes.awk` ke dalam array.<br/>
Kemudian setiap file yang memiliki nama `pdkt_kusuma_n` dimana n berupa angka isi dari array hasil awk tadi akan dipindahkan ke folder `duplicate`.<br/>
Setelah semua duplikat dipindahkan, baru sisanya dipindahkan ke folder `kenangan`.<br/>
Hasil akhirnya seperti berikut:<br/>
![Screenshot from 2020-02-21 16-42-28](https://user-images.githubusercontent.com/57984390/75024970-ecbb9780-54cc-11ea-85fb-f62b49b554fb.png)
![Screenshot from 2020-02-21 17-53-23](https://user-images.githubusercontent.com/57984390/75029069-fbf21380-54d3-11ea-88d2-ad438dea9a8d.png)

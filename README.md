# Workspace Main Stage ROS SAUVC 2022 Banyubramanta ITS
Repository Banyubramanta ITS untuk perlombaan Singapore Autonomous Underwater Vehicle Challange (SAUVC) 2022 dengan implementasi Robot Operating System (ROS).

## Catatan
Dibuat dan dikembangkan menggunakan ROS Noetic dari Juni 2022 hingga September 2022 dengan sistem operasi Ubuntu 20.04 LTS. Workspace ini dikembangkan oleh Crew 3,4,dan 5 yang terdiri atas:
1. Muhammad Firman Riyadi  
2. Husnan  
3. Muhammad Ghiffari Astaudi  
4. Azka Bintang Pramudya  
5. Fadhil Rasyidin Parinduri  
6. Alfito Bramoda
7. Rere Arga Dewanata

## Daftar Isi  
- [Spesifikasi Robot](#spesifikasi-robot)  
- [Requirements](#requirements)  
- [Daftar Package](#daftar-package-di-dalam-ros)
- [Penjelasan Tiap Package](#penjelasan-tiap-package)  
- [Cara Labeling Dengan Roboflow](#cara-labeling-dengan-roboflow)  
- [Instruksi Penyambungan STM32 dengan ROS](#instruksi-penyambungan-stm32-dengan-ros)     
- [Instruksi Penyambungan Antara Mini PC dengan Laptop](#instruksi-penyambungan-antara-mini-pc-dengan-laptop)  
- [Tata Cara Melakukan Perekaman Data Log Pada ROS](#tata-cara-melakukan-perekaman-data-log-pada-ros)
- [Kendala dan Solusi](#kendala-dan-solusi)    
- [Kendala dan Solusi di Singapura](#kendala-dan-solusi-di-singapura)  
- [Rekaman Penurunan Ilmu](#rekaman-penurunan-ilmu)

  
## Spesifikasi Robot
Robot yang kami develop pada perlombaan ini dinamakan Narudaka. Berasal dari Bahasa Jawa yang terdiri dari kata "Nara = Raja" dan "Udaka = air" ketika digabung melebur menjadi "NARUDAKA" artinya raja perairan. Narudaka memiliki beberapa komponen inti, yaitu:
1. Mini PC: Intel NUC11PAHi7 (Intel Core i7 Gen 11)
2. Mikrokontroller: STM32F407G
3. Kamera: Rexus Daxa Trusight 
4. Baterai: Li-Po 4 Sel 5000 MAH 2 buah (untuk selain mini pc) & Li-Ion 5 sel 3000 MAH 1 buah (untuk mini pc)  
5. Depth Sensor: MS5837 Blue Robotics  
6. Gyro: GY-25  

## Requirements
1. Sudah terinstall ROS (caranya lihat [disini](https://wiki.ros.org/Installation/Ubuntu))
2. Menginstall seluruh library python yang dibutuhkan oleh YoloV5
   
   `cd src/cv_package/scripts/yolov5`  
   `pip install -r requirements.txt`  
   NB: Pastikan koneksi stabil  
3. Menghapus build yang telah ada   
   Pastikan berada di directory `ROS_SAUVC_2022_Main_WS`    
   Menghapus build yang pernah ada `catkin clean`  
4. Melakukan catkin build  
   `catkin build`  

  
## Daftar Package di Dalam ROS  
[Penjelasan Grafik](https://drive.google.com/file/d/1_YcntQp2rwqfWeKyqn3RxTwLYM25xT1f/view)  

| Nama Package | Fungsi  |
| ----------- | ----------- |
| master_package | Memberikan data input dan data output STM32  |
| cv_package | Penglihatan Komputer |
| mission_package | Menetukan kondisi misi |
| positioning_package | Mapping Lokasi Robot |
| movement_package | Pergerakan Robot |
| servo_package | Pergerakan servo kamera depan |


## Penjelasan Tiap Package
Berikut adalah penjelasan tiap - tiap package yang digunakan (urutan penjalanan program harus sesuai urutan):  

### A.master_package
1. Deskripsi:   
   Package yang digunakan untuk memberikan data input output STM32  
2. Message:   
   master_ros.msg  
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;string ros_movement  
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int16 ros_servo_kamera  
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int64 servo_kamera  
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int64 servo_gripper  
   master_stm32.msg    
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;string stm32_movement  
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int64 stm32_heading  
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int64 stm32_depth  
3. Penjelasan:   
   Pengiriman dan penerimaan data menggunakan PySerial. Dalam penggunaan PySerial, diwajibkan untuk melakukan encode ASCII agar didapatkan nilai yang benar.  
4. Penggunaan:  
   Pastikan berada di directory `ROS_SAUVC_2022_Main_WS`  
   Jalankan command `source devel/setup.bash`  
   Jalankan command `rosrun master_package master_node.py`  
   
### B.cv_package
1. Deskripsi:  
   Package yang digunakan untuk penglihatan komputer untuk mengenali objek rintangan  
2. Message:   
   BoundingBox.msg    
      -  string object_label -> label objek yang terdeteksi  
      -  float64 probability -> probabilitas keyakinan objek yang di-predict oleh model  
      -  int64 xmin_cv -> xmin pada bounding box    
      -  int64 ymin_cv -> ymin pada bounding box  
      -  int64 xmax_cv -> xmax pada bounding box    
      -  int64 ymax_cv -> ymax pada bounding box    
      -  float64 xcenter_cv ->  (xmin_cv + xmax_cv) / 2 untuk mengetahui titik tengah dari bounding box pada sumbu x  
      -  float64 ycenter_cv ->  (ymin_cv + ymax_cv) / 2 untuk mengetahui titik tengah dari bounding box pada sumbu y    
      -  int64 width -> Panjang bounding box (xmax_cv - xmin_cv)  
      -  int64 height -> Lebar bounding box (ymax_cv - ymin_cv)   
3. Penjelasan:    
   Menggunakan YoloV5 untuk mendeteksi objek. Dataset diambil secara manual menggunakan kamera yang diletakkan pada robot. Dataset yang awalnya berupa      video dipecah per frame menjadi beberapa gambar menggunakan python. Setelah dipecah menjadi beberapa gambar, dilakukan labeling menggunakan website      roboflow.   
   Berikut adalah data tabel performa model yang telah dibuat [tabel grafik ini](https://docs.google.com/spreadsheets/d/1157I22orbFMWEaR6L0gVjATIULxJ4jFFhGWhwDqeAGY/edit#gid=0)  
   Robot kita tidak begitu memerlukan FPS yang tinggi karena pergerakan robot kita cukup pelan karena terpengaruh tekanan dan arus bawah air (10-15 FPS itu cukup)
4. Penggunaan:   
   Pastikan berada di directory `ROS_SAUVC_2022_Main_WS/src/cv_package/scripts/yolov5`  
   Jalankan command `python3 detect.py`   
   
### C.positioning_package     
1. Deskripsi:  
   Package yang digunakan untuk mnentukan posisi robot ketika di kolam  
2. Message:
   positioning.msg  
     int16 posisi_x
     int16 posisi_z  
3. Penjelaasan:  
   Menggunakan algoritma odometry buatan sendiri untuk menentukan posisi robot saat ini.    
4. Penggunaan:    
   Pastikan berada di directory `ROS_SAUVC_2022_Main_WS`  
   Jalankan command `source devel/setup.bash`  
   Jalankan command `rosrun positioning_package positioning.py`   

### D. mission_package
1. Deskripsi:  
   Package yang digunakan untuk menentukan keadaan misi.  
2. Message:  
   misi.msg
      int64 misi
      int64 submisi
3. Penjelasan:  
   Menggunakan hasil dari odometry untuk menentukan keadaan misi.   
4. Penggunaan:  
   Pastikan berada di directory `ROS_SAUVC_2022_Main_WS`  
   Jalankan command `source devel/setup.bash`  
   Jalankan command `rosrun mission_package mission_node.py`  
   
### E.movement_package
1. Deskripsi:  
   Package yang digunakan untuk pergerakan robot menggunakan kode huruf satu karakter.
2. Penjelasan:
   case sensitive ya jadi pastikan dalam ros menggunakan HURUF KAPITAL untuk heading: (-) negatif itu ke kanan | (+) positif itu ke kiri
   | Nama Gerakan | Huruf       |
   | -----------  | ----------- |
   | maju 			|A	           |		 
   | mundur			|B            |
   | kanan			|C            |
   | kiri			|D            |
   | pivot45R		|E            |
   | pivot90R		|F            |
   | pivot45L  |G            |
   | pivot90L	|H            |
   | depth40			|I            |
   | depth100		|J            |
   | depth150		|K            |
   | depth180		|L            |
   | stop			|M            |
   | surfacing		|N            |
   | scanning  |S              |
   !!! APABILA PERPINDAHAN GERAKAN WAJIB STOP TERLEBIH DAHULU AGAR THRUSTER AWET !!! 
   
   Terdapat pergerakan membuat persegi sesuai request Bapak pembina kita. Untuk menjalankan program tersebut `rosrun movement kotak_movement.py`
   
3. Penggunaan:  
   Pastikan berada di directory `ROS_SAUVC_2022_Main_WS`
   Jalankan command `source devel/setup.bash`  
   Jalankan command `rosrun movement_package movement_node.py`  -> Autonomous
   Jalankan command `rosrun movement_package keyboard.py`  -> Keyboard
   
   
## Cara Labeling dengan Roboflow  
- Membuat akun roboflow terlebih dahulu  
- Roboflow dpat melakukan labeling secara kolaborasi dengan menginvite email anggota  
- Upload dataset yang sudah diambil ke roboflow (Utamakan namanya unik :) agar tidak mudah ditemukan oleh tim lawan), batas upload 10 ribu gambar    
- Membuat project dengan project Bounding Box  
- Menentukan nama dan index dataset terlebih dahulu  
- lakukan labeling dengan mendrag gambar yang akan ditrain  
- Set data train 70%, validation 15%, test 15%  
- Jika ingin mengubah atau menambahkan dapat mengambil data orang terlebih dahulu kemudian dapat menggunakan fitur preprocessing dengan modified class, menggunakan urutan dan menyesuaikan index di txtnya  
- Setelah terlabeli untuk menambah dataset dapat menggunakan augmentasi dan lakukan pengecekan terlebih dahulu terhadap dataset  
- Augmentasi yang pernah dipakai ( Crop: 0% Minimum Zoom, 10% Maximum Zoom   ; Brightness : Between -5% and +5%  ; Blur : Up to 1px)  
- Cek juga terkait kesehatan dataset atau health dataset , yaitu seimbangnya dataset misalkan 1000 usahakan 900an atau 1000an jangan sampai terlalu jauh perbedaannya 

## Instruksi Penyambungan STM32 dengan ROS  
1. Pastikan memiliki aplikasi STM32CubeIDE  
2. Buatlah sebuah workspace jika belum ada
3. Lakukan git clone pada [Link-ini](https://github.com/BanyubramantaITS/STM32_SAUVC2022_F407) dengan cara  
   `git clone https://github.com/BanyubramantaITS/STM32_SAUVC2022_F407.git`  
4. Buka aplikasi STM32CubeIDE  
5. Lakukan debug dengan menekan tombol serangga di toolbar atas
6. Nyalakan live ekspresion
7. Pencet tombol run  
NB: Untuk info lebih lanjut dapat merujuk pada [link ini](https://github.com/BanyubramantaITS/STM32_SAUVC2022_F407)  

## Instruksi Penyambungan Antara Mini PC dengan Laptop  
Atur IP Mini PC dan laptop berdasarkan link video [ini](https://www.youtube.com/watch?v=ck6wtrkdjzs&ab_channel=DemonKiller).   
Jika sudah terkoneksi, sudah dapat dilakukan wake on lan dan remote dekstop.

Penggunaan Wake On Lan:    
a. Download semua file pada link [ini](https://drive.google.com/drive/folders/1PzbhCUMmDWD-AJTcCxMhVdLwtvLPjTpf?usp=sharing)    
b. Buka aplikasi WakeMeOnLan.exe  
c. Lakukan scanning IP dengan tombol play hijau.  
d. Pilih IP yang sesuai dengan yang telah distel sebelumnya.  
e. Klik kanan pada IP tersebut dan klik "Wake Up Selected Computer".
f. Mini PC berhasil dinyalakan apabila terdapat indikator LED biru.  
f. Tunggu selama 15 - 20 detik agar memberikan waktu mini pc untuk booting. 
g. Setelah itu, baru boleh menggunakan remote desktop.  
   
Remote Desktop:  
a. Boot dengan Windows 10 atau Windows 11.  
b. Isikan kolom komputer dengan IP yang telah disetting sebelumnya.  
c. Jika ingin berjalan lebih ringan, ubah settingan di kolom display pada kolom colors menjadi High Color(15 bit).  
d. Klik tombol connect  
e. Masukkan Username dan Password mini pc dengan semuanya huruf kecil.  

Tata Cara Menonaktifkan Mini PC: 
1. Terminate seluruh tab terminal dengan menekan ctrl+c (Sesuai dengan urutan movement->positioning->vision->master->roscore).   
2. Hentikan pengoperasian STM32 dengan menekan tombol terminate (kotak merah).  
3. Exit dari semua aplikasi yang sebelumnya telah dibuka.  
4. Shutdown dengan cara biasanya.   

## Tata Cara Melakukan Perekaman Data Log Pada ROS
1. Pastikan telah menjalankan seluruh command pada semua package diatas
2. Buka tab di terminal baru `rosbag record -a`.  
3. Jika sudah, dapat melakukan `ctrl+c` pada tab record tadi.
4. File tadi akan tersimpan dalam ekstensi `.bag`
5. File ini dapat dimainkan dengan cara `rosbag play [nama file .bag]`
6. Bukan fungsi `rosnode list` dan `rostopic list`.  
   
## Kendala dan Solusi  
1. Kendala:  
   ROS dan YOLOv5 tidak mau mem-publish nilai yang benar ketika digunakan oleh node yang berbeda.  
   Solusi:  
   Gunakan `rospy.Rate(100)` pada file `detect.py` yang semula hanya bernilai 10.  
   
2. Kendala:  
   Pada `Pip install -r requirements.txt` gagal.  
   Solusi:  
   Ulangi lagi proses tersebut dengan koneksi yang lebih stabil.  
   
3. Kendala:  
   Pada Python tidak bisa membaca modul library Serial  
   Solusi:  
   Uninstall library tersebut dan ulangi dengan perintah `sudo python -m pip install pyserial`. ([sumber](https://stackoverflow.com/questions/11403932/python-attributeerror-module-object-has-no-attribute-serial)) 
   
4. Kendala:  
   Library python "Keyboard" harus berjalan ketika sudo. Ketika menjalankan perintah `sudo python3 ....` malah justru rospy tidak terdeteksi. 
   Solusi:  
   Menggunakan python library "getch"  
   
5. Kendala:  
   Repo ini pernah hilang history semua commit-nya.  
   Solusi:  
   Jangan pernah menggunakan `git commit -f` karena akan mereplace history pada repo ini menjadi repo lokal.
   
6. Kendala:    
   Variabel atau message tidak terbaca atau terpublish.    
   Solusi:    
   Memastikan semua message atau variabel disesuaikan urutan dan sudah terpublish maaupun tersubscribe. Untuk kendala nomor 6 dapat dicoba        terlebih dahulu sebelum ke tempat trial untuk efisiensi waktu  
   
7. Kendala:    
   Terdapat delay antara program karena subscribing berkali-kali  
   Solusi:    
   Keluarkan deklarasi subscriber dari while      
   
8. Kendala:  
   Kamera terlalu tinggi exposure-nya.  
   Solusi:  
   Menggunakan ND Filter atau menurunkan dengan obs.  
   
9. Kendala:  
   `Catkin Build` tidak bisa digunakan karena command not found.  
   Solusi:  
   Menjalankan command `sudo apt-get install python3-catkin-tools` untuk menginstall catkin-tools.  
   
## Kendala dan Solusi di Singapura     
1. Kendala:  
   Pembacaan depth sensor mengalami kesalahan ketika 3 digit
   Solusi:
   Mencoba semua kemungkinan yang akan ada. Hal ini dapat terjadi karena selama ini depth hanya bisa membaca 2 digit selama di puker.   
   
2. Kendala:  
   Mengganti nilai variabel ketika di samping kolam pas lomba susah  
   Solusi:  
   Lebih prepare ketika sebelum berangkat ke main stage atau membuat beberapa program dengan variabel yang berbeda. Membuat program open loop
   sebagai cadangan.   
   
3. Kendala:    
   Servo kamera putus sehingga tidak bisa mengambil dataset.      
   Solusi:   
   Mempersiapkan spare sparepart. Akan tetapi, kami tetap dapat mengambil dataset dari panitia selama 1 menit.    

4. Kendala:  
   Minimnya link penyelesaian masalah    
   Solusi:     
   Menambahkan link yang dapat menyelesaikan permasalahan pada readme.     

5. Kendala:    
   Hasil pendeteksian tidak valid karena props dari rulebook berbeda dengan real-life.      
   Solusi:      
   Mengambil dataset baru ketika hari-h(running test).
   
## Rekaman Penurunan Ilmu
1. ROS:    https://drive.google.com/drive/folders/1meryANbCTKu3QCdOLsgfH-7Zj-HfMsAd?usp=sharing
2. Vision: https://drive.google.com/file/d/1rsrxlHd_GfA7oRx8_ec4-OzL_cBGpoL8/view?usp=sharing


##  Kata Mutiara

Jadi pioneer memang tidak mudah, Tapi akan jadi pijakan kuat buat generasi selanjutnya 🏆

By: Sipaling ...

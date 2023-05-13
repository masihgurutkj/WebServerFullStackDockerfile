<h2>Proses Langkahnya:</h2> 
- Terinstall Docker di Sistem Operasi/Host nya<br/>
- Kemudian jalankan perintah: <br/>
<b>docker-compose up</b>  #<i>dari shell di dalam direktori proyek ini setelah mengkloningnya.</i><br/>
- Jika terdapat error: <br/><b>"Fatal error: Uncaught Error: Call to undefined function mysqli_connect() in /var/www/html/index.php:3 Stack trace: #0 {main} thrown in /var/www/html/index.php on line 3"</b><br/>
- Buka terminal interaktif dengan Container Docker untuk menjalankan Layanan Web "www" dengan perintah: <br/>
<b>docker-php-ext-install mysqli && docker-php-ext-enable mysqli && apachectl restart</b>

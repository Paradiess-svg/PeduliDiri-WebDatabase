<?php

$nik		= $_POST['nik'];
$nama = $_POST['nama'];

include'koneksi.php';
$query_validasi = "SELECT*FROM users WHERE nik='$nik'";
$query = mysqli_query($koneksi, $query_validasi);

if(mysqli_num_rows($query)==0){
	$query_register = mysqli_query($koneksi, "INSERT INTO users(nik,nama) VALUES('$nik','$nama')");
	if($query_register){ ?>
		<script>
			alert("Data Tersimpan, Terima kasih Sudah Menggunakan Aplikasi Kami");
			window.location.assign("index.php");
		</script>
	<?php }
}else{ ?>
	<script>
		alert("NIK Yang Anda Gunakan Sudah Terdaftar");
		window.location.assign("register.php");
	</script>
<?php
}
<?php

$nik		= $_POST['nik'];
$nama = $_POST['nama'];

include'koneksi.php';
$query = mysqli_query($koneksi,"SELECT*FROM users WHERE nik='$nik' AND nama='$nama'");
if(mysqli_num_rows($query)==0){ ?>
	<script>
		alert("NIK dan Nama Lengkap tidak ditemukan.");
		window.location.assign("index.php");
	</script>
<?php
}else{
	session_start();
	$_SESSION['nik'] = $nik;
	$_SESSION['nama'] = $nama;

	header("location:user.php");
}
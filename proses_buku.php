<?php
include "koneksi.php";

$kode		= $_POST['kode'];
$judul		= $_POST['judul'];
$pengarang	= $_POST['pengarang'];
$jenis		= $_POST['jenis'];
$penerbit	= $_POST['penerbit'];


$query = mysqli_query($conn,'INSERT INTO buku(kd_buku,judul_buku,pengarang,jenis_buku,penerbit) VALUES ("'.$kode.'","'.$judul.'","'.$pengarang.'","'.$jenis.'","'.$penerbit.'")');
if ($query) {
echo "<script>alert('data berhasil disimpan');
document.location.href='buku.php'</script>\n";
} else {
echo "<script>alert('data gagal disimpan');
document.location.href='input_buku.php'</script>\n";
}
?>
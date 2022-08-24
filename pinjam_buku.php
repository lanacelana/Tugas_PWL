<html>
<head>
  <script>
    function  showHint(str){
      if(str.lenght == 0){
        document.getElementById("txtHint").innerHTML = "";
        return;
      } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            document.getElementById("txtHint").innerHTML= this.responseText;
          }
        };
        xmlhttp.open("GET","gethint.php?q="+str,true);
        xmlhttp.send();
      }
      }

  </script>
</head>
<body>
<table width="700" border="1">
  <tr>
    <td colspan="2" align="center"><h1>Selamat Datang Di Sistem Perpustakaan</h1></td>
  </tr>
<tr>
<td width = "200">
  <ul>
    <li><a href="anggota.php">Anggota</a></li>
    <li><a href="buku.php">Buku</a></li>
    <li><a href="pinjam.php">Pinjam</a></li>
  <ul>
</td>
<td width="500">
<?php include "koneksi.php";?>
<form method="post" action="proses_pinjam.php" >
<table border="0">
<tr>
  <td><label for="fname"> Nama Peminjam : </label>
    <input type="text" id="fname" name="fname" onkeyup="showHint(this.value)"> </td>
</tr>
<tr>
  <td><label for="jbuku"> Judul Buku  : </label>
    <input type="text" id="jbuku" name="jbuku" onkeyup="showHint(this.value)"> </td>
</tr>
<tr>
  <td><label for="">Tgl Kembali : </label></td>
  <td><input type="date" name="tgl_kembali"></td>
</tr>


<tr>
<td><input type="submit" name="simpan" value="simpan"></td>
</tr>

</table>
</form>
</td>
</tr>
<tr>
<td colspan="2" align="center">ICHWAN MAULANA<br></td>
</tr>
</table>

</body>
</html>

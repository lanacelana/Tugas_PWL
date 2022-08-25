<table width="1000" border="1">
<tr>
<td colspan="2" align="center"><h1>Sistem Informasi Perpustakaan</h1></td>
</tr>

<td width = "200">
    <ul>
      <li><a href="anggota.php">Anggota</a></li>
      <li><a href="buku.php">Buku</a></li>
      <li><a href="pinjam.php">Pinjam</a></li>
    <ul>
</td>
<td width="500">
<a href="input_anggota.php">Register </a>
<table class="table table-striped table-bordered" border="1">
  <thead>
          <tr>
            <th >No</th>
            <th >nama anggota </th>
            <th >alamat </th>
            <th >TTl </th>
            <th >Status</th>
            <th >Aksi</th>
          </tr>
    </thead>
    <tbody>
        <?php
        $no = 1;
        $koneksi = mysqli_connect("localhost", "root", "B1dPd4!!", "perpus");

        $keyword="";
        if (isset($_POST['search'])) {
            $keyword = $_POST['search'];
        }

        $query = mysqli_query($koneksi,"SELECT * FROM anggota WHERE nm_anggota LIKE '%".$keyword."%' OR alamat LIKE '%".$keyword."%' ORDER BY id_anggota DESC");
        $hitung_data = mysqli_num_rows($query);
        if ($hitung_data > 0) {
            while ($data = mysqli_fetch_array($query)) {
                ?>
                <tr class="odd gradeX">
                  <td><?php echo $no?></td>
                  <td><?php echo $data['nm_anggota'];?></td>
                  <td><?php echo $data['alamat'];?></td>
                  <td><?php echo $data['ttl_anggota'];?></td>
                  <td class="center"><?php echo $data['status_anggota'];?></td>
                  <td class="center"><a href="edit_anggota.php?id=<?php echo $data['id_anggota']; ?>" > Edit </a>|<a href="hapus_anggota.php?id=<?php echo $data['id_anggota']; ?>"
                  onClick = "return confirm('Apakah Anda ingin mengapus  <?php echo $data['nm_anggota']; ?>?')"> hapus</a></td>
                </tr>
            <?php } } else { ?>
                <tr>
                    <td colspan='4' class="text-center">Tidak ada data ditemukan</td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
    <tr>
    <td colspan="2" align="center">ICHWAN MAULANA<br></td>
    </tr>
    </table>

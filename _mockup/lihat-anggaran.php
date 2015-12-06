<?php include("head.php") ?>
<?php include("header.php") ?>

<div class="row">
    <div class="col-md-offset-2 col-md-8 text-center">
        <h1>LIHAT ANGGARAN</h1>
        <br>
        <p>Barang yang terindikasi korupsi secara otomatis akan dihighlight berwarna merah. KPK dapat memvalidasi apakah terdapat indikasi korupsi atau tidak
        dengan menceklis pengadaan barang yang terindikasi.</p>
        <div class="table-responsive text-center">
            <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Nomor</th>
                    <th>Barang</th>
                    <th>Kelas Barang</th>
                    <th>Harga Barang</th>
                    <th>Jumlah</th>
                    <th>Total</th>
                    <th>Pengguna</th>
                    <th>Terindikasi Korupsi</th>
                    <th>Edit Anggaran</th>
                </tr>
            </thead>
            <tbody>
                <tr class="danger">
                    <td>1</td>
                    <td>Laptop</td>
                    <td>1</td>
                    <td>10.000.000</td>
                    <td>10</td>
                    <td>100.000.000</td>
                    <td>Anggota DPR</td>
                    <td><input name="item-1" id="item-1" type="checkbox" checked/></td>
                    <td><a class="btn btn-primary" href="/input-anggaran.php">Edit</a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>UPS</td>
                    <td>1</td>
                    <td>100.000.000</td>
                    <td>100</td>
                    <td>10.000.000.000</td>
                    <td>Sekolah SMA</td>
                    <td><input name="item-2" id="item-2" type="checkbox"/></td>
                    <td><a class="btn btn-primary" href="/input-anggaran.php">Edit</a></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Alat Gym</td>
                    <td>3</td>
                    <td>10.000.000</td>
                    <td>2</td>
                    <td>20.000.000</td>
                    <td>Sekolah SMK</td>
                    <td><input name="item-3" id="item-3" type="checkbox"/></td>
                    <td><a class="btn btn-primary" href="/input-anggaran.php">Edit</a></td>
                </tr>
            </tbody>
            </table>
        </div>
        <div class="text-right">
            <button>Submit indikasi korupsi!</button>
        </div>
    </div>
</div>

<?php include("foot.php") ?>
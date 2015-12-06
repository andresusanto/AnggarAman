<?php include("head.php") ?>
<?php include("header.php") ?>

<div class="row">
    <div class="col-md-offset-4 col-md-4 text-center">
        <h1>INPUT ANGGARAN</h1>
        <br>
        <form role="form">
            <div class="form-group">
                <label for="item">Barang :</label>
                <select class="form-control" name="item" id="item">
                    <option>Laptop</option>
                    <option>UPS</option>
                    <option>Sofa</option>
                    <option>Mobil dinas</option>
                </select>
            </div>

            <div class="form-group">
                <label for="price">Harga :</label>
                <div class="input-group"> 
                    <span class="input-group-addon">Rp</span>
                    <input type="number" value="1000" min="0" step="0.01" data-number-to-fixed="2" data-number-stepfactor="100" class="form-control currency" id="price" naem="price" />
                </div>
            </div>

            <div class="form-group">
                <label for="number">Jumlah Barang :</label>
                <input type="text" class="form-control" id="number">
            </div>
            <div class="form-group">
                <label for="user">Pengguna :</label>
                <select class="form-control" name="user" id="user">
                    <option>Anggota DPR</option>
                    <option>Anggota DPRD</option>
                    <option>Pelajar SMA</option>
                    <option>Pelajar SMP</option>
                </select>
            </div>
            <button type="submit" class="btn btn-lg">Login</button>
        </form>
    </div>
</div>

<script type="text/javascript">
webshims.setOptions('forms-ext', {
    replaceUI: 'auto',
    types: 'number'
});
webshims.polyfill('forms forms-ext');
</script>

<?php include("foot.php") ?>
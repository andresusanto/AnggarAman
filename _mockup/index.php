<?php include("head.php") ?>
<?php include("header.php") ?>

<div class="row">
    <div class="col-md-offset-4 col-md-4 text-center">
        <h1>LOGIN</h1>
        <br>
        <form role="form">
            <div class="bg-danger" style="padding: 10px 0px">
                Username atau password anda salah.
            </div>
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="username" class="form-control" id="username">
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" id="pwd">
            </div>
            <button type="submit" class="btn btn-lg">Login</button>
        </form>
    </div>
</div>

<?php include("foot.php") ?>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>CodeIgniter Uniga</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1 class="page-header text-center">Data Pegawai PT. JayaWijaya</h1>
		<div class="row">
			<div class="col-sm-4 col-sm-offset-4">
				<h3>Tambah Data 
				<span class= "pull-right"><a hfer = "<?php echo base_url(); ?>" class= "btn btn-primary"><span class="glyphicon glyphicon-arrow-left"></span> Back</a></span>
				</h3>
			<hr>
			<form method="POST" action="<?php echo base_url(); ?>index.php/tampil/insert">
				<div class="form-group">
					<label>ID :</label>
					<input type="text" class="form-control" name="iduser">
				</div>
				<div class="form-group">
					<label>Username :</label>
					<input type="text" class="form-control" name="username">
				</div>
				<div class="form-group">
					<label>Password :</label>
					<input type="text" class="form-control" name="password">
				</div>
				<div class="form-group">
					<label>Nama Lengkap :</label>
					<input type="text" class="form-control" name="nama_lengkap">
				</div>
				<div class="form-group">
					<label>Divisi :</label>
					<input type="text" class="form-control" name="divisi">
				</div>
				<div class="form-group">
					<label>No.Rekening :</label>
					<input type="text" class="form-control" name="no_rek">
				</div>
				<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Save</button>
			</form>
			</div>
		</div>
</body>
</html>

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
			<div class="col-sm-8 col-sm-offset-2">
			<a class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Add New </a><br><br>

			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Username</th>
						<th>Nama Lengkap</th>
						<th>Divisi</th>
						<th>No. Rekening</th>
						<th>Opsi</th>
					</tr>
				</thead>
				<tbody>
					<?php
						foreach ($user as $pegawai) {
					?>
					<tr>
						<td><?php echo $pegawai->iduser; ?></td>
						<td><?php echo $pegawai->username; ?></td>
						<td><?php echo $pegawai->nama_lengkap; ?></td>
						<td><?php echo $pegawai->divisi; ?></td>
						<td><?php echo $pegawai->no_rek; ?></td>
						<td>

						<a class="btn btn-success"><span class="glyphicon glyphicon-edit"></span> Edit</a>

						<a class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Delete</a></td>
					</tr>

					<?php
						}
					?>
				
				</tbody>
			</table>
			</div>
		</div>
</body>
</html>
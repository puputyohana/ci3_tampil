<?php
	class tampil_model extends CI_Model {
		function __construct(){
			parent::__construct();
			$this->load->database();
		}
		public function getAllUsers(){
			$query =  $this->db->get('user');
			return $query->result();
		}
		
		public function insertuser($pegawai){ //insertuser harus sesuai di tampil.php
			return $this->db->insert('user', $pegawai); //user adalah nama tabel di db
		}
	}
?>

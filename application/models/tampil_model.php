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
	}
?>
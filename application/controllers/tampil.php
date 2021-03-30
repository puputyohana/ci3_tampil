<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class tampil extends CI_Controller {

	function __construct(){

		parent::__construct();
		$this->load->helper('url');
		$this->load->model('tampil_model');

	}
	public function index()
	{
		$data['user'] = $this->tampil_model->getAllUsers();
		$this->load->view('tampil_view', $data);
	}
	public function addnew(){
		$this->load->view('addform.php');
	}
		public function insert(){
		$pegawai['iduser'] = $this->input->post('iduser');
		$pegawai['username'] = $this->input->post('username');
		$pegawai['password'] = $this->input->post('password');
		$pegawai['nama_lengkap'] = $this->input->post('nama_lengkap');
		$pegawai['divisi'] = $this->input->post('divisi');
		$pegawai['no_rek'] = $this->input->post('no_rek');

		$query = $this->tampil_model->insertuser($pegawai);

		if($query){
			header('location:'.base_url().$this->index());
		}
	}
}

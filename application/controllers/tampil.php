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
}

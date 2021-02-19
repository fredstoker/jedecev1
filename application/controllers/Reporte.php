<?php 

class Reporte extends CI_Controller
{
	
	function index()
	{
		if ($_SESSION['nombre']==""){
			header("location:".base_url());
		}
		$this->load->view('templates/header');
		$this->load->view('reportes');
		$this->load->view('templates/footer');
    }
}
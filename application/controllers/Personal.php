<?php 

class Personal extends CI_Controller
{
	
	function index()
	{
		if ($_SESSION['nombre']==""){
			header("location:".base_url());
		}
		$this->load->view('templates/header');
		$this->load->view('personal');
		$this->load->view('templates/footer');
	}
	public function insertar(){
		$this->load->model('PersonalM');
		$this->PersonalM->insertar();
	}
	function modificar(){
		$this->load->model('PersonalM');
		$this->PersonalM->modificar();
	}
    function eliminar($id){
		$this->load->model('PersonalM');
		$this->PersonalM->eliminar($id);
	}
    
}  
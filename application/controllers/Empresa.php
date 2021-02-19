<?php 

class Empresa extends CI_Controller
{
	
	function index()
	{
		if ($_SESSION['nombre']==""){
			header("location:".base_url());
		}
		$this->load->view('templates/header');
		$this->load->view('empresa');
		$this->load->view('templates/footer');
	}
	public function insertar(){
		$this->load->model('EmpresaM');
		$this->EmpresaM->insertar();
	}
	function modificar(){
		$this->load->model('EmpresaM');
		$this->EmpresaM->modificar();
	}
    function eliminar($id){
		$this->load->model('EmpresaM');
		$this->EmpresaM->eliminar($id);
	}
}  
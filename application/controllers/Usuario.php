<?php 

class Usuario extends CI_Controller
{
	
	function index()
	{
		if ($_SESSION['nombre']==""){
			header("location:".base_url());
		}
		$this->load->view('templates/header');
		$this->load->view('usuarios');
		$this->load->view('templates/footer');
	}
	public function insertar(){
		$this->load->model('UsuarioM');
		$this->UsuarioM->insertar();
	}
	function modificar(){
		$this->load->model('UsuarioM');
		$this->UsuarioM->modificar();
	}
    function eliminar($id){
		$this->load->model('UsuarioM');
		$this->UsuarioM->eliminar($id);
	}
}  
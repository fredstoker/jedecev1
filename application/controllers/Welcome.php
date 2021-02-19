<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{
		
		$this->load->view('welcome_message');
		
		
	}
	public function verificar(){
		$this->load->model('UsuarioM');
		$this->UsuarioM->verificar();
	}
	public function salir(){
		session_destroy();
		header("Location: ".base_url());
	}
}

<?php
class UsuarioM extends CI_Model
{
	
	function verificar()
	{
		$nombre=$_POST['usuario'];
        $contraseña=$_POST['contraseña'];
        $pass=md5($contraseña);
		$query=$this->db->query("SELECT * FROM usuarios WHERE usuario='$nombre' AND contraseña='$pass'");
		if($query->num_rows()==1){
			$row=$query->row();
			$_SESSION['ci']=$row->ci;
            $_SESSION['nombre']=$row->nombres;
            $_SESSION['rol']=$row->rol;
			header("location: ".base_url()."Main");
		}else{
			header("location: ".base_url()."");
		}
	}
	function insertar(){
		$ci=$_POST['ci'];
		$nombre=$_POST['nombre'];
		$apePat=$_POST['apePat'];
		$apeMat=$_POST['apeMat'];
		$direccion=$_POST['direccion'];
		$cargo=$_POST['cargo'];
		$cel=$_POST['cel'];
		$user=$_POST['user'];
		$contraseña=$_POST['contraseña'];
		$pass=md5($contraseña);
		$cadena=$_POST['browser'];
		$rol=$cadena[0];
		$this->db->query("INSERT INTO usuarios SET ci='$ci', nombres='$nombre', apPaterno='$apePat', apMaterno='$apeMat', direccion='$direccion', cargo='$cargo', telCel='$cel', usuario='$user', contraseña='$pass',rol='$rol'");
		header("location: ".base_url()."Usuario");
	}
	function modificar(){
		$ci=$_POST['ci'];
		$nombre=$_POST['nombre'];
		$apePat=$_POST['apePat'];
		$apeMat=$_POST['apeMat'];
		$direccion=$_POST['direccion'];
		$cargo=$_POST['cargo'];
		$cel=$_POST['cel'];
		$user=$_POST['user'];
		$contraseña=$_POST['contraseña'];
		$cadena=$_POST['browser'];
 		$this->db->query("UPDATE usuarios SET nombres='$nombre', apPaterno='$apePat', apMaterno='$apeMat', direccion='$direccion', cargo='$cargo', telCel='$cel', usuario='$user', contraseña='$contraseña',rol='$cadena' WHERE ci='$ci'");
 		header("location: ".base_url()."Usuario");
 	}
	function eliminar($id){
		$this->db->query("DELETE FROM usuarios WHERE ci='$id'");
		header("location: ".base_url()."Usuario");
	}
}

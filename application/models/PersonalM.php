<?php
class PersonalM extends CI_Model
{
    function insertar(){
		$ci=$_POST['ci'];
		$nombre=$_POST['nombre'];
		$apellidos=$_POST['ape'];
		$direccion=$_POST['direccion'];
		$cel=$_POST['cel'];
		$sexo=$_POST['sexo'];
        $lugarser=$_POST['lugarSer'];
        $tdi=$_POST['TDI'];
		$horario=$_POST['horario'];
        $ap=$_POST['AP'];
        $empresa=$_POST['empresa'];
		$this->db->query("INSERT INTO personal SET ci='$ci', nombre='$nombre', apellidos='$apellidos', direccion='$direccion', celular='$cel', sexo='$sexo', lugarSer='$lugarser',TDI='$tdi', horarios='$horario', AP='$ap', empresa='$empresa'");
		header("location: ".base_url()."Personal");
	}
	function modificar(){
		$ci=$_POST['ci'];
		$nombre=$_POST['nombre'];
		$apellidos=$_POST['ape'];
		$direccion=$_POST['direccion'];
		$cel=$_POST['cel'];
		$sexo=$_POST['sexo'];
        $lugarser=$_POST['lugarSer'];
        $tdi=$_POST['TDI'];
		$horario=$_POST['horario'];
        $ap=$_POST['AP'];
        $empresa=$_POST['empresa'];
 		$this->db->query("UPDATE personal SET nombres='$nombre', apPaterno='$apePat', apMaterno='$apeMat', direccion='$direccion', cargo='$cargo', telCel='$cel', usuario='$user', contraseña='$contraseña',rol='$cadena' WHERE ci='$ci'");
 		header("location: ".base_url()."Personal");
 	}
	function eliminar($id){
		$this->db->query("DELETE FROM personal WHERE ci='$id'");
		header("location: ".base_url()."Personal");
	}
}
	
<?php
class EmpresaM extends CI_Model
{
    function insertar(){
		$nombre=$_POST['nombre'];
		$direccion=$_POST['direccion'];
		$gerente=$_POST['gerente'];
		$servicios=$_POST['servicios'];
		$cel=$_POST['cel'];
		$foto=$_FILES["foto"]["name"];
		$ruta=$_FILES["foto"]["tmp_name"]; 
		$destino="img/".$foto;
		copy($ruta,$destino);
		$this->db->query("INSERT INTO empresa SET nombre='$nombre', direccion='$direccion', gerente='$gerente', servicos='$servicios', telCel='$cel', foto='$destino'");
		header("location: ".base_url()."Empresa");
    }
    function modificar(){
        $nit=$_POST['nit'];
		$nombre=$_POST['nombre'];
		$direccion=$_POST['direccion'];
		$gerente=$_POST['gerente'];
		$servicios=$_POST['servicios'];
		$cel=$_POST['cel'];
 		$this->db->query("UPDATE empresa SET nombre='$nombre', direccion='$direccion', gerente='$gerente', servicos='$servicios', telCel='$cel' WHERE nit='$nit'");
 		header("location: ".base_url()."Empresa");
 	}
	function eliminar($id){
		$this->db->query("DELETE FROM empresa WHERE nit='$id'");
		header("location: ".base_url()."Empresa");
	}
}
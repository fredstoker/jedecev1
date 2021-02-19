<div class="botones">
<button type="button" class="btn btn-success" data-toggle="modal" data-target="#insertar" data-whatever="@mdo">Registrar Personal</button><br><br>
 <form role="search" method="POST" action="">
        <label for="message-text" class="col-sm-1 col-form-label">Empresa:</label>
        <input class="col-sm-2 col-form-label" type="text" name="EMP" id="busqueda" placeholder="Escriba el nombre...">
 </form>
</div>

<?php
      $host ='localhost';
      $basededatos = 'seguridad';
      $usuario = 'root';
      $contraseña = '';
      
      $conexion = new mysqli($host, $usuario,$contraseña, $basededatos);
      if ($conexion -> connect_errno)
      {
        die("Fallo la conexion:(".$conexion -> mysqli_connect_errno().")".$conexion-> mysqli_connect_error());
      }
      
      //////////////// VALORES INICIALES ///////////////////////
      
      $tabla="";
      $query="SELECT * FROM personal";
      
      if(isset($_POST['EMP']))
      {
        $q=$conexion->real_escape_string($_POST['EMP']);
        $query="SELECT * FROM personal WHERE 
          empresa LIKE '%".$q."%'";
      }
      $buscarAlumnos=$conexion->query($query);
if ($buscarAlumnos->num_rows > 0)
{
	$tabla.= 
	'<table class="table">
    <tr class="bg-success">
      <td>CI</td>
      <td>Nombre</td>
      <td>Apellidos</td>
      <td>Direccion</td>
      <td>Celular</td>
			<td>Sexo</td>
			<td>Lugar de servicio</td>
      <td>Tipo de Identificacion</td>
      <td>Horario de Trabajo</td>
      <td>Antecedentes Policiales</td>
      <td>Empresa</td>
      <td>Opciones</td>
		</tr>';

	while($filaAlumnos= $buscarAlumnos->fetch_row())
	{	
		$tabla.=
		'<tr>
			<td>'.$filaAlumnos[0].'</td>
			<td>'.$filaAlumnos[2].'</td>
      <td>'.$filaAlumnos[1].'</td>
      <td>'.$filaAlumnos[3].'</td>
      <td>'.$filaAlumnos[4].'</td>
      <td>'.$filaAlumnos[5].'</td>
      <td>'.$filaAlumnos[6].'</td>
      <td>'.$filaAlumnos[7].'</td>
      <td>'.$filaAlumnos[9].'</td>
      <td>'.$filaAlumnos[10].'</td>
      <td>'.$filaAlumnos[11].'</td>
      <td>
        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#modificar" 
        data-1='.$filaAlumnos[0].'
        data-2='.$filaAlumnos[2].'
        data-3='.$filaAlumnos[1].'
        data-4='.$filaAlumnos[3].'
        data-5='.$filaAlumnos[4].'
        data-6='.$filaAlumnos[5].'
        data-7='.$filaAlumnos[6].'
        data-8='.$filaAlumnos[7].'
        data-9='.$filaAlumnos[9].'
        data-10='.$filaAlumnos[10].'
        data-0='.$filaAlumnos[11].'
        ><i class="fa fa-pencil"></i></button>
        <a class="btn btn-danger eli" href="'.base_url().'Personal/eliminar/'.$filaAlumnos[0].'"><i class="fa fa-trash"></i></a>
      </td>
		 </tr>
		';
	}

	$tabla.='</table>';
  } else
    {
      $tabla="No se encontraron coincidencias con sus criterios de búsqueda.";
    }

    echo $tabla;
?>
<section id="tabla_resultado">
		
</section>

<div class="modal fade" id="insertar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Nuevo Personal</h5>
      </div>
      <div class="modal-body">
        <form method="POST" action="<?=base_url()?>Personal/insertar" enctype="multipart/form-data">
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label">CI</label>
            <input type="text" class="form-control" name="ci" id="inputPassword" placeholder=" carnet">
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label">Nombre</label>
            <input type="text" class="form-control" name="nombre" id="inputPassword" placeholder=" nombre">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Apellidos:</label>
            <input type="text" class="form-control" name="ape" id="recipient-name" placeholder=" apellidos"> 
          </div>          
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Direccion:</label>
            <input type="text" class="form-control" name="direccion" id="recipient-name" placeholder=" direccion">
          </div>          
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Celular:</label>
            <input type="text" class="form-control" name="cel" id="recipient-name" placeholder=" celular">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Sexo:</label>
            <input type="radio" class="col-form-label" name="sexo" value="M"> Masculino  &nbsp;  &nbsp;
            <input type="radio" class="col-form-label" name="sexo" value="F"> Femenino
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Lugar de Servicio:</label>
            <input type="text" class="form-control" name="lugarSer" id="recipient-name" placeholder=" donde trabaja">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Tipo de Identificacion:</label>
            <input type="text" class="form-control" name="TDI" id="recipient-name" placeholder=" tipo">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Horario:</label>
            <input type="text" class="form-control" name="horario" id="recipient-name" placeholder=" horario">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Antecedentes Policiales:</label>
            <input type="text" class="form-control" name="AP" id="recipient-name" placeholder=" tiene">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Empresa:</label>
            <input list="browsers" name="empresa" id="browser" placeholder=" eliga la empresa">
              <datalist id="browsers">
                <option value="ARMUS">
                <option value="EMSEP-KM">
                <option value="Multiservicios 'VARDEL'">
                <option value="SECRET LINE">
              </datalist>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <button type="submit" class="btn btn-success">Registrar</button>
          </div>
        </form>
      </div>
      
    </div>
  </div>
</div>

<div class="modal fade" id="modificar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modificar Personal</h5>
      </div>
      <div class="modal-body">
        <form method="POST" action="<?=base_url()?>Personal/modificar" enctype="multipart/form-data">
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label" hidden>CI</label>
            <input type="text"  name="ci" id="m1" placeholder="" hidden>
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label">Nombre</label>
            <input type="text"  name="nombre" id="m2" placeholder="">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Apellidos:</label>
            <input type="text"  name="ape" id="m3" placeholder=""> 
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Direccion:</label>
            <input type="text"  name="direccion" id="m4" placeholder="">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Celular:</label>
            <input type="text"  name="cel" id="m5" placeholder="">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Sexo:</label>
            <input type="text"  name="sexo" id="m6" placeholder="">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Lugar de Servicio:</label>
            <input type="text"  name="lugarser" id="m7" placeholder="">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Tipo de identificacion:</label>
            <input type="text"  name="tdi" id="m8" placeholder="">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Horario de trabajo:</label>
            <input list="text"  name="horario" id="m9" placeholder="">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Antecedentes Policiales:</label>
            <input type="text"  name="ap" id="m10" placeholder="">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Empresa:</label>
            <input type="text" name="empresa" id="m0" placeholder="">
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <button type="submit" class="btn btn-warning">Modificar</button>
          </div>
        </form>
      </div>
      
    </div>
  </div>
</div>

<script>
  window.onload= function() {
    $('#modificar').on('shown.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var ci = button.data('1');
    var nombre = button.data('2');
    var ape = button.data('3');
    var direccion = button.data('4');
    var cel = button.data('5');
    var sexo = button.data('6');
    var lugar = button.data('7');
    var tdi = button.data('8');
    var hora = button.data('9');
    var ap = button.data('10');
    var empresa = button.data('0');
    $('#m1').val(ci);
    $('#m2').val(nombre);
    $('#m3').val(ape);
    $('#m4').val(direccion);
    $('#m5').val(cel);
    $('#m6').val(sexo);
    $('#m7').val(lugar);
    $('#m8').val(tdi);
    $('#m9').val(hora);
    $('#m10').val(ap);
    $('#m0').val(empresa);
    });
    var eli=document.getElementsByClassName("eli");
    for(var i=0;i<=eli.length;i++){
      eli[i].addEventListener('click',function (e){
        if (!confirm('Seguro desea eliminar? ')){
          e.preventDefault();
        }   
      }
    )};
  };
</script>
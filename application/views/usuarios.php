<div class="botones">
  <button type="button" class="btn btn-success" data-toggle="modal" data-target="#insertar" data-whatever="@mdo">Registrar Nuevo Usuario</button>
</div>

<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">CI</th>
      <th scope="col">Nombres</th>
      <th scope="col">Apellido Paterno</th>
      <th scope="col">Apellido Materno</th>
      <th scope="col">Direccion</th>
      <th scope="col">Cargo</th>
      <th scope="col">Celular</th>
      <th scope="col">Usuario</th>
      <th scope="col">Contraseña</th>
      <th scope="col">Rol</th>
      <th>Opciones</th>
    </tr>
  </thead>
  <tbody>
    
    <?php
      $nombre=$_SESSION['nombre'];
      $query=$this->db->query("SELECT * FROM usuarios");
      foreach ($query->result() as $row) {
          echo "<tr>
                <td>$row->ci</td>
                <td>$row->nombres</td>
                <td>$row->apPaterno</td>
                <td>$row->apMaterno</td>
                <td>$row->direccion</td>
                <td>$row->cargo</td>
                <td>$row->telCel</td>
                <td>$row->usuario</td>
                <td>$row->contraseña</td>
                <td>$row->rol</td>
                <td>
                  <button type='button' class='btn btn-warning' data-toggle='modal' data-target='#update'
                    data-1='$row->ci'
                    data-2='$row->nombres'
                    data-3='$row->apPaterno'
                    data-4='$row->apMaterno'
                    data-5='$row->direccion'
                    data-6='$row->cargo'
                    data-7='$row->telCel'
                    data-8='$row->usuario'
                    data-9='$row->contraseña'
                    data-0='$row->rol'
                    ><i class='fa fa-pencil'></i></button>
                    <a class='btn btn-danger eli' href='".base_url()."Usuarios/eliminar/$row->ci'><i class='fa fa-trash'></i></a>                    
                </td>
              </tr>";

      }
    ?>

  </tbody>
</table>
<div class="modal fade" id="insertar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Nuevo Usuario</h5>
      </div>
      <div class="modal-body">
        <form method="POST" action="<?=base_url()?>Usuarios/insertar" enctype="multipart/form-data">
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label">CI</label>
            <input type="text" class="form-control" name="ci" id="inputPassword" placeholder=" carnet">
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label">Nombre</label>
            <input type="text" class="form-control" name="nombre" id="inputPassword" placeholder=" nombre">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Apellido Paterno:</label>
            <input type="text" class="form-control" name="apePat" id="recipient-name" placeholder=" apellido pa"> 
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Apellido Materno:</label>
            <input type="text" class="form-control" name="apeMat" id="recipient-name" placeholder=" apellido ma">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Direccion:</label>
            <input type="text" class="form-control" name="direccion" id="recipient-name" placeholder=" direccion">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Cargo:</label>
            <input type="text" class="form-control" name="cargo" id="recipient-name" placeholder=" cargo">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Celular:</label>
            <input type="text" class="form-control" name="cel" id="recipient-name" placeholder=" celular">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Usuario:</label>
            <input type="text" class="form-control" name="user" id="recipient-name" placeholder=" usuario">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Contraseña:</label>
            <input type="password" name="contraseña" id="recipient-name" widht="180" heigth="38" placeholder=" *******">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Rol:</label>
            <input list="browsers" name="browser" id="browser" placeholder=" eliga el rol">
              <datalist id="browsers">
                <option value="1 - Admin">
                <option value="2 - Operador">
                <option value="3 - Resp. Empresa">
              </datalist>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            <button type="submit" class="btn btn-primary">Registrar</button>
          </div>
        </form>
      </div>
      
    </div>
  </div>
</div>



<div class="modal fade" id="update" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Editar Usuario</h5>
      </div>
      <div class="modal-body">
        <form method="POST" action="<?=base_url()?>Usuarios/modificar" enctype="multipart/form-data">
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label" hidden>CI</label>
            <input type="text" class="form-control" name="ci" id="1" placeholder=" carnet" hidden>
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label">Nombre</label>
            <input type="text" class="form-control" name="nombre" id="2" placeholder=" nombre">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Apellido Paterno:</label>
            <input type="text" class="form-control" name="apePat" id="3" placeholder=" apellido pa"> 
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Apellido Materno:</label>
            <input type="text" class="form-control" name="apeMat" id="4" placeholder=" apellido ma">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Direccion:</label>
            <input type="text" class="form-control" name="direccion" id="5" placeholder=" direccion">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Cargo:</label>
            <input type="text" class="form-control" name="cargo" id="6" placeholder=" cargo">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Celular:</label>
            <input type="text" class="form-control" name="cel" id="7" placeholder=" celular">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Usuario:</label>
            <input type="text" class="form-control" name="user" id="8" placeholder=" usuario">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Contraseña:</label>
            <input type="password" name="contraseña" id="9" widht="180" heigth="38" placeholder=" *******">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Rol:</label>
            <input list="text" name="browser" id="0" placeholder=" eliga el rol">
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
    $('#update').on('shown.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var ci = button.data('1');
    var nombre = button.data('2');
    var apePat = button.data('3');
    var apeMat = button.data('4');
    var direccion = button.data('5');
    var cargo = button.data('6');
    var cel = button.data('7');
    var user = button.data('8');
    var pass = button.data('9');
    var rol = button.data('0');
    $('#1').val(ci);
    $('#2').val(nombre);
    $('#3').val(apePat);
    $('#4').val(apeMat);
    $('#5').val(direccion);
    $('#6').val(cargo);
    $('#7').val(cel);
    $('#8').val(user);
    $('#9').val(pass);
    $('#0').val(rol);
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
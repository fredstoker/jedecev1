<div class="botones">
  <button type="button" class="btn btn-success" data-toggle="modal" data-target="#insertar" data-whatever="@mdo">Registrar Empresa</button>
</div>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Nombre</th>
      <th scope="col">Direccion</th>
      <th scope="col">Gerente</th>
      <th scope="col">Servicios</th>
      <th scope="col">Celular</th>
      <th scope="col">Foto</th>
      <th>Opciones</th>
    </tr>
  </thead>
  <tbody>
    
    <?php
      $nombre=$_SESSION['nombre'];
      $query=$this->db->query("SELECT * FROM empresa");
      foreach ($query->result() as $row) {
          echo "<tr>
                <td>$row->nombre</td>
                <td>$row->direccion</td>
                <td>$row->gerente</td>
                <td>$row->servicos</td>
                <td>$row->telCel</td>
                <td><img src='$row->foto' width='100' height='100'></td>
                <td>
                  <button type='button' class='btn btn-warning' data-toggle='modal' data-target='#update'
                    data-0='$row->nit'
                    data-1='$row->nombre'
                    data-2='$row->direccion'
                    data-3='$row->gerente'
                    data-4='$row->servicos'
                    data-5='$row->telCel'                    
                    ><i class='fa fa-pencil'></i></button>
                    <a class='btn btn-danger eli' href='".base_url()."Empresa/eliminar/$row->nit'><i class='fa fa-trash'></i></a>                    
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
        <h5 class="modal-title" id="exampleModalLabel">Nueva Empresa</h5>
      </div>
      <div class="modal-body">
        <form method="POST" action="<?=base_url()?>Empresa/insertar" enctype="multipart/form-data">
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label">Nombre</label>
            <input type="text" class="form-control" name="nombre" id="inputPassword" placeholder=" nombre">
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label">Direccion</label>
            <input type="text" class="form-control" name="direccion" id="inputPassword" placeholder=" direccion">
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label">Gerente</label>
            <input type="text" class="form-control" name="gerente" id="inputPassword" placeholder=" gerente">
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label">Servicios</label>
            <input type="text" class="form-control" name="servicios" id="inputPassword" placeholder=" servicios">
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label">Celular</label>
            <input type="text" class="form-control" name="cel" id="inputPassword" placeholder=" cel">
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label">Foto</label>
            <input type="file" class="form-control" name="foto" id="inputPassword">
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
        <h5 class="modal-title" id="exampleModalLabel">Modificar Informacion</h5>
      </div>
      <div class="modal-body">
        <form method="POST" action="<?=base_url()?>Empresa/modificar" enctype="multipart/form-data">
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label" hidden>Nit</label>
            <input type="text" class="form-control" name="nit" id="0" placeholder=" nit" hidden>
          </div>
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-4 col-form-label">Nombre</label>
            <input type="text" class="form-control" name="nombre" id="1" placeholder=" nombre">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Direccion:</label>
            <input type="text" class="form-control" name="direccion" id="2" placeholder=" direccion"> 
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Gerente:</label>
            <input type="text" class="form-control" name="gerente" id="3" placeholder=" gerente">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Servicios:</label>
            <input type="text" class="form-control" name="servicios" id="4" placeholder=" servicios">
          </div>
          <div class="form-group row">
            <label for="message-text" class="col-sm-4 col-form-label">Celular:</label>
            <input type="text" class="form-control" name="cel" id="5" placeholder=" celular">
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
    var nit = button.data('0');
    var nombre = button.data('1');    
    var direccion = button.data('2');
    var gerente = button.data('3');
    var servicios = button.data('4')
    var cel = button.data('5');
    $('#0').val(nit);
    $('#1').val(nombre);
    $('#2').val(direccion);
    $('#3').val(gerente);
    $('#4').val(servicios);
    $('#5').val(cel);    
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

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
        Clientes
        <small>Editar</small>
        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box box-solid">
            <div class="box-body">
                <div class="row">
                    <div class="col-md-12">
                        <?php if($this->session->flashdata("error")):?>
                            <div class="alert alert-danger alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <p><i class="icon fa fa-ban"></i><?php echo $this->session->flashdata("error"); ?></p>
                                
                             </div>
                        <?php endif;?>
                        <form action="<?php echo base_url();?>mantenimiento/clientes/update" method="POST">
                            <input type="hidden" name="id_cliente" value="<?php echo $cliente->id_cliente  ;?>">
                           
                             <div class="form-group">
                                <label for="id_cliente">ID cliente:</label>
                                <input type="text" class="form-control" id="nombrecomp" name="id_cliente"value="<?php echo $cliente->id_cliente;?>">
                            </div>
                            <div class="form-group">
                                <label for="nombrecomp">Nombre Compañia:</label>
                                <input type="text" class="form-control" id="nombrecomp" name="nombrecomp"value="<?php echo $cliente->nombre_compañia;?>">
                            </div>
                             

                            <div class="form-group">
                                <label for="nombrecont">Nombre Contacto:</label>
                                <input type="text" class="form-control" id="nombrecont" name="nombrecont"value="<?php echo $cliente->nombre_contacto;?>">
                            </div>    
                             <div class="form-group">
                                <label for="direccion">Direccion:</label>
                                <input type="text" class="form-control" id="direccion" name="direccion"value="<?php echo $cliente->direccion;?>">
                            </div>
                            <div class="form-group">
                                <label for="ciudad">Ciudad:</label>
                                <input type="text" class="form-control" id="ciudad" name="ciudad"value="<?php echo $cliente->ciudad;?>">
                            </div>
                             <div class="form-group">
                                <label for="pais">Pais:</label>
                                <input type="text" class="form-control" id="pais" name="pais"value="<?php echo $cliente->pais;?>">
                            </div>
                            <div class="form-group">
                                <label for="telefono">Telefono:</label>
                                <input type="text" class="form-control" id="telefono" name="telefono"value="<?php echo $cliente->telefono;?>">
                            </div>
                            <div class="form-group">
                                <label for="tarjeta">Tarjeta:</label>
                                <input type="text" class="form-control" id="tarjeta" name="tarjeta"value="<?php echo $cliente->nro_tarjeta_credito;?>">
                            </div>
                            

                            
                            <div class="form-group">
                                <button type="submit" class="btn btn-success btn-flat">Guardar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

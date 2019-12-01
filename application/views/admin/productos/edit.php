
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
        Productos
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
                        <form action="<?php echo base_url();?>mantenimiento/productos/update" method="POST">
                            <input type="hidden" name="id_producto" value="<?php echo $producto->id_producto;?>">
                            <div class="form-group <?php echo !empty(form_error('codigo')) ? 'has-error':'';?>">
                                <label for="id_producto">ID:</label>
                                <input type="text" class="form-control" id="id_producto" name="id_producto" value="<?php echo !empty(form_error('id_producto')) ? set_value('id_producto'):$producto->id_producto?>">
                                <?php echo form_error("id_producto","<span class='help-block'>","</span>");?>
                            </div>
                            <div class="form-group <?php echo !empty(form_error('nombre')) ? 'has-error':'';?>">
                                <label for="nombre">Nombre:</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" value="<?php echo !empty(form_error('nombre')) ? set_value('nombre'):$producto->nombre?>">
                                <?php echo form_error("nombre","<span class='help-block'>","</span>");?>
                            </div>
                            <div class="form-group">
                                <label for="proveedor">Proveedor:</label>
                                <select name="proveedor" id="proveedor" class="form-control">
                                    <?php foreach($proveedores as $proveedor):?>
                                        
                                        <option value="<?php echo $proveedor->marca?>" selected><?php echo $proveedor->marca;?></option>
                                    
                                    <?php endforeach;?>
                                </select>
                            </div>
                           <div class="form-group">
                                <label for="categoria">Categoria:</label>
                                <select name="categoria" id="categoria" class="form-control">
                                    <?php foreach($categorias as $categoria):?>
                                        <?php if($categoria->id == $producto->categoria_id):?>
                                        <option value="<?php echo $categoria->nombre?>" selected><?php echo $categoria->nombre;?></option>
                                    <?php else:?>
                                        <option value="<?php echo $categoria->nombre?>"><?php echo $categoria->nombre;?></option>
                                        <?php endif;?>
                                    <?php endforeach;?>
                                </select>
                            </div>
                             <div class="form-group ">
                                <label for="cantidad">Cantidad:</label>
                                <input type="text" class="form-control" id="cantidad" name="cantidad"value="<?php echo $producto->cantidad?>">
                            </div>
                            <div class="form-group <?php echo !empty(form_error('precio')) ? 'has-error':'';?>">
                                <label for="precio">Precio:</label>
                                <input type="text" class="form-control" id="precio_por_unidad" name="precio_por_unidad" value="<?php echo !empty(form_error('precio_por_unidad')) ? set_value('precio_por_unidad'):$producto->precio_por_unidad?>">
                                <?php echo form_error("precio_por_unidad","<span class='help-block'>","</span>");?>
                            </div>
                            <div class="form-group <?php echo !empty(form_error('stock')) ? 'has-error':'';?>">
                                <label for="stock">Stock:</label>
                                <input type="text" class="form-control" id="stock" name="stock" value="<?php echo !empty(form_error('stock')) ? set_value('stock'):$producto->stock?>">
                                <?php echo form_error("stock","<span class='help-block'>","</span>");?>
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

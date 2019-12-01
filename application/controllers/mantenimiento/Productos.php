<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Productos extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model("Productos_model");
		$this->load->model("Categorias_model");
		$this->load->model("Proveedores_model");
	}

	public function index()
	{
		$data  = array(
			'productos' => $this->Productos_model->getProductos(), 
		);
		$this->load->view("layouts/header");
		$this->load->view("layouts/aside");
		$this->load->view("admin/productos/list",$data);
		$this->load->view("layouts/footer");

	}
	public function add(){
		$data =array( 
			"categorias" => $this->Categorias_model->getCategorias(),
			"proveedores"=>$this->Proveedores_model->getProveedores(),
		);
		$this->load->view("layouts/header");
		$this->load->view("layouts/aside");
		$this->load->view("admin/productos/add",$data);
		$this->load->view("layouts/footer");
	}

	public function store(){
		//$id_producto = $this->input->post("id_producto");
		$nombre = $this->input->post("nombre");
		$proveedor = $this->input->post("proveedor");
		$categoria = $this->input->post("categoria");
		$cantidad = $this->input->post("cantidad");
		$precio_por_unidad = $this->input->post("precio_por_unidad");
		$stock = $this->input->post("stock");
		

		
			$data  = array(
				'id_producto' =>"", 
				'nombre' => $nombre,
				'proveedor' => $proveedor,
				'categoria' => $categoria,
				'cantidad' => $cantidad,
				'precio_por_unidad' => $precio_por_unidad,
				'stock' => $stock,
				'estado' => "1"
			);

			if ($this->Productos_model->save($data)) {
				redirect(base_url()."mantenimiento/productos");
			}
			else{
				$this->session->set_flashdata("error","No se pudo guardar la informacion");
				redirect(base_url()."mantenimiento/productos/add");
			}
	

		
	}

	public function edit($id){
		$data =array( 
			"producto" => $this->Productos_model->getProducto($id),
			"categorias" => $this->Categorias_model->getCategorias(),
			"proveedores" => $this->Proveedores_model->getProveedores(),
		);
		$this->load->view("layouts/header");
		$this->load->view("layouts/aside");
		$this->load->view("admin/productos/edit",$data);
		$this->load->view("layouts/footer");
	}

	public function update(){
		$id_producto = $this->input->post("id_producto");
		$nombre = $this->input->post("nombre");
		$proveedor = $this->input->post("proveedor");
		$categoria = $this->input->post("categoria");
		$cantidad = $this->input->post("cantidad");
		$precio_por_unidad = $this->input->post("precio_por_unidad");
		$stock = $this->input->post("stock");
		

		
			$data  = array(
				'id_producto' => $id_producto, 
				'nombre' => $nombre,
				'proveedor' => $proveedor,
				'categoria' => $categoria,
				'cantidad' => $cantidad,
				'precio_por_unidad' => $precio_por_unidad,
				'stock' => $stock,
				'estado' => "1"
			);
			
			if ($this->Productos_model->update($id_producto,$data)) {
				redirect(base_url()."mantenimiento/productos");
			}
			else{
				$this->session->set_flashdata("error","No se pudo guardar la informacion");
				redirect(base_url()."mantenimiento/productos/edit/".$id_producto);
			}
		

		
	}
	public function delete($id){
		$data  = array(
			'estado' => "0", 
		);
		$this->Productos_model->update($id,$data);
		echo "mantenimiento/productos";
	}

}
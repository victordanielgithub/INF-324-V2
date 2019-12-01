<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Proveedores extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model("Proveedores_model");
	}

	public function index()
	{
		$data  = array(
			'proveedores' => $this->Proveedores_model->getProveedores(), 
		);
		$this->load->view("layouts/header");
		$this->load->view("layouts/aside");
		$this->load->view("admin/proveedores/list",$data);
		$this->load->view("layouts/footer");

	}
	public function add(){

	

		$this->load->view("layouts/header");
		$this->load->view("layouts/aside");
		$this->load->view("admin/proveedores/add");
		$this->load->view("layouts/footer");
	}
	public function store(){
		$id_proveedor = $this->input->post("id_proveedor");
		$marca = $this->input->post("marca");
		$nombreenc = $this->input->post("nombreenc");
		$direccion = $this->input->post("direccion");
		$ciudad = $this->input->post("ciudad");
		$telefono = $this->input->post("telefono");
		
		
			$data  = array(
				'id_proveedor'=>$id_proveedor,
				'marca' => $marca,
				'nombre_encargado' => $nombreenc, 
				'direccion' => $direccion,
				'ciudad' => $ciudad,
				'telefono' => $telefono,
			);

			if ($this->Proveedores_model->save($data)) {
				redirect(base_url()."mantenimiento/proveedores");
			}
			else{
				$this->session->set_flashdata("error","No se pudo guardar la informacion");
				redirect(base_url()."mantenimiento/proveedores/add");
			}
		

		
	}
	public function edit($id){
		$data  = array(
			'proveedor' => $this->Proveedores_model->getProveedor($id)
		);
		$this->load->view("layouts/header");
		$this->load->view("layouts/aside");
		$this->load->view("admin/proveedores/edit",$data);
		$this->load->view("layouts/footer");
	}


	public function update(){
		$id_proveedor = $this->input->post("id_proveedor");
		$marca = $this->input->post("marca");
		$nombreenc = $this->input->post("nombreenc");
		$direccion = $this->input->post("direccion");
		$ciudad = $this->input->post("ciudad");
		$telefono = $this->input->post("telefono");


		
		
			$data = array(
				'id_proveedor' => $id_proveedor,
				'marca' => $marca,
				'nombre_encargado' => $nombreenc, 
				'direccion' => $direccion,
				'ciudad' => $ciudad,
				'telefono' => $telefono,
			);

			if ($this->Proveedores_model->update($id_proveedor,$data)) {
				redirect(base_url()."mantenimiento/proveedores");
			}
			else{
				$this->session->set_flashdata("error","No se pudo actualizar la informacion");
				redirect(base_url()."mantenimiento/proveedores/edit/".$id_proveedor);
			}
		
		

	}

	public function delete($id){
		$data  = array(
			'estado' => "0", 
		);
		$this->Proveedores_model->update($id,$data);
		echo "mantenimiento/proveedores";
	}
}
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clientes extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model("Clientes_model");
	}

	public function index()
	{
		
		$data  = array(
			'clientes' => $this->Clientes_model->getClientes(),

		);
		$this->load->view("layouts/header");
		$this->load->view("layouts/aside");
		$this->load->view("admin/clientes/list",$data);
		$this->load->view("layouts/footer");

	}
	public function add(){

		$data = array(
			"tipoclientes" => $this->Clientes_model->getTipoClientes(),
			"tipodocumentos" => $this->Clientes_model->getTipoDocumentos()
		);

		$this->load->view("layouts/header");
		$this->load->view("layouts/aside");
		$this->load->view("admin/clientes/add",$data);
		$this->load->view("layouts/footer");
	}
	public function store(){

		$nombrecomp = $this->input->post("nombrecomp");
		$nombrecont = $this->input->post("nombrecont");
		$direccion = $this->input->post("direccion");
		$ciudad = $this->input->post("ciudad");
		$pais = $this->input->post("pais");
		$telefono = $this->input->post("telefono");
		$tarjeta = $this->input->post("tarjeta");

			$data  = array(
				'id_cliente'=>"",
				'nombre_compañia' => $nombrecomp, 
				'nombre_contacto' => $nombrecont,
				'direccion' => $direccion,
				'ciudad' => $ciudad,
				'pais' => $pais,
				'telefono' => $telefono,
				'nro_tarjeta_credito' => $tarjeta,
				'estado' => "1"
			);

			if ($this->Clientes_model->save($data)) {
				redirect(base_url()."mantenimiento/clientes");
			}
			else{
				$this->session->set_flashdata("error","No se pudo guardar la informacion");
				redirect(base_url()."mantenimiento/clientes/add");
			}
		

		
	}
	public function edit($id){
		$data  = array(
			'cliente' => $this->Clientes_model->getCliente($id), 
			
		);
		$this->load->view("layouts/header");
		$this->load->view("layouts/aside");
		$this->load->view("admin/clientes/edit",$data);
		$this->load->view("layouts/footer");
	}


	public function update(){
		$id_cliente = $this->input->post("id_cliente");
		$nombrecomp = $this->input->post("nombrecomp");
		$nombrecont = $this->input->post("nombrecont");
		$direccion = $this->input->post("direccion");
		$ciudad = $this->input->post("ciudad");
		$pais = $this->input->post("pais");
		$telefono = $this->input->post("telefono");
		$tarjeta = $this->input->post("tarjeta");

			$data  = array(
				//'id_cliente'=>"",
				'nombre_compañia' => $nombrecomp, 
				'nombre_contacto' => $nombrecont,
				'direccion' => $direccion,
				'ciudad' => $ciudad,
				'pais' => $pais,
				'telefono' => $telefono,
				'nro_tarjeta_credito' => $tarjeta,
				'estado' => "1"
			);

			if ($this->Clientes_model->update($id_cliente,$data)) {
				redirect(base_url()."mantenimiento/clientes");
			}
			else{
				$this->session->set_flashdata("error","No se pudo actualizar la informacion");
				redirect(base_url()."mantenimiento/clientes/edit/".$idcliente);
			}
		

		

	}

	public function delete($id){
		$data  = array(
			'estado' => "0", 
		);
		$this->Clientes_model->update($id,$data);
		echo "mantenimiento/clientes";
	}
}
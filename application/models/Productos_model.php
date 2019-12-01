<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Productos_model extends CI_Model {

	public function getProductos(){
		$this->db->select("p.*");
		$this->db->from("producto p");
		//$this->db->join("categorias c","p.categoria_id = c.id");
		$this->db->where("p.estado","1");
		$resultados = $this->db->get();
		return $resultados->result();
	}
	public function getProducto($id){
		$this->db->where("id_producto",$id);
		$resultado = $this->db->get("producto");
		return $resultado->row();
	}
	public function save($data){
		return $this->db->insert("producto",$data);
	}

	public function update($id,$data){
		$this->db->where("id_producto",$id);
		return $this->db->update("producto",$data);
	}

}
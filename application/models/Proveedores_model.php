<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Proveedores_model extends CI_Model {
	public function getProveedores(){
		$this->db->select("c.*");
		$this->db->from("proveedor c");
		//$this->db->join("tipo_cliente tc", "c.tipo_cliente_id = tc.id");
		//$this->db->join("tipo_documento td", "c.tipo_documento_id = td.id");
		
		//$this->db->("c.estado","1");
		$resultados = $this->db->get();
		return $resultados->result();
	}

	public function getProveedor($id){
		$this->db->where("id_proveedor",$id);
		$resultado = $this->db->get("proveedor");
		return $resultado->row();

	}
	public function save($data){
		return $this->db->insert("proveedor",$data);
	}
	public function update($id,$data){
		$this->db->where("id_proveedor",$id);
		return $this->db->update("proveedor",$data);
	}

}
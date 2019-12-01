<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Clientes_model extends CI_Model {
	public function getClientes(){
		$this->db->select("c.*");
		$this->db->from("cliente c");
		//$this->db->join("tipo_cliente tc", "c.tipo_cliente_id = tc.id");
		//$this->db->join("tipo_documento td", "c.tipo_documento_id = td.id");
		$this->db->where("c.estado","1");
		$resultados = $this->db->get();
		return $resultados->result();
	}

	public function getCliente($id){
		$this->db->where("id_cliente",$id);
		$resultado = $this->db->get("cliente");
		return $resultado->row();

	}
	public function save($data){
		return $this->db->insert("cliente",$data);
	}
	public function update($id,$data){
		$this->db->where("id_cliente",$id);
		return $this->db->update("cliente",$data);
	}

	public function getTipoClientes(){
		$resultados = $this->db->get("tipo_cliente");
		return $resultados->result();
	}

	public function getTipoDocumentos(){
		$resultados = $this->db->get("tipo_documento");
		return $resultados->result();
	}
}
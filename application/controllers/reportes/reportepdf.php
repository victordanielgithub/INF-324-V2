
<?php

defined('BASEPATH') OR exit ('No direct script access allowed');

class reportepdf extends CI_Controller {
   
    public function index(){

        $this->load->view('welcome');

    }
    function pdf_listado_productos(){
           require('fpdf/fpdf.php');
           require('conexion.php');   
        // $llego=$_GET['id'];
        // desde aqui estoy haciendo las consultas para que jale de la base de datos
         $query1 = "SELECT id_producto,nombre,proveedor,categoria,cantidad,precio_por_unidad,stock
                     from producto
                      where estado=1 
                       ";
         $resultado1 = $mysqli->query($query1);
         $pdf = new FPDF(); //Creamos un objeto de la librer
         $pdf->AddPage();   //agregamos una nueva pagina
         $pdf->SetFont('Arial','B',8);//tipoletra, estilo bold subrayado , tamano
         $pdf->ln(6);
         $pdf->Cell(38,4,'Inventario de Productos', 0, 0, 'R');
         $pdf->Cell(245,4,'Departamento Administravio', 0, 1, 'C');
         $pdf->Cell(33,4,'Supermercado', 0, 0, 'R');
         $pdf->Cell(255,4,'Seccion Economato', 0, 1, 'C');
         $pdf->SetX(30);
         $pdf->Cell(13,4,'La Paz - Bolivia', 0, 1, 'R');
         $pdf->ln(10);
         $pdf->SetFont('Arial','B',15);
         $pdf->Cell(200,10,'LISTADO DE PRODUCTO', 0, 1,'C' );
         $pdf->SetFont('Arial','B',11);      
         $pdf->SetFillColor(502,102,2);
         $pdf->SetFont('Arial','B',11);
         $pdf->SetX(8);
         $pdf->Cell(8,10,'#', 1,0,'C',1);
         $pdf->Cell(55,10,'Nombre', 1,0,'C',1);
         $pdf->Cell(55,10,'Proveedor', 1,0,'C',1);
         $pdf->Cell(30,10,'Categoria', 1,0,'C',1);
         $pdf->Cell(26,10,'cantidad', 1,0,'C',1);
         $pdf->Cell(16,10,'Precio/U', 1,1,'C',1);
             $pdf->SetFillColor(232,232,232);
                $pdf->SetFont('Arial','B',8);
             while($row = $resultado1->fetch_assoc())
             {
                $pdf->SetX(8);
                $pdf->Cell(8,7,$row['id_producto'], 1,0,'C');
                $pdf->Cell(55,7,utf8_decode($row['nombre']), 1,0,'C');
                $pdf->Cell(55,7,utf8_decode($row['proveedor']), 1,0,'C');
                $pdf->Cell(30,7,utf8_decode($row['categoria']), 1,0,'C');
                $pdf->Cell(26,7,utf8_decode($row['cantidad']), 1,0,'C');
                $pdf->Cell(16,7,utf8_decode($row['precio_por_unidad']), 1,1,'C');
             }
             $pdf->Cell(190,50,'', 0,1,'C',0);
             $pdf->Cell(190,3,'Lic. Alfredo Ramos Aruquipa', 0,1,'C',0);
             $pdf->Cell(190,3,'C.I.No. 3487813 LP.', 0,1,'C');
             $pdf->Cell(190,3,'ECONOMO UNIDAD ACADEMICA', 0,1,'C',0);
             $pdf->Output('Listado_Productos.pdf','I');    
    }
    function pdf_listado_clientes(){
           require('fpdf/fpdf.php');
           require('conexion.php');   
        // $llego=$_GET['id'];
        // desde aqui estoy haciendo las consultas para que jale de la base de datos
         $query2 = "SELECT id_cliente,nombre_compañia,nombre_contacto,direccion,ciudad,telefono
                     from cliente
                      where estado=1 
                       ";
         $resultado2 = $mysqli->query($query2);
         $pdf = new FPDF(); //Creamos un objeto de la librer
         $pdf->AddPage();   //agregamos una nueva pagina
         $pdf->SetFont('Arial','B',8);//tipoletra, estilo bold subrayado , tamano
         $pdf->ln(6);
         $pdf->Cell(38,4,'Inventario de Clientes', 0, 0, 'R');
         $pdf->Cell(245,4,'Departamento Administravio', 0, 1, 'C');
         $pdf->Cell(33,4,'Supermercado', 0, 0, 'R');
         $pdf->Cell(255,4,'Seccion Economato', 0, 1, 'C');
         $pdf->SetX(30);
         $pdf->Cell(13,4,'La Paz - Bolivia', 0, 1, 'R');
         $pdf->ln(10);
         $pdf->SetFont('Arial','B',15);
         $pdf->Cell(200,10,'LISTADO DE CLIENTES', 0, 1,'C' );  
         $pdf->SetFillColor(502,102,2);
         $pdf->SetFont('Arial','B',11);
         $pdf->SetX(8);
         $pdf->Cell(8,10,'#', 1,0,'C',1);
         $pdf->Cell(55,10,'Nombre Compañia', 1,0,'C',1);
         $pdf->Cell(55,10,'Cliente', 1,0,'C',1);
         $pdf->Cell(30,10,'direccion', 1,0,'C',1);
         $pdf->Cell(26,10,'ciudad', 1,0,'C',1);
         $pdf->Cell(16,10,'telefono', 1,1,'C',1);
             $pdf->SetFillColor(232,232,232);
                $pdf->SetFont('Arial','B',8);
             while($row = $resultado2->fetch_assoc())
             {
                $pdf->SetX(8);
                $pdf->Cell(8,7,$row['id_cliente'], 1,0,'C');
               // $pdf->Cell(55,7,utf8_decode($row['nombre_compañia']), 1,0,'C');
                $pdf->Cell(55,7,utf8_decode($row['nombre_contacto']), 1,0,'C');
                $pdf->Cell(30,7,utf8_decode($row['direccion']), 1,0,'C');
                $pdf->Cell(26,7,utf8_decode($row['ciudad']), 1,0,'C');
                $pdf->Cell(16,7,utf8_decode($row['telefono']), 1,1,'C');
             }
             $pdf->Cell(190,50,'', 0,1,'C',0);
             $pdf->Cell(190,3,'Lic. Alfredo Ramos Aruquipa', 0,1,'C',0);
             $pdf->Cell(190,3,'C.I.No. 3487813 LP.', 0,1,'C');
             $pdf->Cell(190,3,'ECONOMO UNIDAD ACADEMICA', 0,1,'C',0);
             $pdf->Output('Listado_clientes.pdf','I');    
    }
}
    

?>

<?php

require_once "../controladores/productos.controlador.php";
require_once "../modelos/productos.modelo.php";

class AjaxProductos{
     /*========================================
	  GENERAR CODIGO A PARTIR DE ID CATEGORIA
	=========================================*/
	public $idCategoria;

	public function ajaxCrearCodigoProducto(){

		$item = "IdCat";
		$valor = $this->idCategoria;

		$respuesta = ControladorProductos::ctrMostrarProductos($item, $valor);


		
		echo json_encode($respuesta);


	}

}

	/*========================================
	  GENERAR CODIGO A PARTIR DE ID CATEGORIA
	=========================================*/

if (isset($_POST["idCategoria"])) {
	
	$codigoProducto = new AjaxProductos();
	$codigoProducto -> idCategoria = $_POST["idCategoria"];
	$codigoProducto -> ajaxCrearCodigoProducto();
}



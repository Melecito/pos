<?php

class ControladorUsuarios{


	public function ctrIngresoUsuario(){

		if (isset($_POST["ingUsuario"])) {

			if (preg_match('/^[-a-zA-Z0-9]+$/', $_POST["ingUsuario"]) && 
				preg_match('/^[-a-zA-Z0-9]+$/',$_POST["ingPassword"])){


					$tabla ='usuarios';

					$item  = 'usuario';
					$valor = $_POST["ingUsuario"];

					$respuesta = ModeloUsuarios::mdlMostrarUsuarios($tabla, $item, $valor);

					var_dump($respuesta);

			}
		}
	}
}


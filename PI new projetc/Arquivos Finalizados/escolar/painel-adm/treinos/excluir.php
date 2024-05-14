<?php 
require_once("../../conexao.php"); 

$id = $_POST['id'];

$pdo->query("DELETE FROM treinos WHERE id = '$id'");


echo 'Excluído com Sucesso!';

?>
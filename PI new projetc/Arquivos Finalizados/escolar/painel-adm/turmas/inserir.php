<?php 
require_once("../../conexao.php"); 

$treino = $_POST['treino'];
$campo = $_POST['campo'];
$professor = $_POST['professor'];
$data_inicio = $_POST['data_inicio'];
$data_final = $_POST['data_final'];
$horario = $_POST['horario'];
$dia = $_POST['dia'];
$valor_mensalidade = $_POST['valor_mensalidade'];
$ano = $_POST['ano'];

$id = $_POST['txtid2'];

$valor_mensalidade = str_replace(',', '.', $valor_mensalidade);


if($id == ""){
	$res = $pdo->prepare("INSERT INTO turmas SET treino = :treino, campo = :campo, professor = :professor, data_inicio = :data_inicio, data_final = :data_final, horario = :horario, dia = :dia, valor_mensalidade = :valor_mensalidade, ano = :ano");	

}else{
	$res = $pdo->prepare("UPDATE turmas SET treino = :treino, campo = :campo, professor = :professor, data_inicio = :data_inicio, data_final = :data_final, horario = :horario, dia = :dia, valor_mensalidade = :valor_mensalidade, ano = :ano WHERE id = '$id'");
	
}

$res->bindValue(":treino", $treino);
$res->bindValue(":campo", $campo);
$res->bindValue(":professor", $professor);
$res->bindValue(":data_inicio", $data_inicio);
$res->bindValue(":data_final", $data_final);
$res->bindValue(":horario", $horario);
$res->bindValue(":dia", $dia);
$res->bindValue(":valor_mensalidade", $valor_mensalidade);
$res->bindValue(":ano", $ano);


$res->execute();


echo 'Salvo com Sucesso!';

?>
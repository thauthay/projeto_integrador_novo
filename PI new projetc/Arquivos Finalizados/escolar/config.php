<?php 

$nome_escola = "Escola guerra";
$url = "http://localhost/escolar/";
$endereco_escola = "Av. Antônio Rodrigues Boucinha, 353 - Parque Industrial, Penápolis - SP";
$telefone_escola = "(18)98180-2028";
$email_adm = 'hvfadvocacia@gmail.com';
$rodape_relatorios;
$cnpj_escola = '11.111.111/1111-11';
$cidade_escola = 'Penápolis';


//VARIAVEIS DO BANCO DE DADOS LOCAL
$servidor = 'localhost';
$usuario = 'root';
$senha = '';
$banco = 'escolar';


//VARIAVEIS GLOBAIS
$pgto_boleto = 'Sim';  //DEIXAR SIM PARA PAGAMENTOS COM BOLETO OU CARNE, APENAS PARA DAR A POSSIBILIDADE DO TESOUREIRO CARREGAR OS ARQUIVOS

$media_porcentagem_presenca = 70; //70 define que a média limite para presença é de 70%;

$media_pontos_minimo_aprovacao = 60; // o aluno vai precisar de no minimo 60 pontos para aprovação no curso

$maximo_pontos_disciplina = 100; // Maximo de pontos possiveis para distribuir em cada treino

$carga_horaria_cert = 250; //TEMPO EM HORAS DOS CURSOS

 ?>
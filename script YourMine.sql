create database YourMine;

use YourMine;

create table cadastro(
idCadastro int primary key auto_increment,
email varchar(45),
nome varchar(45),
sobrenome varchar(45),
nick varchar(45)
);

create table quiz1(
idAnalystc int primary key auto_increment,
picareta_de_ouro int,
picareta_de_pedra int,
picareta_de_madeira int,
FKcadastro int, foreign key (FKcadastro) references cadastro(idCadastro)
);

create table quiz2(
idAnalystc2 int primary key auto_increment,
vinte_e_quatro_blocos int,
vinte_blocos int,
vinte_e_nove_blocos int,
quinze_blocos int,
FKcadastro int, foreign key (FKcadastro) references cadastro(idCadastro)
);

create table quiz3(
idAnalystc3 int primary key auto_increment,
dezesseis_cores int,
dez_cores int,
onze_cores int,
vinte_cores int,
FKcadastro int, foreign key (FKcadastro) references cadastro(idCadastro)
);





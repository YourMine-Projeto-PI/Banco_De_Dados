create database YourMine;

use YourMine;

create table analise_serve(
idAnalise_serve int primary key auto_increment,
servidores Varchar(45)
);

create table cadastro(
idCadastro int primary key auto_increment,
email varchar(45),
nome varchar(45),
sobrenome varchar(45),
nick varchar(45),
senha varchar(45),
FKanalise int, foreign key	(FKanalise) references analise_serve(idAnalise_serve)
);

insert into analise_serve values 
	(null, 'Hypixel'),
	(null, 'MC central'),
	(null, 'CubeCraft'),
	(null, 'Hylex'),
	(null, 'CraftLandia'),
	(null, 'RedeSky'),
	(null, 'Mush');

select * from cadastro;

select count(cadastro.FKanalise) as voto, analise_serve.servidores as servidor 
	from cadastro join analise_serve
		on analise_serve.idAnalise_serve = cadastro.FKanalise
			group by cadastro.FKanalise;



create database db_generation_game_online;
use db_generation_game_online;

create table tb_personagem (
	id bigint(5) auto_increment,
	nome varchar(255) not null,
	ataque int(5),
	profissao varchar(255) not null,
	defesa int(5) not null,
	classe_id bigint not null,
    
	primary key(id),
   	foreign key(classe_id) references tb_classe(id)
);

create table tb_classe (
	id bigint(5) auto_increment,
	nome_jogo varchar(255) not null,
	preco decimal(10,2) not null,
	primary key(id)
);

insert into tb_classe (nome_jogo, preco) 
values  ("BF5", 50),
		("Fifa22", 20),
        ("COD22", 10),
        ("Final Fantasy VII", 60),
        ("Need For Speed Most Wanted", 70);

insert into tb_personagem(nome,defesa, profissao, ataque, classe_id) 
values  ("Cristiano Ronalds","1000","Arquiteto","3000","1"),
		("Alfredo Jorge","2000","Policial","4000","2"),
		("Neymir Rafael","2500","Escriturario","1400","3"),
		("Cassemir Bastos","4500","Arquiteto","2454","4"),
		("Emerson de Almeida","1540","Atendente","3487","5"),
		("Steves Gattes","1234","Segurança","1400","1"),
		("Will Bill Almeida","2580","Ator","1800","2"),
		("Messilds Lionis","2600","Engenheiro","1600","3"),
		("Cristiano Arqueiro","1000","Arqueiro","3000","1");

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa >= 1000 and defesa <= 2000;

select * from tb_personagem where nome like 'C%';

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.classe_id where profissao like "Arqueiro";









 



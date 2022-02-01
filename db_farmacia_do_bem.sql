create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria (
	id bigint (5) auto_increment,
    nome_categoria varchar(255) not null,
    descricao varchar(255) not null,
    
    primary key(id)
);

create table tb_produtos (
    id bigint(5) auto_increment,
    nome_produto varchar(255) not null,
    preco decimal(10,2) not null,
    tamanho varchar(255) not null,
    vencimento varchar(255) not null,
    categoria_id bigint not null,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);


insert into tb_categoria (nome_categoria, descricao) 
values  ("teste1", "lorem ipsum"),
		("cosmético", "lorem ipsum2"),
        ("categoria","lorem ipsum3"),
        ("categoria remedio", "lorem ipsu4"),
        ("teste2", "lorem ipsum 5");

insert into tb_produtos (nome_produto,preco,tamanho,vencimento,categoria_id) 
values  ("remedio1","50","grande","10/07/2022","1"),
		("escova","60","pequeno","10/02/2022","2"),
		("shampoo","70","medio","10/03/2022","3"),
		("remedio2","55","grande","20/05/2022","4"),
		("fralda","40","pequeno","1/02/2022","5"),
		("sabonete","20","medio","20/07/2022","1"),
		("lata de leite","10","grande","20/04/2022","2"),
		("desodorante","5","pequeno","30/09/2022","3"),
		("mascara","1","medio","5/01/2022","1");

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco >= 3 and preco <= 60;

select * from tb_produtos where nome_produto like 'B%';

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos right join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where nome_categoria like "cosmético";
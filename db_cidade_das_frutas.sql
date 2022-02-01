create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
	id bigint(5) auto_increment,
    nome_categoria varchar(255) not null,
    descricao_categoria varchar(255) not null,
    
    primary key(id)
);

create table tb_produtos (
	id bigint(5) auto_increment,
    nome_produto varchar(255) not null,
    preco_produto decimal(10,2) not null,
    tamanho_produto varchar(255) not null,
    vencimento varchar(255) not null,
    categoria_id bigint not null,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);


insert into tb_categoria (nome_categoria, descricao_categoria) 
values  ("teste1", "lorem ipsum"),
		("legumes", "lorem ipsum2"),
        ("aves","lorem ipsum3"),
        ("categoria legumes", "lorem ipsu4"),
        ("teste2", "lorem ipsum 5");

insert into tb_produtos (nome_produto,preco_produto,tamanho_produto,vencimento,categoria_id) 
values  ("alface","50","grande","10/07/2022","1"),
		("batata","60","pequeno","10/02/2022","2"),
		("tomate","70","medio","10/03/2022","3"),
		("laranja","55","grande","20/05/2022","4"),
		("maça","40","pequeno","1/02/2022","5"),
		("alho","20","medio","20/07/2022","1"),
		("cebola","10","grande","20/04/2022","2"),
		("repolho","5","pequeno","30/09/2022","3"),
		("teste","1","medio","5/01/2022","1");

select * from tb_produtos where preco_produto > 50;
select * from tb_produtos where preco_produto >= 3 and preco_produto <= 60;
select * from tb_produtos where nome_produto like 'C%';
select * from tb_produtos left join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where nome_categoria like "legumes";
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
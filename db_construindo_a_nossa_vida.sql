create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

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
    fabricante varchar(255) not null,
    categoria_id bigint not null,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria (nome_categoria, descricao_categoria) 
values  ("teste1", "lorem ipsum"),
		("hidraulica", "lorem ipsum2"),
        ("eletrica","lorem ipsum3"),
        ("categoria legumes", "lorem ipsu4"),
        ("teste2", "lorem ipsum 5");

insert into tb_produtos (nome_produto,preco_produto,tamanho_produto,fabricante,categoria_id) 
values  ("prego","50","grande","grande","1"),
		("parafuso","60","pequeno","pequeno","2"),
		("tijolo","70","medio","pequeno","3"),
		("cano","55","grande","medio","4"),
		("tinta","40","pequeno","medio","5"),
		("martelo","20","medio","medio","1"),
		("caixa","10","grande","grande","2"),
		("telha","5","pequeno","grande","3"),
		("torneira","1","medio","pequeno","1");

select * from tb_produtos where preco_produto > 50;
select * from tb_produtos where preco_produto >= 3 and preco_produto <= 60;
select * from tb_produtos where nome_produto like 'C%';
select * from tb_produtos left join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where nome_categoria like "hidraulica";
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
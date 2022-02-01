create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria (
	id bigint(5) auto_increment,
    nome_categoria varchar(255) not null,
    descricao varchar(255) not null,
    
    primary key(id)
);

create table tb_pizza (
	id bigint(5) auto_increment,
    nome_pizza varchar(255) not null,
    preco decimal(10,2) not null,
    ingredientes varchar(255) not null,
    formato varchar(255) not null,
    categoria_id bigint not null,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria (nome_categoria, descricao)
values 	("pizza doce", "chocolate, morango e muito mais"),
		("pizza de sorvete", "todos os sorvetes disponíveis"),
        ("pizza meio a meio", "monte a sua própria pizza"),
        ("pizza diferente", "uma surpresa"),
        ("pizza desenho", "pizza inspirada");
        
insert into tb_pizza (nome_pizza, preco, ingredientes, formato, categoria_id)
values 	("pizza de chocolate", 80, "chocolate suiço", "redonda", "1"),
		("pizza de morango", 90, "morango silvestre", "redonda", "2"),
        ("pizza de napolitano", 100, "chocolate, creme e morango", "redonda", "3"),
        ("pizza calabresa", 45, "etc etc", "quadrada", "4"),
        ("pizza queijo", 30, "etc 2", "quadrada", "5"),
        ("pizza inglesa", 20, "etc 1", "quadrada", "1"),
        ("pizza portuguesa", 25, "oi oi", "quadrada", "2"),
        ("pizza 4 queijos", 10, "teste teste", "redonda", "3");

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco >= 29 and preco <= 60;
select * from tb_pizza where nome_pizza like 'C%';
select * from tb_pizza right join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where nome_categoria like "pizza doce";
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
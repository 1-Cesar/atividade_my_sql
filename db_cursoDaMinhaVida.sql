create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;


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
    horas varchar(255) not null,
    fabricante varchar(255) not null,
    categoria_id bigint not null,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria (nome_categoria, descricao_categoria) 
values  ("teste1", "lorem ipsum"),
		("java", "lorem ipsum2"),
        ("javascript","lorem ipsum3"),
        ("categoria java", "lorem ipsu4"),
        ("teste2", "lorem ipsum 5");

insert into tb_produtos (nome_produto,preco_produto,horas,fabricante,categoria_id) 
values  ("aprenda javascript","50","50","oi2","1"),
		("aprenda java","60","200","oi3","2"),
		("aprenda php","70","300","oi4","3"),
		("aprenda c++","55","40","oi oi","4"),
		("aprenda c","40","500","fabricante teste","5"),
		("aprenda sqlserver","45","245","fabri","1"),
		("aprenda mysql","10","900","programad","2"),
		("aprenda python","5","45","programa","3"),
		("aprenda ruby","1","10","teste","1");

select * from tb_produtos where preco_produto > 50;
select * from tb_produtos where preco_produto >= 3 and preco_produto <= 60;
select * from tb_produtos where nome_produto like 'J%';
select * from tb_produtos left join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where nome_categoria like "java";
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
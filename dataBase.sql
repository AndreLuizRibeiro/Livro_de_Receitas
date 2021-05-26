create database livro;
use livro;
CREATE TABLE `livro`.`receita` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `nome` VARCHAR(45) NULL COMMENT '',
  `passo` VARCHAR(255) NULL COMMENT '',
  `rendimento`VARCHAR(45) NULL COMMENT '',
  `tempo`VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');

insert into receita values (1, "Pudim", "1- bata no liquidificador o leite e o leite condensado, 2- ligue o forno a 250º, 3- dereta e coloque o açucar no fundo da forma, em seguida colqe a mistura a mistura, 4- asse e sirva","8 pessoas","30 minutos");

CREATE TABLE `livro`.`ingrediente`(
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `nome` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '');
  
  
insert into ingrediente values (1, "leite");
insert into ingrediente values (2, "açucar");
insert into ingrediente values (3, "leite condensado");

CREATE TABLE `livro`.`receita_ingrediente`(
`id` INT NOT NULL AUTO_INCREMENT COMMENT '',
`medida` VARCHAR(45) NULL COMMENT '',
`id_receita` INT NOT NULL ,
`id_ingrediente` INT NOT NULL ,
PRIMARY KEY (`id`) COMMENT '');
  

insert into receita_ingrediente values (1, "50g",1,1);
insert into receita_ingrediente values (2, "50g",1,2);
insert into receita_ingrediente values (3, "50g",1,3);




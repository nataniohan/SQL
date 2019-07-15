--DDL  CRIACAO DA TABELA PARA EXERCICIOS
USE CURSO;
GO

CREATE TABLE FUNCIONARIOS
(
  ID int identity(1,1) NOT NULL PRIMARY KEY,
  NOME VARCHAR(50) NOT NULL,
  SALARIO DECIMAL(10,2),
  SETOR VARCHAR(30)
  );

--criac�o minha mesmo 
create table cor(
id int identity(1,1) not null primary key,
cor varchar(30),
nome varchar(20)
)

insert into cor values ('amarelo'), ('roxo'),('cinza');


select cor from cor 
where id=9

update cor set cor = 'mesclado'
where id=9

--termino da minha cria��o
  
--DML SELECT
--EXEMPLO SELECT
SELECT�*�FROM���funcionarios;
--EXEMPLO SELECT
	SELECT�nome,setor�
	FROM���funcionarios;�

--EXEMPLO SELECT
	SELECT�nome,setor as depto
	FROM���funcionarios;

--DML INSERT
	INSERT�INTO funcionarios�VALUES��('Joao',1000,''),�('Jose',2000,''),('Alexandre',3000,'')�;

--OU
	INSERT�INTO funcionarios (nome,salario,setor)�VALUES�('Pedro',1000,'sei la que setor'), ('natan', 2000, 'dba');



--simulando erro pois o salario e do tipo INT 
   INSERT�INTO funcionarios (nome,salario)�VALUES�('Pedro','zaerre');

--simulando erro

  INSERT�INTO funcionarios (salario)�VALUES�(2500);

--DML UPDATE
	UPDATE�funcionarios�SET����salario�=�'1500'�
	WHERE��id�=�'1';

--OU Aumento de 50% sobre Sal�rio atual.
	UPDATE�funcionarios�SET����salario�=�salario*1.5�
	WHERE��id�=�'1';�

--exemplo update com mais de um campo
	UPDATE�funcionarios�SET����salario�=�salario*1.5, setor='TI'
	WHERE��id�<>�'1';�

--DML DELETE
	DELETE�funcionarios�
	where id='1';




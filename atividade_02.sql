create database Formula_1;
use formula_1;

CREATE TABLE tb_prova (
    id_prova INT NOT NULL,
    id_circuito INT,
    dt_prova date NOT NULL,
    nm_situacao varchar(50) not NULL,
    PRIMARY KEY (id_prova),
    CONSTRAINT `fk_circuito` FOREIGN KEY ( `id_circuito` ) REFERENCES `tb_circuito` ( `id_circuito` )
);

CREATE TABLE tb_piloto (
    id_piloto INT NOT NULL,
    id_pais int,
    id_equipe int,
    nm_piloto varchar(50) not NULL,
    dt_nascimento date NOT NULL,
    PRIMARY KEY (id_piloto),
    constraint `fk_pais`foreign key (`id_pais`) references `tb_pais` (`id_pais`),
    constraint `fk_equipe`foreign key (`id_equipe`) references `tb_equipe` (`id_equipe`)
);

CREATE TABLE tb_pais (
    id_pais INT NOT NULL,
    nm_pais varchar(50) not NULL,
	nr_populacao integer not NULL,
    PRIMARY KEY (id_pais)
);

CREATE TABLE tb_circuito (
    id_circuito INT NOT NULL,
    id_pais int,
    nm_circuito varchar(50) not NULL,
	nr_extensao integer not NULL,
    PRIMARY KEY (id_circuito),
    constraint `fk_pais`foreign key (`id_pais`) references `tb_pais` (`id_pais`)
);

CREATE TABLE tb_equipe (
    id_equipe INT NOT NULL,
    id_pais int,
    nm_equipe varchar(50) not NULL,
    PRIMARY KEY (id_equipe),
    constraint `fk_pais` foreign key (`id_pais`)  references `tb_pais` (`id_pais`)
);

	CREATE TABLE tb_resultado (
		nr_tempo_prova time,
		nr_coloc_final float,
		nr_posic_grid float,
		nr_melhor_volta time,
        id_prova int,
        id_piloto int,
        constraint `fk_prova` foreign key (`id_prova`) references `tb_prova` (`id_prova`),
        constraint `fk_piloto` foreign key (`id_piloto`) references `tb_prova` (`id_piloto`)
	);

 -- 1. fazer uso do comando Insert e popular as tabelas.
 
insert into tb_prova (id_prova, id_circuito, dt_prova, nm_situacao) values ('1','1','2019/03/17','2019 Australiano F1 GP');
insert into tb_prova (id_prova, id_circuito , dt_prova, nm_situacao) values ('2','2','2019/03/31','2019 Bahrain F1 GP');
insert into tb_prova (id_prova, id_circuito, dt_prova, nm_situacao) values ('3','3','2019/04/14','2019 chinês F1 GP');
insert into tb_prova (id_prova, id_circuito, dt_prova, nm_situacao) values ('4','4','2019/04/28','GP de F2019 do Azerbaijão 1');
insert into tb_prova (id_prova, id_circuito, dt_prova, nm_situacao) values ('5','5', '2019/05/12','2019 Espanhol F1 GP');
insert into tb_prova (id_prova, id_circuito, dt_prova, nm_situacao) values ('6','6','2019/06/09','2019 canadense F1 GP');
insert into tb_prova (id_prova, id_circuito, dt_prova, nm_situacao) values ('7', '7','2019/11/17',  '2019 GP Brasileiro de F1');
insert into tb_prova (id_prova, id_circuito, dt_prova, nm_situacao) values ('8','8','2019/12/01','GP de Abu Dhabi F2019 1');
insert into tb_prova (id_prova, id_circuito, dt_prova, nm_situacao) values ('9','9','2019/11/03','GP de F2019 dos EUA 1');
insert into tb_prova (id_prova, id_circuito, dt_prova, nm_situacao) values ('10','10','2019/07/28','2019 alemão F1 GP');
insert into tb_piloto (id_piloto, id_pais, id_equipe, nm_piloto, dt_nascimento) values ('44','21', '1', 'Lewis Hamilton', '1985/01/07');
insert into tb_piloto (id_piloto, id_pais, id_equipe, nm_piloto, dt_nascimento) values ('5','1', '2', ' Sebastian Vettel', '1987/07/03');
insert into tb_piloto (id_piloto, id_pais, id_equipe, nm_piloto, dt_nascimento) values ('55','4', '3', ' Carlos Sainz Jr.', '1994/09/01');
insert into tb_piloto (id_piloto, id_pais, id_equipe, nm_piloto, dt_nascimento) values ('7','6', '4', ' Kimi Raikkonen', '1979/10/17');
insert into tb_piloto (id_piloto, id_pais, id_equipe, nm_piloto, dt_nascimento) values ('27','4', '5', 'Nico Rosberg ', '1985/01/27');
insert into tb_piloto (id_piloto, id_pais, id_equipe, nm_piloto, dt_nascimento) values ('6','7', '6', 'Charles Leclerc ', '1997/10/16');
insert into tb_piloto (id_piloto, id_pais, id_equipe, nm_piloto, dt_nascimento) values ('77','20', '7', 'Valtteri Bottas ', '1989/08/28');
insert into tb_piloto (id_piloto, id_pais, id_equipe, nm_piloto, dt_nascimento) values ('8','23', '8', ' Sergio Pérez', '1990/01/26');
insert into tb_piloto (id_piloto, id_pais, id_equipe, nm_piloto, dt_nascimento) values ('33','18', '9', '  Max Verstappen', '1997/09/30');
insert into tb_piloto (id_piloto, id_pais, id_equipe, nm_piloto, dt_nascimento) values ('3','11', '10', 'Daniel Ricciardo ', '1989/07/01');
insert into tb_pais(id_pais, nm_pais, nr_populacao) values ('21','United Kingdom', '6665');
insert into tb_pais(id_pais, nm_pais, nr_populacao) values ('1','Alemanha','8302');
insert into tb_pais(id_pais, nm_pais, nr_populacao) values ('4','Espanha', '4694');
insert into tb_pais(id_pais, nm_pais, nr_populacao) values ('6'	,'Finlândia', '5518');
insert into tb_pais(id_pais, nm_pais, nr_populacao) values ('8'	, 'Alemanha' ,'8302');
insert into tb_pais(id_pais, nm_pais, nr_populacao) values ('7'	, 'Monaco',	'38964');
insert into tb_pais(id_pais, nm_pais, nr_populacao) values ('20','Finlândia', '5518');
insert into tb_pais(id_pais, nm_pais, nr_populacao) values ('23','México','1276');
insert into tb_pais(id_pais, nm_pais, nr_populacao) values ('18','Países Baixos','1728');
insert into tb_pais(id_pais, nm_pais, nr_populacao) values ('11', 'Austrália' ,	'2536');
insert into tb_circuito (id_circuito, id_pais, nm_circuito,nr_extensao) values ('1','21','Circuito Albert Park','5303');
insert into tb_circuito (id_circuito, id_pais, nm_circuito,nr_extensao) values ('2','1','Circuito Internacional do Bahrein','5412');
insert into tb_circuito (id_circuito, id_pais, nm_circuito,nr_extensao) values ('3','4','Circuito Internacional de Xangai',	'5451');
insert into tb_circuito (id_circuito, id_pais, nm_circuito,nr_extensao) values ('4','6','Circuito de rua de Baku','6003');
insert into tb_circuito (id_circuito, id_pais, nm_circuito,nr_extensao) values ('5', '4','Circuito da Catalunha','4655');
insert into tb_circuito (id_circuito, id_pais, nm_circuito,nr_extensao) values ('6','7','Circuito Gilles Villeneuve','4361');
insert into tb_circuito (id_circuito, id_pais, nm_circuito,nr_extensao) values ('7','20','Grande Prémio do Brasil',	'4309');
insert into tb_circuito (id_circuito, id_pais, nm_circuito,nr_extensao) values ('8','23','Grande Prémio F1 de Abu Dhabi','5554');
insert into tb_circuito (id_circuito, id_pais, nm_circuito,nr_extensao) values ('9','18','Grande Prémio dos EUA','5513');
insert into tb_circuito (id_circuito, id_pais, nm_circuito,nr_extensao) values ('10','11','Grande Prémio da Alemanha','4574');
insert into tb_equipe(id_equipe,id_pais,nm_equipe) values ('1','21','Ferrari');
insert into tb_equipe(id_equipe	,id_pais,nm_equipe) values ('2',	'1','McLaren');
insert into tb_equipe(id_equipe	,id_pais,nm_equipe) values  ('3','4','Mercedes');
insert into tb_equipe(id_equipe	,id_pais,nm_equipe) values ('4','6','Red Bull');
insert into tb_equipe(id_equipe	,id_pais,nm_equipe) values ('5',	'4','Williams');
insert into tb_equipe(id_equipe	,id_pais,nm_equipe) values ('6','7','Renault');
insert into tb_equipe(id_equipe	,id_pais,nm_equipe) values ('7',	'20','Equipe Lotus');
insert into tb_equipe(id_equipe	,id_pais,nm_equipe) values ('8',	'23','Force India');
insert into tb_equipe(id_equipe	,id_pais,nm_equipe) values ('9','18','Brabham');
insert into tb_equipe(id_equipe	,id_pais,nm_equipe) values ('10'	,'11','Benetton');
insert into tb_resultado(nr_tempo_prova, nr_coloc_final, nr_posic_grid, nr_melhor_volta, id_prova,	id_piloto) values ('2:59.47', '1' ,	'44' , '1:32.014',	'1'	,'44');
insert into tb_resultado(nr_tempo_prova, nr_coloc_final, nr_posic_grid, nr_melhor_volta, id_prova,	id_piloto) values ('2:59.48',	'2','77','1:32.827', '2'	,'5');
insert into tb_resultado(nr_tempo_prova, nr_coloc_final, nr_posic_grid, nr_melhor_volta, id_prova,	id_piloto) values ('2:59.55','3','33','1:32.864','3',	'3');
insert into tb_resultado(nr_tempo_prova, nr_coloc_final, nr_posic_grid, nr_melhor_volta, id_prova,	id_piloto) values ('2:59.58','4','27',	'1:33.352','4','7');
insert into tb_resultado(nr_tempo_prova, nr_coloc_final, nr_posic_grid, nr_melhor_volta, id_prova,	id_piloto) values ('2:59.59','5','8','1:33.411',	'5','27');
insert into tb_resultado(nr_tempo_prova, nr_coloc_final, nr_posic_grid, nr_melhor_volta, id_prova,	id_piloto) values ('2:59.59','6', '3','1:33.573','6', '6');
insert into tb_resultado(nr_tempo_prova, nr_coloc_final, nr_posic_grid, nr_melhor_volta, id_prova,	id_piloto) values ('3:00.06', '7',	'6', '1:33.588', '7','77');
insert into tb_resultado(nr_tempo_prova, nr_coloc_final, nr_posic_grid, nr_melhor_volta, id_prova,	id_piloto) values ('3:00.07', '8',	'5','1:33.625',	'8','8');
insert into tb_resultado(nr_tempo_prova, nr_coloc_final, nr_posic_grid, nr_melhor_volta, id_prova,	id_piloto) values ('3:00.10','9','55',	'1:33.629',	'9','33');
insert into tb_resultado(nr_tempo_prova, nr_coloc_final, nr_posic_grid, nr_melhor_volta, id_prova,	id_piloto) values ('2:59.48','10','7','1:33.684','10','3');
  
-- 2. Criar uma query que selecione apenas pilotos da equipe Ferrari(20).
   select tb_equipe.nm_equipe, tb_piloto.nm_piloto from tb_equipe left outer join tb_piloto on tb_equipe.id_equipe = tb_piloto.id_equipe where nm_equipe = 'Ferrari';
  
-- 3. Exibir a quantidade de pilotos por ano de nascimento, ordenando-os por este aspecto de forma ascendente – do ano mais antigo ao mais recente.
   select nm_piloto, dt_nascimento from tb_piloto order by dt_nascimento;

-- 4. Exibir o nome do piloto, o seu país de nascimento, nome da equipe, país da equipe, colocação final, nome do circuito e a data da realização da prova na Austrália – lembre-se de utilizar o mesmo DER.
   select nm_piloto, nm_pais, nm_equipe, nm_circuito, dt_prova, nr_coloc_final  from tb_piloto
   inner join tb_pais on tb_piloto.id_pais = tb_pais.id_pais  
   inner join tb_equipe on tb_pais.id_pais = tb_equipe.id_pais 
   inner join tb_circuito on tb_pais.id_pais = tb_circuito.id_pais
   inner join tb_resultado on tb_resultado.id_piloto = tb_piloto.id_piloto
   inner join tb_prova on tb_prova.id_prova = tb_resultado.id_prova where tb_circuito.nm_circuito = 'Circuito Albert Park';















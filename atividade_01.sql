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

CREATE SEQUENCE eventosequence
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 20
  CACHE 1;
ALTER TABLE eventosequence
  OWNER TO postgres;
  
  
  CREATE TABLE eventos
(
  id bigint NOT NULL DEFAULT nextval('eventosequence'::regclass),
  descricao character varying(500),
  dataevento character varying(20),
  CONSTRAINT evento_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE eventos
  OWNER TO postgres;
  

INSERT INTO eventos(
            id, descricao, dataevento)
    VALUES (1, 'Reunião de projeto 1', '2018-10-10');

INSERT INTO eventos(
            id, descricao, dataevento)
    VALUES (2, 'Reunião de projeto 2', '2018-10-05');


INSERT INTO eventos(
            id, descricao, dataevento)
    VALUES (3, 'Reunião de projeto 3', '2018-10-01');



	
CREATE SEQUENCE projetosequence
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 20
  CACHE 1;
ALTER TABLE projetosequence
  OWNER TO postgres;

CREATE SEQUENCE seriesequence
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 20
  CACHE 1;
ALTER TABLE seriesequence
  OWNER TO postgres;
  
  
  
  CREATE TABLE projeto
(
  id bigint NOT NULL DEFAULT nextval('projetosequence'::regclass),
  nome character varying(500),
  CONSTRAINT projeto_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE eventos
  OWNER TO postgres;


  
  CREATE TABLE series
(
  id bigint NOT NULL DEFAULT nextval('seriesequence'::regclass),
  nome character varying(500),
datainicial character varying(500),
datafinal character varying(500),
projeto bigint not null,
  CONSTRAINT series_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE series
  OWNER TO postgres;
  



INSERT INTO projeto(
            id, nome)
    VALUES (1, 'Projeto 1');


INSERT INTO projeto(
            id, nome)
    VALUES (2, 'Projeto 2');
	
	
INSERT INTO series(
            id, nome, datainicial, datafinal, projeto)
    VALUES (1, 'Serie 1', '2018-10-05', '2018-10-10', 1);




INSERT INTO series(
            id, nome, datainicial, datafinal, projeto)
    VALUES (2, 'Serie 2', '2018-10-08', '2018-10-12', 1);

INSERT INTO series(
            id, nome, datainicial, datafinal, projeto)
    VALUES (3, 'Serie 1', '2018-10-05', '2018-10-10', 2);




INSERT INTO series(
            id, nome, datainicial, datafinal, projeto)
    VALUES (4, 'Serie 2', '2018-10-08', '2018-10-12', 2);

	

  

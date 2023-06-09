DROP DATABASE IF EXISTS instituto;
CREATE DATABASE instituto;
use instituto;

CREATE TABLE alumno (
    dni VARCHAR(9) NOT NULL,
    nombre VARCHAR(20),
    apellido1 VARCHAR(20),
    apellido2 VARCHAR(20),
    fechnac date
);

CREATE TABLE asignatura (
    codigo numeric NOT NULL,
    nombre VARCHAR(20),
    curso numeric
);

CREATE TABLE ensenya (
    profesor VARCHAR(9) NOT NULL,
    asignatura numeric NOT NULL,
    grupo character varying(2) NOT NULL
);

CREATE TABLE imparte (
    edificioaula character varying(10) NOT NULL,
    claseaula numeric NOT NULL,
    asignatura numeric NOT NULL
);

CREATE TABLE matricula (
    alumno VARCHAR(9) NOT NULL,
    asignatura numeric NOT NULL,
    nota numeric,
    CONSTRAINT matricula_nota_ck CHECK (((nota >= (0)) AND (nota <= (10))))
);

CREATE TABLE profesor (
    dni VARCHAR(9) NOT NULL,
    nombre VARCHAR(20),
    apellido1 VARCHAR(20),
    apellido2 VARCHAR(20),
    anyoi numeric
);

CREATE TABLE reparto (
    alumno VARCHAR(9) NOT NULL,
    grupo character varying(2) NOT NULL
);

INSERT INTO alumno VALUES ('78392053A', 'Elena', 'Rodriguez', 'Perez', '1998-01-04');
INSERT INTO alumno VALUES ('67392863B', 'Cesar', 'Gomez', 'Sanchez', '1998-01-04');
INSERT INTO alumno VALUES ('73902451B', 'Elisa', 'Fernandez', 'Medina', '1998-02-07');
INSERT INTO alumno VALUES ('45673195B', 'Enrique', 'Suarez', 'Molina', '1998-05-12');
INSERT INTO alumno VALUES ('68902134C', 'Aaron', 'Quiroga', 'Vazquez', '1998-03-21');
INSERT INTO alumno VALUES ('78563401C', 'David', 'Romero', 'Vega', '1998-02-18');
INSERT INTO alumno VALUES ('54389210D', 'Alejandro', 'Ledesma', 'Escobar', '1998-08-06');
INSERT INTO alumno VALUES ('56703214D', 'Bruno', 'Torres', 'Moreno', '1998-10-14');
INSERT INTO alumno VALUES ('78932434F', 'Felix', 'Ramos', 'Ortega', '1998-11-09');
INSERT INTO alumno VALUES ('90067312F', 'Azucena', 'Morales', 'Lopez', '1998-12-17');
INSERT INTO alumno VALUES ('56323453G', 'Beatriz', 'Bermudez', 'Campo', '1998-11-03');
INSERT INTO alumno VALUES ('67863211G', 'Gustavo', 'Jimenez', 'Ortiz', '1998-07-13');
INSERT INTO alumno VALUES ('67895435H', 'Amanda', 'Martínez', 'Rojas', '1998-08-24');
INSERT INTO alumno VALUES ('43214352H', 'Rebeca', 'Blanco', 'Gonzalez', '1998-05-30');
INSERT INTO alumno VALUES ('65473823J', 'Catalina', 'Ortega', 'Caballero', '1998-03-02');
INSERT INTO alumno VALUES ('56743284K', 'Marcos', 'Perez', 'Gutierrez', '1998-04-17');
INSERT INTO alumno VALUES ('65473877K', 'Carmen', 'Castillo', 'Moreno', '1998-03-22');
INSERT INTO alumno VALUES ('22314780L', 'Elias', 'Rodriguez', 'Hernandez', '1998-05-09');
INSERT INTO alumno VALUES ('23145236L', 'Cintia', 'Rodriguez', 'Medina', '1999-05-20');
INSERT INTO alumno VALUES ('76548932M', 'Diana', 'Reyes', 'Martínez', '1999-05-01');
INSERT INTO alumno VALUES ('90765402M', 'Adrian', 'Jimenez', 'Figueroa', '1999-02-17');
INSERT INTO alumno VALUES ('67908723N', 'Delia', 'Salazar', 'Gutierrez', '1999-01-03');
INSERT INTO alumno VALUES ('56436785N', 'Elvira', 'Hernandez', 'Sanchez', '1999-11-14');
INSERT INTO alumno VALUES ('78543289P', 'Esmeralda', 'Fernandez', 'Reyes', '1999-03-25');
INSERT INTO alumno VALUES ('45326478P', 'Arturo', 'Garcia', 'Gomez', '1999-03-06');
INSERT INTO alumno VALUES ('56640176R', 'Felipe', 'Sanchez', 'Garcia', '1999-06-17');
INSERT INTO alumno VALUES ('54323465R', 'Gloria', 'Martínez', 'Fernandez', '1999-05-18');
INSERT INTO alumno VALUES ('70119023S', 'Guillermo', 'Fuentes', 'Vega', '1999-11-29');
INSERT INTO alumno VALUES ('80778905S', 'Blanca', 'Ramos', 'Lopez', '1999-12-04');
INSERT INTO alumno VALUES ('80987689T', 'Maite', 'Nuñez', 'Bermudez', '1999-12-31');
INSERT INTO alumno VALUES ('76589023T', 'Celia', 'Gutierrez', 'Vera', '1999-08-01');
INSERT INTO alumno VALUES ('54676638V', 'Matias', 'Mejía', 'Zambrano', '1999-06-07');
INSERT INTO alumno VALUES ('76899654C', 'Sonia', 'Mendoza', 'Castro', '1999-06-18');
INSERT INTO alumno VALUES ('68875034D', 'Carlos', 'Fuentes', 'Cruz', '1999-04-24');
INSERT INTO alumno VALUES ('67884320V', 'Raquel', 'Ortiz', 'Carvajal', '1999-03-11');
INSERT INTO alumno VALUES ('76899345F', 'Tatiana', 'Garrido', 'Medina', '1999-10-09');
INSERT INTO alumno VALUES ('76893452G', 'Saul', 'Garcia', 'Cardenas', '1999-09-13');
INSERT INTO alumno VALUES ('76657403J', 'Sergio', 'Soto', 'Carrasco', '1999-01-04');
INSERT INTO alumno VALUES ('34104567J', 'Raul', 'Diaz', 'Silva', '1999-01-09');
INSERT INTO alumno VALUES ('10937582A', 'Eduardo', 'González', 'García', '1998-01-01');

INSERT INTO asignatura VALUES (1, 'Lengua', 1);
INSERT INTO asignatura VALUES (2, 'Lengua', 2);
INSERT INTO asignatura VALUES (5, 'Historia', 1);
INSERT INTO asignatura VALUES (6, 'Historia', 2);
INSERT INTO asignatura VALUES (3, 'Matemáticas', 1);
INSERT INTO asignatura VALUES (4, 'Matemáticas', 2);
INSERT INTO asignatura VALUES (7, 'Inglés', 1);
INSERT INTO asignatura VALUES (8, 'Inglés', 2);
INSERT INTO asignatura VALUES (9, 'Latín', 1);
INSERT INTO asignatura VALUES (10, 'Latín', 2);
INSERT INTO asignatura VALUES (11, 'Física', 1);
INSERT INTO asignatura VALUES (12, 'Física', 2);
INSERT INTO asignatura VALUES (13, 'Informática', 1);
INSERT INTO asignatura VALUES (14, 'Informática', 2);


INSERT INTO ensenya VALUES ('78896563A', 4, '2A');
INSERT INTO ensenya VALUES ('78896563A', 4, '2B');
INSERT INTO ensenya VALUES ('55400892G', 1, '1A');
INSERT INTO ensenya VALUES ('55400892G', 1, '1B');
INSERT INTO ensenya VALUES ('54430287J', 2, '2A');
INSERT INTO ensenya VALUES ('54430287J', 2, '2B');
INSERT INTO ensenya VALUES ('45362734P', 7, '1A');
INSERT INTO ensenya VALUES ('45362734P', 7, '1B');
INSERT INTO ensenya VALUES ('78905435S', 8, '2A');
INSERT INTO ensenya VALUES ('78905435S', 8, '2B');
INSERT INTO ensenya VALUES ('11900567T', 5, '1A');
INSERT INTO ensenya VALUES ('11900567T', 6, '2A');
INSERT INTO ensenya VALUES ('78934567M', 9, '1A');
INSERT INTO ensenya VALUES ('78934567M', 10, '2A');
INSERT INTO ensenya VALUES ('67743002D', 11, '1B');
INSERT INTO ensenya VALUES ('67743002D', 12, '2B');
INSERT INTO ensenya VALUES ('76686546D', 13, '1B');
INSERT INTO ensenya VALUES ('76686546D', 14, '2B');
INSERT INTO ensenya VALUES ('76566708T', 3, '1A');
INSERT INTO ensenya VALUES ('76566708T', 3, '1B');

INSERT INTO imparte VALUES ('Letras', 1, 1);
INSERT INTO imparte VALUES ('Letras', 2, 2);
INSERT INTO imparte VALUES ('Ciencias', 2, 4);
INSERT INTO imparte VALUES ('Letras', 3, 5);
INSERT INTO imparte VALUES ('Letras', 4, 6);
INSERT INTO imparte VALUES ('Letras', 5, 7);
INSERT INTO imparte VALUES ('Letras', 6, 8);
INSERT INTO imparte VALUES ('Letras', 7, 9);
INSERT INTO imparte VALUES ('Letras', 8, 10);
INSERT INTO imparte VALUES ('Ciencias', 3, 11);
INSERT INTO imparte VALUES ('Ciencias', 3, 12);
INSERT INTO imparte VALUES ('Ciencias', 4, 13);
INSERT INTO imparte VALUES ('Ciencias', 4, 14);
INSERT INTO imparte VALUES ('Ciencias', 1, 3);

INSERT INTO matricula VALUES ('78392053A', 1, 7);
INSERT INTO matricula VALUES ('78392053A', 5, 9);
INSERT INTO matricula VALUES ('78392053A', 7, 8);
INSERT INTO matricula VALUES ('78392053A', 9, 6);
INSERT INTO matricula VALUES ('67392863B', 1, 5);
INSERT INTO matricula VALUES ('67392863B', 5, 6);
INSERT INTO matricula VALUES ('67392863B', 7, 4);
INSERT INTO matricula VALUES ('67392863B', 9, 6);
INSERT INTO matricula VALUES ('73902451B', 1, 4);
INSERT INTO matricula VALUES ('73902451B', 5, 5);
INSERT INTO matricula VALUES ('73902451B', 7, 6);
INSERT INTO matricula VALUES ('73902451B', 9, 6);
INSERT INTO matricula VALUES ('45673195B', 1, 9);
INSERT INTO matricula VALUES ('45673195B', 5, 10);
INSERT INTO matricula VALUES ('45673195B', 7, 8);
INSERT INTO matricula VALUES ('45673195B', 9, 9);
INSERT INTO matricula VALUES ('68902134C', 1, 7);
INSERT INTO matricula VALUES ('68902134C', 5, 8);
INSERT INTO matricula VALUES ('68902134C', 7, 6);
INSERT INTO matricula VALUES ('68902134C', 9, 7);
INSERT INTO matricula VALUES ('78563401C', 1, 9);
INSERT INTO matricula VALUES ('78563401C', 5, 8);
INSERT INTO matricula VALUES ('78563401C', 7, 8);
INSERT INTO matricula VALUES ('78563401C', 9, 7);
INSERT INTO matricula VALUES ('54389210D', 1, 10);
INSERT INTO matricula VALUES ('54389210D', 5, 9);
INSERT INTO matricula VALUES ('54389210D', 7, 9);
INSERT INTO matricula VALUES ('54389210D', 9, 8);
INSERT INTO matricula VALUES ('56703214D', 1, 6);
INSERT INTO matricula VALUES ('56703214D', 5, 7);
INSERT INTO matricula VALUES ('56703214D', 7, 8);
INSERT INTO matricula VALUES ('56703214D', 9, 6);
INSERT INTO matricula VALUES ('78932434F', 1, 7);
INSERT INTO matricula VALUES ('78932434F', 5, 8);
INSERT INTO matricula VALUES ('78932434F', 7, 6);
INSERT INTO matricula VALUES ('78932434F', 9, 7);
INSERT INTO matricula VALUES ('90067312F', 2, 7);
INSERT INTO matricula VALUES ('90067312F', 4, 7);
INSERT INTO matricula VALUES ('90067312F', 6, 8);
INSERT INTO matricula VALUES ('90067312F', 8, 6);
INSERT INTO matricula VALUES ('90067312F', 10, 7);
INSERT INTO matricula VALUES ('56323453G', 2, 8);
INSERT INTO matricula VALUES ('56323453G', 4, 9);
INSERT INTO matricula VALUES ('56323453G', 6, 10);
INSERT INTO matricula VALUES ('56323453G', 8, 10);
INSERT INTO matricula VALUES ('56323453G', 10, 9);
INSERT INTO matricula VALUES ('67863211G', 2, 4);
INSERT INTO matricula VALUES ('67863211G', 4, 5);
INSERT INTO matricula VALUES ('67863211G', 6, 6);
INSERT INTO matricula VALUES ('67863211G', 8, 5);
INSERT INTO matricula VALUES ('67863211G', 10, 4);
INSERT INTO matricula VALUES ('67895435H', 2, 3);
INSERT INTO matricula VALUES ('67895435H', 4, 4);
INSERT INTO matricula VALUES ('67895435H', 6, 2);
INSERT INTO matricula VALUES ('67895435H', 8, 3);
INSERT INTO matricula VALUES ('67895435H', 10, 5);
INSERT INTO matricula VALUES ('43214352H', 2, 6);
INSERT INTO matricula VALUES ('43214352H', 4, 7);
INSERT INTO matricula VALUES ('43214352H', 6, 7);
INSERT INTO matricula VALUES ('43214352H', 8, 8);
INSERT INTO matricula VALUES ('43214352H', 10, 7);
INSERT INTO matricula VALUES ('65473823J', 2, 8);
INSERT INTO matricula VALUES ('65473823J', 4, 6);
INSERT INTO matricula VALUES ('65473823J', 6, 7);
INSERT INTO matricula VALUES ('65473823J', 8, 7);
INSERT INTO matricula VALUES ('65473823J', 10, 7);
INSERT INTO matricula VALUES ('56743284K', 2, 9);
INSERT INTO matricula VALUES ('56743284K', 4, 10);
INSERT INTO matricula VALUES ('56743284K', 6, 10);
INSERT INTO matricula VALUES ('56743284K', 8, 10);
INSERT INTO matricula VALUES ('56743284K', 10, 9);
INSERT INTO matricula VALUES ('65473877K', 2, 7);
INSERT INTO matricula VALUES ('65473877K', 4, 8);
INSERT INTO matricula VALUES ('65473877K', 6, 8);
INSERT INTO matricula VALUES ('65473877K', 8, 6);
INSERT INTO matricula VALUES ('65473877K', 10, 8);
INSERT INTO matricula VALUES ('22314780L', 2, 6);
INSERT INTO matricula VALUES ('22314780L', 4, 5);
INSERT INTO matricula VALUES ('22314780L', 6, 6);
INSERT INTO matricula VALUES ('22314780L', 10, 6);
INSERT INTO matricula VALUES ('23145236L', 1, 6);
INSERT INTO matricula VALUES ('23145236L', 7, 7);
INSERT INTO matricula VALUES ('23145236L', 11, 6);
INSERT INTO matricula VALUES ('23145236L', 13, 7);
INSERT INTO matricula VALUES ('76548932M', 1, 10);
INSERT INTO matricula VALUES ('76548932M', 7, 9);
INSERT INTO matricula VALUES ('76548932M', 11, 9);
INSERT INTO matricula VALUES ('76548932M', 13, 8);
INSERT INTO matricula VALUES ('90765402M', 1, 8);
INSERT INTO matricula VALUES ('90765402M', 7, 7);
INSERT INTO matricula VALUES ('90765402M', 11, 6);
INSERT INTO matricula VALUES ('90765402M', 13, 8);
INSERT INTO matricula VALUES ('67908723N', 1, 4);
INSERT INTO matricula VALUES ('67908723N', 7, 3);
INSERT INTO matricula VALUES ('67908723N', 11, 5);
INSERT INTO matricula VALUES ('67908723N', 13, 6);
INSERT INTO matricula VALUES ('56436785N', 1, 3);
INSERT INTO matricula VALUES ('56436785N', 7, 4);
INSERT INTO matricula VALUES ('56436785N', 11, 5);
INSERT INTO matricula VALUES ('56436785N', 13, 5);
INSERT INTO matricula VALUES ('78543289P', 1, 10);
INSERT INTO matricula VALUES ('78543289P', 7, 9);
INSERT INTO matricula VALUES ('78543289P', 11, 10);
INSERT INTO matricula VALUES ('78543289P', 13, 10);
INSERT INTO matricula VALUES ('45326478P', 1, 8);
INSERT INTO matricula VALUES ('45326478P', 7, 7);
INSERT INTO matricula VALUES ('45326478P', 11, 6);
INSERT INTO matricula VALUES ('45326478P', 13, 7);
INSERT INTO matricula VALUES ('56640176R', 1, 8);
INSERT INTO matricula VALUES ('56640176R', 7, 8);
INSERT INTO matricula VALUES ('56640176R', 11, 7);
INSERT INTO matricula VALUES ('56640176R', 13, 9);
INSERT INTO matricula VALUES ('54323465R', 1, 6);
INSERT INTO matricula VALUES ('54323465R', 7, 7);
INSERT INTO matricula VALUES ('54323465R', 11, 8);
INSERT INTO matricula VALUES ('54323465R', 13, 6);
INSERT INTO matricula VALUES ('70119023S', 1, 7);
INSERT INTO matricula VALUES ('70119023S', 7, 6);
INSERT INTO matricula VALUES ('70119023S', 11, 9);
INSERT INTO matricula VALUES ('70119023S', 13, 7);
INSERT INTO matricula VALUES ('80778905S', 2, 7);
INSERT INTO matricula VALUES ('80778905S', 4, 7);
INSERT INTO matricula VALUES ('80778905S', 8, 8);
INSERT INTO matricula VALUES ('80778905S', 12, 6);
INSERT INTO matricula VALUES ('80778905S', 14, 7);
INSERT INTO matricula VALUES ('80987689T', 2, 6);
INSERT INTO matricula VALUES ('80987689T', 4, 5);
INSERT INTO matricula VALUES ('80987689T', 8, 5);
INSERT INTO matricula VALUES ('80987689T', 12, 7);
INSERT INTO matricula VALUES ('80987689T', 14, 6);
INSERT INTO matricula VALUES ('76589023T', 2, 10);
INSERT INTO matricula VALUES ('76589023T', 4, 10);
INSERT INTO matricula VALUES ('76589023T', 8, 9);
INSERT INTO matricula VALUES ('76589023T', 12, 9);
INSERT INTO matricula VALUES ('76589023T', 14, 10);
INSERT INTO matricula VALUES ('54676638V', 2, 8);
INSERT INTO matricula VALUES ('54676638V', 4, 10);
INSERT INTO matricula VALUES ('54676638V', 8, 9);
INSERT INTO matricula VALUES ('54676638V', 12, 10);
INSERT INTO matricula VALUES ('54676638V', 14, 9);
INSERT INTO matricula VALUES ('76899654C', 2, 8);
INSERT INTO matricula VALUES ('76899654C', 4, 8);
INSERT INTO matricula VALUES ('76899654C', 8, 9);
INSERT INTO matricula VALUES ('76899654C', 12, 8);
INSERT INTO matricula VALUES ('76899654C', 14, 7);
INSERT INTO matricula VALUES ('68875034D', 2, 5);
INSERT INTO matricula VALUES ('68875034D', 4, 6);
INSERT INTO matricula VALUES ('68875034D', 8, 4);
INSERT INTO matricula VALUES ('68875034D', 12, 5);
INSERT INTO matricula VALUES ('68875034D', 14, 5);
INSERT INTO matricula VALUES ('67884320V', 2, 3);
INSERT INTO matricula VALUES ('67884320V', 4, 4);
INSERT INTO matricula VALUES ('67884320V', 8, 5);
INSERT INTO matricula VALUES ('67884320V', 12, 3);
INSERT INTO matricula VALUES ('67884320V', 14, 6);
INSERT INTO matricula VALUES ('76899345F', 2, 7);
INSERT INTO matricula VALUES ('76899345F', 4, 5);
INSERT INTO matricula VALUES ('76899345F', 8, 7);
INSERT INTO matricula VALUES ('76899345F', 12, 6);
INSERT INTO matricula VALUES ('76899345F', 14, 8);
INSERT INTO matricula VALUES ('76893452G', 2, 6);
INSERT INTO matricula VALUES ('76893452G', 4, 7);
INSERT INTO matricula VALUES ('76893452G', 8, 7);
INSERT INTO matricula VALUES ('76893452G', 12, 6);
INSERT INTO matricula VALUES ('76893452G', 14, 6);
INSERT INTO matricula VALUES ('76657403J', 2, 8);
INSERT INTO matricula VALUES ('76657403J', 4, 9);
INSERT INTO matricula VALUES ('76657403J', 8, 9);
INSERT INTO matricula VALUES ('76657403J', 12, 10);
INSERT INTO matricula VALUES ('76657403J', 14, 8);
INSERT INTO matricula VALUES ('34104567J', 2, 6);
INSERT INTO matricula VALUES ('34104567J', 4, 5);
INSERT INTO matricula VALUES ('34104567J', 8, 5);
INSERT INTO matricula VALUES ('34104567J', 12, 7);
INSERT INTO matricula VALUES ('34104567J', 14, 5);
INSERT INTO matricula VALUES ('10937582A', 3, 4);
INSERT INTO matricula VALUES ('10937582A', 5, 5);
INSERT INTO matricula VALUES ('10937582A', 7, 5);
INSERT INTO matricula VALUES ('10937582A', 9, 6);
INSERT INTO matricula VALUES ('78392053A', 3, 7);
INSERT INTO matricula VALUES ('67392863B', 3, 7);
INSERT INTO matricula VALUES ('73902451B', 3, 4);
INSERT INTO matricula VALUES ('45673195B', 3, 9);
INSERT INTO matricula VALUES ('68902134C', 3, 7);
INSERT INTO matricula VALUES ('78563401C', 3, 9);
INSERT INTO matricula VALUES ('54389210D', 3, 10);
INSERT INTO matricula VALUES ('56703214D', 3, 7);
INSERT INTO matricula VALUES ('78932434F', 3, 8);
INSERT INTO matricula VALUES ('23145236L', 3, 7);
INSERT INTO matricula VALUES ('76548932M', 3, 10);
INSERT INTO matricula VALUES ('90765402M', 3, 8);
INSERT INTO matricula VALUES ('67908723N', 3, 5);
INSERT INTO matricula VALUES ('56436785N', 3, 4);
INSERT INTO matricula VALUES ('78543289P', 3, 10);
INSERT INTO matricula VALUES ('45326478P', 3, 7);
INSERT INTO matricula VALUES ('56640176R', 3, 9);
INSERT INTO matricula VALUES ('54323465R', 3, 7);
INSERT INTO matricula VALUES ('70119023S', 3, 7);
INSERT INTO matricula VALUES ('10937582A', 1, 3);

INSERT INTO profesor VALUES ('78896563A', 'Simon', 'Lopez', 'Martin', 2013);
INSERT INTO profesor VALUES ('55400892G', 'Tristan', 'Vega', 'Gomez', 2015);
INSERT INTO profesor VALUES ('54430287J', 'Berta', 'Miranda', 'Ortega', 2014);
INSERT INTO profesor VALUES ('45362734P', 'Domingo', 'Gonzalez', 'Suarez', 2014);
INSERT INTO profesor VALUES ('78905435S', 'Francisco', 'Ruiz', 'Mendoza', 2013);
INSERT INTO profesor VALUES ('11900567T', 'Maria', 'Hernandez', 'Rodriguez', 2016);
INSERT INTO profesor VALUES ('78934567M', 'Monica', 'Gutierrez', 'Figueroa', 2016);
INSERT INTO profesor VALUES ('67743002D', 'Maruro', 'Vidal', 'Parra', 2013);
INSERT INTO profesor VALUES ('76686546D', 'Lucrecia', 'Escobar', 'Tabares', 2017);
INSERT INTO profesor VALUES ('76566708T', 'Soledad', 'Fernández', 'Vázquez', 2013);

INSERT INTO reparto VALUES ('78392053A', '1A');
INSERT INTO reparto VALUES ('67392863B', '1A');
INSERT INTO reparto VALUES ('73902451B', '1A');
INSERT INTO reparto VALUES ('45673195B', '1A');
INSERT INTO reparto VALUES ('68902134C', '1A');
INSERT INTO reparto VALUES ('78563401C', '1A');
INSERT INTO reparto VALUES ('54389210D', '1A');
INSERT INTO reparto VALUES ('56703214D', '1A');
INSERT INTO reparto VALUES ('78932434F', '1A');
INSERT INTO reparto VALUES ('90067312F', '2A');
INSERT INTO reparto VALUES ('56323453G', '2A');
INSERT INTO reparto VALUES ('67863211G', '2A');
INSERT INTO reparto VALUES ('67895435H', '2A');
INSERT INTO reparto VALUES ('43214352H', '2A');
INSERT INTO reparto VALUES ('65473823J', '2A');
INSERT INTO reparto VALUES ('56743284K', '2A');
INSERT INTO reparto VALUES ('65473877K', '2A');
INSERT INTO reparto VALUES ('22314780L', '2A');
INSERT INTO reparto VALUES ('23145236L', '1B');
INSERT INTO reparto VALUES ('76548932M', '1B');
INSERT INTO reparto VALUES ('90765402M', '1B');
INSERT INTO reparto VALUES ('67908723N', '1B');
INSERT INTO reparto VALUES ('56436785N', '1B');
INSERT INTO reparto VALUES ('78543289P', '1B');
INSERT INTO reparto VALUES ('45326478P', '1B');
INSERT INTO reparto VALUES ('56640176R', '1B');
INSERT INTO reparto VALUES ('54323465R', '1B');
INSERT INTO reparto VALUES ('70119023S', '1B');
INSERT INTO reparto VALUES ('80778905S', '2B');
INSERT INTO reparto VALUES ('80987689T', '2B');
INSERT INTO reparto VALUES ('76589023T', '2B');
INSERT INTO reparto VALUES ('54676638V', '2B');
INSERT INTO reparto VALUES ('76899654C', '2B');
INSERT INTO reparto VALUES ('68875034D', '2B');
INSERT INTO reparto VALUES ('67884320V', '2B');
INSERT INTO reparto VALUES ('76899345F', '2B');
INSERT INTO reparto VALUES ('76893452G', '2B');
INSERT INTO reparto VALUES ('76657403J', '2B');
INSERT INTO reparto VALUES ('34104567J', '2B');
INSERT INTO reparto VALUES ('10937582A', '1A');


ALTER TABLE alumno
    ADD CONSTRAINT alumno_dni_pk PRIMARY KEY (dni);


ALTER TABLE asignatura
    ADD CONSTRAINT asignatura_codigo_pk PRIMARY KEY (codigo);


ALTER TABLE ensenya
    ADD CONSTRAINT enseña_prof_as_gr_pk PRIMARY KEY (profesor, asignatura, grupo);


ALTER TABLE imparte
    ADD CONSTRAINT imp_ed_cla_asign_pk PRIMARY KEY (edificioaula, claseaula, asignatura);


ALTER TABLE matricula
    ADD CONSTRAINT matricula_alum_asign_pk PRIMARY KEY (alumno, asignatura);


ALTER TABLE profesor
    ADD CONSTRAINT profesor_dni_pk PRIMARY KEY (dni);


ALTER TABLE reparto
    ADD CONSTRAINT reparto_al_grup_pk PRIMARY KEY (alumno, grupo);



ALTER TABLE ensenya
    ADD CONSTRAINT ensenya_asignatura_fk FOREIGN KEY (asignatura) REFERENCES asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ensenya
    ADD CONSTRAINT ensenya_profesor_fk FOREIGN KEY (profesor) REFERENCES profesor(dni) ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE imparte
    ADD CONSTRAINT imparte_asignatura_fk FOREIGN KEY (asignatura) REFERENCES asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE matricula
    ADD CONSTRAINT matricula_alumno_fk FOREIGN KEY (alumno) REFERENCES alumno(dni) ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE matricula
    ADD CONSTRAINT matricula_asignatura_fk FOREIGN KEY (asignatura) REFERENCES asignatura(codigo) ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE reparto
    ADD CONSTRAINT reparto_alumno_fk FOREIGN KEY (alumno) REFERENCES alumno(dni) ON UPDATE CASCADE ON DELETE CASCADE;




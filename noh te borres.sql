CREATE TABLE parqueadero
(
    id_parqueadero SERIAL,
    num_parqueadero VARCHAR,
    matri_parqueadero BIGINT,
    coef_parqueadero FLOAT
)

CREATE TABLE mascota
(
    id_mascota SERIAL,
    raza_mascota VARCHAR,
    nombre_mascota VARCHAR,
    vacuna_mascota VARCHAR,
    especie_mascota VARCHAR,
    id_residente INTEGER,
    CONSTRAINT PK_mascota PRIMARY KEY (id_mascota),
    CONSTRAINT FK_PK_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
)

INSERT INTO mascota (raza_mascota,nombre_mascota,vacuna_mascota,
especie_mascota,id_residente) VALUES ('boston terrier','perro panzon','si','perro','1'),
('cruce','motas','si','perro','3')

SELECT * FROM residente

CREATE TABLE residente 
(
    id_residente SERIAL,
    nombre_residente VARCHAR,
    apellido_residente VARCHAR,
    edad INTEGER,
    religion VARCHAR,
    id_representante INTEGER,
    lugar_trabajo VARCHAR,
    EPS VARCHAR,
    tel_residente VARCHAR,
    vacuna VARCHAR,
    condicion_salud VARCHAR,
    correo_residente VARCHAR,
    estado_civil VARCHAR,
    CONSTRAINT PK_residente PRIMARY KEY (id_residente)
)

--CRUD = (CREATE, READ, UPDATE, DELETE)
--Inserts
INSERT INTO parqueadero
(num_parqueadero, matri_parqueadero, coef_parqueadero) VALUES ('D10','37056850','12.48')

INSERT INTO parqueadero
(num_parqueadero, matri_parqueadero, 
coef_parqueadero) VALUES ('D12','370568945','11.48')

-- Selects (Read)
SELECT num_parqueadero FROM parqueadero
WHERE id_parqueadero = '1'

SELECT * FROM parqueadero

-- Updates (UPDATE)

UPDATE

UPDATE parqueadero SET num_parqueadero = 'D11' WHERE 
num_parqueadero = 'D12'

DELETES (DELETE)

DELETE FROM parqueadero WHERE id_parqueadero = '2'

CREATE TABLE Valores 
(
tipo_id_propietario SERIAL,
Cédula INTEGER,
Pasaporte BIGINT,
Cédula_de_extranjería VARCHAR,
NIT  VARCHAR
)

CREATE TABLE visitante
(
Identificación SERIAL,
Parentesco VARCHAR,
Motivo_de_la_visita VARCHAR,
Apartamento VARCHAR,
Fecha_de_visita INTEGER,
Edad INTEGER,
Nombre VARCHAR,
Número_telefónico_de_contacto VARCHAR,
Observaciones BIGINT
)

CREATE TABLE apartamento
(
id_apartamento SERIAL,
matricula_apartamento VARCHAR,
num_apartamento VARCHAR,
bloque VARCHAR,
coeficiente INTEGER
)

--CRUD = (CREATE, READ, UPDATE, DELETE)
--Inserts
INSERT INTO apartamento
(id_apartamento, matricula_apartamento, num_apartamento, bloque, coeficiente) VALUES ('1','78947','704','5','4098')

INSERT INTO apartamento
(id_apartamento, matricula_apartamento, num_apartamento, 
bloque, coeficiente) VALUES ('2','56274','401','B','0573')

-- Selects (Read)

SELECT matricula_apartamento FROM apartamento
WHERE matricula_apartamento = '1'

-- Updates (UPDATE)

UPDATE apartamento SET matricula_apartamento = 'D11' WHERE 
matricula_apartamento = 'D12'

--DELETES (DELETE)

DELETE FROM apartamento WHERE id_apartamento = '2'
 
CREATE TABLE vehiculo
(
Placa BIGINT,
Tipo_de_vehículo VARCHAR,
Color VARCHAR,
Modelo VARCHAR,
marca VARCHAR
)

--CRUD = (CREATE, READ, UPDATE, DELETE)
--Inserts
INSERT INTO vehiculo
(placa, Tipo_de_vehículo, color, modelo, marca) VALUES ('107','camioneta','gris','2011','mazda')

INSERT INTO vehiculo
(placa, Tipo_de_vehículo, color, modelo, marca) VALUES ('795','camioneta con platon','negro','2016','toyota')

-- Selects (Read)
SELECT Tipo_de_vehículo FROM vehiculo
WHERE Tipo_de_vehículo = 'camioneta'

SELECT * FROM vehiculo

-- Updates (UPDATE)

UPDATE

UPDATE vehiculo SET Tipo_de_vehículo = 'D11' WHERE 
Tipo_de_vehículo = 'D12'

DELETES (DELETE)

DELETE FROM vehiculo WHERE Tipo_de_vehículo = '2'


CREATE TABLE propietario
(
id_propietario SERIAL,
tipo_id_propietario VARCHAR,
num_identificacion VARCHAR,
tel_propietario BIGINT,
ocupacion VARCHAR,
edad SMALLINT,
nom_propietario VARCHAR,
apel_propietario VARCHAR,
vacuna BOOLEAN,
razon_social VARCHAR,
correo_propietario VARCHAR
)


CREATE DATABASE ferreteria;
USE ferreteria;
CREATE TABLE vendedor(
idvendedor INT UNSIGNED,
Tel Char(10),
NombreCompleto VARCHAR(10),
Sexo VARCHAR(10),
ObjeVentas VARCHAR(10),
FechaIngr VARCHAR(10),
CodigoVend VARCHAR(10)
PRIMARY KEY (idvendedor)
);
CREATE TABLE familiar(
idfamiliar INT UNSIGNED,
Sexo VARCHAR(10),
Parentesco VARCHAR(10),
Nombre VARCHAR(10),
idvendedor INT UNSIGNED,
PRIMARY KEY (idfamiliar),
FOREIGN KEY (idvendedor) REFERENCES vendedor (idvendedor)
);

CREATE TABLE cliente(
idcliente INT UNSIGNED, 
Nombre VARCHAR(10),
fechanacimiento DATE,
LimCredito VARCHAR(10),
idvendedor INT UNSIGNED,
PRIMARY KEY (idcliente),
FOREIGN KEY (idvendedor) REFERENCES vendedor(idvendedor)
);

CREATE TABLE factura(
idfactura INT UNSIGNED,
Numero VARCHAR(10)
);
CREATE TABLE articulo(
Codigo VARCHAR(10),
Fabricante VARCHAR(10),
Precio Decimal,
Descripcion VARCHAR(10)
);
CREATE TABLE registro(
Cantidad VARCHAR(10)
);

INSERT INTO vendedor (idvendedor,Nombre,Tel,Sexo)
VALUES (1,"Jose",5544996622,"H"),(2,"Juan",5511336677,"H"), (3,"Maria",5569871236,"M"),(4,"Laura",5544339982,"M"),(5,"Martha",5569864246,"M");

INSERT INTO familiar (idfamiliar,Sexo,Parentesco,Nombre, idvendedor)
VALUES (1,"M","Esposa","Fernanda", 1),(2,"M","Hermana","Maria",2),(3,"H","Primo","Pancho",3),(4,"H","Hermano","Sergio",4),(5,"H","Tio","Alan",5);

INSERT INTO cliente (idcliente,Nombre,fechanacimiento,LimCredito,idvendedor)
VALUES (1,"Pepe","10-04-20",10000,4),(2,"Luis","13-05-20",25000,2),(3,"Ikeer","06-12-20",80000,3),(4,"Cesar","30-11-20",30000,1),(5,"Jonathan","05-09-20",35000,5);

INSERT INTO factura (idfactura,Numero)
VALUES (7,50);

QUERY 

USE ferreteria;
SELECT * FROM vendedor;
SELECT * FROM familiar;
SELECT * FROM cliente;
SELECT * FROM factura;
SELECT Nombre
FROM vendedor
WHERE Nombre LIKE "J%"
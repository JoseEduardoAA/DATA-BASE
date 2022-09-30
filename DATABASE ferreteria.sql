CREATE DATABASE ferreteria;
USE ferreteria;
CREATE TABLE vendedor(
idvendedor INT UNSIGNED,
Tel Char(10),
Nombre VARCHAR(10),
Sexo VARCHAR(10),
PRIMARY KEY (idvendedor)
);
CREATE TABLE familiar(
idfamiliar INT UNSIGNED AUTO_INCREMENT,
Sexo VARCHAR(10),
Parentesco Char(7),
Nombre VARCHAR(10),
PRIMARY KEY (idfamiliar)
);

CREATE TABLE cliente(
idcliente INT UNSIGNED AUTO_INCREMENT, 
Nombre VARCHAR(10),
fecha_nacimiento DATE,
idvendedor INT UNSIGNED,
PRIMARY KEY (idcliente),
FOREIGN KEY (idvendedor) REFERENCES vendedor(idvendedor)
);

CREATE TABLE articulo(
idArticulo INT,
Nombre VARCHAR(10),
Precio Decimal,
Descripcion VARCHAR(10)
);
CREATE TABLE factura(
idFactura INT,
Numero Decimal
);
INSERT INTO vendedor (idvendedor,Nombre,Tel)
VALUES (1,"Laura",10000)
-------------------------------------------------------------------------------------------------------------------
USE ferreteria;
SELECT * FROM vendedor;
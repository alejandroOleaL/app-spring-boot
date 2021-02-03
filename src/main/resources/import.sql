/* poblando tables */
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(1, 'Andres', 'Guzman', 'profesor@bolsa.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(2, 'Frankie', 'De John', 'dejohn@gmail.com', '2017-08-28', '');

INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(3, 'Andres', 'Guzman', 'mini@bolsas.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(4, 'Frankie', 'De John', 'dedjohn@gmanil.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(5, 'Andres', 'Guzman', 'profedsor@bolsma.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(6, 'Frankie', 'De John', 'dejochn@gmaiul.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(7, 'Andres', 'Guzman', 'profescaocr@bolsua.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(8, 'Frankie', 'De John', 'dejocahn@gmaily.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(9, 'Andres', 'Guzman', 'profesacor@bolsta.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(10, 'Frankie', 'De John', 'dejacohn@gmaril.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(11, 'Andres', 'Guzman', 'profeacsor@bolwsa.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(12, 'Frankie', 'De John', 'dejoachn@gmawil.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(13, 'Andres', 'Guzman', 'profesoacr@bolwwsa.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(14, 'Frankie', 'De John', 'dejeohn@gmawil.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(15, 'Andres', 'Guzman', 'profewsor@boalsa.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(16, 'Frankie', 'De John', 'dejohn@gmaail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(17, 'Andres', 'Guzman', 'proqfesor@bolusa.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(18, 'Frankie', 'De John', 'deejohn@gmyail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(19, 'Andres', 'Guzman', 'proefesor@btolsa.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(20, 'Frankie', 'De John', 'dejohn@gtmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(21, 'Andres', 'Guzman', 'profdesor@bolsa.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(22, 'Frankie', 'De John', 'dejaotthn@gmail.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(23, 'Andres', 'Guzman', 'profeshaasor@bolsa.com', '2017-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(24, 'Frankie', 'De John', 'dejyohn@gmail.com', '2017-08-28', '');

INSERT INTO productos(nombre, precio, create_at) VALUES('Panasonic Pantalla LCD', 25990, NOW());
INSERT INTO productos(nombre, precio, create_at) VALUES('Sony Camara digital DSC-W1990', 12360, NOW());
INSERT INTO productos(nombre, precio, create_at) VALUES('Apple iPod Shuffle', 1499890, NOW());
INSERT INTO productos(nombre, precio, create_at) VALUES('Malla Ciclonica De Acero 30487', 1769, NOW());
INSERT INTO productos(nombre, precio, create_at) VALUES('Disco de sierra Corte de Aluminio', 1017, NOW());

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura equipos de oficina', null, 1, NOW());
INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura Bicicleta', 'Nota', 1, NOW());

INSERT INTO facturas_items(cantidad, producto_id, factura_id) VALUES (1, 1, 1);
INSERT INTO facturas_items(cantidad, producto_id, factura_id) VALUES (2, 2, 1);
INSERT INTO facturas_items(cantidad, producto_id, factura_id) VALUES (1, 3, 2);





/* poblando tables */
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(1, 'Andres', 'Gallardo', 'agallardo@gmail.com', '2020-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(2, 'Victor', 'Hernandez', 'vhernandez@gmail.com', '2020-10-10', '');

INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(3, 'Fernando', 'Garcia', 'fgarcia@outlook.com', '2021-01-08', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(4, 'Axel', 'Martinez', 'axelmar@hotmail.com', '2021-02-21', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(5, 'Samuel', 'Garcia', 'samuelmix@mail.com', '2020-12-07', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(6, 'Gregorio', 'Tiburcio', 'gtiburcio@gmail.com', '2021-01-23', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(7, 'Xitlali', 'Nava', 'xnava@gmail.com', '2020-08-28', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(8, 'Lucero', 'Zapata', 'lzapata@gmail.com', '2020-07-03', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(9, 'Jose Luis', 'Hernandez', 'josehernandez@outlook.com', '2021-03-02', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(10, 'Joaquin', 'Hernandez', 'joaquinh@gmail.com', '2020-12-21', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(11, 'Oliver', 'Lopez', 'oliverlopez@hotmail.com', '2020-11-16', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(12, 'Alexis, 'Gonzalez', 'alexisGonza@gmail.com', '2020-10-13', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(13, 'Luis', 'Perez', 'pluis@gmail.com', '2020-12-23', '');
INSERT INTO clientes(id, nombre, apellido, email, create_at, foto) VALUES(14, 'Noe', 'Torres', 'noeTorrez@gmail.com', '2020-12-15', '');

INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Escalera de Extension 28 Peldaños', 4192, 15, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Escalera de Extension 24 Peldaños', 3777, 18, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Gancho y Soporte para Escalera D6200', 323, 20, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Escalera Tijera 1.83M', 991, 17, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Gancho y Soporte para Escalera 7100', 371, 17, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Polipasto para 1.5 Toneladas', 1995, 20, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Casco de Seguridad Amarillo', 103, 30, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Casco de Seguridad Azul', 103, 30, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Casco de Seguridad Blanco', 70, 35, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Casco de Seguridad Verde', 60, 35, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Lampara Led Tipo Minero', 51, 15, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Lentes de Seguridad Transparentes', 63, 25, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Guantes de Carnaza', 155, 25, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Guantes de Nylon Talla G', 45, 25, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Cinturon para Liniero', 830, 30, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Nivel de Burbuja', 221, 42, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Multimetro Digital 10000Vcd', 1328, 13, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Mini Pinza de Punta Larga 4.5', 38, 25, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Pinza Peladora de Forro de 6', 68, 5, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Pinza de Punta Larga Tipo Americana 7.5', 58, 50, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Pinza de Mecanica de 8', 74, 45, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Pinza de Corte Diagonal Tipo Americana', 60, 43, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Kit 11 Herramientas con Aislamiento', 2669, 5, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Kit Desarmadores Plano Y Cruz', 146, 28, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Peladora de Cable Ajustable', 1000, 14, NOW());
INSERT INTO productos(nombre, precio, stock, create_at) VALUES('Martillo con Mango de Fibra de Vidrio', 109, 38, NOW());
                                                                          

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Venta materiales escalera', null, 1, NOW());
INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Venta de Cascos', 'Nota', 1, NOW());

INSERT INTO facturas_items(cantidad, producto_id, factura_id) VALUES (1, 1, 1);
INSERT INTO facturas_items(cantidad, producto_id, factura_id) VALUES (2, 2, 1);
INSERT INTO facturas_items(cantidad, producto_id, factura_id) VALUES (12, 8, 2);


INSERT INTO users (username, password, enabled) VALUES('user', '$2a$10$rh3AtT7aVrqCf85VReMD..pwyXpz8T1UuCdfJZsrcCb1xMq14gC6y', 1);
INSERT INTO users (username, password, enabled) VALUES('admin', '$2a$10$3BULRvCQ2fCzsxQFKV8o1OCxy/Ei/9YXRYFYWZAk.hpLuZ3ecPaly', 1);

INSERT INTO authorities (user_id, authority) VALUES(1, 'ROLE_USER');
INSERT INTO authorities (user_id, authority) VALUES(2, 'ROLE_ADMIN');
INSERT INTO authorities (user_id, authority) VALUES(2, 'ROLE_USER');


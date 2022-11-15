create database servicios_sg2
use servicios_sg2

CREATE TABLE clientes (
    id_clientes int primary key auto_increment not null , 
    nombre varchar(24) not null,
    apellido varchar(24) not null,
    telefono numeric(24,0) not null,
    mail varchar(50) not null
);


CREATE TABLE maquinas (
    codigo_maquina  int primary key auto_increment not null , 
    marca varchar(24) not null,
    modelo varchar(24) not null
);

CREATE TABLE orden_de_trabajo (
    nro_orden_trabajo  int primary key auto_increment not null , 
    id_clientes int not null,
    codigo_repuestos int not null,
    codigo_maquina int not null
);


CREATE TABLE repuestos (
    codigo_repuestos  int primary key auto_increment not null , 
    marca varchar(24) not null,
    modelo varchar(24) not null
);

CREATE TABLE orden_compra (
    nro_orden_compra  int primary key auto_increment not null , 
    id_proveedor int not null,
    codigo_repuesto int not null
);

CREATE TABLE ventas (
    nro_operacion  int primary key auto_increment not null , 
    id_clientes int not null,
    nro_orden_trabajo int not null,
    fecha date not null,
    monto numeric(24,0) not null
);

CREATE TABLE proveedores (
    id_proveedor  int primary key auto_increment not null , 
    nombre varchar(24) not null,
    telefono numeric(24,0) not null,
    mail varchar(50) not null
    );

alter table ventas 
add foreign key (id_clientes) references servicios_sg2.clientes(id_clientes),
add foreign key (nro_orden_trabajo) references servicios_sg2.orden_de_trabajo(nro_orden_trabajo)
;

alter table orden_de_trabajo 
add foreign key (id_clientes) references servicios_sg2.clientes(id_clientes),
add foreign key (codigo_repuestos) references servicios_sg2.repuestos(codigo_repuestos),
add foreign key (codigo_maquina) references servicios_sg2.maquinas(codigo_maquina)
;

alter table orden_compra
add foreign key (id_proveedor) references servicios_sg2.proveedores(id_proveedor)
;


INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (1,'carlos','gonzalez',1775515494192,'carlosgonzalez@azul.com');
INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (2,'pedro','aguirre',1536859815272,'pedroaguirre@azul.com');
INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (3,'jose','pereyra',1931921110304,'josepereyra@azul.com');
INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (4,'jose','rodriguez',1616727424773,'joserodriguez@azul.com');
INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (5,'gonzalo','rodriguez',1736266745369,'gonzalorodriguez@azul.com');
INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (6,'jeremias','tavella',1810900389958,'jeremiastavella@azul.com');
INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (7,'juan','taran',1545489677802,'juantaran@azul.com');
INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (8,'santiago','trovador',1660100673897,'santiagotrovador@azul.com');
INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (9,'josue','pascual',1901259151100,'josuepascual@azul.com');
INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (10,'matias','cativa',1846636776521,'matiascativa@azul.com');
INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (11,'gino','lazaro',1700246261208,'ginolazaro@azul.com');
INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (12,'martin','nunez',1785737051032,'martinnunez@azul.com');
INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (13,'martin','diaz',1845974921905,'martindiaz@azul.com');
INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (14,'nicolas','acuna',1908509851658,'nicolasacuna@azul.com');
INSERT INTO clientes (`id_clientes`,`nombre`,`apellido`,`telefono`,`mail`) VALUES (15,'damian','acuna',1731929549975,'damianacuna@azul.com');

INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (1,'repuestero_cordoba',959905813,'repuestero_cordoba@proveedor.com');
INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (2,'rodamientos_caroya',726489290,'rodamientos_caroya@proveedor.com');
INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (3,'lubricentro_boulevares',649419930,'lubricentro_boulevares@proveedor.com');
INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (4,'la_casa_del_oring',802558341,'la_casa_del_oring@proveedor.com');
INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (5,'casa_de_las_mangueras',888736294,'casa_de_las_mangueras@proveedor.com');
INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (6,'torneria_zanni',698609884,'torneria_zanni@proveedor.com');
INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (7,'lubricentro_el_chino',883716187,'lubricentro_el_chino@proveedor.com');
INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (8,'carlos_macedo',976262966,'carlos_macedo@proveedor.com');
INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (9,'repuestos_jesus_maria',852313603,'repuestos_jesus_maria@proveedor.com');
INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (10,'ferreteria_los_hermanos',897958137,'ferreteria_los_hermanos@proveedor.com');
INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (11,'buloneria_libertad',896289269,'buloneria_libertad@proveedor.com');
INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (12,'buloneria_casona',842911727,'buloneria_casona@proveedor.com');
INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (13,'ferreteria_mayo',830956142,'ferreteria_mayo@proveedor.com');
INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (14,'lubricentro_cosquin',699142236,'lubricentro_cosquin@proveedor.com');
INSERT INTO proveedores (`id_proveedor`,`nombre`,`telefono`,`mail`) VALUES (15,'librería_casa_mirta',642395909,'librería_casa_mirta@proveedor.com');


INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (1,'karcher','a');
INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (2,'gamma','a');
INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (3,'dowenpagio','a');
INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (4,'gamma','b');
INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (5,'dowenpagio','b');
INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (6,'dowenpagio','c');
INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (7,'dowenpagio','d');
INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (8,'karcher','b');
INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (9,'karcher','c');
INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (10,'einhell','a');
INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (11,'karcher','d');
INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (12,'einhell','b');
INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (13,'gamma','c');
INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (14,'gamma','d');
INSERT INTO maquinas (`codigo_maquina`,`marca`,`modelo`) VALUES (15,'gamma','e');

INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (1,12,1);
INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (2,12,11);
INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (3,12,13);
INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (4,10,13);
INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (5,10,15);
INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (6,10,16);
INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (7,10,13);
INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (8,5,13);
INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (9,5,9);
INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (10,2,8);
INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (11,3,8);
INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (12,6,8);
INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (13,3,9);
INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (14,3,9);
INSERT INTO orden_compra (`nro_orden_compra`,`id_proveedor`,`codigo_repuesto`) VALUES (15,2,7);



INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (1,'generica','r85309');
INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (2,'karcher','r36793');
INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (3,'skf','r38190');
INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (4,'skf','r23613');
INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (5,'generica','r24916');
INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (6,'ypf','r90508');
INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (7,'ypf','r16737');
INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (8,'castrol','r47664');
INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (9,'skf','r39154');
INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (10,'simpa','r82758');
INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (11,'simpa','r95932');
INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (12,'generica','r29339');
INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (13,'generica','r82060');
INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (14,'generica','r27707');
INSERT INTO repuestos (`codigo_repuestos`,`marca`,`modelo`) VALUES (15,'karcher','r55856');


INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (1,8,10,14);
INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (2,7,5,11);
INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (3,8,6,1);
INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (4,15,14,15);
INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (5,9,7,14);
INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (6,11,13,1);
INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (7,3,1,10);
INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (8,3,13,4);
INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (9,1,14,5);
INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (10,4,14,3);
INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (11,11,9,2);
INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (12,6,14,7);
INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (13,4,7,13);
INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (14,6,9,5);
INSERT INTO orden_de_trabajo (`nro_orden_trabajo`,`id_clientes`,`codigo_repuestos`,`codigo_maquina`) VALUES (15,13,7,8);

INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (1,13,15,'2022-10-17',2373);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (2,10,1,'2022-10-17',4956);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (3,1,8,'2022-10-17',9549);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (4,13,13,'2022-10-17',2228);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (5,3,12,'2022-10-17',4545);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (6,2,13,'2022-10-17',5758);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (7,2,12,'2022-10-17',8116);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (8,5,7,'2022-10-17',7587);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (9,10,8,'2022-10-17',4681);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (10,12,2,'2022-10-17',5145);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (11,6,14,'2022-10-17',7073);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (12,8,10,'2022-10-17',4801);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (13,4,5,'2022-10-17',2125);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (14,10,8,'2022-10-17',8569);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (15,2,9,'2022-10-17',2534);


----------------------------------------------------------------------------------


/// CREACION DE CINCO VISTAS ///

/// VISTA_1  ///
create view ventas_a_gonzalo_rodriguez as 
select * from servicios_sg2.ventas 
where ID_clientes = "5";

/// VISTA_2 ///
create view compras_a_torneria_zanni as 
select * from servicios_sg2.orden_compra 
where id_proveedor = "6";

/// VISTA_3 ///
create view ordenes_trabajo_karcher_D as 
select * from servicios_sg2.orden_de_trabajo
where codigo_maquina = "11";

/// VISTA_4 ///
create view compra_castrol_r47664 as 
select * from servicios_sg2.orden_compra
where codigo_repuesto = "8";


/// VISTA_5 ///
create view compra_generica_r82060 as 
select * from servicios_sg2.orden_compra
where codigo_repuesto = "13";

----------------------------------------------------------------------
/// CON ESTA FUNCION BUSCAREMOS TENER EL NOMBRE COMPLETO DE UN CLIENTE COLOCANDO SU NUMERO ID ///


DELIMITER $$
CREATE FUNCTION NOMBRE_CLIENTE (ID_CLI INT)
RETURNS VARCHAR(100)
READS SQL DATA
BEGIN
	DECLARE RESPUESTA VARCHAR(100);
	IF ID_CLI = 0 THEN
	SET RESPUESTA = "INGRESA UN NUMERO MAYOR QUE CERO";
	ELSE	
	SET RESPUESTA = (SELECT CONCAT(NOMBRE, ' ',APELLIDO)
	FROM CLIENTES WHERE ID_CLIENTES = ID_CLI);
	END IF;
    
RETURN RESPUESTA;
END$$
DELIMITER ;



/// CON ESTA FUNCION BUSCAREMOS TENER EL NOMBRE DE UN REPUESTO  COLOCANDO SOLAMENTE SU NUMERO ID ///


DELIMITER $$
CREATE FUNCTION NOMBRE_REPUESTO (ID_REP INT)
RETURNS VARCHAR(100)
READS SQL DATA
BEGIN
	DECLARE RESPUESTA VARCHAR(100);
	IF ID_REP = 0 THEN
	SET RESPUESTA = "INGRESA UN NUMERO MAYOR QUE CERO";
	ELSE	
	SET RESPUESTA = (SELECT CONCAT(MARCA, ' ',MODELO)
    FROM REPUESTOS WHERE CODIGO_REPUESTOS = ID_REP);
	END IF;
    
RETURN RESPUESTA;
END$$
DELIMITER ;


/// A CONTINUACION PROBAMOS AMBAS FUNCIONES //

SELECT * FROM REPUESTOS
SELECT NOMBRE_REPUESTO(3);

USE SERVICIOS_SG2
SELECT * FROM MAQUINAS 
SELECT NOMBRE_CLIENTE (2);

----------------------------------------------------------------------

/// CREACION DE STORE PROCEDURES ///

// EL SIGUIENTE SP TIENE COMO OBJETIVO EL ORDENAR LAS VENTAS POR LOS MONTOS DE LAS MISMAS, PUDIENDO
HACERLO DE MANERA ASCENDENTE O DESCENDETE ///


DELIMITER //
CREATE PROCEDURE ventas_por_monto (IN columna VARCHAR(20), IN orden VARCHAR(10))
BEGIN
SET @columna=columna;
SET @orden=orden;
SET @q = 'SELECT * FROM ventas ORDER BY';
SET @qfinal = concat(@q,' ',@columna,' ',@orden,';');
PREPARE ejecutar FROM @qfinal; 
EXECUTE ejecutar;
DEALLOCATE PREPARE ejecutar;
END
///

/// A CONTINUACION PROBAMOS EL SP LLAMANDOLO /// 

use servicios_sg2

call ventas_por_monto ('monto' , 'asc')


// POR OTRO LADO ESTE SP TIENE COMO OBJETIVO INGRESAR NUEVOS VALORES EN LA TABLA CLIENTES, 
CON LA SALVEDAD QUE NO SE PUEDAN CARGAR NUEVOS CLIENTES DUPLICANDO EL MAIL ///


select * from clientes

DELIMITER //
CREATE PROCEDURE Nuevo_cliente (IN nombre varchar(10),IN apellido varchar(10), IN telefono numeric(24,0),
 IN nuevo_mail varchar(50))
BEGIN
IF (SELECT count(mail) from clientes where mail= nuevo_mail)>0 THEN
   SELECT 'No se puede duplicar mail';
ELSE
   INSERT INTO clientes (nombre, apellido, telefono, mail ) VALUES (nombre, apellido, telefono, nuevo_mail);
END IF;
END
///

/// A CONTINUACION PROBAMOS EL SP LLAMANDOLO. PODEMOS OBSERVAR QUE UNA VEZ QUESE CARGA UN NUEVO CLIENTE
Y SE INTENTA LLAMAR DE NUEVO, UN CARTEL INDICARA QUE NO SE PUEDE YA QUE SE ESTARA REPITIENDO EL MAIL /// 

CALL NUEVO_CLIENTE ('eutasio', 'hernandez', '65498785253', 'eutasio_hernandez@azul.com');



----------------------------------------------------------------------

/// CREACION DE TRIGGERS ///

/// Este trigger tendra como funcion el hacer un back up de registro de ventas del negocio. Primero 
se crea la tabla backup de ventas y luego creamos y probamos el trigger // 

use servicios_sg2

CREATE TABLE backup_ventas (
    nro_operacion  int primary key auto_increment not null , 
    id_clientes int not null,
    nro_orden_trabajo int not null,
    fecha date not null,
    monto numeric(24,0) not null
);

CREATE TRIGGER backup_ventas 
AFTER INSERT ON ventas 
FOR EACH ROW 
INSERT INTO backup_ventas (nro_operacion, id_clientes, nro_orden_trabajo, fecha, monto)
VALUES (NEW.nro_operacion, NEW.id_clientes, NEW.nro_orden_trabajo, NEW.fecha, NEW.monto);

INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) 
VALUES (16,4,6,'2022-11-01',5000);

SELECT * FROM VENTAS
SELECT * FROM backup_ventas

/// Este segundo Trigger tiene como funcion ser una bitacora de los cambios efectuados en los 
montos de la tabla ventas. Primero se crea una nueva tabla llamada Bitacora_ventas, a continuacion 
se crea y prueba el trigger ///

CREATE TABLE bitacora_ventas(
id_bitacora INT NOT NULL AUTO_INCREMENT,
fecha DATE NOT NULL,
hora TIME NOT NULL,
usuario_id VARCHAR(45),
nro_operacion INT,
old_monto VARCHAR(30),
new_monto VARCHAR(30),
primary key(id_bitacora));


CREATE TRIGGER bitacora_ventas
BEFORE UPDATE ON ventas
FOR EACH ROW
INSERT INTO bitacora_ventas
(fecha,hora,usuario_id,nro_operacion,old_monto,new_monto)
VALUES
(curdate(),curtime(),session_user(), OLD.nro_operacion ,OLD.monto,NEW.monto);

select * from ventas

update ventas 
set monto='5000'
where nro_operacion='3';

select * from bitacora_ventas;



----------------------------------------------------------------------
/// A CONTINUACION SE CREARAN Y PROBARAN DOS USUARIOS, UNO DE ELLOS PARA LOS TECNICOS, 
PARA QUE PUEDAN ACCEDER A REALIZAR CONSULTAS, Y OTRO PARA LA ADMINISTRACION, DANDO YA PERMISOS 
DE LECTURA, INSERCION Y MODIFICACION DE LAS TABLAS. SE QUITA EL PERMISO A AMBOS USUARIOS DE 
ELIMINAR REGISTROS ///


use mysql;
select * from user;
CREATE USER 'tecnico'@'localhost' IDENTIFIED BY 'patagonia1234';
CREATE USER 'administracion'@'localhost' IDENTIFIED BY 'pampa1234';

GRANT SELECT ON *.* TO 'tecnico'@'localhost';
GRANT SELECT, INSERT,  UPDATE ON *.* TO 'administracion'@'localhost'; 

REVOKE DELETE ON *.* FROM  'tecnico'@'localhost' ,  'administracion'@'localhost';

SELECT * FROM USER;

 ----------------------------------------------------------------------

///  SENTENCIAS DEL SUBLENGUAJE TCL - A CONTINUACION MUESTRO DOS SENTENCIAS.
EN LA PRIMERA, BUSCO ELIMINAR TRES FILAS DE LA TABLA ORDEN_DE_TRABAJO, CON LA POSIBILIDAD DE VOLVER 
ATRAS CON ESTA ACCION, EJECUTANDO ROLLBACK. POR OTRO LADO, PARA CONFIRMAR EL CAMBIO, EJECUTO
COMMIT ///
 USE servicios_sg2

SELECT * FROM  orden_de_trabajo;  

START TRANSACTION ;
DELETE FROM  servicios_sg2.orden_de_trabajo
WHERE id_clientes = '9'; 
WHERE id_clientes = '11'; 
WHERE id_clientes = '8'; 

ROLLBACK;

COMMIT;

/// EN ESTA SEGUNDA SENTENCIA, ESTABLEZCO DOS SAVEPOINTS, COMO PUNTOS DE REFERENCIA CUANDO DESEE 
UTILIZAR ROLLBACK (ENTIENDASE, SE REALIZARA ROLLBACK HASTA EL SAVEPOINT QUE LLAME///
START TRANSACTION ;

INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (16,12,16,'2022-10-17',2373);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (17,10,1,'2022-10-17',4956);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (18,1,8,'2022-10-17',9549);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (19,13,13,'2022-10-17',2228);


SAVEPOINT ventas_16_19;

INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (20,3,12,'2022-10-17',4545);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (21,2,13,'2022-10-17',5758);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (22,2,12,'2022-10-17',8116);
INSERT INTO ventas (`nro_operacion`,`id_clientes`,`nro_orden_trabajo`,`fecha`,`monto`) VALUES (23,5,7,'2022-10-17',7587);

SAVEPOINT ventas_20_23;
 
ROLLBACK TO ventas_16_19;

 
 
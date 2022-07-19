USE SuAnimalFeliz; 

CREATE TABLE Medicos (
    id_doctor INT PRIMARY KEY NOT NULL,
	nombre VARCHAR (20) NOT NULL,
	apellido VARCHAR (20) NOT NULL, 
	direccion VARCHAR (50) NOT NULL, 
	telefono VARCHAR (20) NOT NULL,
	correo VARCHAR (30) NOT NULL, 
	tipo_pago VARCHAR (50) NOT NULL 
);
  
CREATE TABLE Salario (
    id_salario INT PRIMARY KEY NOT NULL, 
    tipo_pago VARCHAR (30) NOT NULL, 
	cantidad_horas INT,  
    cantidad_semanas INT,
	id_doctor INT NOT NULL,
	FOREIGN KEY (id_doctor) REFERENCES Medicos (id_doctor)
);

 
CREATE TABLE Proveedores (
    id_proveedor INT PRIMARY KEY NOT NULL, 
	direccion VARCHAR (50) NOT NULL,  
	telefono VARCHAR (20) NOT NULL,
	nombre_contacto VARCHAR (20) NOT NULL, 
	puesto_contacto VARCHAR (30) NOT NULL   
);

CREATE TABLE Productos (
    id_producto INT PRIMARY KEY NOT NULL,
    producto VARCHAR (30) NOT NULL, 
	id_proveedor INT NOT NULL,  
	precio INT NOT NULL,
	cantidad_actual INT NOT NULL,
	cantidad_minima INT NOT NULL,
	FOREIGN KEY (id_proveedor) REFERENCES Proveedores (id_proveedor)
);


CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY NOT NULL,
    pedido VARCHAR (30) NOT NULL, 
	cantidad INT NOT NULL,  
	fecha_entrega DATE NOT NULL,
	id_proveedor INT NOT NULL,
	precios INT NOT NULL, 
	FOREIGN KEY (id_proveedor) REFERENCES Proveedores (id_proveedor)
);

CREATE TABLE Veterinaria (
    id_servicio INT PRIMARY KEY NOT NULL,
    tipo_servicio VARCHAR (50) NOT NULL, 
	dias_internado INT,  
    id_doctor INT NOT NULL,
    id_producto INT NOT NULL, 
	id_pedido INT NOT NULL, 
	FOREIGN KEY (id_doctor) REFERENCES Medicos (id_doctor),
	FOREIGN KEY (id_producto) REFERENCES Productos (id_producto),
	FOREIGN KEY (id_pedido) REFERENCES Pedidos (id_pedido)
);

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY NOT NULL, 
	nombre_cliente VARCHAR (20) NOT NULL, 
	tipo VARCHAR (20) NOT NULL, 
	fecha_nacimiento DATETIME NOT NULL,
	nombre_dueño VARCHAR (20) NOT NULL, 
	cedula_dueño VARCHAR (20) NOT NULL, 
	direccion_dueño VARCHAR (30) NOT NULL, 
	telefono_dueño VARCHAR (20) NOT NULL, 
	id_servicio INT NOT NULL, 
	FOREIGN KEY (id_servicio) REFERENCES Veterinaria (id_servicio)
);

CREATE TABLE Expediente (
    id_expediente INT PRIMARY KEY NOT NULL,
    fecha_visita DATE NOT NULL, 
	id_doctor INT NOT NULL,  
	id_servicio INT NOT NULL,
	id_producto INT NOT NULL,
	id_cliente INT NOT NULL,
	FOREIGN KEY (id_doctor) REFERENCES Medicos (id_doctor),
	FOREIGN KEY (id_servicio) REFERENCES Veterinaria (id_servicio),
	FOREIGN KEY (id_producto) REFERENCES Productos (id_producto),
	FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente)
);
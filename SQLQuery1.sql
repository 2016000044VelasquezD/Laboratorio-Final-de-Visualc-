CREATE DATABASE limpieza_industrial_db;
GO
USE limpieza_industrial_db;
GO

-- Tabla de productos
CREATE TABLE productos (
    id_producto INT IDENTITY(1,1) PRIMARY KEY,
    nombre_producto NVARCHAR(150) NOT NULL,
    descripcion NVARCHAR(MAX),
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    fecha_registro DATE DEFAULT GETDATE()
);

-- Insertar productos de ejemplo
INSERT INTO productos (nombre_producto, descripcion, precio, stock) VALUES
('Desengrasante Ultra', 'Desengrasante concentrado para maquinaria pesada', 120.50, 50),
('Desinfectante Plus', 'Solución desinfectante de alto espectro', 85.75, 30),
('Detergente Industrial', 'Detergente en polvo para limpieza de superficies', 45.00, 100),
('Limpiador de Pisos Max', 'Producto especializado para limpieza de pisos de fábrica', 60.00, 40);

select  * from productos;

drop database limpieza_industrial_db;
drop table productos;
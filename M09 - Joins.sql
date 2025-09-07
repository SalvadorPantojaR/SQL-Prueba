--INNER JOIN--
CREATE TABLE Producto (
IDProducto INT,
NombreProducto VARCHAR (255)
);

CREATE TABLE Orden (
IDOrden INT,
IDProducto INT,
FechaOrden DATE 
);

SELECT *
FROM Producto

SELECT *
FROM Orden 


SELECT p.IDProducto,
       o.IDOrden,
	   p.NombreProducto,
	   o.FechaOrden
FROM Producto p
	 LEFT OUTER JOIN Orden o
		ON p.IDProducto = o.IDProducto;

WHERE p.IDProducto = O.IDProducto;

SELECT IDProducto,
	   NombreProducto,
	   CASE
			WHEN NombreProducto = 'Laptop' THEN 'Computadora'
			WHEN NombreProducto = 'Escritorio' THEN 'Muebles'
			WHEN NombreProducto IN ('Teclado','Microfono') THEN 'Accesorios'
			ELSE 'Otros'
		END AS GrupoProducto
FROM Producto;


SELECT o.*,
		COALESCE(FechaOrden,getDate()) as PruebaCoalesce,
		ISNULL(FechaOrden,getDate()) as PruebaIsNull
FROM Orden o;
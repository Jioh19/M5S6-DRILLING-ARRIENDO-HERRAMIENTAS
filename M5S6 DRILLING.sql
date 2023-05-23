-- 1. Listar todos los arriendos con las siguientes columnas: Folio, Fecha, Días, ValorDia,
-- NombreCliente, RutCliente.
SELECT folio, fecha, dias, valordia, nombre, rut FROM arriendo 
    INNER JOIN cliente ON cliente_rut = rut;

-- 2. Listar los clientes sin arriendos.
SELECT rut, nombre FROM cliente
    LEFT JOIN arriendo ON rut = cliente_rut
		WHERE cliente_rut IS NULL;

-- 3. Liste RUT y Nombre de las tablas empresa y cliente.
SELECT rut, nombre FROM cliente
    UNION SELECT rut, nombre FROM empresa;

-- 4. Liste la cantidad de arriendos por mes.
-- Agregué el año, ya que me hace sentido para poder diferenciar los meses.
SELECT count(*), TO_CHAR(fecha, 'YYYY-MM') AS mes 
    FROM arriendo GROUP BY mes;

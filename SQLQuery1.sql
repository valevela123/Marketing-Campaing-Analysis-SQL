CREATE DATABASE Proyectomarketing1;

USE Proyectomarketing1;
GO

CREATE TABLE marketing_spend (
    id INT PRIMARY KEY,
    plataforma VARCHAR(50),
    fecha DATE,
    gasto_usd DECIMAL(10,2),
    clics INT
);

CREATE TABLE sales (
    venta_id INT PRIMARY KEY,
    plataforma_origen VARCHAR(50),
    monto_venta DECIMAL(10,2),
    pais VARCHAR(50)
);

INSERT INTO marketing_spend VALUES 
(1, 'Meta', '2026-01-01', 500.00, 1200),
(2, 'TikTok', '2026-01-01', 450.00, 3500);

INSERT INTO sales VALUES 
(101, 'Meta', 1500.00, 'Argentina'),
(102, 'Meta', 800.00, 'Mexico'),
(103, 'TikTok', 600.00, 'Argentina'),
(104, 'TikTok', 400.00, 'Colombia'),
(105, 'Meta', 1200.00, 'Chile');
USE ProyectoMarketing1;
GO

SELECT 
Marketing_Spend.plataforma, 
Marketing_Spend.gasto_usd, 
SUM(Sales.monto_venta) AS total_ventas,
ROUND(SUM(Sales.monto_venta) / Marketing_Spend.gasto_usd, 2) AS ROI
FROM Marketing_Spend
JOIN Sales ON Marketing_Spend.plataforma = Sales.plataforma_origen
GROUP BY Marketing_Spend.plataforma, Marketing_Spend.gasto_usd;
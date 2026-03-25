SELECT 
    m.plataforma, 
    m.gasto_usd, 
    m.clics,
    s.monto_venta, 
    s.pais
FROM Marketing_Spend m
JOIN Sales s ON m.plataforma = s.plataforma_origen
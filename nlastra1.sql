begin
   
  for i in 1..10
  loop
    DBMS_OUTPUT.PUT_LINE(i);
  end loop;
 
end;

DROP TABLE BOLETA; COMMIT;
DROP TABLE CLIENTE; COMMIT;
DROP TABLE PRODUCTO; COMMIT;
DROP TABLE VENDEDOR; COMMIT;


/*el tercer procedimiento almacenado deberá ingresar como parámetro el nombre del cliente y listar todas las boletas 
realizadas por dicho cliente detallando el folio, el total_a_pagar y el producto (nombre) comprado (llámelo procedimiento_tres_ventas_cliente).*/

SELECT BO.FOLIO, BO.TOTAL_A_PAGAR, PR.NOM_PROD FROM BOLETA BO, VENDEDOR VN, CLIENTE CL, PRODUCTO PR
WHERE bo.cliente_idcliente = cl.id_cliente
AND bo.producto_idproducto = PR.idproducto
AND bo.vendedor_idvendedor = vn.idvendedor
AND cl.nombre = 'JUAN';

SELECT NOM_VEN, GENERO FROM vendedor;
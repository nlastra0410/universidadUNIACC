--------------------------------------------------------
-- Archivo creado  - jueves-marzo-30-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure SP_PROCEDURE_LISTAR_BOLETA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "NLASTRA"."SP_PROCEDURE_LISTAR_BOLETA" (cod_err OUT NUMBER, msg_err OUT VARCHAR2) IS 
CURSOR report_cursor IS
    SELECT bo.folio, bo.fecha_venta, vn.nom_ven FROM BOLETA BO, VENDEDOR VN WHERE bo.vendedor_idvendedor = vn.idvendedor;
BEGIN
    cod_err := 0;   
    msg_err := 'OK';
    FOR rep IN report_cursor
    LOOP
        DBMS_OUTPUT.PUT_LINE('FOLIO: '|| rep.folio ||' FECHA VENTA: '|| rep.fecha_venta ||' VENDEDOR: '|| rep.nom_ven);
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        cod_err := SQLCODE;
        msg_err := SQLERRM;
END SP_PROCEDURE_LISTAR_BOLETA;

/
--------------------------------------------------------
--  DDL for Procedure SP_PROCEDURE_LISTAR_VENDEDOR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "NLASTRA"."SP_PROCEDURE_LISTAR_VENDEDOR" (cod_err OUT NUMBER, msg_err OUT VARCHAR2) IS 
CURSOR report_cursor IS
    SELECT NOM_VEN, GENERO FROM vendedor;
BEGIN
    cod_err := 0;   
    msg_err := 'OK';
    FOR rep IN report_cursor
    LOOP
        DBMS_OUTPUT.PUT_LINE('Vendedor: '|| rep.NOM_VEN ||' Genero: '|| rep.GENERO);
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        cod_err := SQLCODE;
        msg_err := SQLERRM;
END SP_PROCEDURE_LISTAR_VENDEDOR;

/
--------------------------------------------------------
--  DDL for Procedure SP_PROCEDURE_TRES_CARGADATO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "NLASTRA"."SP_PROCEDURE_TRES_CARGADATO" (cod_err OUT NUMBER, msg_err OUT VARCHAR2) IS
BEGIN
    cod_err := 0;
    msg_err := 'OK';
     --for i in 20..30 --aqui puedes cambiar el listado automatizado de registros que quieres para tu tabla  
      --  loop
      /*cliente*/
        INSERT INTO cliente(id_cliente, NOMBRE, FECHA_NAC) VALUES (1,'JUAN',SYSDATE);
        INSERT INTO cliente(id_cliente, NOMBRE, FECHA_NAC) VALUES (2,'PEDRO',SYSDATE);
        INSERT INTO cliente(id_cliente, NOMBRE, FECHA_NAC) VALUES (3,'RODRIGO',SYSDATE);
        INSERT INTO cliente(id_cliente, NOMBRE, FECHA_NAC) VALUES (4,'JUANA',SYSDATE);
        INSERT INTO cliente(id_cliente, NOMBRE, FECHA_NAC) VALUES (5,'MARIELA',SYSDATE);
        INSERT INTO cliente(id_cliente, NOMBRE, FECHA_NAC) VALUES (6,'FRANCISCA',SYSDATE);
        INSERT INTO cliente(id_cliente, NOMBRE, FECHA_NAC) VALUES (7,'VICTORIA',SYSDATE);
        INSERT INTO cliente(id_cliente, NOMBRE, FECHA_NAC) VALUES (8,'FELIPE',SYSDATE);
        INSERT INTO cliente(id_cliente, NOMBRE, FECHA_NAC) VALUES (9,'NELSON',SYSDATE);
        INSERT INTO cliente(id_cliente, NOMBRE, FECHA_NAC) VALUES (10,'MARCOS',SYSDATE);
      /*fin cliente*/
      
      /*vendedor*/
        INSERT INTO vendedor(idvendedor, nom_ven, genero) VALUES (1,'CESAR','MASCULINO');
        INSERT INTO vendedor(idvendedor, nom_ven, genero) VALUES (2,'CORONA','FEMENINO');
        INSERT INTO vendedor(idvendedor, nom_ven, genero) VALUES (3,'CARLOS','MASCULINO');
        INSERT INTO vendedor(idvendedor, nom_ven, genero) VALUES (4,'ALEJANDRA','FEMENINO');
        INSERT INTO vendedor(idvendedor, nom_ven, genero) VALUES (5,'KATHERINE','FEMENINO');
        INSERT INTO vendedor(idvendedor, nom_ven, genero) VALUES (6,'NATALIA','FEMENINO');
        INSERT INTO vendedor(idvendedor, nom_ven, genero) VALUES (7,'MAURICIO','MASCULINO');
        INSERT INTO vendedor(idvendedor, nom_ven, genero) VALUES (8,'MARCELO','MASCULINO');
        INSERT INTO vendedor(idvendedor, nom_ven, genero) VALUES (9,'MAVERICK','MASCULINO');
        INSERT INTO vendedor(idvendedor, nom_ven, genero) VALUES (10,'TOM','MASCULINO');
      /*fin vendedor*/
      
      /*producto*/
        INSERT INTO producto(idproducto, nom_prod, stock) VALUES (1,'NOTEBOOK',20);
        INSERT INTO producto(idproducto, nom_prod, stock) VALUES (2,'CELULAR',30);
        INSERT INTO producto(idproducto, nom_prod, stock) VALUES (3,'TECLADO',50);
        INSERT INTO producto(idproducto, nom_prod, stock) VALUES (4,'MOUSE',50);
        INSERT INTO producto(idproducto, nom_prod, stock) VALUES (5,'MONITOR',25);
        INSERT INTO producto(idproducto, nom_prod, stock) VALUES (6,'CONSOLA',5);
        INSERT INTO producto(idproducto, nom_prod, stock) VALUES (7,'SILLA GAMER',10);
        INSERT INTO producto(idproducto, nom_prod, stock) VALUES (8,'MOUSE PAD',14);
        INSERT INTO producto(idproducto, nom_prod, stock) VALUES (9,'VENTILADOR',23);
        INSERT INTO producto(idproducto, nom_prod, stock) VALUES (10,'TARJETA DE VIDEO',30);
      /*fin producto*/
        
        
      /*boleta*/
        INSERT INTO boleta(FOLIO, CLIENTE_IDCLIENTE, PRODUCTO_IDPRODUCTO, VENDEDOR_IDVENDEDOR, FECHA_VENTA, TOTAL_A_PAGAR) VALUES (1,1,1,1,SYSDATE,400000);
        INSERT INTO boleta(FOLIO, CLIENTE_IDCLIENTE, PRODUCTO_IDPRODUCTO, VENDEDOR_IDVENDEDOR, FECHA_VENTA, TOTAL_A_PAGAR) VALUES (2,2,2,2,SYSDATE+1,500000);
        INSERT INTO boleta(FOLIO, CLIENTE_IDCLIENTE, PRODUCTO_IDPRODUCTO, VENDEDOR_IDVENDEDOR, FECHA_VENTA, TOTAL_A_PAGAR) VALUES (3,3,3,3,SYSDATE+2,20000);
        INSERT INTO boleta(FOLIO, CLIENTE_IDCLIENTE, PRODUCTO_IDPRODUCTO, VENDEDOR_IDVENDEDOR, FECHA_VENTA, TOTAL_A_PAGAR) VALUES (4,4,4,4,SYSDATE+3,60000);
        INSERT INTO boleta(FOLIO, CLIENTE_IDCLIENTE, PRODUCTO_IDPRODUCTO, VENDEDOR_IDVENDEDOR, FECHA_VENTA, TOTAL_A_PAGAR) VALUES (5,5,5,5,SYSDATE+4,300000);
        INSERT INTO boleta(FOLIO, CLIENTE_IDCLIENTE, PRODUCTO_IDPRODUCTO, VENDEDOR_IDVENDEDOR, FECHA_VENTA, TOTAL_A_PAGAR) VALUES (6,6,6,6,SYSDATE+5,500000);
        INSERT INTO boleta(FOLIO, CLIENTE_IDCLIENTE, PRODUCTO_IDPRODUCTO, VENDEDOR_IDVENDEDOR, FECHA_VENTA, TOTAL_A_PAGAR) VALUES (7,7,7,7,SYSDATE+6,120000);
        INSERT INTO boleta(FOLIO, CLIENTE_IDCLIENTE, PRODUCTO_IDPRODUCTO, VENDEDOR_IDVENDEDOR, FECHA_VENTA, TOTAL_A_PAGAR) VALUES (8,8,8,8,SYSDATE+7,5000);
        INSERT INTO boleta(FOLIO, CLIENTE_IDCLIENTE, PRODUCTO_IDPRODUCTO, VENDEDOR_IDVENDEDOR, FECHA_VENTA, TOTAL_A_PAGAR) VALUES (9,9,9,9,SYSDATE+8,3000);
        INSERT INTO boleta(FOLIO, CLIENTE_IDCLIENTE, PRODUCTO_IDPRODUCTO, VENDEDOR_IDVENDEDOR, FECHA_VENTA, TOTAL_A_PAGAR) VALUES (10,10,10,10,SYSDATE+9,660000);
      /*fin boleta*/
        
      --      DBMS_OUTPUT.PUT_LINE(i);
      --  end loop;
 
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        cod_err := SQLCODE;
        msg_err := SQLERRM;
END SP_PROCEDURE_TRES_CARGADATO;

/
--------------------------------------------------------
--  DDL for Procedure SP_PROCEDURE_UNO_VPC
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "NLASTRA"."SP_PROCEDURE_UNO_VPC" (cod_err OUT NUMBER, msg_err OUT VARCHAR2) AS 
    creaTablaCLIENTE VARCHAR2(4096);
    creaTablaVENDEDOR VARCHAR2(4096);
    creaTablaPRODUCTO VARCHAR2(4096);
BEGIN
    cod_err := 0;
    msg_err := 'OK';
    creaTablaCLIENTE := 'CREATE TABLE "NLASTRA"."CLIENTE" ("ID_CLIENTE" NUMBER(*,0) NOT NULL ENABLE, 
                "NOMBRE" VARCHAR2(200 BYTE), 
                "FECHA_NAC" DATE, 
                 CONSTRAINT "CLIENTE_PK" PRIMARY KEY ("ID_CLIENTE")
              USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
              STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
              PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
              TABLESPACE "SYSTEM"  ENABLE
               ) SEGMENT CREATION IMMEDIATE 
              PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
              STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
              PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
              TABLESPACE "SYSTEM" ';
    creaTablaPRODUCTO := 'CREATE TABLE "NLASTRA"."PRODUCTO" 
                   (	"IDPRODUCTO" NUMBER(*,0) NOT NULL ENABLE, 
                    "NOM_PROD" VARCHAR2(200 BYTE), 
                    "STOCK" NUMBER(*,0), 
                     CONSTRAINT "PRODUCTO_PK" PRIMARY KEY ("IDPRODUCTO")
                  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
                  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
                  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
                  TABLESPACE "SYSTEM"  ENABLE
                   ) SEGMENT CREATION IMMEDIATE 
                  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
                  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
                  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
                  TABLESPACE "SYSTEM" ' ;
    creaTablaVENDEDOR := ' CREATE TABLE "NLASTRA"."VENDEDOR" 
                   (	"IDVENDEDOR" NUMBER(*,0) NOT NULL ENABLE, 
                    "NOM_VEN" VARCHAR2(200 BYTE), 
                    "GENERO" VARCHAR2(200 BYTE), 
                     CONSTRAINT "VENDEDOR_PK" PRIMARY KEY ("IDVENDEDOR")
                  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
                  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
                  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
                  TABLESPACE "SYSTEM"  ENABLE
                   ) SEGMENT CREATION IMMEDIATE 
                  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
                  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
                  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
                  TABLESPACE "SYSTEM" ' ;
   EXECUTE IMMEDIATE creaTablaCLIENTE;
   EXECUTE IMMEDIATE creaTablaPRODUCTO;
   EXECUTE IMMEDIATE creaTablaVENDEDOR;
   EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        creaTablaCLIENTE := 0;
        creaTablaPRODUCTO := 0;
        creaTablaVENDEDOR := 0;
        cod_err := SQLCODE;
        msg_err := SQLERRM;
END SP_PROCEDURE_UNO_VPC;

/
--------------------------------------------------------
--  DDL for Procedure SP_PROCEDURE_UNO_VENDEDOR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "NLASTRA"."SP_PROCEDURE_UNO_VENDEDOR" AS 
CURSOR report_cursor IS
    SELECT NOM_VEN, GENERO FROM vendedor;
BEGIN
    FOR rep IN report_cursor
    LOOP
        DBMS_OUTPUT.PUT_LINE('Vendedor: '|| rep.NOM_VEN ||' Genero: '|| rep.GENERO);
    END LOOP;
END SP_PROCEDURE_UNO_VENDEDOR;

/
--------------------------------------------------------
--  DDL for Procedure SP_PROCEDURE_UNO_BOLETA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "NLASTRA"."SP_PROCEDURE_UNO_BOLETA" (cod_err OUT NUMBER, msg_err OUT VARCHAR2) AS 
    creaTabla VARCHAR(4096);
    
BEGIN
    cod_err := 0;
    msg_err := 'OK';
    creaTabla := '
          CREATE TABLE "NLASTRA"."BOLETA" 
           (	"FOLIO" NUMBER(*,0) NOT NULL ENABLE, 
            "CLIENTE_IDCLIENTE" NUMBER(*,0), 
            "PRODUCTO_IDPRODUCTO" NUMBER(*,0), 
            "VENDEDOR_IDVENDEDOR" NUMBER(*,0), 
            "FECHA_VENTA" DATE, 
            "TOTAL_A_PAGAR" NUMBER(*,0), 
             CONSTRAINT "BOLETA_PK" PRIMARY KEY ("FOLIO")
          USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
          STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
          PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
          TABLESPACE "SYSTEM"  ENABLE, 
             CONSTRAINT "BOLETA_FK1" FOREIGN KEY ("CLIENTE_IDCLIENTE")
              REFERENCES "NLASTRA"."CLIENTE" ("ID_CLIENTE") ENABLE, 
             CONSTRAINT "BOLETA_FK2" FOREIGN KEY ("PRODUCTO_IDPRODUCTO")
              REFERENCES "NLASTRA"."PRODUCTO" ("IDPRODUCTO") ENABLE, 
             CONSTRAINT "BOLETA_FK3" FOREIGN KEY ("VENDEDOR_IDVENDEDOR")
              REFERENCES "NLASTRA"."VENDEDOR" ("IDVENDEDOR") ENABLE
           ) SEGMENT CREATION IMMEDIATE 
          PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
          STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
          PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
          TABLESPACE "SYSTEM" ';
 
   EXECUTE IMMEDIATE creaTabla;
   EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        creaTabla := 0;
        cod_err := SQLCODE;
        msg_err := SQLERRM;
END SP_PROCEDURE_UNO_BOLETA;

/

create user nlastra IDENTIFIED by nlastra;
grant all PRIVILEGES to nlastra;

create user negocio identified by negocio
default tablespace "USERS" temporary tablespace "TEMP";
grant connect, resource, dba to negocio;

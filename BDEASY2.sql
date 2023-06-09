PGDMP         :                {           easyfarmaventa    15.2    15.2 Z    :           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ;           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            <           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            =           1262    16394    easyfarmaventa    DATABASE     p   CREATE DATABASE easyfarmaventa WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE easyfarmaventa;
                postgres    false                        2615    16395    EF    SCHEMA        CREATE SCHEMA "EF";
    DROP SCHEMA "EF";
                postgres    false            >           0    0    SCHEMA "EF"    COMMENT     -   COMMENT ON SCHEMA "EF" IS '"EF" EASY FARMA';
                   postgres    false    6            �            1259    16404    banco    TABLE     �   CREATE TABLE "EF".banco (
    id integer NOT NULL,
    cuenta character varying NOT NULL,
    tipocuenta character varying,
    nombre character varying
);
    DROP TABLE "EF".banco;
       EF         heap    postgres    false    6            �            1259    16403    banco_id_seq    SEQUENCE     �   CREATE SEQUENCE "EF".banco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE "EF".banco_id_seq;
       EF          postgres    false    217    6            ?           0    0    banco_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE "EF".banco_id_seq OWNED BY "EF".banco.id;
          EF          postgres    false    216            �            1259    16413    bancomovimiento    TABLE       CREATE TABLE "EF".bancomovimiento (
    id integer NOT NULL,
    fecha time with time zone DEFAULT '23:25:01.455705-03'::time with time zone,
    monto bigint,
    cuenta character varying NOT NULL,
    tipomovimiento character varying,
    observacion character varying
);
 !   DROP TABLE "EF".bancomovimiento;
       EF         heap    postgres    false    6            �            1259    16412    bancomovimiento_id_seq    SEQUENCE     �   CREATE SEQUENCE "EF".bancomovimiento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE "EF".bancomovimiento_id_seq;
       EF          postgres    false    219    6            @           0    0    bancomovimiento_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "EF".bancomovimiento_id_seq OWNED BY "EF".bancomovimiento.id;
          EF          postgres    false    218            �            1259    16428    bioequivalente    TABLE     �   CREATE TABLE "EF".bioequivalente (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    producto character varying,
    activo boolean,
    orden bigint
);
     DROP TABLE "EF".bioequivalente;
       EF         heap    postgres    false    6            �            1259    16427    bioequivalente_id_seq    SEQUENCE     �   CREATE SEQUENCE "EF".bioequivalente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE "EF".bioequivalente_id_seq;
       EF          postgres    false    6    221            A           0    0    bioequivalente_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE "EF".bioequivalente_id_seq OWNED BY "EF".bioequivalente.id;
          EF          postgres    false    220            �            1259    16439 
   cajabodega    TABLE     N  CREATE TABLE "EF".cajabodega (
    id bigint,
    codigo character varying NOT NULL,
    fecha time with time zone,
    hora time with time zone,
    cantidad character varying,
    monto character varying,
    cuenta character varying,
    tipo character varying,
    observacion character varying,
    sucursal character varying
);
    DROP TABLE "EF".cajabodega;
       EF         heap    postgres    false    6            �            1259    16448    cajamovimiento    TABLE     a  CREATE TABLE "EF".cajamovimiento (
    id bigint NOT NULL,
    codigo character varying NOT NULL,
    fecha time with time zone,
    hora time with time zone,
    cantidad bigint,
    monto bigint,
    metodo character varying,
    cuenta character varying NOT NULL,
    tipo bigint,
    observacion character varying,
    sucursal character varying
);
     DROP TABLE "EF".cajamovimiento;
       EF         heap    postgres    false    6            �            1259    16455    cargo    TABLE     o   CREATE TABLE "EF".cargo (
    idcargo bigint NOT NULL,
    nombrecargo character varying,
    estado bit(1)
);
    DROP TABLE "EF".cargo;
       EF         heap    postgres    false    6            �            1259    16467 	   categoria    TABLE     �   CREATE TABLE "EF".categoria (
    id bigint NOT NULL,
    nombre character varying,
    categoria character varying NOT NULL,
    activo boolean,
    orden bigint
);
    DROP TABLE "EF".categoria;
       EF         heap    postgres    false    6            �            1259    16474    contacto    TABLE        CREATE TABLE "EF".contacto (
    rut character varying NOT NULL,
    nombre character varying NOT NULL,
    apellido character varying,
    correo character varying,
    celular bigint,
    direccion character varying,
    suscripcion character varying
);
    DROP TABLE "EF".contacto;
       EF         heap    postgres    false    6            �            1259    16479    cupones    TABLE     .  CREATE TABLE "EF".cupones (
    norden bigint,
    nombre character varying(255) DEFAULT NULL::character varying,
    apellidos character varying(255) DEFAULT NULL::character varying,
    rut character varying(255) DEFAULT NULL::character varying,
    cupon character varying(255) DEFAULT NULL::character varying,
    pasarela character varying(255) DEFAULT NULL::character varying,
    total bigint,
    descuento bigint,
    fecha character varying(255) DEFAULT NULL::character varying,
    estado character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE "EF".cupones;
       EF         heap    postgres    false    6            �            1259    16695    datosfacturacion    TABLE     Q  CREATE TABLE "EF".datosfacturacion (
    id bigint,
    rut character varying(255) DEFAULT NULL::character varying,
    razonsocial character varying(255) DEFAULT NULL::character varying,
    direccion character varying(255) DEFAULT NULL::character varying,
    ciudad character varying(255) DEFAULT NULL::character varying,
    fono character varying(255) DEFAULT NULL::character varying,
    giro character varying(255) DEFAULT NULL::character varying,
    cliente character varying(255) DEFAULT NULL::character varying,
    periodo character varying(255) DEFAULT NULL::character varying
);
 "   DROP TABLE "EF".datosfacturacion;
       EF         heap    postgres    false    6            �            1259    16708    descuentodetalle    TABLE     �   CREATE TABLE "EF".descuentodetalle (
    id bigint,
    sku bigint,
    nombre character varying(255) DEFAULT NULL::character varying,
    precio bigint,
    limiteusos bigint
);
 "   DROP TABLE "EF".descuentodetalle;
       EF         heap    postgres    false    6            �            1259    16712    detalledocumento    TABLE     �  CREATE TABLE "EF".detalledocumento (
    id bigint,
    nombre character varying(255) DEFAULT NULL::character varying,
    cantidad character varying(255) DEFAULT NULL::character varying,
    valor character varying(255) DEFAULT NULL::character varying,
    numero character varying(255) DEFAULT NULL::character varying,
    documento character varying(255) DEFAULT NULL::character varying,
    servicio character varying(255) DEFAULT NULL::character varying
);
 "   DROP TABLE "EF".detalledocumento;
       EF         heap    postgres    false    6            �            1259    16723    detallesalida    TABLE     �  CREATE TABLE "EF".detallesalida (
    id bigint,
    idsalida character varying(255) DEFAULT NULL::character varying,
    producto character varying(255) DEFAULT NULL::character varying,
    proveedor character varying(255) DEFAULT NULL::character varying,
    cantidad character varying(255) DEFAULT NULL::character varying,
    valor character varying(255) DEFAULT NULL::character varying,
    costo character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE "EF".detallesalida;
       EF         heap    postgres    false    6            �            1259    16734    empleado    TABLE     �  CREATE TABLE "EF".empleado (
    idempleado integer NOT NULL,
    nombre character varying(50) DEFAULT NULL::character varying,
    apellidos character varying(50) DEFAULT NULL::character varying,
    sexo character(1) DEFAULT NULL::bpchar,
    telefono character(9) DEFAULT NULL::bpchar,
    fechanacimiento date,
    tipodocumento character(1) DEFAULT NULL::bpchar,
    numerodocumento character(11) DEFAULT NULL::bpchar,
    idusuario integer
);
    DROP TABLE "EF".empleado;
       EF         heap    postgres    false    6            �            1259    16743 
   enfermedad    TABLE     �   CREATE TABLE "EF".enfermedad (
    id bigint,
    nombre character varying(255) DEFAULT NULL::character varying,
    enfermedades character varying(255) DEFAULT NULL::character varying,
    activo bit(1) DEFAULT NULL::"bit",
    orden bigint
);
    DROP TABLE "EF".enfermedad;
       EF         heap    postgres    false    6            �            1259    16751    formafarmaceutica    TABLE     �   CREATE TABLE "EF".formafarmaceutica (
    id bigint,
    nombre character varying(255) DEFAULT NULL::character varying,
    activo bit(1) DEFAULT NULL::"bit"
);
 #   DROP TABLE "EF".formafarmaceutica;
       EF         heap    postgres    false    6            �            1259    16756 	   impuestos    TABLE        CREATE TABLE "EF".impuestos (
    id bigint,
    nombre character varying(255) DEFAULT NULL::character varying,
    valoractual character varying(255) DEFAULT NULL::character varying,
    operacion character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE "EF".impuestos;
       EF         heap    postgres    false    6            �            1259    16764    impuestosdocumentofinanciero    TABLE     �  CREATE TABLE "EF".impuestosdocumentofinanciero (
    id bigint,
    impuesto character varying(255) DEFAULT NULL::character varying,
    numero character varying(255) DEFAULT NULL::character varying,
    documento character varying(255) DEFAULT NULL::character varying,
    valor character varying(255) DEFAULT NULL::character varying,
    monto character varying(255) DEFAULT NULL::character varying
);
 .   DROP TABLE "EF".impuestosdocumentofinanciero;
       EF         heap    postgres    false    6            �            1259    16774    laboratorio    TABLE     k   CREATE TABLE "EF".laboratorio (
    id bigint,
    nombre bigint,
    activo bit(1) DEFAULT NULL::"bit"
);
    DROP TABLE "EF".laboratorio;
       EF         heap    postgres    false    6            �            1259    16778    logconexion    TABLE     L  CREATE TABLE "EF".logconexion (
    id bigint,
    usuario character varying(255) DEFAULT NULL::character varying,
    ip character varying(255) DEFAULT NULL::character varying,
    ipcliente character varying(255) DEFAULT NULL::character varying,
    host character varying(255) DEFAULT NULL::character varying,
    hostcliente character varying(255) DEFAULT NULL::character varying,
    conectado character varying(255) DEFAULT NULL::character varying,
    fecha character varying(255) DEFAULT NULL::character varying,
    hora character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE "EF".logconexion;
       EF         heap    postgres    false    6            �            1259    16791    logocurrencias    TABLE     O  CREATE TABLE "EF".logocurrencias (
    id bigint,
    usuario character varying(255) DEFAULT NULL::character varying,
    ip character varying(255) DEFAULT NULL::character varying,
    ipcliente character varying(255) DEFAULT NULL::character varying,
    host character varying(255) DEFAULT NULL::character varying,
    hostcliente character varying(255) DEFAULT NULL::character varying,
    conectado character varying(255) DEFAULT NULL::character varying,
    fecha character varying(255) DEFAULT NULL::character varying,
    hora character varying(255) DEFAULT NULL::character varying
);
     DROP TABLE "EF".logocurrencias;
       EF         heap    postgres    false    6            �            1259    16804    pagodocumento    TABLE     �  CREATE TABLE "EF".pagodocumento (
    id bigint,
    numero character varying(255) DEFAULT NULL::character varying,
    documento character varying(255) DEFAULT NULL::character varying,
    fecha character varying(255) DEFAULT NULL::character varying,
    monto character varying(255) DEFAULT NULL::character varying,
    pagadopor character varying(255) DEFAULT NULL::character varying,
    sucursal character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE "EF".pagodocumento;
       EF         heap    postgres    false    6            �            1259    16815    pagoproveedor    TABLE     �  CREATE TABLE "EF".pagoproveedor (
    id bigint,
    numerodocumento character varying(255) DEFAULT NULL::character varying,
    documento character varying(255) DEFAULT NULL::character varying,
    metodopago character varying(255) DEFAULT NULL::character varying,
    fecha character varying(255) DEFAULT NULL::character varying,
    monto character varying(255) DEFAULT NULL::character varying,
    proveedor character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE "EF".pagoproveedor;
       EF         heap    postgres    false    6            �            1259    16826    pedido    TABLE     A  CREATE TABLE "EF".pedido (
    id bigint,
    cliente character varying(255) DEFAULT NULL::character varying,
    rutfacturacion character varying(255) DEFAULT NULL::character varying,
    metodo character varying(255) DEFAULT NULL::character varying,
    pedido character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE "EF".pedido;
       EF         heap    postgres    false    6            �            1259    16835    pedidodestino    TABLE     �  CREATE TABLE "EF".pedidodestino (
    id bigint,
    documento character varying(255) DEFAULT NULL::character varying,
    numerodocumento character varying(255) DEFAULT NULL::character varying,
    vendedor character varying(255) DEFAULT NULL::character varying,
    documentotributario character varying(255) DEFAULT NULL::character varying,
    direccion character varying(255) DEFAULT NULL::character varying,
    pedido character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE "EF".pedidodestino;
       EF         heap    postgres    false    6            �            1259    16846    principioactivo    TABLE     o   CREATE TABLE "EF".principioactivo (
    id bigint,
    nombre bigint,
    activo bit(1) DEFAULT NULL::"bit"
);
 !   DROP TABLE "EF".principioactivo;
       EF         heap    postgres    false    6            �            1259    16850    producto    TABLE     �  CREATE TABLE "EF".producto (
    id bigint,
    sku bigint,
    nombre character varying(255) DEFAULT NULL::character varying,
    precio bigint,
    activo bit(1) DEFAULT NULL::"bit",
    receta bit(1) DEFAULT NULL::"bit",
    "preciofración" bigint,
    formafarmaceutica character varying(255) DEFAULT NULL::character varying,
    dosisforma character varying(255) DEFAULT NULL::character varying,
    preciodosis bigint,
    stock bigint,
    otrosmedicamentos character varying(255) DEFAULT NULL::character varying,
    categorias character varying(255) DEFAULT NULL::character varying,
    imagen bit(1) DEFAULT NULL::"bit",
    urlimagen character varying(255) DEFAULT NULL::character varying,
    mostrardescripcion bit(1) DEFAULT NULL::"bit",
    "descripción" character varying(255) DEFAULT NULL::character varying,
    manejostock character varying(255) DEFAULT NULL::character varying,
    precioplus bigint,
    enfermedades character varying(255) DEFAULT NULL::character varying,
    medicamento bit(1) DEFAULT NULL::"bit",
    principioactivo character varying(255) DEFAULT NULL::character varying,
    laboratorio character varying(255) DEFAULT NULL::character varying,
    bioequivalente character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE "EF".producto;
       EF         heap    postgres    false    6            �            1259    16872    productoventa    TABLE     Z  CREATE TABLE "EF".productoventa (
    id bigint,
    documento character varying(255) DEFAULT NULL::character varying,
    numerodocumento character varying(255) DEFAULT NULL::character varying,
    producto character varying(255) DEFAULT NULL::character varying,
    proveedor character varying(255) DEFAULT NULL::character varying,
    cantidad character varying(255) DEFAULT NULL::character varying,
    valor character varying(255) DEFAULT NULL::character varying,
    fecha character varying(255) DEFAULT NULL::character varying,
    hora character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE "EF".productoventa;
       EF         heap    postgres    false    6            �            1259    16885 
   saldobanco    TABLE     �   CREATE TABLE "EF".saldobanco (
    id bigint,
    banco character varying(255) DEFAULT NULL::character varying,
    saldo bigint
);
    DROP TABLE "EF".saldobanco;
       EF         heap    postgres    false    6            �            1259    16889    salida    TABLE     �  CREATE TABLE "EF".salida (
    id bigint,
    codigo character varying(255) DEFAULT NULL::character varying,
    fecha character varying(255) DEFAULT NULL::character varying,
    motivo character varying(255) DEFAULT NULL::character varying,
    observacion character varying(255) DEFAULT NULL::character varying,
    sucursal character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE "EF".salida;
       EF         heap    postgres    false    6            �            1259    16899    usuario    TABLE     �  CREATE TABLE "EF".usuario (
    idusuario integer NOT NULL,
    nombreusuario character varying(20) DEFAULT NULL::character varying,
    clave character varying(10) DEFAULT NULL::character varying,
    estado bit(1) DEFAULT NULL::"bit",
    idcargo integer,
    imagen character varying,
    apellidousuario character varying(45) DEFAULT NULL::character varying,
    email character varying(100) DEFAULT NULL::character varying
);
    DROP TABLE "EF".usuario;
       EF         heap    postgres    false    6            �            1259    16909    venta    TABLE     _  CREATE TABLE "EF".venta (
    id bigint,
    documento character varying(255) DEFAULT NULL::character varying,
    numerodocumento character varying(255) DEFAULT NULL::character varying,
    domicilio character varying(255) DEFAULT NULL::character varying,
    documentotributario character varying(255) DEFAULT NULL::character varying,
    cliente character varying(255) DEFAULT NULL::character varying,
    sucursal character varying(255) DEFAULT NULL::character varying,
    fecha character varying(255) DEFAULT NULL::character varying,
    hora character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE "EF".venta;
       EF         heap    postgres    false    6            �           2604    16407    banco id    DEFAULT     `   ALTER TABLE ONLY "EF".banco ALTER COLUMN id SET DEFAULT nextval('"EF".banco_id_seq'::regclass);
 5   ALTER TABLE "EF".banco ALTER COLUMN id DROP DEFAULT;
       EF          postgres    false    217    216    217            �           2604    16416    bancomovimiento id    DEFAULT     t   ALTER TABLE ONLY "EF".bancomovimiento ALTER COLUMN id SET DEFAULT nextval('"EF".bancomovimiento_id_seq'::regclass);
 ?   ALTER TABLE "EF".bancomovimiento ALTER COLUMN id DROP DEFAULT;
       EF          postgres    false    218    219    219            �           2604    16431    bioequivalente id    DEFAULT     r   ALTER TABLE ONLY "EF".bioequivalente ALTER COLUMN id SET DEFAULT nextval('"EF".bioequivalente_id_seq'::regclass);
 >   ALTER TABLE "EF".bioequivalente ALTER COLUMN id DROP DEFAULT;
       EF          postgres    false    220    221    221                      0    16404    banco 
   TABLE DATA           =   COPY "EF".banco (id, cuenta, tipocuenta, nombre) FROM stdin;
    EF          postgres    false    217   �}                 0    16413    bancomovimiento 
   TABLE DATA           ^   COPY "EF".bancomovimiento (id, fecha, monto, cuenta, tipomovimiento, observacion) FROM stdin;
    EF          postgres    false    219   �}                 0    16428    bioequivalente 
   TABLE DATA           K   COPY "EF".bioequivalente (id, nombre, producto, activo, orden) FROM stdin;
    EF          postgres    false    221   �}                 0    16439 
   cajabodega 
   TABLE DATA           q   COPY "EF".cajabodega (id, codigo, fecha, hora, cantidad, monto, cuenta, tipo, observacion, sucursal) FROM stdin;
    EF          postgres    false    222   �}                 0    16448    cajamovimiento 
   TABLE DATA           }   COPY "EF".cajamovimiento (id, codigo, fecha, hora, cantidad, monto, metodo, cuenta, tipo, observacion, sucursal) FROM stdin;
    EF          postgres    false    223   �}                 0    16455    cargo 
   TABLE DATA           ;   COPY "EF".cargo (idcargo, nombrecargo, estado) FROM stdin;
    EF          postgres    false    224   ~                 0    16467 	   categoria 
   TABLE DATA           G   COPY "EF".categoria (id, nombre, categoria, activo, orden) FROM stdin;
    EF          postgres    false    225   4~                 0    16474    contacto 
   TABLE DATA           `   COPY "EF".contacto (rut, nombre, apellido, correo, celular, direccion, suscripcion) FROM stdin;
    EF          postgres    false    226   Q~                  0    16479    cupones 
   TABLE DATA           q   COPY "EF".cupones (norden, nombre, apellidos, rut, cupon, pasarela, total, descuento, fecha, estado) FROM stdin;
    EF          postgres    false    227   n~       !          0    16695    datosfacturacion 
   TABLE DATA           o   COPY "EF".datosfacturacion (id, rut, razonsocial, direccion, ciudad, fono, giro, cliente, periodo) FROM stdin;
    EF          postgres    false    228   �~       "          0    16708    descuentodetalle 
   TABLE DATA           M   COPY "EF".descuentodetalle (id, sku, nombre, precio, limiteusos) FROM stdin;
    EF          postgres    false    229   �~       #          0    16712    detalledocumento 
   TABLE DATA           b   COPY "EF".detalledocumento (id, nombre, cantidad, valor, numero, documento, servicio) FROM stdin;
    EF          postgres    false    230   �~       $          0    16723    detallesalida 
   TABLE DATA           `   COPY "EF".detallesalida (id, idsalida, producto, proveedor, cantidad, valor, costo) FROM stdin;
    EF          postgres    false    231   �~       %          0    16734    empleado 
   TABLE DATA           �   COPY "EF".empleado (idempleado, nombre, apellidos, sexo, telefono, fechanacimiento, tipodocumento, numerodocumento, idusuario) FROM stdin;
    EF          postgres    false    232   �~       &          0    16743 
   enfermedad 
   TABLE DATA           K   COPY "EF".enfermedad (id, nombre, enfermedades, activo, orden) FROM stdin;
    EF          postgres    false    233          '          0    16751    formafarmaceutica 
   TABLE DATA           =   COPY "EF".formafarmaceutica (id, nombre, activo) FROM stdin;
    EF          postgres    false    234   9       (          0    16756 	   impuestos 
   TABLE DATA           E   COPY "EF".impuestos (id, nombre, valoractual, operacion) FROM stdin;
    EF          postgres    false    235   V       )          0    16764    impuestosdocumentofinanciero 
   TABLE DATA           c   COPY "EF".impuestosdocumentofinanciero (id, impuesto, numero, documento, valor, monto) FROM stdin;
    EF          postgres    false    236   s       *          0    16774    laboratorio 
   TABLE DATA           7   COPY "EF".laboratorio (id, nombre, activo) FROM stdin;
    EF          postgres    false    237   �       +          0    16778    logconexion 
   TABLE DATA           j   COPY "EF".logconexion (id, usuario, ip, ipcliente, host, hostcliente, conectado, fecha, hora) FROM stdin;
    EF          postgres    false    238   �       ,          0    16791    logocurrencias 
   TABLE DATA           m   COPY "EF".logocurrencias (id, usuario, ip, ipcliente, host, hostcliente, conectado, fecha, hora) FROM stdin;
    EF          postgres    false    239   �       -          0    16804    pagodocumento 
   TABLE DATA           _   COPY "EF".pagodocumento (id, numero, documento, fecha, monto, pagadopor, sucursal) FROM stdin;
    EF          postgres    false    240   �       .          0    16815    pagoproveedor 
   TABLE DATA           j   COPY "EF".pagoproveedor (id, numerodocumento, documento, metodopago, fecha, monto, proveedor) FROM stdin;
    EF          postgres    false    241   �       /          0    16826    pedido 
   TABLE DATA           K   COPY "EF".pedido (id, cliente, rutfacturacion, metodo, pedido) FROM stdin;
    EF          postgres    false    242   !�       0          0    16835    pedidodestino 
   TABLE DATA           w   COPY "EF".pedidodestino (id, documento, numerodocumento, vendedor, documentotributario, direccion, pedido) FROM stdin;
    EF          postgres    false    243   >�       1          0    16846    principioactivo 
   TABLE DATA           ;   COPY "EF".principioactivo (id, nombre, activo) FROM stdin;
    EF          postgres    false    244   [�       2          0    16850    producto 
   TABLE DATA           F  COPY "EF".producto (id, sku, nombre, precio, activo, receta, "preciofración", formafarmaceutica, dosisforma, preciodosis, stock, otrosmedicamentos, categorias, imagen, urlimagen, mostrardescripcion, "descripción", manejostock, precioplus, enfermedades, medicamento, principioactivo, laboratorio, bioequivalente) FROM stdin;
    EF          postgres    false    245   x�       3          0    16872    productoventa 
   TABLE DATA           x   COPY "EF".productoventa (id, documento, numerodocumento, producto, proveedor, cantidad, valor, fecha, hora) FROM stdin;
    EF          postgres    false    246   ��       4          0    16885 
   saldobanco 
   TABLE DATA           4   COPY "EF".saldobanco (id, banco, saldo) FROM stdin;
    EF          postgres    false    247   ��       5          0    16889    salida 
   TABLE DATA           P   COPY "EF".salida (id, codigo, fecha, motivo, observacion, sucursal) FROM stdin;
    EF          postgres    false    248   π       6          0    16899    usuario 
   TABLE DATA           q   COPY "EF".usuario (idusuario, nombreusuario, clave, estado, idcargo, imagen, apellidousuario, email) FROM stdin;
    EF          postgres    false    249   �       7          0    16909    venta 
   TABLE DATA           }   COPY "EF".venta (id, documento, numerodocumento, domicilio, documentotributario, cliente, sucursal, fecha, hora) FROM stdin;
    EF          postgres    false    250   	�       B           0    0    banco_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('"EF".banco_id_seq', 1, false);
          EF          postgres    false    216            C           0    0    bancomovimiento_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"EF".bancomovimiento_id_seq', 1, false);
          EF          postgres    false    218            D           0    0    bioequivalente_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"EF".bioequivalente_id_seq', 1, false);
          EF          postgres    false    220            }           2606    16447    bioequivalente bio 
   CONSTRAINT     c   ALTER TABLE ONLY "EF".bioequivalente
    ADD CONSTRAINT bio PRIMARY KEY (id, nombre) INCLUDE (id);
 :   ALTER TABLE ONLY "EF".bioequivalente DROP CONSTRAINT bio;
       EF            postgres    false    221    221                       2606    16445    cajabodega bodega 
   CONSTRAINT     ^   ALTER TABLE ONLY "EF".cajabodega
    ADD CONSTRAINT bodega PRIMARY KEY (codigo) INCLUDE (id);
 9   ALTER TABLE ONLY "EF".cajabodega DROP CONSTRAINT bodega;
       EF            postgres    false    222    222            �           2606    16454    cajamovimiento cajamov 
   CONSTRAINT     o   ALTER TABLE ONLY "EF".cajamovimiento
    ADD CONSTRAINT cajamov PRIMARY KEY (id, codigo, cuenta) INCLUDE (id);
 >   ALTER TABLE ONLY "EF".cajamovimiento DROP CONSTRAINT cajamov;
       EF            postgres    false    223    223    223            y           2606    16411    banco cuenta 
   CONSTRAINT     Y   ALTER TABLE ONLY "EF".banco
    ADD CONSTRAINT cuenta PRIMARY KEY (cuenta) INCLUDE (id);
 4   ALTER TABLE ONLY "EF".banco DROP CONSTRAINT cuenta;
       EF            postgres    false    217    217            {           2606    16421    bancomovimiento id 
   CONSTRAINT     _   ALTER TABLE ONLY "EF".bancomovimiento
    ADD CONSTRAINT id PRIMARY KEY (cuenta) INCLUDE (id);
 :   ALTER TABLE ONLY "EF".bancomovimiento DROP CONSTRAINT id;
       EF            postgres    false    219    219            �           2606    16461    cargo idcargo 
   CONSTRAINT     `   ALTER TABLE ONLY "EF".cargo
    ADD CONSTRAINT idcargo PRIMARY KEY (idcargo) INCLUDE (idcargo);
 5   ALTER TABLE ONLY "EF".cargo DROP CONSTRAINT idcargo;
       EF            postgres    false    224            �           2606    16473    categoria idcategoria 
   CONSTRAINT     i   ALTER TABLE ONLY "EF".categoria
    ADD CONSTRAINT idcategoria PRIMARY KEY (id, categoria) INCLUDE (id);
 =   ALTER TABLE ONLY "EF".categoria DROP CONSTRAINT idcategoria;
       EF            postgres    false    225    225            �           2606    16422    bancomovimiento bancos    FK CONSTRAINT     ~   ALTER TABLE ONLY "EF".bancomovimiento
    ADD CONSTRAINT bancos FOREIGN KEY (cuenta) REFERENCES "EF".banco(cuenta) NOT VALID;
 >   ALTER TABLE ONLY "EF".bancomovimiento DROP CONSTRAINT bancos;
       EF          postgres    false    217    3705    219                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �             x������ � �      !      x������ � �      "      x������ � �      #      x������ � �      $      x������ � �      %      x������ � �      &      x������ � �      '      x������ � �      (      x������ � �      )      x������ � �      *      x������ � �      +      x������ � �      ,      x������ � �      -      x������ � �      .      x������ � �      /      x������ � �      0      x������ � �      1      x������ � �      2      x������ � �      3      x������ � �      4      x������ � �      5      x������ � �      6      x������ � �      7      x������ � �     
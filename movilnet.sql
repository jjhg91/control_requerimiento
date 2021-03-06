PGDMP     2    4                y            movilnet    12.4    12.4 y    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16393    movilnet    DATABASE     ?   CREATE DATABASE movilnet WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE movilnet;
                postgres    false            ?            1259    16394    area_responsable    TABLE        CREATE TABLE public.area_responsable (
    id_area_responsable integer NOT NULL,
    descripcion character varying NOT NULL
);
 $   DROP TABLE public.area_responsable;
       public         heap    postgres    false            ?            1259    16400 (   area_responsable_id_area_responsable_seq    SEQUENCE     ?   CREATE SEQUENCE public.area_responsable_id_area_responsable_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.area_responsable_id_area_responsable_seq;
       public          postgres    false    202            ?           0    0 (   area_responsable_id_area_responsable_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.area_responsable_id_area_responsable_seq OWNED BY public.area_responsable.id_area_responsable;
          public          postgres    false    203            ?            1259    24791    areas_visibles    TABLE     ?   CREATE TABLE public.areas_visibles (
    id_area_visible integer NOT NULL,
    p00 bigint NOT NULL,
    id_departamento bigint NOT NULL
);
 "   DROP TABLE public.areas_visibles;
       public         heap    postgres    false            ?            1259    24789 "   areas_visibles_id_area_visible_seq    SEQUENCE     ?   CREATE SEQUENCE public.areas_visibles_id_area_visible_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.areas_visibles_id_area_visible_seq;
       public          postgres    false    230            ?           0    0 "   areas_visibles_id_area_visible_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.areas_visibles_id_area_visible_seq OWNED BY public.areas_visibles.id_area_visible;
          public          postgres    false    229            ?            1259    16599 	   auditoria    TABLE     ?   CREATE TABLE public.auditoria (
    id_auditoria bigint NOT NULL,
    p00 integer NOT NULL,
    tabla character varying NOT NULL,
    accion character varying NOT NULL,
    ip_usuario character varying NOT NULL
);
    DROP TABLE public.auditoria;
       public         heap    postgres    false            ?            1259    16597    auditoria_id_auditoria_seq    SEQUENCE     ?   CREATE SEQUENCE public.auditoria_id_auditoria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.auditoria_id_auditoria_seq;
       public          postgres    false    228            ?           0    0    auditoria_id_auditoria_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.auditoria_id_auditoria_seq OWNED BY public.auditoria.id_auditoria;
          public          postgres    false    227            ?            1259    16402    cargo    TABLE     i   CREATE TABLE public.cargo (
    id_cargo integer NOT NULL,
    descripcion character varying NOT NULL
);
    DROP TABLE public.cargo;
       public         heap    postgres    false            ?            1259    16408    cargo_id_cargo_seq    SEQUENCE     ?   CREATE SEQUENCE public.cargo_id_cargo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cargo_id_cargo_seq;
       public          postgres    false    204            ?           0    0    cargo_id_cargo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cargo_id_cargo_seq OWNED BY public.cargo.id_cargo;
          public          postgres    false    205            ?            1259    16410    departamento    TABLE     w   CREATE TABLE public.departamento (
    id_departamento integer NOT NULL,
    descripcion character varying NOT NULL
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            ?            1259    16416     departamento_id_departamento_seq    SEQUENCE     ?   CREATE SEQUENCE public.departamento_id_departamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.departamento_id_departamento_seq;
       public          postgres    false    206            ?           0    0     departamento_id_departamento_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.departamento_id_departamento_seq OWNED BY public.departamento.id_departamento;
          public          postgres    false    207            ?            1259    16418    estatus_requerimiento    TABLE     ?   CREATE TABLE public.estatus_requerimiento (
    id_estatus_requerimiento bigint NOT NULL,
    descripcion character varying NOT NULL
);
 )   DROP TABLE public.estatus_requerimiento;
       public         heap    postgres    false            ?            1259    16424 $   estatus_requerimiento__requerimiento    TABLE     
  CREATE TABLE public.estatus_requerimiento__requerimiento (
    id_estatus_requerimeinto__requerimiento bigint NOT NULL,
    id_requerimiento bigint NOT NULL,
    id_estatus_requerimiento bigint NOT NULL,
    fecha_estatus_requerimiento character varying NOT NULL
);
 8   DROP TABLE public.estatus_requerimiento__requerimiento;
       public         heap    postgres    false            ?            1259    16430 ?   estatus_requerimiento__requer_id_estatus_requerimeinto__req_seq    SEQUENCE     ?   CREATE SEQUENCE public.estatus_requerimiento__requer_id_estatus_requerimeinto__req_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.estatus_requerimiento__requer_id_estatus_requerimeinto__req_seq;
       public          postgres    false    209            ?           0    0 ?   estatus_requerimiento__requer_id_estatus_requerimeinto__req_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.estatus_requerimiento__requer_id_estatus_requerimeinto__req_seq OWNED BY public.estatus_requerimiento__requerimiento.id_estatus_requerimeinto__requerimiento;
          public          postgres    false    210            ?            1259    16432 2   estatus_requerimiento_id_estatus_requerimiento_seq    SEQUENCE     ?   CREATE SEQUENCE public.estatus_requerimiento_id_estatus_requerimiento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.estatus_requerimiento_id_estatus_requerimiento_seq;
       public          postgres    false    208            ?           0    0 2   estatus_requerimiento_id_estatus_requerimiento_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.estatus_requerimiento_id_estatus_requerimiento_seq OWNED BY public.estatus_requerimiento.id_estatus_requerimiento;
          public          postgres    false    211            ?            1259    16434    estatus_usuario    TABLE     }   CREATE TABLE public.estatus_usuario (
    id_estatus_usuario integer NOT NULL,
    descripcion character varying NOT NULL
);
 #   DROP TABLE public.estatus_usuario;
       public         heap    postgres    false            ?            1259    16440 &   estatus_usuario_id_estatus_usuario_seq    SEQUENCE     ?   CREATE SEQUENCE public.estatus_usuario_id_estatus_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.estatus_usuario_id_estatus_usuario_seq;
       public          postgres    false    212            ?           0    0 &   estatus_usuario_id_estatus_usuario_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.estatus_usuario_id_estatus_usuario_seq OWNED BY public.estatus_usuario.id_estatus_usuario;
          public          postgres    false    213            ?            1259    16442 
   frecuencia    TABLE     s   CREATE TABLE public.frecuencia (
    id_frecuencia integer NOT NULL,
    descripcion character varying NOT NULL
);
    DROP TABLE public.frecuencia;
       public         heap    postgres    false            ?            1259    16448    frecuencia_id_frecuencia_seq    SEQUENCE     ?   CREATE SEQUENCE public.frecuencia_id_frecuencia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.frecuencia_id_frecuencia_seq;
       public          postgres    false    214            ?           0    0    frecuencia_id_frecuencia_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.frecuencia_id_frecuencia_seq OWNED BY public.frecuencia.id_frecuencia;
          public          postgres    false    215            ?            1259    16450    perfil_usuario    TABLE     {   CREATE TABLE public.perfil_usuario (
    id_perfil_usuario integer NOT NULL,
    descripcion character varying NOT NULL
);
 "   DROP TABLE public.perfil_usuario;
       public         heap    postgres    false            ?            1259    16456    perfil_usuario__usuario    TABLE     ?   CREATE TABLE public.perfil_usuario__usuario (
    id_perfil_usuario__usuario bigint NOT NULL,
    p00 bigint NOT NULL,
    id_perfil_usuario integer NOT NULL,
    estatus_perfil boolean DEFAULT false NOT NULL
);
 +   DROP TABLE public.perfil_usuario__usuario;
       public         heap    postgres    false            ?            1259    16459 6   perfil_usuario__usuario_id_perfil_usuario__usuario_seq    SEQUENCE     ?   CREATE SEQUENCE public.perfil_usuario__usuario_id_perfil_usuario__usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.perfil_usuario__usuario_id_perfil_usuario__usuario_seq;
       public          postgres    false    217            ?           0    0 6   perfil_usuario__usuario_id_perfil_usuario__usuario_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.perfil_usuario__usuario_id_perfil_usuario__usuario_seq OWNED BY public.perfil_usuario__usuario.id_perfil_usuario__usuario;
          public          postgres    false    218            ?            1259    16461 $   perfil_usuario_id_perfil_usuario_seq    SEQUENCE     ?   CREATE SEQUENCE public.perfil_usuario_id_perfil_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.perfil_usuario_id_perfil_usuario_seq;
       public          postgres    false    216            ?           0    0 $   perfil_usuario_id_perfil_usuario_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.perfil_usuario_id_perfil_usuario_seq OWNED BY public.perfil_usuario.id_perfil_usuario;
          public          postgres    false    219            ?            1259    16463    requerimiento    TABLE     ?  CREATE TABLE public.requerimiento (
    id_requerimiento bigint NOT NULL,
    fecha_solicitud character varying NOT NULL,
    objetivo character varying NOT NULL,
    descripcion character varying NOT NULL,
    datos character varying NOT NULL,
    fecha_requerida character varying NOT NULL,
    fecha_registro character varying NOT NULL,
    p00_solicitante bigint NOT NULL,
    id_frecuencia integer NOT NULL,
    id_tipo_requerimiento integer NOT NULL
);
 !   DROP TABLE public.requerimiento;
       public         heap    postgres    false            ?            1259    16469 "   requerimiento_id_requerimiento_seq    SEQUENCE     ?   CREATE SEQUENCE public.requerimiento_id_requerimiento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.requerimiento_id_requerimiento_seq;
       public          postgres    false    220            ?           0    0 "   requerimiento_id_requerimiento_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.requerimiento_id_requerimiento_seq OWNED BY public.requerimiento.id_requerimiento;
          public          postgres    false    221            ?            1259    16471    tipo_requerimiento    TABLE     ?   CREATE TABLE public.tipo_requerimiento (
    id_tipo_requerimiento integer NOT NULL,
    descripcion character varying NOT NULL,
    id_area_responsable integer NOT NULL,
    envio_correo boolean NOT NULL,
    habilitado boolean NOT NULL
);
 &   DROP TABLE public.tipo_requerimiento;
       public         heap    postgres    false            ?            1259    16477 ,   tipo_requerimiento_id_tipo_requerimiento_seq    SEQUENCE     ?   CREATE SEQUENCE public.tipo_requerimiento_id_tipo_requerimiento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.tipo_requerimiento_id_tipo_requerimiento_seq;
       public          postgres    false    222            ?           0    0 ,   tipo_requerimiento_id_tipo_requerimiento_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.tipo_requerimiento_id_tipo_requerimiento_seq OWNED BY public.tipo_requerimiento.id_tipo_requerimiento;
          public          postgres    false    223            ?            1259    16479    usuario    TABLE     ?  CREATE TABLE public.usuario (
    p00 integer NOT NULL,
    nombres character varying NOT NULL,
    apellidos character varying NOT NULL,
    password character varying NOT NULL,
    correo character varying NOT NULL,
    telefono character varying NOT NULL,
    id_departamento integer NOT NULL,
    id_cargo integer NOT NULL,
    id_estatus_usuario integer NOT NULL,
    username character varying,
    "authKey" character varying,
    "accessToken" character varying
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            ?            1259    16485    usuario_asignado_requerimiento    TABLE     ?   CREATE TABLE public.usuario_asignado_requerimiento (
    id_usuario_asignado_requerimiento bigint NOT NULL,
    p00 bigint NOT NULL,
    id_requerimiento bigint NOT NULL,
    fecha_asignacion character varying NOT NULL
);
 2   DROP TABLE public.usuario_asignado_requerimiento;
       public         heap    postgres    false            ?            1259    16491 ?   usuario_asignado_requerimient_id_usuario_asignado_requerimi_seq    SEQUENCE     ?   CREATE SEQUENCE public.usuario_asignado_requerimient_id_usuario_asignado_requerimi_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.usuario_asignado_requerimient_id_usuario_asignado_requerimi_seq;
       public          postgres    false    225            ?           0    0 ?   usuario_asignado_requerimient_id_usuario_asignado_requerimi_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.usuario_asignado_requerimient_id_usuario_asignado_requerimi_seq OWNED BY public.usuario_asignado_requerimiento.id_usuario_asignado_requerimiento;
          public          postgres    false    226            ?
           2604    16493 $   area_responsable id_area_responsable    DEFAULT     ?   ALTER TABLE ONLY public.area_responsable ALTER COLUMN id_area_responsable SET DEFAULT nextval('public.area_responsable_id_area_responsable_seq'::regclass);
 S   ALTER TABLE public.area_responsable ALTER COLUMN id_area_responsable DROP DEFAULT;
       public          postgres    false    203    202            ?
           2604    24794    areas_visibles id_area_visible    DEFAULT     ?   ALTER TABLE ONLY public.areas_visibles ALTER COLUMN id_area_visible SET DEFAULT nextval('public.areas_visibles_id_area_visible_seq'::regclass);
 M   ALTER TABLE public.areas_visibles ALTER COLUMN id_area_visible DROP DEFAULT;
       public          postgres    false    230    229    230            ?
           2604    16602    auditoria id_auditoria    DEFAULT     ?   ALTER TABLE ONLY public.auditoria ALTER COLUMN id_auditoria SET DEFAULT nextval('public.auditoria_id_auditoria_seq'::regclass);
 E   ALTER TABLE public.auditoria ALTER COLUMN id_auditoria DROP DEFAULT;
       public          postgres    false    227    228    228            ?
           2604    16494    cargo id_cargo    DEFAULT     p   ALTER TABLE ONLY public.cargo ALTER COLUMN id_cargo SET DEFAULT nextval('public.cargo_id_cargo_seq'::regclass);
 =   ALTER TABLE public.cargo ALTER COLUMN id_cargo DROP DEFAULT;
       public          postgres    false    205    204            ?
           2604    16495    departamento id_departamento    DEFAULT     ?   ALTER TABLE ONLY public.departamento ALTER COLUMN id_departamento SET DEFAULT nextval('public.departamento_id_departamento_seq'::regclass);
 K   ALTER TABLE public.departamento ALTER COLUMN id_departamento DROP DEFAULT;
       public          postgres    false    207    206            ?
           2604    16496 .   estatus_requerimiento id_estatus_requerimiento    DEFAULT     ?   ALTER TABLE ONLY public.estatus_requerimiento ALTER COLUMN id_estatus_requerimiento SET DEFAULT nextval('public.estatus_requerimiento_id_estatus_requerimiento_seq'::regclass);
 ]   ALTER TABLE public.estatus_requerimiento ALTER COLUMN id_estatus_requerimiento DROP DEFAULT;
       public          postgres    false    211    208            ?
           2604    16497 L   estatus_requerimiento__requerimiento id_estatus_requerimeinto__requerimiento    DEFAULT     ?   ALTER TABLE ONLY public.estatus_requerimiento__requerimiento ALTER COLUMN id_estatus_requerimeinto__requerimiento SET DEFAULT nextval('public.estatus_requerimiento__requer_id_estatus_requerimeinto__req_seq'::regclass);
 {   ALTER TABLE public.estatus_requerimiento__requerimiento ALTER COLUMN id_estatus_requerimeinto__requerimiento DROP DEFAULT;
       public          postgres    false    210    209            ?
           2604    16498 "   estatus_usuario id_estatus_usuario    DEFAULT     ?   ALTER TABLE ONLY public.estatus_usuario ALTER COLUMN id_estatus_usuario SET DEFAULT nextval('public.estatus_usuario_id_estatus_usuario_seq'::regclass);
 Q   ALTER TABLE public.estatus_usuario ALTER COLUMN id_estatus_usuario DROP DEFAULT;
       public          postgres    false    213    212            ?
           2604    16499    frecuencia id_frecuencia    DEFAULT     ?   ALTER TABLE ONLY public.frecuencia ALTER COLUMN id_frecuencia SET DEFAULT nextval('public.frecuencia_id_frecuencia_seq'::regclass);
 G   ALTER TABLE public.frecuencia ALTER COLUMN id_frecuencia DROP DEFAULT;
       public          postgres    false    215    214            ?
           2604    16500     perfil_usuario id_perfil_usuario    DEFAULT     ?   ALTER TABLE ONLY public.perfil_usuario ALTER COLUMN id_perfil_usuario SET DEFAULT nextval('public.perfil_usuario_id_perfil_usuario_seq'::regclass);
 O   ALTER TABLE public.perfil_usuario ALTER COLUMN id_perfil_usuario DROP DEFAULT;
       public          postgres    false    219    216            ?
           2604    16501 2   perfil_usuario__usuario id_perfil_usuario__usuario    DEFAULT     ?   ALTER TABLE ONLY public.perfil_usuario__usuario ALTER COLUMN id_perfil_usuario__usuario SET DEFAULT nextval('public.perfil_usuario__usuario_id_perfil_usuario__usuario_seq'::regclass);
 a   ALTER TABLE public.perfil_usuario__usuario ALTER COLUMN id_perfil_usuario__usuario DROP DEFAULT;
       public          postgres    false    218    217            ?
           2604    16502    requerimiento id_requerimiento    DEFAULT     ?   ALTER TABLE ONLY public.requerimiento ALTER COLUMN id_requerimiento SET DEFAULT nextval('public.requerimiento_id_requerimiento_seq'::regclass);
 M   ALTER TABLE public.requerimiento ALTER COLUMN id_requerimiento DROP DEFAULT;
       public          postgres    false    221    220            ?
           2604    16503 (   tipo_requerimiento id_tipo_requerimiento    DEFAULT     ?   ALTER TABLE ONLY public.tipo_requerimiento ALTER COLUMN id_tipo_requerimiento SET DEFAULT nextval('public.tipo_requerimiento_id_tipo_requerimiento_seq'::regclass);
 W   ALTER TABLE public.tipo_requerimiento ALTER COLUMN id_tipo_requerimiento DROP DEFAULT;
       public          postgres    false    223    222            ?
           2604    16504 @   usuario_asignado_requerimiento id_usuario_asignado_requerimiento    DEFAULT     ?   ALTER TABLE ONLY public.usuario_asignado_requerimiento ALTER COLUMN id_usuario_asignado_requerimiento SET DEFAULT nextval('public.usuario_asignado_requerimient_id_usuario_asignado_requerimi_seq'::regclass);
 o   ALTER TABLE public.usuario_asignado_requerimiento ALTER COLUMN id_usuario_asignado_requerimiento DROP DEFAULT;
       public          postgres    false    226    225            ?          0    16394    area_responsable 
   TABLE DATA           L   COPY public.area_responsable (id_area_responsable, descripcion) FROM stdin;
    public          postgres    false    202   )?       ?          0    24791    areas_visibles 
   TABLE DATA           O   COPY public.areas_visibles (id_area_visible, p00, id_departamento) FROM stdin;
    public          postgres    false    230   ˤ       ?          0    16599 	   auditoria 
   TABLE DATA           Q   COPY public.auditoria (id_auditoria, p00, tabla, accion, ip_usuario) FROM stdin;
    public          postgres    false    228   ??       ?          0    16402    cargo 
   TABLE DATA           6   COPY public.cargo (id_cargo, descripcion) FROM stdin;
    public          postgres    false    204   ?       ?          0    16410    departamento 
   TABLE DATA           D   COPY public.departamento (id_departamento, descripcion) FROM stdin;
    public          postgres    false    206   N?       ?          0    16418    estatus_requerimiento 
   TABLE DATA           V   COPY public.estatus_requerimiento (id_estatus_requerimiento, descripcion) FROM stdin;
    public          postgres    false    208   ??       ?          0    16424 $   estatus_requerimiento__requerimiento 
   TABLE DATA           ?   COPY public.estatus_requerimiento__requerimiento (id_estatus_requerimeinto__requerimiento, id_requerimiento, id_estatus_requerimiento, fecha_estatus_requerimiento) FROM stdin;
    public          postgres    false    209   '?       ?          0    16434    estatus_usuario 
   TABLE DATA           J   COPY public.estatus_usuario (id_estatus_usuario, descripcion) FROM stdin;
    public          postgres    false    212   ??       ?          0    16442 
   frecuencia 
   TABLE DATA           @   COPY public.frecuencia (id_frecuencia, descripcion) FROM stdin;
    public          postgres    false    214   ??       ?          0    16450    perfil_usuario 
   TABLE DATA           H   COPY public.perfil_usuario (id_perfil_usuario, descripcion) FROM stdin;
    public          postgres    false    216   F?       ?          0    16456    perfil_usuario__usuario 
   TABLE DATA           u   COPY public.perfil_usuario__usuario (id_perfil_usuario__usuario, p00, id_perfil_usuario, estatus_perfil) FROM stdin;
    public          postgres    false    217   ɧ       ?          0    16463    requerimiento 
   TABLE DATA           ?   COPY public.requerimiento (id_requerimiento, fecha_solicitud, objetivo, descripcion, datos, fecha_requerida, fecha_registro, p00_solicitante, id_frecuencia, id_tipo_requerimiento) FROM stdin;
    public          postgres    false    220   -?       ?          0    16471    tipo_requerimiento 
   TABLE DATA              COPY public.tipo_requerimiento (id_tipo_requerimiento, descripcion, id_area_responsable, envio_correo, habilitado) FROM stdin;
    public          postgres    false    222   ??       ?          0    16479    usuario 
   TABLE DATA           ?   COPY public.usuario (p00, nombres, apellidos, password, correo, telefono, id_departamento, id_cargo, id_estatus_usuario, username, "authKey", "accessToken") FROM stdin;
    public          postgres    false    224   ?       ?          0    16485    usuario_asignado_requerimiento 
   TABLE DATA           ?   COPY public.usuario_asignado_requerimiento (id_usuario_asignado_requerimiento, p00, id_requerimiento, fecha_asignacion) FROM stdin;
    public          postgres    false    225   ??       ?           0    0 (   area_responsable_id_area_responsable_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.area_responsable_id_area_responsable_seq', 5, true);
          public          postgres    false    203            ?           0    0 "   areas_visibles_id_area_visible_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.areas_visibles_id_area_visible_seq', 1, false);
          public          postgres    false    229            ?           0    0    auditoria_id_auditoria_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.auditoria_id_auditoria_seq', 1, false);
          public          postgres    false    227            ?           0    0    cargo_id_cargo_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cargo_id_cargo_seq', 5, true);
          public          postgres    false    205            ?           0    0     departamento_id_departamento_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.departamento_id_departamento_seq', 4, true);
          public          postgres    false    207            ?           0    0 ?   estatus_requerimiento__requer_id_estatus_requerimeinto__req_seq    SEQUENCE SET     n   SELECT pg_catalog.setval('public.estatus_requerimiento__requer_id_estatus_requerimeinto__req_seq', 13, true);
          public          postgres    false    210            ?           0    0 2   estatus_requerimiento_id_estatus_requerimiento_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.estatus_requerimiento_id_estatus_requerimiento_seq', 7, true);
          public          postgres    false    211            ?           0    0 &   estatus_usuario_id_estatus_usuario_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.estatus_usuario_id_estatus_usuario_seq', 3, true);
          public          postgres    false    213            ?           0    0    frecuencia_id_frecuencia_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.frecuencia_id_frecuencia_seq', 6, true);
          public          postgres    false    215            ?           0    0 6   perfil_usuario__usuario_id_perfil_usuario__usuario_seq    SEQUENCE SET     f   SELECT pg_catalog.setval('public.perfil_usuario__usuario_id_perfil_usuario__usuario_seq', 106, true);
          public          postgres    false    218            ?           0    0 $   perfil_usuario_id_perfil_usuario_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.perfil_usuario_id_perfil_usuario_seq', 8, true);
          public          postgres    false    219            ?           0    0 "   requerimiento_id_requerimiento_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.requerimiento_id_requerimiento_seq', 27, true);
          public          postgres    false    221            ?           0    0 ,   tipo_requerimiento_id_tipo_requerimiento_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.tipo_requerimiento_id_tipo_requerimiento_seq', 5, true);
          public          postgres    false    223            ?           0    0 ?   usuario_asignado_requerimient_id_usuario_asignado_requerimi_seq    SEQUENCE SET     n   SELECT pg_catalog.setval('public.usuario_asignado_requerimient_id_usuario_asignado_requerimi_seq', 1, false);
          public          postgres    false    226            ?
           2606    16506 $   area_responsable area_responsable_pk 
   CONSTRAINT     s   ALTER TABLE ONLY public.area_responsable
    ADD CONSTRAINT area_responsable_pk PRIMARY KEY (id_area_responsable);
 N   ALTER TABLE ONLY public.area_responsable DROP CONSTRAINT area_responsable_pk;
       public            postgres    false    202            
           2606    24796     areas_visibles areas_visibles_pk 
   CONSTRAINT     k   ALTER TABLE ONLY public.areas_visibles
    ADD CONSTRAINT areas_visibles_pk PRIMARY KEY (id_area_visible);
 J   ALTER TABLE ONLY public.areas_visibles DROP CONSTRAINT areas_visibles_pk;
       public            postgres    false    230                       2606    16607    auditoria auditoria_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_pk PRIMARY KEY (id_auditoria);
 @   ALTER TABLE ONLY public.auditoria DROP CONSTRAINT auditoria_pk;
       public            postgres    false    228            ?
           2606    16508    cargo cargo_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT cargo_pk PRIMARY KEY (id_cargo);
 8   ALTER TABLE ONLY public.cargo DROP CONSTRAINT cargo_pk;
       public            postgres    false    204            ?
           2606    16510    departamento departamento_pk 
   CONSTRAINT     g   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pk PRIMARY KEY (id_departamento);
 F   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pk;
       public            postgres    false    206            ?
           2606    16512 L   estatus_requerimiento__requerimiento estatus_requerimiento__requerimiento_pk 
   CONSTRAINT     ?   ALTER TABLE ONLY public.estatus_requerimiento__requerimiento
    ADD CONSTRAINT estatus_requerimiento__requerimiento_pk PRIMARY KEY (id_estatus_requerimeinto__requerimiento);
 v   ALTER TABLE ONLY public.estatus_requerimiento__requerimiento DROP CONSTRAINT estatus_requerimiento__requerimiento_pk;
       public            postgres    false    209            ?
           2606    16514 .   estatus_requerimiento estatus_requerimiento_pk 
   CONSTRAINT     ?   ALTER TABLE ONLY public.estatus_requerimiento
    ADD CONSTRAINT estatus_requerimiento_pk PRIMARY KEY (id_estatus_requerimiento);
 X   ALTER TABLE ONLY public.estatus_requerimiento DROP CONSTRAINT estatus_requerimiento_pk;
       public            postgres    false    208            ?
           2606    16516 "   estatus_usuario estatus_usuario_pk 
   CONSTRAINT     p   ALTER TABLE ONLY public.estatus_usuario
    ADD CONSTRAINT estatus_usuario_pk PRIMARY KEY (id_estatus_usuario);
 L   ALTER TABLE ONLY public.estatus_usuario DROP CONSTRAINT estatus_usuario_pk;
       public            postgres    false    212            ?
           2606    16518    frecuencia frecuencia_pk 
   CONSTRAINT     a   ALTER TABLE ONLY public.frecuencia
    ADD CONSTRAINT frecuencia_pk PRIMARY KEY (id_frecuencia);
 B   ALTER TABLE ONLY public.frecuencia DROP CONSTRAINT frecuencia_pk;
       public            postgres    false    214            ?
           2606    16520 2   perfil_usuario__usuario perfil_usuario__usuario_pk 
   CONSTRAINT     ?   ALTER TABLE ONLY public.perfil_usuario__usuario
    ADD CONSTRAINT perfil_usuario__usuario_pk PRIMARY KEY (id_perfil_usuario__usuario);
 \   ALTER TABLE ONLY public.perfil_usuario__usuario DROP CONSTRAINT perfil_usuario__usuario_pk;
       public            postgres    false    217            ?
           2606    16522     perfil_usuario perfil_usuario_pk 
   CONSTRAINT     m   ALTER TABLE ONLY public.perfil_usuario
    ADD CONSTRAINT perfil_usuario_pk PRIMARY KEY (id_perfil_usuario);
 J   ALTER TABLE ONLY public.perfil_usuario DROP CONSTRAINT perfil_usuario_pk;
       public            postgres    false    216                        2606    16524    requerimiento requerimiento_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public.requerimiento
    ADD CONSTRAINT requerimiento_pk PRIMARY KEY (id_requerimiento);
 H   ALTER TABLE ONLY public.requerimiento DROP CONSTRAINT requerimiento_pk;
       public            postgres    false    220                       2606    16526 (   tipo_requerimiento tipo_requerimiento_pk 
   CONSTRAINT     y   ALTER TABLE ONLY public.tipo_requerimiento
    ADD CONSTRAINT tipo_requerimiento_pk PRIMARY KEY (id_tipo_requerimiento);
 R   ALTER TABLE ONLY public.tipo_requerimiento DROP CONSTRAINT tipo_requerimiento_pk;
       public            postgres    false    222                       2606    16528 @   usuario_asignado_requerimiento usuario_asignado_requerimiento_pk 
   CONSTRAINT     ?   ALTER TABLE ONLY public.usuario_asignado_requerimiento
    ADD CONSTRAINT usuario_asignado_requerimiento_pk PRIMARY KEY (id_usuario_asignado_requerimiento);
 j   ALTER TABLE ONLY public.usuario_asignado_requerimiento DROP CONSTRAINT usuario_asignado_requerimiento_pk;
       public            postgres    false    225                       2606    16530    usuario usuario_pk 
   CONSTRAINT     Q   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pk PRIMARY KEY (p00);
 <   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pk;
       public            postgres    false    224                       2606    24797 "   areas_visibles areas_visibles_fk_1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.areas_visibles
    ADD CONSTRAINT areas_visibles_fk_1 FOREIGN KEY (id_departamento) REFERENCES public.departamento(id_departamento);
 L   ALTER TABLE ONLY public.areas_visibles DROP CONSTRAINT areas_visibles_fk_1;
       public          postgres    false    2802    230    206                       2606    24802 "   areas_visibles areas_visibles_fk_2    FK CONSTRAINT     ?   ALTER TABLE ONLY public.areas_visibles
    ADD CONSTRAINT areas_visibles_fk_2 FOREIGN KEY (p00) REFERENCES public.usuario(p00);
 L   ALTER TABLE ONLY public.areas_visibles DROP CONSTRAINT areas_visibles_fk_2;
       public          postgres    false    230    224    2820                       2606    16608    auditoria auditoria_fk    FK CONSTRAINT     t   ALTER TABLE ONLY public.auditoria
    ADD CONSTRAINT auditoria_fk FOREIGN KEY (p00) REFERENCES public.usuario(p00);
 @   ALTER TABLE ONLY public.auditoria DROP CONSTRAINT auditoria_fk;
       public          postgres    false    228    224    2820                       2606    16531 L   estatus_requerimiento__requerimiento estatus_requerimiento__requerimiento_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.estatus_requerimiento__requerimiento
    ADD CONSTRAINT estatus_requerimiento__requerimiento_fk FOREIGN KEY (id_requerimiento) REFERENCES public.requerimiento(id_requerimiento);
 v   ALTER TABLE ONLY public.estatus_requerimiento__requerimiento DROP CONSTRAINT estatus_requerimiento__requerimiento_fk;
       public          postgres    false    2816    220    209                       2606    16536 N   estatus_requerimiento__requerimiento estatus_requerimiento__requerimiento_fk_1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.estatus_requerimiento__requerimiento
    ADD CONSTRAINT estatus_requerimiento__requerimiento_fk_1 FOREIGN KEY (id_estatus_requerimiento) REFERENCES public.estatus_requerimiento(id_estatus_requerimiento);
 x   ALTER TABLE ONLY public.estatus_requerimiento__requerimiento DROP CONSTRAINT estatus_requerimiento__requerimiento_fk_1;
       public          postgres    false    209    208    2804                       2606    16541 2   perfil_usuario__usuario perfil_usuario__usuario_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.perfil_usuario__usuario
    ADD CONSTRAINT perfil_usuario__usuario_fk FOREIGN KEY (p00) REFERENCES public.usuario(p00);
 \   ALTER TABLE ONLY public.perfil_usuario__usuario DROP CONSTRAINT perfil_usuario__usuario_fk;
       public          postgres    false    2820    217    224                       2606    16546 4   perfil_usuario__usuario perfil_usuario__usuario_fk_1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.perfil_usuario__usuario
    ADD CONSTRAINT perfil_usuario__usuario_fk_1 FOREIGN KEY (id_perfil_usuario) REFERENCES public.perfil_usuario(id_perfil_usuario);
 ^   ALTER TABLE ONLY public.perfil_usuario__usuario DROP CONSTRAINT perfil_usuario__usuario_fk_1;
       public          postgres    false    217    2812    216                       2606    16551    requerimiento requerimiento_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.requerimiento
    ADD CONSTRAINT requerimiento_fk FOREIGN KEY (p00_solicitante) REFERENCES public.usuario(p00);
 H   ALTER TABLE ONLY public.requerimiento DROP CONSTRAINT requerimiento_fk;
       public          postgres    false    220    2820    224                       2606    16556 )   requerimiento requerimiento_frecuencia_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.requerimiento
    ADD CONSTRAINT requerimiento_frecuencia_fk FOREIGN KEY (id_frecuencia) REFERENCES public.frecuencia(id_frecuencia);
 S   ALTER TABLE ONLY public.requerimiento DROP CONSTRAINT requerimiento_frecuencia_fk;
       public          postgres    false    220    2810    214                       2606    16561 1   requerimiento requerimiento_tipo_requerimeinto_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.requerimiento
    ADD CONSTRAINT requerimiento_tipo_requerimeinto_fk FOREIGN KEY (id_tipo_requerimiento) REFERENCES public.tipo_requerimiento(id_tipo_requerimiento);
 [   ALTER TABLE ONLY public.requerimiento DROP CONSTRAINT requerimiento_tipo_requerimeinto_fk;
       public          postgres    false    222    2818    220                       2606    16566 (   tipo_requerimiento tipo_requerimiento_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tipo_requerimiento
    ADD CONSTRAINT tipo_requerimiento_fk FOREIGN KEY (id_area_responsable) REFERENCES public.area_responsable(id_area_responsable);
 R   ALTER TABLE ONLY public.tipo_requerimiento DROP CONSTRAINT tipo_requerimiento_fk;
       public          postgres    false    2798    222    202                       2606    16571 @   usuario_asignado_requerimiento usuario_asignado_requerimiento_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario_asignado_requerimiento
    ADD CONSTRAINT usuario_asignado_requerimiento_fk FOREIGN KEY (p00) REFERENCES public.usuario(p00);
 j   ALTER TABLE ONLY public.usuario_asignado_requerimiento DROP CONSTRAINT usuario_asignado_requerimiento_fk;
       public          postgres    false    2820    224    225                       2606    16576 B   usuario_asignado_requerimiento usuario_asignado_requerimiento_fk_1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario_asignado_requerimiento
    ADD CONSTRAINT usuario_asignado_requerimiento_fk_1 FOREIGN KEY (id_requerimiento) REFERENCES public.requerimiento(id_requerimiento);
 l   ALTER TABLE ONLY public.usuario_asignado_requerimiento DROP CONSTRAINT usuario_asignado_requerimiento_fk_1;
       public          postgres    false    220    225    2816                       2606    16581    usuario usuario_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_fk FOREIGN KEY (id_departamento) REFERENCES public.departamento(id_departamento);
 <   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_fk;
       public          postgres    false    2802    206    224                       2606    16586    usuario usuario_fk_1    FK CONSTRAINT     z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_fk_1 FOREIGN KEY (id_cargo) REFERENCES public.cargo(id_cargo);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_fk_1;
       public          postgres    false    204    2800    224                       2606    16591    usuario usuario_fk_3    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_fk_3 FOREIGN KEY (id_estatus_usuario) REFERENCES public.estatus_usuario(id_estatus_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_fk_3;
       public          postgres    false    224    212    2808            ?   ?   x?m??1DϤ
W?į??1+KY8	?J?_??B?y?y?9??Ya??b[?H????B?<???*V???S????.E?????H^?m?ebx?
?MR?;rƢ?Ը?????F?V?|1??7??i??c???<H?˥jxCH}Kk      ?      x?????? ? ?      ?      x?????? ? ?      ?   9   x?3?tpu?t??q?2?t???	??2???\<?]?<CNG???=... ???      ?   W   x?%??	?0@?s2E&?Y ?)j"i{??C????[???72?;????d?>?????`{H?8?k??ӐR??q??]?N0*      ?   b   x?%?K
? E?q??????8h?$u???????????rm??pQ*nA??
A??јE?P1?^;{6܁?_??
לtb???Dx??OF?{B?9P      ?   z   x?u??B1C?uT<ƒ?u-?_?]a}??e??"]?K&>X??h??F??ZC?'??zpF?I??,??%?;1?~???p?1??3&摔?֑r?h??M2M??tu?~ꪅ-?? ?e=?      ?   )   x?3?tt???2?p?s?t??2???????qqq ?q?      ?   L   x??;
?0 ?YO????8Q????m?o?te??RW??9U<?Iu??L|???t?K?a???????      ?   s   x?]?;?@k?{? >
?fcE??6ػ??VtO?Fs?U???C??1??x?n-??s?K?nxZ?h???^?R???Z?3PȪ{??????.?o?QzlR??)?&D|??(      ?   T   x?5???0?3?????s*H??!?ǧ?&?T??"??sBJg@VmA^?P?ZG2F1B{*C@m*hM??`4'??܇????!Y      ?   V   x?m??	?0?o?????Xp?~%;t???????<N@t??E???d???/\@?䤌?'Z?@f??ck??M????7RF       ?   y   x?u?A
1E??)za? %??F?\?????]????MvU??8?$??y?a??G??Y)?Z??IU??\q?L$a)?(O?%-<~?\b??:?????mѲ??}??_I9,o      ?   ~  x???9??0 ?Z???$?p???6?X???4Iµ??ڿ~?E?2????7F?R??h???QF [?S??ҾN??	?<B_???? ;??*L????Uy??*??^ț????nR?Gd?????^???V?&f??l??*?O?"?	?A????M??ē?7?PR?(?>֚?H??m?Õ	?*?>ۅ{??=7j??DK8???]}??g?N?]|;??6???Dh?j?tҔ??z?????#nr}޼?????e??Ȇ?`????4???$???9?`Ūu?Y???c?_?=?. ??6??8???	dB??3???S?*AT???c?}??1???Y[g?????M?Ig??/?<ԩGI
??????X??$???      ?      x?????? ? ?     
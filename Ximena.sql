PGDMP      8                }            XimenaDB    17.5    17.5     ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            /           1262    16389    XimenaDB    DATABASE     ~   CREATE DATABASE "XimenaDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "XimenaDB";
                     Ximena    false            �            1259    16403    flujosdetrabajo    TABLE     �   CREATE TABLE public.flujosdetrabajo (
    flujo character varying(50),
    caso_1 integer,
    caso_2 integer,
    caso_3 integer
);
 #   DROP TABLE public.flujosdetrabajo;
       public         heap r       postgres    false            �            1259    16393 	   jugadores    TABLE     Y   CREATE TABLE public.jugadores (
    id_jugador integer NOT NULL,
    marcador integer
);
    DROP TABLE public.jugadores;
       public         heap r       postgres    false            �            1259    16398 
   jugadores1    TABLE     Z   CREATE TABLE public.jugadores1 (
    id_jugador integer NOT NULL,
    marcador integer
);
    DROP TABLE public.jugadores1;
       public         heap r       postgres    false            �            1259    16390    precios    TABLE     c   CREATE TABLE public.precios (
    id_producto integer,
    fecha date,
    precio numeric(10,2)
);
    DROP TABLE public.precios;
       public         heap r       postgres    false            )          0    16403    flujosdetrabajo 
   TABLE DATA           H   COPY public.flujosdetrabajo (flujo, caso_1, caso_2, caso_3) FROM stdin;
    public               postgres    false    220   n       '          0    16393 	   jugadores 
   TABLE DATA           9   COPY public.jugadores (id_jugador, marcador) FROM stdin;
    public               postgres    false    218   �       (          0    16398 
   jugadores1 
   TABLE DATA           :   COPY public.jugadores1 (id_jugador, marcador) FROM stdin;
    public               postgres    false    219   �       &          0    16390    precios 
   TABLE DATA           =   COPY public.precios (id_producto, fecha, precio) FROM stdin;
    public               postgres    false    217   �       �           2606    16402    jugadores1 jugadores1_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.jugadores1
    ADD CONSTRAINT jugadores1_pkey PRIMARY KEY (id_jugador);
 D   ALTER TABLE ONLY public.jugadores1 DROP CONSTRAINT jugadores1_pkey;
       public                 postgres    false    219            �           2606    16397    jugadores jugadores_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.jugadores
    ADD CONSTRAINT jugadores_pkey PRIMARY KEY (id_jugador);
 B   ALTER TABLE ONLY public.jugadores DROP CONSTRAINT jugadores_pkey;
       public                 postgres    false    218            )   B   x�s�)ITHIU(-.M,���4 A.��,4QCNC.��ԲD����< ��5'373&����� _�      '      x������ � �      (      x������ � �      &      x������ � �     
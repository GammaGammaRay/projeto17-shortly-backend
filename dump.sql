PGDMP                         {            shortly    15.3    15.3                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16452    shortly    DATABASE     ~   CREATE DATABASE shortly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE shortly;
                postgres    false            �            1259    16484    sessions    TABLE     A   CREATE TABLE public.sessions (
    email text,
    token text
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            �            1259    16479    urls    TABLE     r   CREATE TABLE public.urls (
    "URL" text,
    "shortUrl" text,
    "userId" integer,
    "visitCount" integer
);
    DROP TABLE public.urls;
       public         heap    postgres    false            �            1259    16471    users    TABLE     i   CREATE TABLE public.users (
    id integer NOT NULL,
    name text,
    email text,
    password text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16470    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    215                       0    0    user_id_seq    SEQUENCE OWNED BY     <   ALTER SEQUENCE public.user_id_seq OWNED BY public.users.id;
          public          postgres    false    214            m           2604    16474    users id    DEFAULT     c   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            o           2606    16478    users user_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.users DROP CONSTRAINT user_pkey;
       public            postgres    false    215           
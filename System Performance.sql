PGDMP     7    %            
    {            database    15.1    15.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    18054    database    DATABASE     }   CREATE DATABASE database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Finnish_Finland.1252';
    DROP DATABASE database;
                postgres    false            �            1259    26353    performance    TABLE     1  CREATE TABLE public.performance (
    "Time" timestamp with time zone,
    "CPU_Usage" numeric,
    memory_usage numeric,
    "CPU_interrupts" numeric,
    "CPU_calls" numeric,
    memory_used numeric,
    memory_free numeric,
    bytes_send numeric,
    bytes_received numeric,
    disk_usage numeric
);
    DROP TABLE public.performance;
       public         heap    postgres    false            �          0    26353    performance 
   TABLE DATA           �   COPY public.performance ("Time", "CPU_Usage", memory_usage, "CPU_interrupts", "CPU_calls", memory_used, memory_free, bytes_send, bytes_received, disk_usage) FROM stdin;
    public          postgres    false    214   R       �      x������ � �     
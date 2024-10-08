PGDMP  	    +                |            SpiritsFitnessGym    16.2    16.2 g    l           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            m           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            n           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            o           1262    33198    SpiritsFitnessGym    DATABASE     �   CREATE DATABASE "SpiritsFitnessGym" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Philippines.1252';
 #   DROP DATABASE "SpiritsFitnessGym";
                postgres    false            �            1259    66232    admin    TABLE     �   CREATE TABLE public.admin (
    admin_id integer NOT NULL,
    admin_username character varying(5) NOT NULL,
    admin_password character varying(50) NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    66231    admin_admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_admin_id_seq;
       public          postgres    false    239            p           0    0    admin_admin_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_admin_id_seq OWNED BY public.admin.admin_id;
          public          postgres    false    238            �            1259    49891    employee    TABLE     D  CREATE TABLE public.employee (
    emp_id integer NOT NULL,
    emp_fname character varying(50) NOT NULL,
    emp_lname character varying(50) NOT NULL,
    emp_full_name character varying(100),
    emp_phone_num character varying(11) NOT NULL,
    emp_date_employed date DEFAULT CURRENT_DATE,
    gym_id integer NOT NULL
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    49890    employee_emp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.employee_emp_id_seq;
       public          postgres    false    231            q           0    0    employee_emp_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.employee_emp_id_seq OWNED BY public.employee.emp_id;
          public          postgres    false    230            �            1259    33364    entry_this_day    TABLE     �  CREATE TABLE public.entry_this_day (
    entry_day_id integer NOT NULL,
    entry_day_fname character varying(50) NOT NULL,
    entry_day_lname character varying(50) NOT NULL,
    entry_day_fullname character varying(100),
    entry_day_date date DEFAULT CURRENT_DATE,
    entry_day_time time without time zone DEFAULT CURRENT_TIME,
    entry_day_status character varying(10) NOT NULL,
    member_id integer
);
 "   DROP TABLE public.entry_this_day;
       public         heap    postgres    false            �            1259    33363    entry_this_day_entry_day_id_seq    SEQUENCE     �   CREATE SEQUENCE public.entry_this_day_entry_day_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.entry_this_day_entry_day_id_seq;
       public          postgres    false    225            r           0    0    entry_this_day_entry_day_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.entry_this_day_entry_day_id_seq OWNED BY public.entry_this_day.entry_day_id;
          public          postgres    false    224            �            1259    33286    entry_this_month    TABLE     �  CREATE TABLE public.entry_this_month (
    entry_month_id integer NOT NULL,
    entry_month_fname character varying(50) NOT NULL,
    entry_month_lname character varying(50) NOT NULL,
    entry_month_fullname character varying(100),
    entry_month_date date DEFAULT CURRENT_DATE,
    entry_month_time time without time zone DEFAULT CURRENT_TIME,
    entry_month_status character varying(10) NOT NULL,
    member_id integer
);
 $   DROP TABLE public.entry_this_month;
       public         heap    postgres    false            �            1259    33285 #   entry_this_month_entry_month_id_seq    SEQUENCE     �   CREATE SEQUENCE public.entry_this_month_entry_month_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.entry_this_month_entry_month_id_seq;
       public          postgres    false    220            s           0    0 #   entry_this_month_entry_month_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.entry_this_month_entry_month_id_seq OWNED BY public.entry_this_month.entry_month_id;
          public          postgres    false    219            �            1259    33272    entry_this_week    TABLE     �  CREATE TABLE public.entry_this_week (
    entry_week_id integer NOT NULL,
    entry_week_fname character varying(50) NOT NULL,
    entry_week_lname character varying(50) NOT NULL,
    entry_week_fullname character varying(100),
    entry_week_date date DEFAULT CURRENT_DATE,
    entry_week_time time without time zone DEFAULT CURRENT_TIME,
    entry_week_status character varying(10) NOT NULL,
    member_id integer
);
 #   DROP TABLE public.entry_this_week;
       public         heap    postgres    false            �            1259    33271 !   entry_this_week_entry_week_id_seq    SEQUENCE     �   CREATE SEQUENCE public.entry_this_week_entry_week_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.entry_this_week_entry_week_id_seq;
       public          postgres    false    218            t           0    0 !   entry_this_week_entry_week_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.entry_this_week_entry_week_id_seq OWNED BY public.entry_this_week.entry_week_id;
          public          postgres    false    217            �            1259    41564 	   equipment    TABLE       CREATE TABLE public.equipment (
    equipment_id integer NOT NULL,
    equipment_name character varying(50) NOT NULL,
    equipment_qty integer NOT NULL,
    equipment_status character varying(20) NOT NULL,
    equipment_date_added date DEFAULT CURRENT_DATE,
    gym_id integer
);
    DROP TABLE public.equipment;
       public         heap    postgres    false            �            1259    41563    equipment_equipment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.equipment_equipment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.equipment_equipment_id_seq;
       public          postgres    false    229            u           0    0    equipment_equipment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.equipment_equipment_id_seq OWNED BY public.equipment.equipment_id;
          public          postgres    false    228            �            1259    33318    expired_member    TABLE     l   CREATE TABLE public.expired_member (
    expired_mem_id integer NOT NULL,
    member_id integer NOT NULL
);
 "   DROP TABLE public.expired_member;
       public         heap    postgres    false            �            1259    33316 !   expired_member_expired_mem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.expired_member_expired_mem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.expired_member_expired_mem_id_seq;
       public          postgres    false    223            v           0    0 !   expired_member_expired_mem_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.expired_member_expired_mem_id_seq OWNED BY public.expired_member.expired_mem_id;
          public          postgres    false    221            �            1259    33317    expired_member_member_id_seq    SEQUENCE     �   CREATE SEQUENCE public.expired_member_member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.expired_member_member_id_seq;
       public          postgres    false    223            w           0    0    expired_member_member_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.expired_member_member_id_seq OWNED BY public.expired_member.member_id;
          public          postgres    false    222            �            1259    41556    gym    TABLE     f   CREATE TABLE public.gym (
    gym_id integer NOT NULL,
    gym_name character varying(50) NOT NULL
);
    DROP TABLE public.gym;
       public         heap    postgres    false            �            1259    41555    gym_gym_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gym_gym_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.gym_gym_id_seq;
       public          postgres    false    227            x           0    0    gym_gym_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.gym_gym_id_seq OWNED BY public.gym.gym_id;
          public          postgres    false    226            �            1259    33200    member    TABLE       CREATE TABLE public.member (
    member_id integer NOT NULL,
    member_fname character varying(50) NOT NULL,
    member_lname character varying(50) NOT NULL,
    member_full_name character varying(100),
    member_start_date date DEFAULT CURRENT_DATE,
    member_end_date date
);
    DROP TABLE public.member;
       public         heap    postgres    false            �            1259    33199    member_member_id_seq    SEQUENCE     �   CREATE SEQUENCE public.member_member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.member_member_id_seq;
       public          postgres    false    216            y           0    0    member_member_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.member_member_id_seq OWNED BY public.member.member_id;
          public          postgres    false    215            �            1259    49904    trainer    TABLE     �   CREATE TABLE public.trainer (
    trainer_id integer NOT NULL,
    trainer_full_name character varying(100) NOT NULL,
    trainer_date_hired date DEFAULT CURRENT_DATE,
    emp_id integer NOT NULL
);
    DROP TABLE public.trainer;
       public         heap    postgres    false            �            1259    49903    trainer_trainer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trainer_trainer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.trainer_trainer_id_seq;
       public          postgres    false    233            z           0    0    trainer_trainer_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.trainer_trainer_id_seq OWNED BY public.trainer.trainer_id;
          public          postgres    false    232            �            1259    49917    training_session    TABLE     �   CREATE TABLE public.training_session (
    session_id integer NOT NULL,
    session_date date NOT NULL,
    member_id integer NOT NULL,
    trainer_id integer NOT NULL
);
 $   DROP TABLE public.training_session;
       public         heap    postgres    false            �            1259    49916    training_session_session_id_seq    SEQUENCE     �   CREATE SEQUENCE public.training_session_session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.training_session_session_id_seq;
       public          postgres    false    235            {           0    0    training_session_session_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.training_session_session_id_seq OWNED BY public.training_session.session_id;
          public          postgres    false    234            �            1259    58087    training_session_today    TABLE     �   CREATE TABLE public.training_session_today (
    session_today_id integer NOT NULL,
    today_session_date date NOT NULL,
    member_id integer NOT NULL,
    trainer_id integer NOT NULL
);
 *   DROP TABLE public.training_session_today;
       public         heap    postgres    false            �            1259    58086 +   training_session_today_session_today_id_seq    SEQUENCE     �   CREATE SEQUENCE public.training_session_today_session_today_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.training_session_today_session_today_id_seq;
       public          postgres    false    237            |           0    0 +   training_session_today_session_today_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.training_session_today_session_today_id_seq OWNED BY public.training_session_today.session_today_id;
          public          postgres    false    236            �           2604    66235    admin admin_id    DEFAULT     p   ALTER TABLE ONLY public.admin ALTER COLUMN admin_id SET DEFAULT nextval('public.admin_admin_id_seq'::regclass);
 =   ALTER TABLE public.admin ALTER COLUMN admin_id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    49894    employee emp_id    DEFAULT     r   ALTER TABLE ONLY public.employee ALTER COLUMN emp_id SET DEFAULT nextval('public.employee_emp_id_seq'::regclass);
 >   ALTER TABLE public.employee ALTER COLUMN emp_id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    33367    entry_this_day entry_day_id    DEFAULT     �   ALTER TABLE ONLY public.entry_this_day ALTER COLUMN entry_day_id SET DEFAULT nextval('public.entry_this_day_entry_day_id_seq'::regclass);
 J   ALTER TABLE public.entry_this_day ALTER COLUMN entry_day_id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    33289    entry_this_month entry_month_id    DEFAULT     �   ALTER TABLE ONLY public.entry_this_month ALTER COLUMN entry_month_id SET DEFAULT nextval('public.entry_this_month_entry_month_id_seq'::regclass);
 N   ALTER TABLE public.entry_this_month ALTER COLUMN entry_month_id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    33275    entry_this_week entry_week_id    DEFAULT     �   ALTER TABLE ONLY public.entry_this_week ALTER COLUMN entry_week_id SET DEFAULT nextval('public.entry_this_week_entry_week_id_seq'::regclass);
 L   ALTER TABLE public.entry_this_week ALTER COLUMN entry_week_id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    41567    equipment equipment_id    DEFAULT     �   ALTER TABLE ONLY public.equipment ALTER COLUMN equipment_id SET DEFAULT nextval('public.equipment_equipment_id_seq'::regclass);
 E   ALTER TABLE public.equipment ALTER COLUMN equipment_id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    33321    expired_member expired_mem_id    DEFAULT     �   ALTER TABLE ONLY public.expired_member ALTER COLUMN expired_mem_id SET DEFAULT nextval('public.expired_member_expired_mem_id_seq'::regclass);
 L   ALTER TABLE public.expired_member ALTER COLUMN expired_mem_id DROP DEFAULT;
       public          postgres    false    221    223    223            �           2604    33322    expired_member member_id    DEFAULT     �   ALTER TABLE ONLY public.expired_member ALTER COLUMN member_id SET DEFAULT nextval('public.expired_member_member_id_seq'::regclass);
 G   ALTER TABLE public.expired_member ALTER COLUMN member_id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    41559 
   gym gym_id    DEFAULT     h   ALTER TABLE ONLY public.gym ALTER COLUMN gym_id SET DEFAULT nextval('public.gym_gym_id_seq'::regclass);
 9   ALTER TABLE public.gym ALTER COLUMN gym_id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    33203    member member_id    DEFAULT     t   ALTER TABLE ONLY public.member ALTER COLUMN member_id SET DEFAULT nextval('public.member_member_id_seq'::regclass);
 ?   ALTER TABLE public.member ALTER COLUMN member_id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    49907    trainer trainer_id    DEFAULT     x   ALTER TABLE ONLY public.trainer ALTER COLUMN trainer_id SET DEFAULT nextval('public.trainer_trainer_id_seq'::regclass);
 A   ALTER TABLE public.trainer ALTER COLUMN trainer_id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    49920    training_session session_id    DEFAULT     �   ALTER TABLE ONLY public.training_session ALTER COLUMN session_id SET DEFAULT nextval('public.training_session_session_id_seq'::regclass);
 J   ALTER TABLE public.training_session ALTER COLUMN session_id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    58090 '   training_session_today session_today_id    DEFAULT     �   ALTER TABLE ONLY public.training_session_today ALTER COLUMN session_today_id SET DEFAULT nextval('public.training_session_today_session_today_id_seq'::regclass);
 V   ALTER TABLE public.training_session_today ALTER COLUMN session_today_id DROP DEFAULT;
       public          postgres    false    236    237    237            i          0    66232    admin 
   TABLE DATA           I   COPY public.admin (admin_id, admin_username, admin_password) FROM stdin;
    public          postgres    false    239   ��       a          0    49891    employee 
   TABLE DATA           y   COPY public.employee (emp_id, emp_fname, emp_lname, emp_full_name, emp_phone_num, emp_date_employed, gym_id) FROM stdin;
    public          postgres    false    231    �       [          0    33364    entry_this_day 
   TABLE DATA           �   COPY public.entry_this_day (entry_day_id, entry_day_fname, entry_day_lname, entry_day_fullname, entry_day_date, entry_day_time, entry_day_status, member_id) FROM stdin;
    public          postgres    false    225   ��       V          0    33286    entry_this_month 
   TABLE DATA           �   COPY public.entry_this_month (entry_month_id, entry_month_fname, entry_month_lname, entry_month_fullname, entry_month_date, entry_month_time, entry_month_status, member_id) FROM stdin;
    public          postgres    false    220   ݅       T          0    33272    entry_this_week 
   TABLE DATA           �   COPY public.entry_this_week (entry_week_id, entry_week_fname, entry_week_lname, entry_week_fullname, entry_week_date, entry_week_time, entry_week_status, member_id) FROM stdin;
    public          postgres    false    218   ��       _          0    41564 	   equipment 
   TABLE DATA           �   COPY public.equipment (equipment_id, equipment_name, equipment_qty, equipment_status, equipment_date_added, gym_id) FROM stdin;
    public          postgres    false    229   8�       Y          0    33318    expired_member 
   TABLE DATA           C   COPY public.expired_member (expired_mem_id, member_id) FROM stdin;
    public          postgres    false    223   w�       ]          0    41556    gym 
   TABLE DATA           /   COPY public.gym (gym_id, gym_name) FROM stdin;
    public          postgres    false    227   ��       R          0    33200    member 
   TABLE DATA           }   COPY public.member (member_id, member_fname, member_lname, member_full_name, member_start_date, member_end_date) FROM stdin;
    public          postgres    false    216   Ǉ       c          0    49904    trainer 
   TABLE DATA           \   COPY public.trainer (trainer_id, trainer_full_name, trainer_date_hired, emp_id) FROM stdin;
    public          postgres    false    233   1�       e          0    49917    training_session 
   TABLE DATA           [   COPY public.training_session (session_id, session_date, member_id, trainer_id) FROM stdin;
    public          postgres    false    235   ��       g          0    58087    training_session_today 
   TABLE DATA           m   COPY public.training_session_today (session_today_id, today_session_date, member_id, trainer_id) FROM stdin;
    public          postgres    false    237          }           0    0    admin_admin_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_admin_id_seq', 1, true);
          public          postgres    false    238            ~           0    0    employee_emp_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.employee_emp_id_seq', 10003, true);
          public          postgres    false    230                       0    0    entry_this_day_entry_day_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.entry_this_day_entry_day_id_seq', 31, true);
          public          postgres    false    224            �           0    0 #   entry_this_month_entry_month_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.entry_this_month_entry_month_id_seq', 208, true);
          public          postgres    false    219            �           0    0 !   entry_this_week_entry_week_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.entry_this_week_entry_week_id_seq', 211, true);
          public          postgres    false    217            �           0    0    equipment_equipment_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.equipment_equipment_id_seq', 10005, true);
          public          postgres    false    228            �           0    0 !   expired_member_expired_mem_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.expired_member_expired_mem_id_seq', 259, true);
          public          postgres    false    221            �           0    0    expired_member_member_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.expired_member_member_id_seq', 1, false);
          public          postgres    false    222            �           0    0    gym_gym_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.gym_gym_id_seq', 1000, false);
          public          postgres    false    226            �           0    0    member_member_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.member_member_id_seq', 1000042, true);
          public          postgres    false    215            �           0    0    trainer_trainer_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.trainer_trainer_id_seq', 100008, true);
          public          postgres    false    232            �           0    0    training_session_session_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.training_session_session_id_seq', 100023, true);
          public          postgres    false    234            �           0    0 +   training_session_today_session_today_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.training_session_today_session_today_id_seq', 17, true);
          public          postgres    false    236            �           2606    66237    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    239            �           2606    49897    employee employee_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (emp_id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    231            �           2606    33371 "   entry_this_day entry_this_day_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.entry_this_day
    ADD CONSTRAINT entry_this_day_pkey PRIMARY KEY (entry_day_id);
 L   ALTER TABLE ONLY public.entry_this_day DROP CONSTRAINT entry_this_day_pkey;
       public            postgres    false    225            �           2606    33293 &   entry_this_month entry_this_month_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.entry_this_month
    ADD CONSTRAINT entry_this_month_pkey PRIMARY KEY (entry_month_id);
 P   ALTER TABLE ONLY public.entry_this_month DROP CONSTRAINT entry_this_month_pkey;
       public            postgres    false    220            �           2606    33279 $   entry_this_week entry_this_week_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.entry_this_week
    ADD CONSTRAINT entry_this_week_pkey PRIMARY KEY (entry_week_id);
 N   ALTER TABLE ONLY public.entry_this_week DROP CONSTRAINT entry_this_week_pkey;
       public            postgres    false    218            �           2606    41570    equipment equipment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (equipment_id);
 B   ALTER TABLE ONLY public.equipment DROP CONSTRAINT equipment_pkey;
       public            postgres    false    229            �           2606    33324 "   expired_member expired_member_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.expired_member
    ADD CONSTRAINT expired_member_pkey PRIMARY KEY (expired_mem_id);
 L   ALTER TABLE ONLY public.expired_member DROP CONSTRAINT expired_member_pkey;
       public            postgres    false    223            �           2606    41561    gym gym_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.gym
    ADD CONSTRAINT gym_pkey PRIMARY KEY (gym_id);
 6   ALTER TABLE ONLY public.gym DROP CONSTRAINT gym_pkey;
       public            postgres    false    227            �           2606    33206    member member_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (member_id);
 <   ALTER TABLE ONLY public.member DROP CONSTRAINT member_pkey;
       public            postgres    false    216            �           2606    49910    trainer trainer_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.trainer
    ADD CONSTRAINT trainer_pkey PRIMARY KEY (trainer_id);
 >   ALTER TABLE ONLY public.trainer DROP CONSTRAINT trainer_pkey;
       public            postgres    false    233            �           2606    49922 &   training_session training_session_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.training_session
    ADD CONSTRAINT training_session_pkey PRIMARY KEY (session_id);
 P   ALTER TABLE ONLY public.training_session DROP CONSTRAINT training_session_pkey;
       public            postgres    false    235            �           2606    58092 2   training_session_today training_session_today_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.training_session_today
    ADD CONSTRAINT training_session_today_pkey PRIMARY KEY (session_today_id);
 \   ALTER TABLE ONLY public.training_session_today DROP CONSTRAINT training_session_today_pkey;
       public            postgres    false    237            �           2606    49898    employee employee_gym_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_gym_id_fkey FOREIGN KEY (gym_id) REFERENCES public.gym(gym_id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_gym_id_fkey;
       public          postgres    false    227    231    4778            �           2606    33372 ,   entry_this_day entry_this_day_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.entry_this_day
    ADD CONSTRAINT entry_this_day_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.member(member_id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.entry_this_day DROP CONSTRAINT entry_this_day_member_id_fkey;
       public          postgres    false    4768    216    225            �           2606    33294 0   entry_this_month entry_this_month_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.entry_this_month
    ADD CONSTRAINT entry_this_month_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.member(member_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.entry_this_month DROP CONSTRAINT entry_this_month_member_id_fkey;
       public          postgres    false    216    4768    220            �           2606    33280 .   entry_this_week entry_this_week_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.entry_this_week
    ADD CONSTRAINT entry_this_week_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.member(member_id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.entry_this_week DROP CONSTRAINT entry_this_week_member_id_fkey;
       public          postgres    false    216    218    4768            �           2606    41571    equipment equipment_gym_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_gym_id_fkey FOREIGN KEY (gym_id) REFERENCES public.gym(gym_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.equipment DROP CONSTRAINT equipment_gym_id_fkey;
       public          postgres    false    229    4778    227            �           2606    33325 ,   expired_member expired_member_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.expired_member
    ADD CONSTRAINT expired_member_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.member(member_id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.expired_member DROP CONSTRAINT expired_member_member_id_fkey;
       public          postgres    false    4768    223    216            �           2606    49911    trainer trainer_emp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.trainer
    ADD CONSTRAINT trainer_emp_id_fkey FOREIGN KEY (emp_id) REFERENCES public.employee(emp_id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.trainer DROP CONSTRAINT trainer_emp_id_fkey;
       public          postgres    false    4782    231    233            �           2606    49923 0   training_session training_session_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.training_session
    ADD CONSTRAINT training_session_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.member(member_id) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.training_session DROP CONSTRAINT training_session_member_id_fkey;
       public          postgres    false    216    4768    235            �           2606    58093 <   training_session_today training_session_today_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.training_session_today
    ADD CONSTRAINT training_session_today_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.member(member_id) ON UPDATE CASCADE ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.training_session_today DROP CONSTRAINT training_session_today_member_id_fkey;
       public          postgres    false    216    237    4768            �           2606    58098 =   training_session_today training_session_today_trainer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.training_session_today
    ADD CONSTRAINT training_session_today_trainer_id_fkey FOREIGN KEY (trainer_id) REFERENCES public.trainer(trainer_id) ON UPDATE CASCADE ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.training_session_today DROP CONSTRAINT training_session_today_trainer_id_fkey;
       public          postgres    false    233    4784    237            �           2606    49928 1   training_session training_session_trainer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.training_session
    ADD CONSTRAINT training_session_trainer_id_fkey FOREIGN KEY (trainer_id) REFERENCES public.trainer(trainer_id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.training_session DROP CONSTRAINT training_session_trainer_id_fkey;
       public          postgres    false    235    233    4784            i      x�3�LL����462����� &@�      a   Y   x�34000�vsvvq�������<K3S#scSN##]S]CCNC.C�VcNo'WN_G?�P'�0O�Ch5G����� ��      [   D   x�36������tw�3 L##]S]C#NCC+cc+#s=KCKSK#�pGo]O?�?�=... �g      V   �   x�]�Q�0D���� �mKi�j�BQ*���ê����f2��<�6�%��|!��|�)�o�	R��"�qZ;iJ]Պ��xjf@�G#QC?�\V�ޒ��A��tdJ�V[��ע����_�<���a�����n��ǃ/)jT�ȃl+cOp�6�      T   �   x�]�Q�0D���� �mk)5�B*���ê����d2��,	�w1B���Ž�߂�B���kiJ)*T�0��(�2BK����Kv�~���.���a���_�*E�ȧ�G�Ʈ�����;�O���5�ҢՖ`u��h#l�m%c�	z6�      _   /   x�34000�tv"NCcNW7W�N##]S]C#NC�=... ���      Y      x������ � �      ]   #   x�3�.�,�,)Vp�,�K-.Vp������� }v$      R   Z   x�34 C� �`WG??NO��G?��L����D��T���4�54�2�7��v	�p��..�.�.��@�,��"�ݼ=... !�      c   I   x�34 sNo'W_G?�P'�N##]S]CCNC��1�4��vsvvqS����D�2�2����� ��&      e   (   x�340002�4202�50�50�4��Bhs�=... ��a      g      x������ � �     
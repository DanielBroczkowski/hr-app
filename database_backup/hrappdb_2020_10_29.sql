PGDMP         2            	    x            hrappdb    12.1    12.1 L    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    56586    hrappdb    DATABASE     ?   CREATE DATABASE hrappdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Polish_Poland.1250' LC_CTYPE = 'Polish_Poland.1250';
    DROP DATABASE hrappdb;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            ?            1259    56587    account_types    TABLE     ?   CREATE TABLE public.account_types (
    id bigint NOT NULL,
    role_id bigint NOT NULL,
    role_name character varying(255) NOT NULL
);
 !   DROP TABLE public.account_types;
       public         heap    postgres    false    3            ?            1259    56803    announcements    TABLE     ?   CREATE TABLE public.announcements (
    id bigint NOT NULL,
    description character varying(255),
    title character varying(255) NOT NULL,
    company_id bigint,
    hr_user_id bigint
);
 !   DROP TABLE public.announcements;
       public         heap    postgres    false    3            ?            1259    56590    answers    TABLE     ?   CREATE TABLE public.answers (
    id bigint NOT NULL,
    is_correct boolean,
    points integer,
    text character varying(255),
    question_id bigint
);
    DROP TABLE public.answers;
       public         heap    postgres    false    3            ?            1259    56593    ceos    TABLE     `   CREATE TABLE public.ceos (
    id bigint NOT NULL,
    company_id bigint,
    user_id bigint
);
    DROP TABLE public.ceos;
       public         heap    postgres    false    3            ?            1259    56596 	   companies    TABLE     ?   CREATE TABLE public.companies (
    id bigint NOT NULL,
    about character varying(255) NOT NULL,
    image bytea,
    location character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.companies;
       public         heap    postgres    false    3            ?            1259    56602    company_pictures    TABLE     /  CREATE TABLE public.company_pictures (
    id bigint NOT NULL,
    background_pic character varying(255),
    first_pic character varying(255),
    is_current boolean,
    logo character varying(255),
    second_pic character varying(255),
    third_pic character varying(255),
    company_id bigint
);
 $   DROP TABLE public.company_pictures;
       public         heap    postgres    false    3            ?            1259    56608    cvs    TABLE     ?   CREATE TABLE public.cvs (
    id bigint NOT NULL,
    file_name character varying(255) NOT NULL,
    is_current boolean,
    user_id bigint
);
    DROP TABLE public.cvs;
       public         heap    postgres    false    3            ?            1259    56611    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false    3            ?            1259    56613    hr_users    TABLE     d   CREATE TABLE public.hr_users (
    id bigint NOT NULL,
    company_id bigint,
    user_id bigint
);
    DROP TABLE public.hr_users;
       public         heap    postgres    false    3            ?            1259    56616    profile_pictures    TABLE     ?   CREATE TABLE public.profile_pictures (
    id bigint NOT NULL,
    file_name character varying(255) NOT NULL,
    is_current boolean,
    user_id bigint
);
 $   DROP TABLE public.profile_pictures;
       public         heap    postgres    false    3            ?            1259    56619 	   questions    TABLE     ?   CREATE TABLE public.questions (
    id bigint NOT NULL,
    image bytea,
    text character varying(255),
    test_id bigint
);
    DROP TABLE public.questions;
       public         heap    postgres    false    3            ?            1259    56625    test_participant    TABLE     ?   CREATE TABLE public.test_participant (
    id bigint NOT NULL,
    test_code character varying(255),
    current_question_number bigint,
    start_quiz_time_in_milis bigint,
    test_id bigint,
    user_id bigint
);
 $   DROP TABLE public.test_participant;
       public         heap    postgres    false    3            ?            1259    56628 	   test_type    TABLE     [   CREATE TABLE public.test_type (
    id bigint NOT NULL,
    name character varying(255)
);
    DROP TABLE public.test_type;
       public         heap    postgres    false    3            ?            1259    56631    tests    TABLE     ?  CREATE TABLE public.tests (
    id bigint NOT NULL,
    end_date timestamp without time zone,
    is_active boolean,
    is_open_for_everyone boolean,
    is_possible_to_back boolean,
    name character varying(255) NOT NULL,
    start_date timestamp without time zone,
    time_for_test_in_milis bigint NOT NULL,
    company_id bigint,
    test_type_id bigint,
    user_hr_id bigint
);
    DROP TABLE public.tests;
       public         heap    postgres    false    3            ?            1259    56634    user_answers    TABLE     ?   CREATE TABLE public.user_answers (
    id bigint NOT NULL,
    answer_id bigint,
    question_id bigint,
    test_id bigint,
    user_id bigint
);
     DROP TABLE public.user_answers;
       public         heap    postgres    false    3            ?            1259    56637    users    TABLE     ?  CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    is_active boolean,
    login character varying(255) NOT NULL,
    middle_name character varying(255),
    password character varying(255),
    phone_number character varying(255),
    surname character varying(255) NOT NULL,
    role_id bigint
);
    DROP TABLE public.users;
       public         heap    postgres    false    3            q          0    56587    account_types 
   TABLE DATA           ?   COPY public.account_types (id, role_id, role_name) FROM stdin;
    public          postgres    false    202   ]       ?          0    56803    announcements 
   TABLE DATA           W   COPY public.announcements (id, description, title, company_id, hr_user_id) FROM stdin;
    public          postgres    false    217   8]       r          0    56590    answers 
   TABLE DATA           L   COPY public.answers (id, is_correct, points, text, question_id) FROM stdin;
    public          postgres    false    203   ?]       s          0    56593    ceos 
   TABLE DATA           7   COPY public.ceos (id, company_id, user_id) FROM stdin;
    public          postgres    false    204   ?]       t          0    56596 	   companies 
   TABLE DATA           E   COPY public.companies (id, about, image, location, name) FROM stdin;
    public          postgres    false    205   ^       u          0    56602    company_pictures 
   TABLE DATA           ~   COPY public.company_pictures (id, background_pic, first_pic, is_current, logo, second_pic, third_pic, company_id) FROM stdin;
    public          postgres    false    206   O^       v          0    56608    cvs 
   TABLE DATA           A   COPY public.cvs (id, file_name, is_current, user_id) FROM stdin;
    public          postgres    false    207   l^       x          0    56613    hr_users 
   TABLE DATA           ;   COPY public.hr_users (id, company_id, user_id) FROM stdin;
    public          postgres    false    209   ?^       y          0    56616    profile_pictures 
   TABLE DATA           N   COPY public.profile_pictures (id, file_name, is_current, user_id) FROM stdin;
    public          postgres    false    210   ?^       z          0    56619 	   questions 
   TABLE DATA           =   COPY public.questions (id, image, text, test_id) FROM stdin;
    public          postgres    false    211   ?^       {          0    56625    test_participant 
   TABLE DATA           ~   COPY public.test_participant (id, test_code, current_question_number, start_quiz_time_in_milis, test_id, user_id) FROM stdin;
    public          postgres    false    212   _       |          0    56628 	   test_type 
   TABLE DATA           -   COPY public.test_type (id, name) FROM stdin;
    public          postgres    false    213   D_       }          0    56631    tests 
   TABLE DATA           ?   COPY public.tests (id, end_date, is_active, is_open_for_everyone, is_possible_to_back, name, start_date, time_for_test_in_milis, company_id, test_type_id, user_hr_id) FROM stdin;
    public          postgres    false    214   a_       ~          0    56634    user_answers 
   TABLE DATA           T   COPY public.user_answers (id, answer_id, question_id, test_id, user_id) FROM stdin;
    public          postgres    false    215   ?_                 0    56637    users 
   TABLE DATA              COPY public.users (id, email, first_name, is_active, login, middle_name, password, phone_number, surname, role_id) FROM stdin;
    public          postgres    false    216   `       ?           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 37, true);
          public          postgres    false    208            ?
           2606    56644     account_types account_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.account_types
    ADD CONSTRAINT account_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.account_types DROP CONSTRAINT account_types_pkey;
       public            postgres    false    202            ?
           2606    56810     announcements announcements_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.announcements DROP CONSTRAINT announcements_pkey;
       public            postgres    false    217            ?
           2606    56646    answers answers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_pkey;
       public            postgres    false    203            ?
           2606    56648    ceos ceos_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT ceos_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.ceos DROP CONSTRAINT ceos_pkey;
       public            postgres    false    204            ?
           2606    56650    companies companies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.companies DROP CONSTRAINT companies_pkey;
       public            postgres    false    205            ?
           2606    56652 &   company_pictures company_pictures_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.company_pictures
    ADD CONSTRAINT company_pictures_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.company_pictures DROP CONSTRAINT company_pictures_pkey;
       public            postgres    false    206            ?
           2606    56654    cvs cvs_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.cvs
    ADD CONSTRAINT cvs_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.cvs DROP CONSTRAINT cvs_pkey;
       public            postgres    false    207            ?
           2606    56656    hr_users hr_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT hr_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT hr_users_pkey;
       public            postgres    false    209            ?
           2606    56658 &   profile_pictures profile_pictures_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.profile_pictures
    ADD CONSTRAINT profile_pictures_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.profile_pictures DROP CONSTRAINT profile_pictures_pkey;
       public            postgres    false    210            ?
           2606    56660    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    211            ?
           2606    56662 &   test_participant test_participant_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT test_participant_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT test_participant_pkey;
       public            postgres    false    212            ?
           2606    56664    test_type test_type_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.test_type
    ADD CONSTRAINT test_type_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.test_type DROP CONSTRAINT test_type_pkey;
       public            postgres    false    213            ?
           2606    56666    tests tests_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_pkey;
       public            postgres    false    214            ?
           2606    56668 "   users uk_6dotkott2kjsp8vw4d0m25fb7 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);
 L   ALTER TABLE ONLY public.users DROP CONSTRAINT uk_6dotkott2kjsp8vw4d0m25fb7;
       public            postgres    false    216            ?
           2606    56670 "   users uk_ow0gan20590jrb00upg3va2fn 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_ow0gan20590jrb00upg3va2fn UNIQUE (login);
 L   ALTER TABLE ONLY public.users DROP CONSTRAINT uk_ow0gan20590jrb00upg3va2fn;
       public            postgres    false    216            ?
           2606    56672    user_answers user_answers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT user_answers_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT user_answers_pkey;
       public            postgres    false    215            ?
           2606    56674    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            ?
           2606    56811 #   announcements fkannouncementcompany    FK CONSTRAINT     ?   ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT fkannouncementcompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 M   ALTER TABLE ONLY public.announcements DROP CONSTRAINT fkannouncementcompany;
       public          postgres    false    217    2755    205            ?
           2606    56816 "   announcements fkannouncementhruser    FK CONSTRAINT     ?   ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT fkannouncementhruser FOREIGN KEY (hr_user_id) REFERENCES public.hr_users(id);
 L   ALTER TABLE ONLY public.announcements DROP CONSTRAINT fkannouncementhruser;
       public          postgres    false    209    217    2761            ?
           2606    56675 !   user_answers fkansweriduseranswer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkansweriduseranswer FOREIGN KEY (answer_id) REFERENCES public.answers(id);
 K   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkansweriduseranswer;
       public          postgres    false    215    2751    203            ?
           2606    56680    answers fkanswerquestion    FK CONSTRAINT        ALTER TABLE ONLY public.answers
    ADD CONSTRAINT fkanswerquestion FOREIGN KEY (question_id) REFERENCES public.questions(id);
 B   ALTER TABLE ONLY public.answers DROP CONSTRAINT fkanswerquestion;
       public          postgres    false    2765    211    203            ?
           2606    56685    ceos fkceocompany    FK CONSTRAINT     w   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT fkceocompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 ;   ALTER TABLE ONLY public.ceos DROP CONSTRAINT fkceocompany;
       public          postgres    false    2755    205    204            ?
           2606    56690    ceos fkceouser    FK CONSTRAINT     m   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT fkceouser FOREIGN KEY (user_id) REFERENCES public.users(id);
 8   ALTER TABLE ONLY public.ceos DROP CONSTRAINT fkceouser;
       public          postgres    false    2779    216    204            ?
           2606    56695    cvs fkcvuser    FK CONSTRAINT     k   ALTER TABLE ONLY public.cvs
    ADD CONSTRAINT fkcvuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 6   ALTER TABLE ONLY public.cvs DROP CONSTRAINT fkcvuser;
       public          postgres    false    216    207    2779            ?
           2606    56700    hr_users fkhrusercompany    FK CONSTRAINT     ~   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT fkhrusercompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 B   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT fkhrusercompany;
       public          postgres    false    2755    209    205            ?
           2606    56705    hr_users fkhruseruser    FK CONSTRAINT     t   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT fkhruseruser FOREIGN KEY (user_id) REFERENCES public.users(id);
 ?   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT fkhruseruser;
       public          postgres    false    216    209    2779            ?
           2606    56710 "   company_pictures fkpicturescompany    FK CONSTRAINT     ?   ALTER TABLE ONLY public.company_pictures
    ADD CONSTRAINT fkpicturescompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 L   ALTER TABLE ONLY public.company_pictures DROP CONSTRAINT fkpicturescompany;
       public          postgres    false    2755    205    206            ?
           2606    56715 %   profile_pictures fkprofilepictureuser    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profile_pictures
    ADD CONSTRAINT fkprofilepictureuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 O   ALTER TABLE ONLY public.profile_pictures DROP CONSTRAINT fkprofilepictureuser;
       public          postgres    false    210    216    2779            ?
           2606    56720 #   user_answers fkquestioniduseranswer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkquestioniduseranswer FOREIGN KEY (question_id) REFERENCES public.questions(id);
 M   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkquestioniduseranswer;
       public          postgres    false    215    211    2765            ?
           2606    56725    questions fkquestiontest    FK CONSTRAINT     w   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fkquestiontest FOREIGN KEY (test_id) REFERENCES public.tests(id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT fkquestiontest;
       public          postgres    false    211    2771    214            ?
           2606    56730    test_participant fktestcodetest    FK CONSTRAINT     ~   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT fktestcodetest FOREIGN KEY (test_id) REFERENCES public.tests(id);
 I   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT fktestcodetest;
       public          postgres    false    214    212    2771            ?
           2606    56735    tests fktestcodetest    FK CONSTRAINT     |   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestcodetest FOREIGN KEY (test_type_id) REFERENCES public.test_type(id);
 >   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestcodetest;
       public          postgres    false    214    213    2769            ?
           2606    56740    test_participant fktestcodeuser    FK CONSTRAINT     ~   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT fktestcodeuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT fktestcodeuser;
       public          postgres    false    216    212    2779            ?
           2606    56745    tests fktestcompany    FK CONSTRAINT     y   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestcompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 =   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestcompany;
       public          postgres    false    214    205    2755            ?
           2606    56750    user_answers fktestiduseranswer    FK CONSTRAINT     ~   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fktestiduseranswer FOREIGN KEY (test_id) REFERENCES public.tests(id);
 I   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fktestiduseranswer;
       public          postgres    false    215    214    2771            ?
           2606    56755    tests fktestuserhr    FK CONSTRAINT     t   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestuserhr FOREIGN KEY (user_hr_id) REFERENCES public.users(id);
 <   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestuserhr;
       public          postgres    false    2779    214    216            ?
           2606    56760    users fkuseraccounttypes    FK CONSTRAINT        ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkuseraccounttypes FOREIGN KEY (role_id) REFERENCES public.account_types(id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT fkuseraccounttypes;
       public          postgres    false    202    2749    216            ?
           2606    56765    user_answers fkuseriduseranswer    FK CONSTRAINT     ~   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkuseriduseranswer FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkuseriduseranswer;
       public          postgres    false    215    2779    216            q      x?3?4?LL????????? ?0      ?   H   x?3?,I-.?/?T?/?,???,?,?I?4?4?2K?H0?،3%?8?(??$3Y??9??D?,???? 12      r   N   x?32?L?44?,I?(14)NI7?4??22????Q#??&&s?b???a??4????S?9??6?=... ?\0?      s      x?3?4?4?????? ?X      t   .   x?3?LL?/-ጉ?0?4K13?L?)?,/?L,NIO,N?????? ?q@      u      x?????? ? ?      v      x?????? ? ?      x      x?3?4?4?????? ?X      y      x?????? ? ?      z   .   x?3?????,,M-.???S(11J?(1?4??22?)c?K&F??? ?e      {   -   x?3?,I-.I?OI?4?443063?03?416?4??4?????? ???      |      x?????? ? ?      }   v   x?3????,ôĬ?J????CCC?????'??eB?:S"ՙ?ΜHuD??ħ??????`?HSnH?r#"????ot?+?g???F?b?????i ???? )c???? ?g?5      ~   $   x?36?42?4??4??4?26?42?42??b???? Q??         }   x?3?LJ?HKI?K-2rH?z9?I?%@g	gIjq???1L@?(Q??@?2?<%??,H??W??;V?????&&????y?{??8Yz{?????xUXr?Z????LKg????? ?'?     
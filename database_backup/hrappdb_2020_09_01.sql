PGDMP                     	    x           hrappdb    12.1    12.1 J    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    36573    hrappdb    DATABASE     ?   CREATE DATABASE hrappdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Polish_Poland.1250' LC_CTYPE = 'Polish_Poland.1250';
    DROP DATABASE hrappdb;
                postgres    false            ?            1259    55883    account_types    TABLE     ?   CREATE TABLE public.account_types (
    id bigint NOT NULL,
    role_id bigint NOT NULL,
    role_name character varying(255) NOT NULL
);
 !   DROP TABLE public.account_types;
       public         heap    postgres    false            ?            1259    55888    answers    TABLE     ?   CREATE TABLE public.answers (
    id bigint NOT NULL,
    is_correct character varying(255),
    points integer,
    text character varying(255),
    question_id bigint
);
    DROP TABLE public.answers;
       public         heap    postgres    false            ?            1259    55896    ceos    TABLE     `   CREATE TABLE public.ceos (
    id bigint NOT NULL,
    company_id bigint,
    user_id bigint
);
    DROP TABLE public.ceos;
       public         heap    postgres    false            ?            1259    55901 	   companies    TABLE     ?   CREATE TABLE public.companies (
    id bigint NOT NULL,
    about character varying(255) NOT NULL,
    image bytea,
    location character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.companies;
       public         heap    postgres    false            ?            1259    55909    company_pictures    TABLE     /  CREATE TABLE public.company_pictures (
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
       public         heap    postgres    false            ?            1259    55917    cvs    TABLE     ?   CREATE TABLE public.cvs (
    id bigint NOT NULL,
    file_name character varying(255) NOT NULL,
    is_current boolean,
    user_id bigint
);
    DROP TABLE public.cvs;
       public         heap    postgres    false            ?            1259    55922    departments    TABLE     }   CREATE TABLE public.departments (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    company_id bigint
);
    DROP TABLE public.departments;
       public         heap    postgres    false            ?            1259    55966    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            ?            1259    55927    hr_users    TABLE     ~   CREATE TABLE public.hr_users (
    id bigint NOT NULL,
    company_id bigint,
    department_id bigint,
    user_id bigint
);
    DROP TABLE public.hr_users;
       public         heap    postgres    false            ?            1259    55932    profile_pictures    TABLE     ?   CREATE TABLE public.profile_pictures (
    id bigint NOT NULL,
    file_name character varying(255) NOT NULL,
    is_current boolean,
    user_id bigint
);
 $   DROP TABLE public.profile_pictures;
       public         heap    postgres    false            ?            1259    55937 	   questions    TABLE     ?   CREATE TABLE public.questions (
    id bigint NOT NULL,
    image bytea,
    text character varying(255),
    test_id bigint
);
    DROP TABLE public.questions;
       public         heap    postgres    false            ?            1259    56059 	   test_code    TABLE     ?   CREATE TABLE public.test_code (
    id bigint NOT NULL,
    test_code character varying(255),
    test_id bigint,
    user_id bigint,
    current_question_number bigint
);
    DROP TABLE public.test_code;
       public         heap    postgres    false            ?            1259    56064 	   test_type    TABLE     [   CREATE TABLE public.test_type (
    id bigint NOT NULL,
    name character varying(255)
);
    DROP TABLE public.test_type;
       public         heap    postgres    false            ?            1259    55945    tests    TABLE     ?  CREATE TABLE public.tests (
    id bigint NOT NULL,
    end_date timestamp without time zone,
    is_active boolean,
    is_possible_to_back boolean,
    name character varying(255) NOT NULL,
    start_date timestamp without time zone,
    test_code character varying(255) NOT NULL,
    test_type character varying(255) NOT NULL,
    time_for_test smallint NOT NULL,
    company_id bigint,
    user_hr_id bigint,
    test_type_id bigint,
    is_open_for_everyone boolean
);
    DROP TABLE public.tests;
       public         heap    postgres    false            ?            1259    55953    user_answers    TABLE     ?   CREATE TABLE public.user_answers (
    id bigint NOT NULL,
    answer_id bigint,
    question_id bigint,
    test_id bigint,
    user_id bigint
);
     DROP TABLE public.user_answers;
       public         heap    postgres    false            ?            1259    55958    users    TABLE     f  CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(255),
    first_name character varying(255),
    is_active boolean,
    login character varying(255),
    middle_name character varying(255),
    password character varying(255),
    phone_number character varying(255),
    surname character varying(255),
    role_id bigint
);
    DROP TABLE public.users;
       public         heap    postgres    false            p          0    55883    account_types 
   TABLE DATA           ?   COPY public.account_types (id, role_id, role_name) FROM stdin;
    public          postgres    false    202   ?Z       q          0    55888    answers 
   TABLE DATA           L   COPY public.answers (id, is_correct, points, text, question_id) FROM stdin;
    public          postgres    false    203   S[       r          0    55896    ceos 
   TABLE DATA           7   COPY public.ceos (id, company_id, user_id) FROM stdin;
    public          postgres    false    204   p[       s          0    55901 	   companies 
   TABLE DATA           E   COPY public.companies (id, about, image, location, name) FROM stdin;
    public          postgres    false    205   ?[       t          0    55909    company_pictures 
   TABLE DATA           ~   COPY public.company_pictures (id, background_pic, first_pic, is_current, logo, second_pic, third_pic, company_id) FROM stdin;
    public          postgres    false    206   ?\       u          0    55917    cvs 
   TABLE DATA           A   COPY public.cvs (id, file_name, is_current, user_id) FROM stdin;
    public          postgres    false    207   ?\       v          0    55922    departments 
   TABLE DATA           ;   COPY public.departments (id, name, company_id) FROM stdin;
    public          postgres    false    208   ?\       w          0    55927    hr_users 
   TABLE DATA           J   COPY public.hr_users (id, company_id, department_id, user_id) FROM stdin;
    public          postgres    false    209   ?\       x          0    55932    profile_pictures 
   TABLE DATA           N   COPY public.profile_pictures (id, file_name, is_current, user_id) FROM stdin;
    public          postgres    false    210   &]       y          0    55937 	   questions 
   TABLE DATA           =   COPY public.questions (id, image, text, test_id) FROM stdin;
    public          postgres    false    211   C]       ~          0    56059 	   test_code 
   TABLE DATA           ]   COPY public.test_code (id, test_code, test_id, user_id, current_question_number) FROM stdin;
    public          postgres    false    216   `]                 0    56064 	   test_type 
   TABLE DATA           -   COPY public.test_type (id, name) FROM stdin;
    public          postgres    false    217   }]       z          0    55945    tests 
   TABLE DATA           ?   COPY public.tests (id, end_date, is_active, is_possible_to_back, name, start_date, test_code, test_type, time_for_test, company_id, user_hr_id, test_type_id, is_open_for_everyone) FROM stdin;
    public          postgres    false    212   ?]       {          0    55953    user_answers 
   TABLE DATA           T   COPY public.user_answers (id, answer_id, question_id, test_id, user_id) FROM stdin;
    public          postgres    false    213   ?]       |          0    55958    users 
   TABLE DATA              COPY public.users (id, email, first_name, is_active, login, middle_name, password, phone_number, surname, role_id) FROM stdin;
    public          postgres    false    214   ?]       ?           0    0    hibernate_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hibernate_sequence', 318, true);
          public          postgres    false    215            ?
           2606    55887     account_types account_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.account_types
    ADD CONSTRAINT account_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.account_types DROP CONSTRAINT account_types_pkey;
       public            postgres    false    202            ?
           2606    55895    answers answers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_pkey;
       public            postgres    false    203            ?
           2606    55900    ceos ceos_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT ceos_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.ceos DROP CONSTRAINT ceos_pkey;
       public            postgres    false    204            ?
           2606    55908    companies companies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.companies DROP CONSTRAINT companies_pkey;
       public            postgres    false    205            ?
           2606    55916 &   company_pictures company_pictures_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.company_pictures
    ADD CONSTRAINT company_pictures_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.company_pictures DROP CONSTRAINT company_pictures_pkey;
       public            postgres    false    206            ?
           2606    55921    cvs cvs_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.cvs
    ADD CONSTRAINT cvs_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.cvs DROP CONSTRAINT cvs_pkey;
       public            postgres    false    207            ?
           2606    55926    departments departments_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    208            ?
           2606    55931    hr_users hr_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT hr_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT hr_users_pkey;
       public            postgres    false    209            ?
           2606    55936 &   profile_pictures profile_pictures_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.profile_pictures
    ADD CONSTRAINT profile_pictures_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.profile_pictures DROP CONSTRAINT profile_pictures_pkey;
       public            postgres    false    210            ?
           2606    55944    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    211            ?
           2606    56063    test_code test_code_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.test_code
    ADD CONSTRAINT test_code_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.test_code DROP CONSTRAINT test_code_pkey;
       public            postgres    false    216            ?
           2606    56068    test_type test_type_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.test_type
    ADD CONSTRAINT test_type_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.test_type DROP CONSTRAINT test_type_pkey;
       public            postgres    false    217            ?
           2606    55952    tests tests_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_pkey;
       public            postgres    false    212            ?
           2606    55957    user_answers user_answers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT user_answers_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT user_answers_pkey;
       public            postgres    false    213            ?
           2606    55965    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    214            ?
           2606    56053 !   users fk22t87kpn5bw0skdivog0bfbr1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk22t87kpn5bw0skdivog0bfbr1 FOREIGN KEY (role_id) REFERENCES public.account_types(id);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT fk22t87kpn5bw0skdivog0bfbr1;
       public          postgres    false    202    2750    214            ?
           2606    56033 "   user_answers fk_answeriduseranswer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fk_answeriduseranswer FOREIGN KEY (answer_id) REFERENCES public.users(id);
 L   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fk_answeriduseranswer;
       public          postgres    false    213    2774    214            ?
           2606    55968    answers fk_answerquestion    FK CONSTRAINT     ?   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT fk_answerquestion FOREIGN KEY (question_id) REFERENCES public.questions(id);
 C   ALTER TABLE ONLY public.answers DROP CONSTRAINT fk_answerquestion;
       public          postgres    false    203    211    2768            ?
           2606    55973    ceos fk_ceocompany    FK CONSTRAINT     x   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT fk_ceocompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 <   ALTER TABLE ONLY public.ceos DROP CONSTRAINT fk_ceocompany;
       public          postgres    false    2756    205    204            ?
           2606    55978    ceos fk_ceouser    FK CONSTRAINT     n   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT fk_ceouser FOREIGN KEY (user_id) REFERENCES public.users(id);
 9   ALTER TABLE ONLY public.ceos DROP CONSTRAINT fk_ceouser;
       public          postgres    false    204    214    2774            ?
           2606    55988    cvs fk_cvuser    FK CONSTRAINT     l   ALTER TABLE ONLY public.cvs
    ADD CONSTRAINT fk_cvuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 7   ALTER TABLE ONLY public.cvs DROP CONSTRAINT fk_cvuser;
       public          postgres    false    207    2774    214            ?
           2606    55993     departments fk_departmentcompany    FK CONSTRAINT     ?   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT fk_departmentcompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 J   ALTER TABLE ONLY public.departments DROP CONSTRAINT fk_departmentcompany;
       public          postgres    false    2756    205    208            ?
           2606    55998    hr_users fk_hrusercompany    FK CONSTRAINT        ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT fk_hrusercompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 C   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT fk_hrusercompany;
       public          postgres    false    209    2756    205            ?
           2606    56003    hr_users fk_hruserdepartment    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT fk_hruserdepartment FOREIGN KEY (department_id) REFERENCES public.departments(id);
 F   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT fk_hruserdepartment;
       public          postgres    false    209    2762    208            ?
           2606    56008    hr_users fk_hruseruser    FK CONSTRAINT     u   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT fk_hruseruser FOREIGN KEY (user_id) REFERENCES public.users(id);
 @   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT fk_hruseruser;
       public          postgres    false    2774    209    214            ?
           2606    55983 #   company_pictures fk_picturescompany    FK CONSTRAINT     ?   ALTER TABLE ONLY public.company_pictures
    ADD CONSTRAINT fk_picturescompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 M   ALTER TABLE ONLY public.company_pictures DROP CONSTRAINT fk_picturescompany;
       public          postgres    false    206    205    2756            ?
           2606    56013 &   profile_pictures fk_profilepictureuser    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profile_pictures
    ADD CONSTRAINT fk_profilepictureuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.profile_pictures DROP CONSTRAINT fk_profilepictureuser;
       public          postgres    false    2774    210    214            ?
           2606    56038 $   user_answers fk_questioniduseranswer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fk_questioniduseranswer FOREIGN KEY (question_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fk_questioniduseranswer;
       public          postgres    false    2774    213    214            ?
           2606    56018    questions fk_questiontest    FK CONSTRAINT     x   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fk_questiontest FOREIGN KEY (test_id) REFERENCES public.users(id);
 C   ALTER TABLE ONLY public.questions DROP CONSTRAINT fk_questiontest;
       public          postgres    false    214    211    2774            ?
           2606    56023    tests fk_testcompany    FK CONSTRAINT     v   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fk_testcompany FOREIGN KEY (company_id) REFERENCES public.users(id);
 >   ALTER TABLE ONLY public.tests DROP CONSTRAINT fk_testcompany;
       public          postgres    false    212    2774    214            ?
           2606    56043     user_answers fk_testiduseranswer    FK CONSTRAINT        ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fk_testiduseranswer FOREIGN KEY (test_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fk_testiduseranswer;
       public          postgres    false    214    213    2774            ?
           2606    56028    tests fk_testuserhr    FK CONSTRAINT     u   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fk_testuserhr FOREIGN KEY (user_hr_id) REFERENCES public.users(id);
 =   ALTER TABLE ONLY public.tests DROP CONSTRAINT fk_testuserhr;
       public          postgres    false    2774    214    212            ?
           2606    56048     user_answers fk_useriduseranswer    FK CONSTRAINT        ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fk_useriduseranswer FOREIGN KEY (user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fk_useriduseranswer;
       public          postgres    false    214    213    2774            ?
           2606    56069    questions fkquestiontest    FK CONSTRAINT     w   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fkquestiontest FOREIGN KEY (test_id) REFERENCES public.tests(id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT fkquestiontest;
       public          postgres    false    212    211    2770            ?
           2606    56074    test_code fktestcodetest    FK CONSTRAINT     w   ALTER TABLE ONLY public.test_code
    ADD CONSTRAINT fktestcodetest FOREIGN KEY (test_id) REFERENCES public.tests(id);
 B   ALTER TABLE ONLY public.test_code DROP CONSTRAINT fktestcodetest;
       public          postgres    false    212    216    2770            ?
           2606    56089    tests fktestcodetest    FK CONSTRAINT     |   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestcodetest FOREIGN KEY (test_type_id) REFERENCES public.test_type(id);
 >   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestcodetest;
       public          postgres    false    2778    212    217            ?
           2606    56079    test_code fktestcodeuser    FK CONSTRAINT     w   ALTER TABLE ONLY public.test_code
    ADD CONSTRAINT fktestcodeuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 B   ALTER TABLE ONLY public.test_code DROP CONSTRAINT fktestcodeuser;
       public          postgres    false    2774    216    214            ?
           2606    56084    tests fktestcompany    FK CONSTRAINT     y   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestcompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 =   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestcompany;
       public          postgres    false    212    205    2756            p   H   x?3?4?LL????2?4?,-N-?26?4506401?rtr"?0W ??I?Yp???Tr??qqq 9RE      q      x?????? ? ?      r      x??4??4?44??????       s   ?   x?uR?j?0=K_??@H?c????1?6??eЋ7?ಒ?8???keɡ	[??3??Pn?I*?^?K?N{xCs??w???,?B?2?PH?{jc?{?|????$??U????,J1?H	???SF?8?0D?q??μ???\q??3W??R?l????\sbZ?9??ċz?ы?Yd??????j?h?Pk???????;Z?1"????????a??q#??7)	?????"e??!???"?F?o      t      x?????? ? ?      u      x?????? ? ?      v      x??4?LI-0??4?????? S      w      x??4??4????44?????? G?      x      x?????? ? ?      y      x?????? ? ?      ~      x?????? ? ?            x?????? ? ?      z      x?????? ? ?      {      x?????? ? ?      |   ?  x?}?ɖ?H@??w?m3?;A@dR8?DFA???-??,_?9dF$???!%Q?u??x?????m?^?????]???[~5\DN??M???=n@??5X?e!`f\}??? ?0t?1~p?0Q?;???.܉???[c??Q?H??|i???dHv??΅g?v+?9????????^?V_????;????p?4??c?#E}p?E[T:E#ؗP.???5???N???7??xLu?? ?B?if??޸?N???F77?:?ƃ??-TQ???o>??O?x??KĿ-<?hfӢ5v?0vu????ma?>??	??R??6?BKˈ~[ 0p????G??lD~?^?~d?R????m??Aq[
:}???"???dQ?x??	?*C.Ppb(?ڶ?????? ???q
P??J۟?+?`??????A??z]ק	? ??
????? S\?|? ??[-??Z7Fz??W?z??_cr??򖌼??s?3yP"???К???[
???L2Kُ????<?7??{U'?}?~Ľ?ŀi?e?WEy6?N????;m?.?]??|(.??T"??`?-?m????J?k?1???ʓ??ڶ?% ??}?Q?<????????D??????|.ć????A?w??????Z>@`?h???R
W?e?E=oR?*?????~ F+??K5??q5Σȵ????j?`˖??@? ?c???j)??n??|<ʔ%?0!Ia?-f?܉?g????#??WL?+???O?Sz????y& 6ظ?ࠗ??ė?Z%??i!?I??ٵ??[U??98??Y????B?}?FU旓??U????6:?&?? ???P?Ǉ?^\?j??:?2s??奦??H?L?n;+?筸?????qd???n??)w?|??????y?z$?????j?$M?T2ς?ZK?n/?*1?K?7J?魯A?E?nb??u????w?W???{????Ї>??À?Y??|X??f ????q???H?'?s??*???e?????oz???^?5|h?? 2??g????8-?ȖBi+;??))?????F???U"?????C	??_?q[e"I7?b????9iC?I?????;QuD?$???B?ѳ}=???????^%0R?{?"?d?E?G}?v???1?!??@菚?g||?ʮ???%???[?E??\?=?????∤ّ?O®5-?E@?????0??zؖ?_4???{?EdY?J)$743??.?*p?????????8?Fo$B?????˞`~???9<?oO?>sMN???Z?????????%??͜,??3DA??Jј!+?_O?	E??U?b??
T#?+?J??s??4?d?Z?KjCz???-;???ն?g???7wN?	Q?G|?C>??>>?
;?g     
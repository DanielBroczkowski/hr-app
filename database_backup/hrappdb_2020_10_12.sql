PGDMP                     	    x           hrappdb    12.2    12.2 J    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16503    hrappdb    DATABASE     ?   CREATE DATABASE hrappdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Polish_Poland.1250' LC_CTYPE = 'Polish_Poland.1250';
    DROP DATABASE hrappdb;
                postgres    false            ?            1259    31325    account_types    TABLE     ?   CREATE TABLE public.account_types (
    id bigint NOT NULL,
    role_id bigint NOT NULL,
    role_name character varying(255) NOT NULL
);
 !   DROP TABLE public.account_types;
       public         heap    postgres    false            ?            1259    31330    answers    TABLE     ?   CREATE TABLE public.answers (
    id bigint NOT NULL,
    is_correct boolean,
    points integer,
    text character varying(255),
    question_id bigint
);
    DROP TABLE public.answers;
       public         heap    postgres    false            ?            1259    31335    ceos    TABLE     `   CREATE TABLE public.ceos (
    id bigint NOT NULL,
    company_id bigint,
    user_id bigint
);
    DROP TABLE public.ceos;
       public         heap    postgres    false            ?            1259    31340 	   companies    TABLE     ?   CREATE TABLE public.companies (
    id bigint NOT NULL,
    about character varying(255) NOT NULL,
    image bytea,
    location character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.companies;
       public         heap    postgres    false            ?            1259    31348    company_pictures    TABLE     /  CREATE TABLE public.company_pictures (
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
       public         heap    postgres    false            ?            1259    31356    cvs    TABLE     ?   CREATE TABLE public.cvs (
    id bigint NOT NULL,
    file_name character varying(255) NOT NULL,
    is_current boolean,
    user_id bigint
);
    DROP TABLE public.cvs;
       public         heap    postgres    false            ?            1259    31361    departments    TABLE     }   CREATE TABLE public.departments (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    company_id bigint
);
    DROP TABLE public.departments;
       public         heap    postgres    false            ?            1259    31414    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            ?            1259    31366    hr_users    TABLE     ~   CREATE TABLE public.hr_users (
    id bigint NOT NULL,
    company_id bigint,
    department_id bigint,
    user_id bigint
);
    DROP TABLE public.hr_users;
       public         heap    postgres    false            ?            1259    31371    profile_pictures    TABLE     ?   CREATE TABLE public.profile_pictures (
    id bigint NOT NULL,
    file_name character varying(255) NOT NULL,
    is_current boolean,
    user_id bigint
);
 $   DROP TABLE public.profile_pictures;
       public         heap    postgres    false            ?            1259    31376 	   questions    TABLE     ?   CREATE TABLE public.questions (
    id bigint NOT NULL,
    image bytea,
    text character varying(255),
    test_id bigint
);
    DROP TABLE public.questions;
       public         heap    postgres    false            ?            1259    31512 	   test_code    TABLE     ?   CREATE TABLE public.test_code (
    id bigint NOT NULL,
    test_code character varying(255),
    test_id bigint,
    user_id bigint,
    current_question_number bigint
);
    DROP TABLE public.test_code;
       public         heap    postgres    false            ?            1259    31384 	   test_type    TABLE     [   CREATE TABLE public.test_type (
    id bigint NOT NULL,
    name character varying(255)
);
    DROP TABLE public.test_type;
       public         heap    postgres    false            ?            1259    31389    tests    TABLE     |  CREATE TABLE public.tests (
    id bigint NOT NULL,
    end_date timestamp without time zone,
    is_active boolean,
    is_possible_to_back boolean,
    name character varying(255) NOT NULL,
    start_date timestamp without time zone,
    time_for_test smallint NOT NULL,
    company_id bigint,
    test_type_id bigint,
    user_hr_id bigint,
    is_open_for_everyone boolean
);
    DROP TABLE public.tests;
       public         heap    postgres    false            ?            1259    31397    user_answers    TABLE     ?   CREATE TABLE public.user_answers (
    id bigint NOT NULL,
    answer_id bigint,
    question_id bigint,
    test_id bigint,
    user_id bigint
);
     DROP TABLE public.user_answers;
       public         heap    postgres    false            ?            1259    31402    users    TABLE     ?  CREATE TABLE public.users (
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
       public         heap    postgres    false            q          0    31325    account_types 
   TABLE DATA           ?   COPY public.account_types (id, role_id, role_name) FROM stdin;
    public          postgres    false    202   Z       r          0    31330    answers 
   TABLE DATA           L   COPY public.answers (id, is_correct, points, text, question_id) FROM stdin;
    public          postgres    false    203   \Z       s          0    31335    ceos 
   TABLE DATA           7   COPY public.ceos (id, company_id, user_id) FROM stdin;
    public          postgres    false    204   %]       t          0    31340 	   companies 
   TABLE DATA           E   COPY public.companies (id, about, image, location, name) FROM stdin;
    public          postgres    false    205   R]       u          0    31348    company_pictures 
   TABLE DATA           ~   COPY public.company_pictures (id, background_pic, first_pic, is_current, logo, second_pic, third_pic, company_id) FROM stdin;
    public          postgres    false    206   ?]       v          0    31356    cvs 
   TABLE DATA           A   COPY public.cvs (id, file_name, is_current, user_id) FROM stdin;
    public          postgres    false    207   ?]       w          0    31361    departments 
   TABLE DATA           ;   COPY public.departments (id, name, company_id) FROM stdin;
    public          postgres    false    208   ?]       x          0    31366    hr_users 
   TABLE DATA           J   COPY public.hr_users (id, company_id, department_id, user_id) FROM stdin;
    public          postgres    false    209   >^       y          0    31371    profile_pictures 
   TABLE DATA           N   COPY public.profile_pictures (id, file_name, is_current, user_id) FROM stdin;
    public          postgres    false    210   f^       z          0    31376 	   questions 
   TABLE DATA           =   COPY public.questions (id, image, text, test_id) FROM stdin;
    public          postgres    false    211   ?^       ?          0    31512 	   test_code 
   TABLE DATA           ]   COPY public.test_code (id, test_code, test_id, user_id, current_question_number) FROM stdin;
    public          postgres    false    217   ?_       {          0    31384 	   test_type 
   TABLE DATA           -   COPY public.test_type (id, name) FROM stdin;
    public          postgres    false    212   ?_       |          0    31389    tests 
   TABLE DATA           ?   COPY public.tests (id, end_date, is_active, is_possible_to_back, name, start_date, time_for_test, company_id, test_type_id, user_hr_id, is_open_for_everyone) FROM stdin;
    public          postgres    false    213   `       }          0    31397    user_answers 
   TABLE DATA           T   COPY public.user_answers (id, answer_id, question_id, test_id, user_id) FROM stdin;
    public          postgres    false    214   ?`       ~          0    31402    users 
   TABLE DATA              COPY public.users (id, email, first_name, is_active, login, middle_name, password, phone_number, surname, role_id) FROM stdin;
    public          postgres    false    215   ?`       ?           0    0    hibernate_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hibernate_sequence', 364, true);
          public          postgres    false    216            ?
           2606    31329     account_types account_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.account_types
    ADD CONSTRAINT account_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.account_types DROP CONSTRAINT account_types_pkey;
       public            postgres    false    202            ?
           2606    31334    answers answers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_pkey;
       public            postgres    false    203            ?
           2606    31339    ceos ceos_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT ceos_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.ceos DROP CONSTRAINT ceos_pkey;
       public            postgres    false    204            ?
           2606    31347    companies companies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.companies DROP CONSTRAINT companies_pkey;
       public            postgres    false    205            ?
           2606    31355 &   company_pictures company_pictures_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.company_pictures
    ADD CONSTRAINT company_pictures_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.company_pictures DROP CONSTRAINT company_pictures_pkey;
       public            postgres    false    206            ?
           2606    31360    cvs cvs_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.cvs
    ADD CONSTRAINT cvs_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.cvs DROP CONSTRAINT cvs_pkey;
       public            postgres    false    207            ?
           2606    31365    departments departments_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    208            ?
           2606    31370    hr_users hr_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT hr_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT hr_users_pkey;
       public            postgres    false    209            ?
           2606    31375 &   profile_pictures profile_pictures_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.profile_pictures
    ADD CONSTRAINT profile_pictures_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.profile_pictures DROP CONSTRAINT profile_pictures_pkey;
       public            postgres    false    210            ?
           2606    31383    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    211            ?
           2606    31516    test_code test_code_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.test_code
    ADD CONSTRAINT test_code_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.test_code DROP CONSTRAINT test_code_pkey;
       public            postgres    false    217            ?
           2606    31388    test_type test_type_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.test_type
    ADD CONSTRAINT test_type_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.test_type DROP CONSTRAINT test_type_pkey;
       public            postgres    false    212            ?
           2606    31396    tests tests_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_pkey;
       public            postgres    false    213            ?
           2606    31411 "   users uk_6dotkott2kjsp8vw4d0m25fb7 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);
 L   ALTER TABLE ONLY public.users DROP CONSTRAINT uk_6dotkott2kjsp8vw4d0m25fb7;
       public            postgres    false    215            ?
           2606    31413 "   users uk_ow0gan20590jrb00upg3va2fn 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_ow0gan20590jrb00upg3va2fn UNIQUE (login);
 L   ALTER TABLE ONLY public.users DROP CONSTRAINT uk_ow0gan20590jrb00upg3va2fn;
       public            postgres    false    215            ?
           2606    31401    user_answers user_answers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT user_answers_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT user_answers_pkey;
       public            postgres    false    214            ?
           2606    31409    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            ?
           2606    31486 !   user_answers fkansweriduseranswer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkansweriduseranswer FOREIGN KEY (answer_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkansweriduseranswer;
       public          postgres    false    2779    214    215            ?
           2606    31416    answers fkanswerquestion    FK CONSTRAINT        ALTER TABLE ONLY public.answers
    ADD CONSTRAINT fkanswerquestion FOREIGN KEY (question_id) REFERENCES public.questions(id);
 B   ALTER TABLE ONLY public.answers DROP CONSTRAINT fkanswerquestion;
       public          postgres    false    203    211    2767            ?
           2606    31421    ceos fkceocompany    FK CONSTRAINT     w   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT fkceocompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 ;   ALTER TABLE ONLY public.ceos DROP CONSTRAINT fkceocompany;
       public          postgres    false    205    204    2755            ?
           2606    31426    ceos fkceouser    FK CONSTRAINT     m   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT fkceouser FOREIGN KEY (user_id) REFERENCES public.users(id);
 8   ALTER TABLE ONLY public.ceos DROP CONSTRAINT fkceouser;
       public          postgres    false    204    215    2779            ?
           2606    31436    cvs fkcvuser    FK CONSTRAINT     k   ALTER TABLE ONLY public.cvs
    ADD CONSTRAINT fkcvuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 6   ALTER TABLE ONLY public.cvs DROP CONSTRAINT fkcvuser;
       public          postgres    false    207    2779    215            ?
           2606    31441    departments fkdepartmentcompany    FK CONSTRAINT     ?   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT fkdepartmentcompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 I   ALTER TABLE ONLY public.departments DROP CONSTRAINT fkdepartmentcompany;
       public          postgres    false    205    2755    208            ?
           2606    31446    hr_users fkhrusercompany    FK CONSTRAINT     ~   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT fkhrusercompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 B   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT fkhrusercompany;
       public          postgres    false    2755    209    205            ?
           2606    31451    hr_users fkhruserdepartment    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT fkhruserdepartment FOREIGN KEY (department_id) REFERENCES public.departments(id);
 E   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT fkhruserdepartment;
       public          postgres    false    208    2761    209            ?
           2606    31456    hr_users fkhruseruser    FK CONSTRAINT     t   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT fkhruseruser FOREIGN KEY (user_id) REFERENCES public.users(id);
 ?   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT fkhruseruser;
       public          postgres    false    209    215    2779            ?
           2606    31431 "   company_pictures fkpicturescompany    FK CONSTRAINT     ?   ALTER TABLE ONLY public.company_pictures
    ADD CONSTRAINT fkpicturescompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 L   ALTER TABLE ONLY public.company_pictures DROP CONSTRAINT fkpicturescompany;
       public          postgres    false    206    2755    205            ?
           2606    31461 %   profile_pictures fkprofilepictureuser    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profile_pictures
    ADD CONSTRAINT fkprofilepictureuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 O   ALTER TABLE ONLY public.profile_pictures DROP CONSTRAINT fkprofilepictureuser;
       public          postgres    false    2779    210    215            ?
           2606    31491 #   user_answers fkquestioniduseranswer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkquestioniduseranswer FOREIGN KEY (question_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkquestioniduseranswer;
       public          postgres    false    2779    214    215            ?
           2606    31466    questions fkquestiontest    FK CONSTRAINT     w   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fkquestiontest FOREIGN KEY (test_id) REFERENCES public.tests(id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT fkquestiontest;
       public          postgres    false    213    211    2771            ?
           2606    31517    test_code fktestcodetest    FK CONSTRAINT     w   ALTER TABLE ONLY public.test_code
    ADD CONSTRAINT fktestcodetest FOREIGN KEY (test_id) REFERENCES public.tests(id);
 B   ALTER TABLE ONLY public.test_code DROP CONSTRAINT fktestcodetest;
       public          postgres    false    2771    217    213            ?
           2606    31522    test_code fktestcodeuser    FK CONSTRAINT     w   ALTER TABLE ONLY public.test_code
    ADD CONSTRAINT fktestcodeuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 B   ALTER TABLE ONLY public.test_code DROP CONSTRAINT fktestcodeuser;
       public          postgres    false    217    215    2779            ?
           2606    31471    tests fktestcompany    FK CONSTRAINT     y   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestcompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 =   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestcompany;
       public          postgres    false    205    213    2755            ?
           2606    31496    user_answers fktestiduseranswer    FK CONSTRAINT     ~   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fktestiduseranswer FOREIGN KEY (test_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fktestiduseranswer;
       public          postgres    false    2779    215    214            ?
           2606    31476    tests fktesttype    FK CONSTRAINT     x   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktesttype FOREIGN KEY (test_type_id) REFERENCES public.test_type(id);
 :   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktesttype;
       public          postgres    false    212    213    2769            ?
           2606    31481    tests fktestuserhr    FK CONSTRAINT     t   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestuserhr FOREIGN KEY (user_hr_id) REFERENCES public.users(id);
 <   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestuserhr;
       public          postgres    false    2779    215    213            ?
           2606    31506    users fkuseraccounttypes    FK CONSTRAINT        ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkuseraccounttypes FOREIGN KEY (role_id) REFERENCES public.account_types(id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT fkuseraccounttypes;
       public          postgres    false    2749    215    202            ?
           2606    31501    user_answers fkuseriduseranswer    FK CONSTRAINT     ~   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkuseriduseranswer FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkuseriduseranswer;
       public          postgres    false    2779    215    214            q   0   x?344?4?LI?2?4?LL????21?4?,-N-?22?S??b???? ê	      r   ?  x?u?;??0C?x???)r/?Y?x??UN?:=oJ?i?V??????????????g?????OE?C?@}???V??t??V???kG???N?Z?ڔ??5?=j?z~?0?5N???<?	????????>?r?sz??J?!?}?s^9???s???Ϯ=!???t?i????@?v?y|@?C=??z?OxΐC?v?y|B?C=N??N9?C?S=N??z?oxκ???!?z????!?z????C??W???&?~????/???w;?<????7????????>?Яrڡ?????w;?????y?gz?=???~??_{?9?k?њ???9???hC^??^{????v$`w?!???ڑ??I????{?z?pO{?=??B;?;????kGv????????{ڡw{}??v$`w?!?q؝Ў?N:??C?C=??z??ڑ??I??ǡw?H???CN;?>???{?=J???v$`w?!?z׎?N:?<???????????	؝t?yv'?#??N9?C?[=n??z???G;?aw?!???޵#v'??L???{??=?k?v؝???;???^{?ڑ??9?G???-??L?????O׎t؝t?i??w?H??I??v轫???C?????ڑ?c??I?޵#v'rڡ?G=>pO;?~|???>??`??p???;?>?'???????c??ȿ~???/?E      s      x??4??4?4?240?440 ?b???? *TE      t   I   x?3?,NIO/N????L??,?LN??K?M??4?qQI?C%
2?R?,??2?F? d?E???!%1z\\\ ?"?      u      x?????? ? ?      v   &   x?3?,NI? ?NC.#?%-*?2??????        w   0   x?3??K?M?4䲴??J??,VHI-H,*?M?+Q?H??4?????? ??'      x      x?????4㴴?4?????? Q      y      x?????? ? ?      z     x?}ұm1???8E&0DR?QKd?.?8r2~H??s?A8??gr?????????z}\]?d?jH??G̃X?g??[?????[???{Ca4???Fwa4?Ym?$>ACh3?͚hHa?o?hp????I?$\7l?????[ݰ?nH7??ACZ}???lphH??'?H????0?A9?4?hH????hH?[')??6?6?????muCؠ???iZ7l???:I?????Q?k??6????7"?yd??      ?   <   x?367?,I-.I?OI?462?4?4?251?0???PА??Ԑ3Ə??? ?&F??? ?}      {      x?????? ? ?      |   ?   x???+?@P?>EN???K?!]?޾???Y???#?JX??????????E?P?9\?X$??Ӗ?V+n?M?_?"ns?me?6??rƭ4ܚ?6?ӄ?M?;dk????:?0VaP5?v2?X?A??t??????      }      x?????? ? ?      ~   q  x???I??H?3??H?s???U6???%?Ȗ?˯?ˊ??Қ?tDFd~ID?O??B?$ޔ?Q???>E=f?6?????c?$??S$????a????]H%???B???'r ??k'???1@RoCIvk?$??????=,?0??,??V?'8??,L'??5?6?K$*??^??????9????L?ю?ɺw4?װ~?K?RAbQ?WiG?x?_c?F??????1?1?˫-u]?b?eRM?҃?ټ,?i?h?R??lg[?7???Y?<????W?????{E}Χ> ??.?K?4V׭С4?AmU|??XF}????? 娚d?^??P???C?d???.??)?K?+??'?^T??Z??[???y??m??7??B??d?_M~? 里h?tRP?+?'7?pl?Fˈ?9? ?????~	=???cQ^t??a??????6?????h??4~^???x?b??v??0Гj???y???'?C?O?Zb?)"_??D>?E?&?????*?(???\:e??%E?R!ō'?????5????_?9??7?i?ζxf?k>8^P%?F?".?+?xN???$/m?3l?????g?#?V??K?ǔŵ??	??????pt?????ة????D?4?X(X?H??{զ?)?x?$`Ib???=?A??Le}U??t?V?,+?h+]%9u?3t?????}5??'?;&?V??#:??θ?$??5?Z?u????0???Q?8?h?%?????'EQ??	????? ??s??]8h?K?@@D?K?0f?0 ??R?`1P'??8??Y??l??Հ??4ɟD??{??COQ?\???C-?&G????~E3???|????;?eZ??&?=??`??F?$^     
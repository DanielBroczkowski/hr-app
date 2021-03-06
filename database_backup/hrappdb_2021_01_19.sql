PGDMP         "                 y            hrappdb    12.2    12.2 U    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    34061    hrappdb    DATABASE     ?   CREATE DATABASE hrappdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Polish_Poland.1250' LC_CTYPE = 'Polish_Poland.1250';
    DROP DATABASE hrappdb;
                postgres    false            ?            1259    34062    account_types    TABLE     ?   CREATE TABLE public.account_types (
    id bigint NOT NULL,
    role_id bigint NOT NULL,
    role_name character varying(255) NOT NULL
);
 !   DROP TABLE public.account_types;
       public         heap    postgres    false            ?            1259    34065    announcements    TABLE     ?   CREATE TABLE public.announcements (
    id bigint NOT NULL,
    description character varying(255),
    title character varying(255) NOT NULL,
    company_id bigint,
    hr_user_id bigint
);
 !   DROP TABLE public.announcements;
       public         heap    postgres    false            ?            1259    34071    answers    TABLE     ?   CREATE TABLE public.answers (
    id bigint NOT NULL,
    is_correct boolean,
    points integer,
    text character varying(255),
    question_id bigint
);
    DROP TABLE public.answers;
       public         heap    postgres    false            ?            1259    34074    ceos    TABLE     `   CREATE TABLE public.ceos (
    id bigint NOT NULL,
    company_id bigint,
    user_id bigint
);
    DROP TABLE public.ceos;
       public         heap    postgres    false            ?            1259    34077 	   companies    TABLE     ?   CREATE TABLE public.companies (
    id bigint NOT NULL,
    about character varying(255) NOT NULL,
    image bytea,
    location character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    image_url character varying(255)
);
    DROP TABLE public.companies;
       public         heap    postgres    false            ?            1259    34083    company_pictures    TABLE     /  CREATE TABLE public.company_pictures (
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
       public         heap    postgres    false            ?            1259    34089    cvs    TABLE     ?   CREATE TABLE public.cvs (
    id bigint NOT NULL,
    file_name character varying(255) NOT NULL,
    is_current boolean,
    user_id bigint
);
    DROP TABLE public.cvs;
       public         heap    postgres    false            ?            1259    34092    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            ?            1259    34094    hr_alert    TABLE     ?   CREATE TABLE public.hr_alert (
    id bigint NOT NULL,
    read boolean,
    announcement_id bigint,
    test_participant_id bigint,
    user_id bigint
);
    DROP TABLE public.hr_alert;
       public         heap    postgres    false            ?            1259    34097    hr_users    TABLE     d   CREATE TABLE public.hr_users (
    id bigint NOT NULL,
    company_id bigint,
    user_id bigint
);
    DROP TABLE public.hr_users;
       public         heap    postgres    false            ?            1259    42026    mailing    TABLE     _   CREATE TABLE public.mailing (
    id bigint NOT NULL,
    mailing_new_quiz boolean NOT NULL
);
    DROP TABLE public.mailing;
       public         heap    postgres    false            ?            1259    34100    profile_pictures    TABLE     ?   CREATE TABLE public.profile_pictures (
    id bigint NOT NULL,
    file_name character varying(255) NOT NULL,
    is_current boolean,
    user_id bigint
);
 $   DROP TABLE public.profile_pictures;
       public         heap    postgres    false            ?            1259    34103 	   questions    TABLE     ?   CREATE TABLE public.questions (
    id bigint NOT NULL,
    image bytea,
    text character varying(255),
    test_id bigint
);
    DROP TABLE public.questions;
       public         heap    postgres    false            ?            1259    34109    test_participant    TABLE       CREATE TABLE public.test_participant (
    id bigint NOT NULL,
    test_code character varying(255),
    current_question_number bigint,
    start_quiz_time_in_milis bigint,
    test_id bigint,
    user_id bigint,
    read boolean,
    announcement_id bigint
);
 $   DROP TABLE public.test_participant;
       public         heap    postgres    false            ?            1259    34112 	   test_type    TABLE     [   CREATE TABLE public.test_type (
    id bigint NOT NULL,
    name character varying(255)
);
    DROP TABLE public.test_type;
       public         heap    postgres    false            ?            1259    34115    tests    TABLE     ?  CREATE TABLE public.tests (
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
       public         heap    postgres    false            ?            1259    34118    user_answers    TABLE     ?   CREATE TABLE public.user_answers (
    id bigint NOT NULL,
    answer_id bigint,
    question_id bigint,
    test_id bigint,
    user_id bigint
);
     DROP TABLE public.user_answers;
       public         heap    postgres    false            ?            1259    34121    users    TABLE     ?  CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    is_active boolean,
    login character varying(255) NOT NULL,
    middle_name character varying(255),
    password character varying(255),
    phone_number character varying(255),
    surname character varying(255) NOT NULL,
    role_id bigint,
    mailing_id bigint,
    avatar character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?          0    34062    account_types 
   TABLE DATA           ?   COPY public.account_types (id, role_id, role_name) FROM stdin;
    public          postgres    false    202   ?i       ?          0    34065    announcements 
   TABLE DATA           W   COPY public.announcements (id, description, title, company_id, hr_user_id) FROM stdin;
    public          postgres    false    203   ,j       ?          0    34071    answers 
   TABLE DATA           L   COPY public.answers (id, is_correct, points, text, question_id) FROM stdin;
    public          postgres    false    204   /k       ?          0    34074    ceos 
   TABLE DATA           7   COPY public.ceos (id, company_id, user_id) FROM stdin;
    public          postgres    false    205   ?l       ?          0    34077 	   companies 
   TABLE DATA           P   COPY public.companies (id, about, image, location, name, image_url) FROM stdin;
    public          postgres    false    206   ?l       ?          0    34083    company_pictures 
   TABLE DATA           ~   COPY public.company_pictures (id, background_pic, first_pic, is_current, logo, second_pic, third_pic, company_id) FROM stdin;
    public          postgres    false    207   ?m       ?          0    34089    cvs 
   TABLE DATA           A   COPY public.cvs (id, file_name, is_current, user_id) FROM stdin;
    public          postgres    false    208   ?m       ?          0    34094    hr_alert 
   TABLE DATA           [   COPY public.hr_alert (id, read, announcement_id, test_participant_id, user_id) FROM stdin;
    public          postgres    false    210   Un       ?          0    34097    hr_users 
   TABLE DATA           ;   COPY public.hr_users (id, company_id, user_id) FROM stdin;
    public          postgres    false    211   mo       ?          0    42026    mailing 
   TABLE DATA           7   COPY public.mailing (id, mailing_new_quiz) FROM stdin;
    public          postgres    false    219   ?o       ?          0    34100    profile_pictures 
   TABLE DATA           N   COPY public.profile_pictures (id, file_name, is_current, user_id) FROM stdin;
    public          postgres    false    212   ?o       ?          0    34103 	   questions 
   TABLE DATA           =   COPY public.questions (id, image, text, test_id) FROM stdin;
    public          postgres    false    213   ?o       ?          0    34109    test_participant 
   TABLE DATA           ?   COPY public.test_participant (id, test_code, current_question_number, start_quiz_time_in_milis, test_id, user_id, read, announcement_id) FROM stdin;
    public          postgres    false    214   ?p       ?          0    34112 	   test_type 
   TABLE DATA           -   COPY public.test_type (id, name) FROM stdin;
    public          postgres    false    215   ?s       ?          0    34115    tests 
   TABLE DATA           ?   COPY public.tests (id, end_date, is_active, is_open_for_everyone, is_possible_to_back, name, start_date, time_for_test_in_milis, company_id, test_type_id, user_hr_id) FROM stdin;
    public          postgres    false    216   ?s       ?          0    34118    user_answers 
   TABLE DATA           T   COPY public.user_answers (id, answer_id, question_id, test_id, user_id) FROM stdin;
    public          postgres    false    217   ?t       ?          0    34121    users 
   TABLE DATA           ?   COPY public.users (id, email, first_name, is_active, login, middle_name, password, phone_number, surname, role_id, mailing_id, avatar) FROM stdin;
    public          postgres    false    218   <u       ?           0    0    hibernate_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hibernate_sequence', 359, true);
          public          postgres    false    209            ?
           2606    34128     account_types account_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.account_types
    ADD CONSTRAINT account_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.account_types DROP CONSTRAINT account_types_pkey;
       public            postgres    false    202            ?
           2606    34130     announcements announcements_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.announcements DROP CONSTRAINT announcements_pkey;
       public            postgres    false    203            ?
           2606    34132    answers answers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_pkey;
       public            postgres    false    204            ?
           2606    34134    ceos ceos_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT ceos_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.ceos DROP CONSTRAINT ceos_pkey;
       public            postgres    false    205            ?
           2606    34136    companies companies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.companies DROP CONSTRAINT companies_pkey;
       public            postgres    false    206            ?
           2606    34138 &   company_pictures company_pictures_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.company_pictures
    ADD CONSTRAINT company_pictures_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.company_pictures DROP CONSTRAINT company_pictures_pkey;
       public            postgres    false    207            ?
           2606    34140    cvs cvs_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.cvs
    ADD CONSTRAINT cvs_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.cvs DROP CONSTRAINT cvs_pkey;
       public            postgres    false    208            ?
           2606    34142    hr_alert hr_alert_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hr_alert
    ADD CONSTRAINT hr_alert_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.hr_alert DROP CONSTRAINT hr_alert_pkey;
       public            postgres    false    210            ?
           2606    34144    hr_users hr_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT hr_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT hr_users_pkey;
       public            postgres    false    211            ?
           2606    42030    mailing mailing_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.mailing
    ADD CONSTRAINT mailing_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.mailing DROP CONSTRAINT mailing_pkey;
       public            postgres    false    219            ?
           2606    34146 &   profile_pictures profile_pictures_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.profile_pictures
    ADD CONSTRAINT profile_pictures_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.profile_pictures DROP CONSTRAINT profile_pictures_pkey;
       public            postgres    false    212            ?
           2606    34148    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    213            ?
           2606    34150 &   test_participant test_participant_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT test_participant_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT test_participant_pkey;
       public            postgres    false    214            ?
           2606    34152    test_type test_type_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.test_type
    ADD CONSTRAINT test_type_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.test_type DROP CONSTRAINT test_type_pkey;
       public            postgres    false    215            ?
           2606    34154    tests tests_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_pkey;
       public            postgres    false    216            ?
           2606    34156 "   users uk_6dotkott2kjsp8vw4d0m25fb7 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);
 L   ALTER TABLE ONLY public.users DROP CONSTRAINT uk_6dotkott2kjsp8vw4d0m25fb7;
       public            postgres    false    218            ?
           2606    34158 "   users uk_ow0gan20590jrb00upg3va2fn 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_ow0gan20590jrb00upg3va2fn UNIQUE (login);
 L   ALTER TABLE ONLY public.users DROP CONSTRAINT uk_ow0gan20590jrb00upg3va2fn;
       public            postgres    false    218            ?
           2606    34160    user_answers user_answers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT user_answers_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT user_answers_pkey;
       public            postgres    false    217            ?
           2606    34162    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218            ?
           2606    34163 #   announcements fkannouncementcompany    FK CONSTRAINT     ?   ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT fkannouncementcompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 M   ALTER TABLE ONLY public.announcements DROP CONSTRAINT fkannouncementcompany;
       public          postgres    false    206    2765    203            ?
           2606    34168 "   announcements fkannouncementhruser    FK CONSTRAINT     ?   ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT fkannouncementhruser FOREIGN KEY (hr_user_id) REFERENCES public.hr_users(id);
 L   ALTER TABLE ONLY public.announcements DROP CONSTRAINT fkannouncementhruser;
       public          postgres    false    211    203    2773            ?
           2606    34173 !   user_answers fkansweriduseranswer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkansweriduseranswer FOREIGN KEY (answer_id) REFERENCES public.answers(id);
 K   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkansweriduseranswer;
       public          postgres    false    2761    204    217            ?
           2606    34178    answers fkanswerquestion    FK CONSTRAINT        ALTER TABLE ONLY public.answers
    ADD CONSTRAINT fkanswerquestion FOREIGN KEY (question_id) REFERENCES public.questions(id);
 B   ALTER TABLE ONLY public.answers DROP CONSTRAINT fkanswerquestion;
       public          postgres    false    2777    204    213            ?
           2606    34183    ceos fkceocompany    FK CONSTRAINT     w   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT fkceocompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 ;   ALTER TABLE ONLY public.ceos DROP CONSTRAINT fkceocompany;
       public          postgres    false    2765    206    205            ?
           2606    34188    ceos fkceouser    FK CONSTRAINT     m   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT fkceouser FOREIGN KEY (user_id) REFERENCES public.users(id);
 8   ALTER TABLE ONLY public.ceos DROP CONSTRAINT fkceouser;
       public          postgres    false    205    2791    218            ?
           2606    34193    cvs fkcvuser    FK CONSTRAINT     k   ALTER TABLE ONLY public.cvs
    ADD CONSTRAINT fkcvuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 6   ALTER TABLE ONLY public.cvs DROP CONSTRAINT fkcvuser;
       public          postgres    false    2791    208    218            ?
           2606    34198    hr_alert fkhralertannouncement    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hr_alert
    ADD CONSTRAINT fkhralertannouncement FOREIGN KEY (announcement_id) REFERENCES public.announcements(id);
 H   ALTER TABLE ONLY public.hr_alert DROP CONSTRAINT fkhralertannouncement;
       public          postgres    false    203    2759    210            ?
           2606    34203 !   hr_alert fkhralerttestparticipant    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hr_alert
    ADD CONSTRAINT fkhralerttestparticipant FOREIGN KEY (test_participant_id) REFERENCES public.test_participant(id);
 K   ALTER TABLE ONLY public.hr_alert DROP CONSTRAINT fkhralerttestparticipant;
       public          postgres    false    214    210    2779            ?
           2606    34208    hr_alert fkhralertuser    FK CONSTRAINT     u   ALTER TABLE ONLY public.hr_alert
    ADD CONSTRAINT fkhralertuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 @   ALTER TABLE ONLY public.hr_alert DROP CONSTRAINT fkhralertuser;
       public          postgres    false    210    2791    218            ?
           2606    34213    hr_users fkhrusercompany    FK CONSTRAINT     ~   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT fkhrusercompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 B   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT fkhrusercompany;
       public          postgres    false    206    2765    211            ?
           2606    34218    hr_users fkhruseruser    FK CONSTRAINT     t   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT fkhruseruser FOREIGN KEY (user_id) REFERENCES public.users(id);
 ?   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT fkhruseruser;
       public          postgres    false    211    2791    218            ?
           2606    34223 "   company_pictures fkpicturescompany    FK CONSTRAINT     ?   ALTER TABLE ONLY public.company_pictures
    ADD CONSTRAINT fkpicturescompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 L   ALTER TABLE ONLY public.company_pictures DROP CONSTRAINT fkpicturescompany;
       public          postgres    false    2765    206    207            ?
           2606    34228 %   profile_pictures fkprofilepictureuser    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profile_pictures
    ADD CONSTRAINT fkprofilepictureuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 O   ALTER TABLE ONLY public.profile_pictures DROP CONSTRAINT fkprofilepictureuser;
       public          postgres    false    212    218    2791            ?
           2606    34233 #   user_answers fkquestioniduseranswer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkquestioniduseranswer FOREIGN KEY (question_id) REFERENCES public.questions(id);
 M   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkquestioniduseranswer;
       public          postgres    false    2777    213    217            ?
           2606    34238    questions fkquestiontest    FK CONSTRAINT     w   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fkquestiontest FOREIGN KEY (test_id) REFERENCES public.tests(id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT fkquestiontest;
       public          postgres    false    213    216    2783            ?
           2606    34243 #   test_participant fktestannouncement    FK CONSTRAINT     ?   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT fktestannouncement FOREIGN KEY (announcement_id) REFERENCES public.announcements(id);
 M   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT fktestannouncement;
       public          postgres    false    203    2759    214            ?
           2606    34248    test_participant fktestcodetest    FK CONSTRAINT     ~   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT fktestcodetest FOREIGN KEY (test_id) REFERENCES public.tests(id);
 I   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT fktestcodetest;
       public          postgres    false    214    2783    216            ?
           2606    34253    tests fktestcodetest    FK CONSTRAINT     |   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestcodetest FOREIGN KEY (test_type_id) REFERENCES public.test_type(id);
 >   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestcodetest;
       public          postgres    false    2781    215    216            ?
           2606    34258    test_participant fktestcodeuser    FK CONSTRAINT     ~   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT fktestcodeuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT fktestcodeuser;
       public          postgres    false    218    214    2791            ?
           2606    34263    tests fktestcompany    FK CONSTRAINT     y   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestcompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 =   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestcompany;
       public          postgres    false    216    2765    206                        2606    34268    user_answers fktestiduseranswer    FK CONSTRAINT     ~   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fktestiduseranswer FOREIGN KEY (test_id) REFERENCES public.tests(id);
 I   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fktestiduseranswer;
       public          postgres    false    2783    216    217            ?
           2606    34273    tests fktestuserhr    FK CONSTRAINT     t   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestuserhr FOREIGN KEY (user_hr_id) REFERENCES public.users(id);
 <   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestuserhr;
       public          postgres    false    216    2791    218                       2606    34278    users fkuseraccounttypes    FK CONSTRAINT        ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkuseraccounttypes FOREIGN KEY (role_id) REFERENCES public.account_types(id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT fkuseraccounttypes;
       public          postgres    false    2757    218    202                       2606    34283    user_answers fkuseriduseranswer    FK CONSTRAINT     ~   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkuseriduseranswer FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkuseriduseranswer;
       public          postgres    false    218    217    2791                       2606    42031    users fkusermailing    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkusermailing FOREIGN KEY (mailing_id) REFERENCES public.mailing(id);
 =   ALTER TABLE ONLY public.users DROP CONSTRAINT fkusermailing;
       public          postgres    false    219    2793    218            ?   0   x?3?4?LL????2?4?LN??2?4??(?/-N-?2?4?3b???? ?
?      ?   ?   x?e?Ar? ???????]?7?6?Հ#d2uٻ?^?@S2???	?_???m88?6N??D??i?N??????\??ea??7O?5?Ϸ??G?,???Q?鼽#p??zz?t??x?f-u:?Q߷.???n+ہ????~?c?a5??Ŝ??,?????fikYD-2??EeQ?tY?Z?$???Ð?4c?7c	x??_xI|????}%??(K??U???rWz???e???Irx!??.??      ?   ?  x?m?IR?@???}JC????? ???ȱU???N?9??d?o*???Ϸ??ۧn?vӿj???Y????4??n?4??????<??m=??˫??1?l????????&x???7?o??b5<?xx:????0??K??,ш f!c??!??f3??K??? &??l??0FщU??&?P?'D?>?-??P?'D??hB(a???է囆J?D#??? &ЫO??؍p?Atb?X??	F??FG??$0?P?'?`2??>3?\??jןP?'D'?	\????X?Atb?X?
??L?L?L?LPg????:CN(a?????8888x??;???y??????9Q??'??De?M?uRx???}jA      ?      x?3?4?4?2???\1z\\\ ?v      ?   ?   x?5?A?0????)??	A/?	??'
%????r˽,!?f??W?"i??jj]?K"?"?????4"?ঢ়p'!r|	7y??V?4Y?Ŋ??Б]????}?????LY:1?p?????;5ͫ?C?}?V?[????I?:2      ?      x?????? ? ?      ?   ?   x????	?0 ??f?4?&7??BH?@1?b#?N??x8h?p?}??hK???l}r?@?e??%?ӵ??փM???=z??F?#Q??{BT??$D	?j?\?> S??????֎?V??7?#q2??f??K	u??Y9;T?"H???f??1?p=i      ?     x?=?ˑ1D?(????#?y#???L?6???
??1?R??CgY??d?????-?Sqo???(?.y???=???0?6U[E???O?I|??A?.?AZ0b??Üu0x{֜??ݨ???W? ?????+6k1????+=1??4????v,??qbO? G?@???@????@?q?$^!?	???ǳ????3BEf%?q?*}?Ӡ?9;?u?D❙????!??z0c??1ҏ}? ?F?y?l??Zk}?pbU      ?   #   x?3?4?4?2?f?\?@?Ԓ???,???? H?B      ?   +   x?343?,?243??@??ķ0?&`$ll
????? ??	^      ?      x?????? ? ?      ?   ?   x?u?K?0D??)8?=?^?tق؀E??L?%?t?F?I?=L??x-??z??d?{ՠM?N?sy???e?D??4????&?ڦY???w%W?"??`??4:w???V???`?<?AN?I??fv?oVn6Ϸ"???*?}p?? ބq?	??A2????t??F?      ?   ?  x?mT?n?0<SSh??c[??cs,@(6?8d?B?.????WW??؉)????}???k?;0????ȯA?? y??+?XR?JJ??43?M?S,????'tc???b7???Fk֧?aA%S?P??Z3B?ɥ? c?%?ښ?fa?}஌Hلr?M?? M??v?k?c??ҘIQ?l?>M? ?,
?^?mę?????/t|
!'?7L????=???K?Ի$?/C???ɉ????!???|	ɖ??-???c}?;?0??@?t?
??Fl??Y??'???r?r
?<{l?bB-3????ٟ?Gm?ڧ???D[KT?????X*B?o??}ZƗ?2??䏦S??
o04?푚?????KQ???1??Y?[Q????R?=???{????c????i??F0?q|????H?,pq?B?Y???-?Z?M?IF??7?k?|?Y?}?gu8bL(J?w:???????FU	ј-??D?%??? @?>??>?i<|???ksJ???????;&WC?:?PƐ.ӵ ??=٦;??n?iǑ?ZLj?|??$(k??b0?RЦ??bO?w?& `pH?܊?MF$>M??P?ȤPd?R?V?YH?k??K6?X???3 ?8M?H?`???8???.?\?m(?h??F?1?y??2sK?i??N:?d????'J9f냷??r ?UB_ R??OM??H?d?      ?      x?????? ? ?      ?   6  x???Mn?0F?p????xl?/Q? ?F??#????f?M/?ޫq()!?,?7?=???>??:???c?ﻞ??kRJ?Si29??U?\????ɐ??H?Z??:\g?W????1???,??['?w??KӇ???خ?????a?NI?o??$??"k???7m?o7?S~>??W???S7B????펡;
\??{PFB???ưh??%\
8
b????P??8??d{Q?
?6??(5T??-????\?\? ?p??9????G:/!??ӣ?UE&??G<???????j	?PrN?p9!???SY????      ?   <   x?E??? ????mH/???!?iL??8????[?+4??Γ_(??}??X??      ?   ?  x???ɶ?H???s?????(?"??? ? ?(??w??j?v??3???????#$?|??~=??
??8I?????)??????$??????~?????NXP?3?w	?*?}?D?uEO??n??('?r'??v?iʌ?P?x?)?@"?2??"?ѠȠ?p=:/?^??DӨ?S??_?uC?+?[`ᙹ??(`[)?̙?=???k?"?{???W????Ƣ>X?웻??t`????%6??*??NP???qp???]z?????x???5ƥ????'?e??N?.Q?m?kL_??鮺\?*???aS??L"?cQ	?????,?C?"\???9??->?/ޒ5v???*?b?T?m@????7F)?z?<???e9?y?sѲ??}??P?[,?2-???t\MȔ??R8??!?_ܴ}?e?eB?Q??U[???N???O??	???B?(H?$O??\!n???z1[??ടI?>?K?@d?^?
??????bTYǽAt7??漚?}!?CQo&? ?W??HS?X??wK???=???--?d?>??~U;Zzح??%???9ᡉ0R𭝀???e??Xx??L??Q0???9?b??-|A????$I?ks?!?|?M? ?ux??PjqiJ{y;gH!?jW??q>2C?`?/????&>?#׿A???mAӎɾ6^?`n??ˎq????.?LW?lQy>h5[?Iks5?%????XS??U?s8?c;F????2????Q4?#8ƚ_?|1C:?Du?W?el?M???ήPi?(?? @n?U?MΨhOo??
 ?{?P??q??TL?R??S?Qo?C?Oy&_Y??<????U?<?ΪN?6?~b?y??f?7Y???7?o????\?f????N?˼???e?󥁳K?gK??@-???!3???;?2???\V?RZ??r?b?*X?Qu????c???gI?!n??.??;???XC????픐????]E5'?1????CNS,x??E$?D?I??$???D'?U, ?3Pׁ?͛?|?U?ӕ?????/8?O??>??)?Z.??rm}?t?fu??̯`Kګm'????K%?H??7,s?????sas?W?ſ??`???e?ɍ?/?r??????$?#?sh???o	?b~?@??????nm?V?9[?C??X
OP???V??jsM¨?Q?
]?^!?{??BHz?????~?\p?     
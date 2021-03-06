PGDMP     '    :            
    x            hrappdb    12.1    12.1 W    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
                   postgres    false    3            ?            1259    57073    account_types    TABLE     ?   CREATE TABLE public.account_types (
    id bigint NOT NULL,
    role_id bigint NOT NULL,
    role_name character varying(255) NOT NULL
);
 !   DROP TABLE public.account_types;
       public         heap    postgres    false    3            ?            1259    57076    announcements    TABLE     ?   CREATE TABLE public.announcements (
    id bigint NOT NULL,
    description character varying(255),
    title character varying(255) NOT NULL,
    company_id bigint,
    hr_user_id bigint
);
 !   DROP TABLE public.announcements;
       public         heap    postgres    false    3            ?            1259    57082    answers    TABLE     ?   CREATE TABLE public.answers (
    id bigint NOT NULL,
    is_correct boolean,
    points integer,
    text character varying(255),
    question_id bigint
);
    DROP TABLE public.answers;
       public         heap    postgres    false    3            ?            1259    57085    ceos    TABLE     `   CREATE TABLE public.ceos (
    id bigint NOT NULL,
    company_id bigint,
    user_id bigint
);
    DROP TABLE public.ceos;
       public         heap    postgres    false    3            ?            1259    57088 	   companies    TABLE     ?   CREATE TABLE public.companies (
    id bigint NOT NULL,
    about character varying(255) NOT NULL,
    image bytea,
    location character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.companies;
       public         heap    postgres    false    3            ?            1259    57094    company_pictures    TABLE     /  CREATE TABLE public.company_pictures (
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
       public         heap    postgres    false    3            ?            1259    57100    cvs    TABLE     ?   CREATE TABLE public.cvs (
    id bigint NOT NULL,
    file_name character varying(255) NOT NULL,
    is_current boolean,
    user_id bigint
);
    DROP TABLE public.cvs;
       public         heap    postgres    false    3            ?            1259    57103    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false    3            ?            1259    57274    hr_alert    TABLE     ?   CREATE TABLE public.hr_alert (
    id bigint NOT NULL,
    read boolean,
    announcement_id bigint,
    test_participant_id bigint,
    user_id bigint
);
    DROP TABLE public.hr_alert;
       public         heap    postgres    false    3            ?            1259    57105    hr_users    TABLE     d   CREATE TABLE public.hr_users (
    id bigint NOT NULL,
    company_id bigint,
    user_id bigint
);
    DROP TABLE public.hr_users;
       public         heap    postgres    false    3            ?            1259    57299    mailing    TABLE     V   CREATE TABLE public.mailing (
    id bigint NOT NULL,
    mailing_new_quiz boolean
);
    DROP TABLE public.mailing;
       public         heap    postgres    false    3            ?            1259    57108    profile_pictures    TABLE     ?   CREATE TABLE public.profile_pictures (
    id bigint NOT NULL,
    file_name character varying(255) NOT NULL,
    is_current boolean,
    user_id bigint
);
 $   DROP TABLE public.profile_pictures;
       public         heap    postgres    false    3            ?            1259    57111 	   questions    TABLE     ?   CREATE TABLE public.questions (
    id bigint NOT NULL,
    image bytea,
    text character varying(255),
    test_id bigint
);
    DROP TABLE public.questions;
       public         heap    postgres    false    3            ?            1259    57117    test_participant    TABLE       CREATE TABLE public.test_participant (
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
       public         heap    postgres    false    3            ?            1259    57120 	   test_type    TABLE     [   CREATE TABLE public.test_type (
    id bigint NOT NULL,
    name character varying(255)
);
    DROP TABLE public.test_type;
       public         heap    postgres    false    3            ?            1259    57123    tests    TABLE     ?  CREATE TABLE public.tests (
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
       public         heap    postgres    false    3            ?            1259    57126    user_answers    TABLE     ?   CREATE TABLE public.user_answers (
    id bigint NOT NULL,
    answer_id bigint,
    question_id bigint,
    test_id bigint,
    user_id bigint
);
     DROP TABLE public.user_answers;
       public         heap    postgres    false    3            ?            1259    57129    users    TABLE     ?  CREATE TABLE public.users (
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
    mailing_id bigint
);
    DROP TABLE public.users;
       public         heap    postgres    false    3            ?          0    57073    account_types 
   TABLE DATA           ?   COPY public.account_types (id, role_id, role_name) FROM stdin;
    public          postgres    false    202   Ok       ?          0    57076    announcements 
   TABLE DATA           W   COPY public.announcements (id, description, title, company_id, hr_user_id) FROM stdin;
    public          postgres    false    203   ?k       ?          0    57082    answers 
   TABLE DATA           L   COPY public.answers (id, is_correct, points, text, question_id) FROM stdin;
    public          postgres    false    204   l       ?          0    57085    ceos 
   TABLE DATA           7   COPY public.ceos (id, company_id, user_id) FROM stdin;
    public          postgres    false    205   ?l       ?          0    57088 	   companies 
   TABLE DATA           E   COPY public.companies (id, about, image, location, name) FROM stdin;
    public          postgres    false    206   ?l       ?          0    57094    company_pictures 
   TABLE DATA           ~   COPY public.company_pictures (id, background_pic, first_pic, is_current, logo, second_pic, third_pic, company_id) FROM stdin;
    public          postgres    false    207   >m       ?          0    57100    cvs 
   TABLE DATA           A   COPY public.cvs (id, file_name, is_current, user_id) FROM stdin;
    public          postgres    false    208   [m       ?          0    57274    hr_alert 
   TABLE DATA           [   COPY public.hr_alert (id, read, announcement_id, test_participant_id, user_id) FROM stdin;
    public          postgres    false    218   xm       ?          0    57105    hr_users 
   TABLE DATA           ;   COPY public.hr_users (id, company_id, user_id) FROM stdin;
    public          postgres    false    210   ?m       ?          0    57299    mailing 
   TABLE DATA           7   COPY public.mailing (id, mailing_new_quiz) FROM stdin;
    public          postgres    false    219   ?m       ?          0    57108    profile_pictures 
   TABLE DATA           N   COPY public.profile_pictures (id, file_name, is_current, user_id) FROM stdin;
    public          postgres    false    211   n       ?          0    57111 	   questions 
   TABLE DATA           =   COPY public.questions (id, image, text, test_id) FROM stdin;
    public          postgres    false    212   7n       ?          0    57117    test_participant 
   TABLE DATA           ?   COPY public.test_participant (id, test_code, current_question_number, start_quiz_time_in_milis, test_id, user_id, read, announcement_id) FROM stdin;
    public          postgres    false    213   ?n       ?          0    57120 	   test_type 
   TABLE DATA           -   COPY public.test_type (id, name) FROM stdin;
    public          postgres    false    214   ?q       ?          0    57123    tests 
   TABLE DATA           ?   COPY public.tests (id, end_date, is_active, is_open_for_everyone, is_possible_to_back, name, start_date, time_for_test_in_milis, company_id, test_type_id, user_hr_id) FROM stdin;
    public          postgres    false    215   ?q       ?          0    57126    user_answers 
   TABLE DATA           T   COPY public.user_answers (id, answer_id, question_id, test_id, user_id) FROM stdin;
    public          postgres    false    216   ?r       ?          0    57129    users 
   TABLE DATA           ?   COPY public.users (id, email, first_name, is_active, login, middle_name, password, phone_number, surname, role_id, mailing_id) FROM stdin;
    public          postgres    false    217   ?r       ?           0    0    hibernate_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hibernate_sequence', 183, true);
          public          postgres    false    209            ?
           2606    57136     account_types account_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.account_types
    ADD CONSTRAINT account_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.account_types DROP CONSTRAINT account_types_pkey;
       public            postgres    false    202            ?
           2606    57138     announcements announcements_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.announcements DROP CONSTRAINT announcements_pkey;
       public            postgres    false    203            ?
           2606    57140    answers answers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_pkey;
       public            postgres    false    204            ?
           2606    57142    ceos ceos_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT ceos_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.ceos DROP CONSTRAINT ceos_pkey;
       public            postgres    false    205            ?
           2606    57144    companies companies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.companies DROP CONSTRAINT companies_pkey;
       public            postgres    false    206            ?
           2606    57146 &   company_pictures company_pictures_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.company_pictures
    ADD CONSTRAINT company_pictures_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.company_pictures DROP CONSTRAINT company_pictures_pkey;
       public            postgres    false    207            ?
           2606    57148    cvs cvs_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.cvs
    ADD CONSTRAINT cvs_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.cvs DROP CONSTRAINT cvs_pkey;
       public            postgres    false    208            ?
           2606    57278    hr_alert hr_alert_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hr_alert
    ADD CONSTRAINT hr_alert_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.hr_alert DROP CONSTRAINT hr_alert_pkey;
       public            postgres    false    218            ?
           2606    57150    hr_users hr_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT hr_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT hr_users_pkey;
       public            postgres    false    210            ?
           2606    57303    mailing mailing_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.mailing
    ADD CONSTRAINT mailing_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.mailing DROP CONSTRAINT mailing_pkey;
       public            postgres    false    219            ?
           2606    57152 &   profile_pictures profile_pictures_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.profile_pictures
    ADD CONSTRAINT profile_pictures_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.profile_pictures DROP CONSTRAINT profile_pictures_pkey;
       public            postgres    false    211            ?
           2606    57154    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    212            ?
           2606    57156 &   test_participant test_participant_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT test_participant_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT test_participant_pkey;
       public            postgres    false    213            ?
           2606    57158    test_type test_type_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.test_type
    ADD CONSTRAINT test_type_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.test_type DROP CONSTRAINT test_type_pkey;
       public            postgres    false    214            ?
           2606    57160    tests tests_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_pkey;
       public            postgres    false    215            ?
           2606    57162 "   users uk_6dotkott2kjsp8vw4d0m25fb7 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);
 L   ALTER TABLE ONLY public.users DROP CONSTRAINT uk_6dotkott2kjsp8vw4d0m25fb7;
       public            postgres    false    217            ?
           2606    57164 "   users uk_ow0gan20590jrb00upg3va2fn 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_ow0gan20590jrb00upg3va2fn UNIQUE (login);
 L   ALTER TABLE ONLY public.users DROP CONSTRAINT uk_ow0gan20590jrb00upg3va2fn;
       public            postgres    false    217            ?
           2606    57166    user_answers user_answers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT user_answers_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT user_answers_pkey;
       public            postgres    false    216            ?
           2606    57168    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            ?
           2606    57169 #   announcements fkannouncementcompany    FK CONSTRAINT     ?   ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT fkannouncementcompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 M   ALTER TABLE ONLY public.announcements DROP CONSTRAINT fkannouncementcompany;
       public          postgres    false    203    2765    206            ?
           2606    57174 "   announcements fkannouncementhruser    FK CONSTRAINT     ?   ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT fkannouncementhruser FOREIGN KEY (hr_user_id) REFERENCES public.hr_users(id);
 L   ALTER TABLE ONLY public.announcements DROP CONSTRAINT fkannouncementhruser;
       public          postgres    false    203    210    2771            ?
           2606    57179 !   user_answers fkansweriduseranswer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkansweriduseranswer FOREIGN KEY (answer_id) REFERENCES public.answers(id);
 K   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkansweriduseranswer;
       public          postgres    false    216    2761    204            ?
           2606    57184    answers fkanswerquestion    FK CONSTRAINT        ALTER TABLE ONLY public.answers
    ADD CONSTRAINT fkanswerquestion FOREIGN KEY (question_id) REFERENCES public.questions(id);
 B   ALTER TABLE ONLY public.answers DROP CONSTRAINT fkanswerquestion;
       public          postgres    false    212    2775    204            ?
           2606    57189    ceos fkceocompany    FK CONSTRAINT     w   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT fkceocompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 ;   ALTER TABLE ONLY public.ceos DROP CONSTRAINT fkceocompany;
       public          postgres    false    206    205    2765            ?
           2606    57194    ceos fkceouser    FK CONSTRAINT     m   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT fkceouser FOREIGN KEY (user_id) REFERENCES public.users(id);
 8   ALTER TABLE ONLY public.ceos DROP CONSTRAINT fkceouser;
       public          postgres    false    205    217    2789            ?
           2606    57199    cvs fkcvuser    FK CONSTRAINT     k   ALTER TABLE ONLY public.cvs
    ADD CONSTRAINT fkcvuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 6   ALTER TABLE ONLY public.cvs DROP CONSTRAINT fkcvuser;
       public          postgres    false    217    208    2789                       2606    57279    hr_alert fkhralertannouncement    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hr_alert
    ADD CONSTRAINT fkhralertannouncement FOREIGN KEY (announcement_id) REFERENCES public.announcements(id);
 H   ALTER TABLE ONLY public.hr_alert DROP CONSTRAINT fkhralertannouncement;
       public          postgres    false    2759    203    218                       2606    57284 !   hr_alert fkhralerttestparticipant    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hr_alert
    ADD CONSTRAINT fkhralerttestparticipant FOREIGN KEY (test_participant_id) REFERENCES public.test_participant(id);
 K   ALTER TABLE ONLY public.hr_alert DROP CONSTRAINT fkhralerttestparticipant;
       public          postgres    false    2777    218    213                       2606    57289    hr_alert fkhralertuser    FK CONSTRAINT     u   ALTER TABLE ONLY public.hr_alert
    ADD CONSTRAINT fkhralertuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 @   ALTER TABLE ONLY public.hr_alert DROP CONSTRAINT fkhralertuser;
       public          postgres    false    218    2789    217            ?
           2606    57204    hr_users fkhrusercompany    FK CONSTRAINT     ~   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT fkhrusercompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 B   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT fkhrusercompany;
       public          postgres    false    206    210    2765            ?
           2606    57209    hr_users fkhruseruser    FK CONSTRAINT     t   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT fkhruseruser FOREIGN KEY (user_id) REFERENCES public.users(id);
 ?   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT fkhruseruser;
       public          postgres    false    210    217    2789            ?
           2606    57214 "   company_pictures fkpicturescompany    FK CONSTRAINT     ?   ALTER TABLE ONLY public.company_pictures
    ADD CONSTRAINT fkpicturescompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 L   ALTER TABLE ONLY public.company_pictures DROP CONSTRAINT fkpicturescompany;
       public          postgres    false    206    207    2765            ?
           2606    57219 %   profile_pictures fkprofilepictureuser    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profile_pictures
    ADD CONSTRAINT fkprofilepictureuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 O   ALTER TABLE ONLY public.profile_pictures DROP CONSTRAINT fkprofilepictureuser;
       public          postgres    false    211    2789    217            ?
           2606    57224 #   user_answers fkquestioniduseranswer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkquestioniduseranswer FOREIGN KEY (question_id) REFERENCES public.questions(id);
 M   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkquestioniduseranswer;
       public          postgres    false    2775    212    216            ?
           2606    57229    questions fkquestiontest    FK CONSTRAINT     w   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fkquestiontest FOREIGN KEY (test_id) REFERENCES public.tests(id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT fkquestiontest;
       public          postgres    false    2781    212    215            ?
           2606    57294 #   test_participant fktestannouncement    FK CONSTRAINT     ?   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT fktestannouncement FOREIGN KEY (announcement_id) REFERENCES public.announcements(id);
 M   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT fktestannouncement;
       public          postgres    false    203    2759    213            ?
           2606    57234    test_participant fktestcodetest    FK CONSTRAINT     ~   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT fktestcodetest FOREIGN KEY (test_id) REFERENCES public.tests(id);
 I   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT fktestcodetest;
       public          postgres    false    213    215    2781            ?
           2606    57239    tests fktestcodetest    FK CONSTRAINT     |   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestcodetest FOREIGN KEY (test_type_id) REFERENCES public.test_type(id);
 >   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestcodetest;
       public          postgres    false    2779    214    215            ?
           2606    57244    test_participant fktestcodeuser    FK CONSTRAINT     ~   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT fktestcodeuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT fktestcodeuser;
       public          postgres    false    213    2789    217            ?
           2606    57249    tests fktestcompany    FK CONSTRAINT     y   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestcompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 =   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestcompany;
       public          postgres    false    2765    206    215            ?
           2606    57254    user_answers fktestiduseranswer    FK CONSTRAINT     ~   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fktestiduseranswer FOREIGN KEY (test_id) REFERENCES public.tests(id);
 I   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fktestiduseranswer;
       public          postgres    false    216    215    2781            ?
           2606    57259    tests fktestuserhr    FK CONSTRAINT     t   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestuserhr FOREIGN KEY (user_hr_id) REFERENCES public.users(id);
 <   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestuserhr;
       public          postgres    false    2789    215    217            ?
           2606    57264    users fkuseraccounttypes    FK CONSTRAINT        ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkuseraccounttypes FOREIGN KEY (role_id) REFERENCES public.account_types(id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT fkuseraccounttypes;
       public          postgres    false    217    2757    202            ?
           2606    57269    user_answers fkuseriduseranswer    FK CONSTRAINT     ~   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkuseriduseranswer FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkuseriduseranswer;
       public          postgres    false    216    2789    217                        2606    57304    users fkusermailing    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkusermailing FOREIGN KEY (mailing_id) REFERENCES public.mailing(id);
 =   ALTER TABLE ONLY public.users DROP CONSTRAINT fkusermailing;
       public          postgres    false    219    217    2793            ?   /   x?3?4?LL????2?4?LN??2?4??(?2?4?,-N-?????? ?<?      ?   t   x?U?K
?0D??S?E'!w?.??P?PBo?X޸hF??İT?\ߩ???oX?W????⶝u?3???O?e|?uҍ??f???qE??븁?i'???????'y;G??t??!???.?      ?   ?   x?m?K? D??0?6	w???鮩?޾?$o?3Ƴ?9a?_????r'??t??o?????yv??S???4?.xf?s?mC?(Ԃ?
PVT??????r@???\j?A??
??j?A{?8??f?V??ĸx`???ZQ=?????
?2?t>??b?      ?      x?3?4?4?????? ?Y      ?   @   x?3?LL?/-ጉ?0?4K13?L?)?,/?L,NIO,N?2⬨?????t????LL?????? ?m?      ?      x?????? ? ?      ?      x?????? ? ?      ?   E   x?-???@D??P?Y`?	+س??,???ix?X7T???=?=Q?ٸ~???????t?"??:D?+?c      ?      x?3?4?4?????? ?Y      ?      x??0?,?247??@"F??? +??      ?      x?????? ? ?      ?      x?u?A?0??+??*???|?/?ʡ
j?H??{68TB?ag?kK??IS????o???-B?`??Iw??ۢ?I\dwRmk?K????-????8WL2?-6?u?5???t????;3???9?      ?   ?  x?mT]SA|^~L?f?f???_D? ?`Y??`E??厢??????=???fz?{?8/???3??????UN`?4`????G????+"??Z?5T??ڮ¿b?u????E??.$wmW??*?]?.򜐇'ܵ?P?Z?|r0??4?=(?~?cf`D?''?c?N???? ?, ,$"? ۬q??}?b???2?7????X^?W???? ???D?e@?G??y?W??'[?\?>?n???˷??e?p4??????3Z????+l?4u?0???????=[0??ݭ?&/1?4???????-????????h?*?q?8-????h?vy<?{?8
`?????????h???z???Er???y1|?M??uQ??E<z?ah???????>??"?}T????0?a%m$?9qqBʼ? ?r?(cx?FFA????!?މ {??cL?????? ???#b????c?̚??&?????????
???y"ma a??.?8?v?ZP? ???@ߐ0????u5??N?r?Y?S,`p?D?s???}?`?&??-??V,`?j?)?LQ??Iq?p????i??:?)((?}}?5?%㨽????8?$z??:?~?@b0??@4?K'???a;ݫ??]??vz?B???l{mKso?TL???P?L?۰?Ө4?T'?s?5??(%򤜽?q?<٭<?z[?)???{򺚞?	????x럾%?۠x???zb0!^dm
?A?S???K???8???      ?      x?????? ? ?      ?   ?   x????
? ??k}?? <???=?nv??\???~?Z+;?????bݙaC???????;???"???ND?]?s4H?7??C??ƪgs?8?,??p1?֋?+???n??(?,?^"?ϗ??ߌ1[?/?R?Zc?g???&q]????hG?4?nlRh?W|????d??;r?E?S      ?   $   x?36?42?4??4??4?26?42?42??b???? Q??      ?   ?  x?u??r?0 ?3<?π?????'??2?(F?$O_?4=?X??????~#]?0F?? ??JT?%?V????Bc?~?)?D軻???V??ܜ<??J?d???H!ުv??qp|T??????l""??????y??YoK^_/a껚z??7E?n??I????=DG?K??o?*?a?^i8??Ohʕ,? ql?_?i?{?ȹ,z???s0??NI?y?????B??w?=Lk?{I?!y?????l&???????\%I⾓"??Q??Mo??x??r?{?ޣ?`?E'????pxm?l8???"(??C>gɯ?b??x???4?(???Ɵ?Ə1?vZ?J?LQa~j}+?M?????#???e?])?"4A?N??T ???>O;??@?enbAo?+??????????     
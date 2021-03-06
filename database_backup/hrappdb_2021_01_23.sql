PGDMP     6    .                 y            hrappdb    12.2    12.2 U    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    50218    hrappdb    DATABASE     ?   CREATE DATABASE hrappdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Polish_Poland.1250' LC_CTYPE = 'Polish_Poland.1250';
    DROP DATABASE hrappdb;
                postgres    false            ?            1259    50219    account_types    TABLE     ?   CREATE TABLE public.account_types (
    id bigint NOT NULL,
    role_id bigint NOT NULL,
    role_name character varying(255) NOT NULL
);
 !   DROP TABLE public.account_types;
       public         heap    postgres    false            ?            1259    50222    announcements    TABLE     ?   CREATE TABLE public.announcements (
    id bigint NOT NULL,
    description character varying(255),
    title character varying(255) NOT NULL,
    company_id bigint,
    hr_user_id bigint
);
 !   DROP TABLE public.announcements;
       public         heap    postgres    false            ?            1259    50228    answers    TABLE     ?   CREATE TABLE public.answers (
    id bigint NOT NULL,
    is_correct boolean,
    points integer,
    text character varying(255),
    question_id bigint
);
    DROP TABLE public.answers;
       public         heap    postgres    false            ?            1259    50231    ceos    TABLE     `   CREATE TABLE public.ceos (
    id bigint NOT NULL,
    company_id bigint,
    user_id bigint
);
    DROP TABLE public.ceos;
       public         heap    postgres    false            ?            1259    50234 	   companies    TABLE     ?   CREATE TABLE public.companies (
    id bigint NOT NULL,
    about character varying(255) NOT NULL,
    image_url character varying(255),
    location character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.companies;
       public         heap    postgres    false            ?            1259    50240    company_pictures    TABLE     /  CREATE TABLE public.company_pictures (
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
       public         heap    postgres    false            ?            1259    50246    cvs    TABLE     ?   CREATE TABLE public.cvs (
    id bigint NOT NULL,
    file_name character varying(255) NOT NULL,
    is_current boolean,
    user_id bigint
);
    DROP TABLE public.cvs;
       public         heap    postgres    false            ?            1259    50249    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            ?            1259    50251    hr_alert    TABLE     ?   CREATE TABLE public.hr_alert (
    id bigint NOT NULL,
    read boolean,
    announcement_id bigint,
    test_participant_id bigint,
    user_id bigint
);
    DROP TABLE public.hr_alert;
       public         heap    postgres    false            ?            1259    50254    hr_users    TABLE     d   CREATE TABLE public.hr_users (
    id bigint NOT NULL,
    company_id bigint,
    user_id bigint
);
    DROP TABLE public.hr_users;
       public         heap    postgres    false            ?            1259    50257    mailing    TABLE     _   CREATE TABLE public.mailing (
    id bigint NOT NULL,
    mailing_new_quiz boolean NOT NULL
);
    DROP TABLE public.mailing;
       public         heap    postgres    false            ?            1259    50260    profile_pictures    TABLE     ?   CREATE TABLE public.profile_pictures (
    id bigint NOT NULL,
    file_name character varying(255) NOT NULL,
    is_current boolean,
    user_id bigint
);
 $   DROP TABLE public.profile_pictures;
       public         heap    postgres    false            ?            1259    50263 	   questions    TABLE     ?   CREATE TABLE public.questions (
    id bigint NOT NULL,
    image bytea,
    text character varying(255),
    test_id bigint
);
    DROP TABLE public.questions;
       public         heap    postgres    false            ?            1259    50269    test_participant    TABLE       CREATE TABLE public.test_participant (
    id bigint NOT NULL,
    test_code character varying(255),
    current_question_number bigint,
    read boolean,
    start_quiz_time_in_milis bigint,
    announcement_id bigint,
    test_id bigint,
    user_id bigint
);
 $   DROP TABLE public.test_participant;
       public         heap    postgres    false            ?            1259    50272 	   test_type    TABLE     [   CREATE TABLE public.test_type (
    id bigint NOT NULL,
    name character varying(255)
);
    DROP TABLE public.test_type;
       public         heap    postgres    false            ?            1259    50275    tests    TABLE     ?  CREATE TABLE public.tests (
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
       public         heap    postgres    false            ?            1259    50278    user_answers    TABLE     ?   CREATE TABLE public.user_answers (
    id bigint NOT NULL,
    answer_id bigint,
    question_id bigint,
    test_id bigint,
    user_id bigint
);
     DROP TABLE public.user_answers;
       public         heap    postgres    false            ?            1259    50281    users    TABLE     ?  CREATE TABLE public.users (
    id bigint NOT NULL,
    avatar character varying(255),
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
       public         heap    postgres    false            ?          0    50219    account_types 
   TABLE DATA           ?   COPY public.account_types (id, role_id, role_name) FROM stdin;
    public          postgres    false    202   ?i       ?          0    50222    announcements 
   TABLE DATA           W   COPY public.announcements (id, description, title, company_id, hr_user_id) FROM stdin;
    public          postgres    false    203   'j       ?          0    50228    answers 
   TABLE DATA           L   COPY public.answers (id, is_correct, points, text, question_id) FROM stdin;
    public          postgres    false    204   &k       ?          0    50231    ceos 
   TABLE DATA           7   COPY public.ceos (id, company_id, user_id) FROM stdin;
    public          postgres    false    205   ?n       ?          0    50234 	   companies 
   TABLE DATA           I   COPY public.companies (id, about, image_url, location, name) FROM stdin;
    public          postgres    false    206   ?n       ?          0    50240    company_pictures 
   TABLE DATA           ~   COPY public.company_pictures (id, background_pic, first_pic, is_current, logo, second_pic, third_pic, company_id) FROM stdin;
    public          postgres    false    207   7p       ?          0    50246    cvs 
   TABLE DATA           A   COPY public.cvs (id, file_name, is_current, user_id) FROM stdin;
    public          postgres    false    208   Tp       ?          0    50251    hr_alert 
   TABLE DATA           [   COPY public.hr_alert (id, read, announcement_id, test_participant_id, user_id) FROM stdin;
    public          postgres    false    210   ?p       ?          0    50254    hr_users 
   TABLE DATA           ;   COPY public.hr_users (id, company_id, user_id) FROM stdin;
    public          postgres    false    211   $q       ?          0    50257    mailing 
   TABLE DATA           7   COPY public.mailing (id, mailing_new_quiz) FROM stdin;
    public          postgres    false    212   Sq       ?          0    50260    profile_pictures 
   TABLE DATA           N   COPY public.profile_pictures (id, file_name, is_current, user_id) FROM stdin;
    public          postgres    false    213   ?q       ?          0    50263 	   questions 
   TABLE DATA           =   COPY public.questions (id, image, text, test_id) FROM stdin;
    public          postgres    false    214   ?q       ?          0    50269    test_participant 
   TABLE DATA           ?   COPY public.test_participant (id, test_code, current_question_number, read, start_quiz_time_in_milis, announcement_id, test_id, user_id) FROM stdin;
    public          postgres    false    215   ?t       ?          0    50272 	   test_type 
   TABLE DATA           -   COPY public.test_type (id, name) FROM stdin;
    public          postgres    false    216   ?u       ?          0    50275    tests 
   TABLE DATA           ?   COPY public.tests (id, end_date, is_active, is_open_for_everyone, is_possible_to_back, name, start_date, time_for_test_in_milis, company_id, test_type_id, user_hr_id) FROM stdin;
    public          postgres    false    217   ?u       ?          0    50278    user_answers 
   TABLE DATA           T   COPY public.user_answers (id, answer_id, question_id, test_id, user_id) FROM stdin;
    public          postgres    false    218   lv       ?          0    50281    users 
   TABLE DATA           ?   COPY public.users (id, avatar, email, first_name, is_active, login, middle_name, password, phone_number, surname, role_id, mailing_id) FROM stdin;
    public          postgres    false    219   ?v       ?           0    0    hibernate_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hibernate_sequence', 315, true);
          public          postgres    false    209            ?
           2606    50288     account_types account_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.account_types
    ADD CONSTRAINT account_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.account_types DROP CONSTRAINT account_types_pkey;
       public            postgres    false    202            ?
           2606    50290     announcements announcements_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.announcements DROP CONSTRAINT announcements_pkey;
       public            postgres    false    203            ?
           2606    50292    answers answers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_pkey;
       public            postgres    false    204            ?
           2606    50294    ceos ceos_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT ceos_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.ceos DROP CONSTRAINT ceos_pkey;
       public            postgres    false    205            ?
           2606    50296    companies companies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.companies DROP CONSTRAINT companies_pkey;
       public            postgres    false    206            ?
           2606    50298 &   company_pictures company_pictures_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.company_pictures
    ADD CONSTRAINT company_pictures_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.company_pictures DROP CONSTRAINT company_pictures_pkey;
       public            postgres    false    207            ?
           2606    50300    cvs cvs_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.cvs
    ADD CONSTRAINT cvs_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.cvs DROP CONSTRAINT cvs_pkey;
       public            postgres    false    208            ?
           2606    50302    hr_alert hr_alert_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hr_alert
    ADD CONSTRAINT hr_alert_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.hr_alert DROP CONSTRAINT hr_alert_pkey;
       public            postgres    false    210            ?
           2606    50304    hr_users hr_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT hr_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT hr_users_pkey;
       public            postgres    false    211            ?
           2606    50306    mailing mailing_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.mailing
    ADD CONSTRAINT mailing_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.mailing DROP CONSTRAINT mailing_pkey;
       public            postgres    false    212            ?
           2606    50308 &   profile_pictures profile_pictures_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.profile_pictures
    ADD CONSTRAINT profile_pictures_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.profile_pictures DROP CONSTRAINT profile_pictures_pkey;
       public            postgres    false    213            ?
           2606    50310    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    214            ?
           2606    50312 &   test_participant test_participant_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT test_participant_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT test_participant_pkey;
       public            postgres    false    215            ?
           2606    50314    test_type test_type_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.test_type
    ADD CONSTRAINT test_type_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.test_type DROP CONSTRAINT test_type_pkey;
       public            postgres    false    216            ?
           2606    50316    tests tests_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_pkey;
       public            postgres    false    217            ?
           2606    50318 "   users uk_6dotkott2kjsp8vw4d0m25fb7 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);
 L   ALTER TABLE ONLY public.users DROP CONSTRAINT uk_6dotkott2kjsp8vw4d0m25fb7;
       public            postgres    false    219            ?
           2606    50320 "   users uk_ow0gan20590jrb00upg3va2fn 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_ow0gan20590jrb00upg3va2fn UNIQUE (login);
 L   ALTER TABLE ONLY public.users DROP CONSTRAINT uk_ow0gan20590jrb00upg3va2fn;
       public            postgres    false    219            ?
           2606    50322    user_answers user_answers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT user_answers_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT user_answers_pkey;
       public            postgres    false    218            ?
           2606    50324    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    219            ?
           2606    50325 #   announcements fkannouncementcompany    FK CONSTRAINT     ?   ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT fkannouncementcompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 M   ALTER TABLE ONLY public.announcements DROP CONSTRAINT fkannouncementcompany;
       public          postgres    false    206    203    2765            ?
           2606    50330 "   announcements fkannouncementhruser    FK CONSTRAINT     ?   ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT fkannouncementhruser FOREIGN KEY (hr_user_id) REFERENCES public.hr_users(id);
 L   ALTER TABLE ONLY public.announcements DROP CONSTRAINT fkannouncementhruser;
       public          postgres    false    211    203    2773            ?
           2606    50335 !   user_answers fkansweriduseranswer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkansweriduseranswer FOREIGN KEY (answer_id) REFERENCES public.answers(id);
 K   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkansweriduseranswer;
       public          postgres    false    218    204    2761            ?
           2606    50340    answers fkanswerquestion    FK CONSTRAINT        ALTER TABLE ONLY public.answers
    ADD CONSTRAINT fkanswerquestion FOREIGN KEY (question_id) REFERENCES public.questions(id);
 B   ALTER TABLE ONLY public.answers DROP CONSTRAINT fkanswerquestion;
       public          postgres    false    2779    204    214            ?
           2606    50345    ceos fkceocompany    FK CONSTRAINT     w   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT fkceocompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 ;   ALTER TABLE ONLY public.ceos DROP CONSTRAINT fkceocompany;
       public          postgres    false    206    205    2765            ?
           2606    50350    ceos fkceouser    FK CONSTRAINT     m   ALTER TABLE ONLY public.ceos
    ADD CONSTRAINT fkceouser FOREIGN KEY (user_id) REFERENCES public.users(id);
 8   ALTER TABLE ONLY public.ceos DROP CONSTRAINT fkceouser;
       public          postgres    false    219    205    2793            ?
           2606    50355    cvs fkcvuser    FK CONSTRAINT     k   ALTER TABLE ONLY public.cvs
    ADD CONSTRAINT fkcvuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 6   ALTER TABLE ONLY public.cvs DROP CONSTRAINT fkcvuser;
       public          postgres    false    219    208    2793            ?
           2606    50360    hr_alert fkhralertannouncement    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hr_alert
    ADD CONSTRAINT fkhralertannouncement FOREIGN KEY (announcement_id) REFERENCES public.announcements(id);
 H   ALTER TABLE ONLY public.hr_alert DROP CONSTRAINT fkhralertannouncement;
       public          postgres    false    203    210    2759            ?
           2606    50365 !   hr_alert fkhralerttestparticipant    FK CONSTRAINT     ?   ALTER TABLE ONLY public.hr_alert
    ADD CONSTRAINT fkhralerttestparticipant FOREIGN KEY (test_participant_id) REFERENCES public.test_participant(id);
 K   ALTER TABLE ONLY public.hr_alert DROP CONSTRAINT fkhralerttestparticipant;
       public          postgres    false    2781    210    215            ?
           2606    50370    hr_alert fkhralertuser    FK CONSTRAINT     u   ALTER TABLE ONLY public.hr_alert
    ADD CONSTRAINT fkhralertuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 @   ALTER TABLE ONLY public.hr_alert DROP CONSTRAINT fkhralertuser;
       public          postgres    false    219    2793    210            ?
           2606    50375    hr_users fkhrusercompany    FK CONSTRAINT     ~   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT fkhrusercompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 B   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT fkhrusercompany;
       public          postgres    false    211    2765    206            ?
           2606    50380    hr_users fkhruseruser    FK CONSTRAINT     t   ALTER TABLE ONLY public.hr_users
    ADD CONSTRAINT fkhruseruser FOREIGN KEY (user_id) REFERENCES public.users(id);
 ?   ALTER TABLE ONLY public.hr_users DROP CONSTRAINT fkhruseruser;
       public          postgres    false    211    2793    219            ?
           2606    50385 "   company_pictures fkpicturescompany    FK CONSTRAINT     ?   ALTER TABLE ONLY public.company_pictures
    ADD CONSTRAINT fkpicturescompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 L   ALTER TABLE ONLY public.company_pictures DROP CONSTRAINT fkpicturescompany;
       public          postgres    false    207    206    2765            ?
           2606    50390 %   profile_pictures fkprofilepictureuser    FK CONSTRAINT     ?   ALTER TABLE ONLY public.profile_pictures
    ADD CONSTRAINT fkprofilepictureuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 O   ALTER TABLE ONLY public.profile_pictures DROP CONSTRAINT fkprofilepictureuser;
       public          postgres    false    2793    219    213            ?
           2606    50395 #   user_answers fkquestioniduseranswer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkquestioniduseranswer FOREIGN KEY (question_id) REFERENCES public.questions(id);
 M   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkquestioniduseranswer;
       public          postgres    false    2779    214    218            ?
           2606    50400    questions fkquestiontest    FK CONSTRAINT     w   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fkquestiontest FOREIGN KEY (test_id) REFERENCES public.tests(id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT fkquestiontest;
       public          postgres    false    217    2785    214            ?
           2606    50405 #   test_participant fktestannouncement    FK CONSTRAINT     ?   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT fktestannouncement FOREIGN KEY (announcement_id) REFERENCES public.announcements(id);
 M   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT fktestannouncement;
       public          postgres    false    215    203    2759            ?
           2606    50410    test_participant fktestcodetest    FK CONSTRAINT     ~   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT fktestcodetest FOREIGN KEY (test_id) REFERENCES public.tests(id);
 I   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT fktestcodetest;
       public          postgres    false    217    2785    215            ?
           2606    50415    tests fktestcodetest    FK CONSTRAINT     |   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestcodetest FOREIGN KEY (test_type_id) REFERENCES public.test_type(id);
 >   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestcodetest;
       public          postgres    false    2783    216    217            ?
           2606    50420    test_participant fktestcodeuser    FK CONSTRAINT     ~   ALTER TABLE ONLY public.test_participant
    ADD CONSTRAINT fktestcodeuser FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.test_participant DROP CONSTRAINT fktestcodeuser;
       public          postgres    false    2793    219    215            ?
           2606    50425    tests fktestcompany    FK CONSTRAINT     y   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestcompany FOREIGN KEY (company_id) REFERENCES public.companies(id);
 =   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestcompany;
       public          postgres    false    2765    217    206                        2606    50430    user_answers fktestiduseranswer    FK CONSTRAINT     ~   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fktestiduseranswer FOREIGN KEY (test_id) REFERENCES public.tests(id);
 I   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fktestiduseranswer;
       public          postgres    false    217    2785    218            ?
           2606    50435    tests fktestuserhr    FK CONSTRAINT     t   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fktestuserhr FOREIGN KEY (user_hr_id) REFERENCES public.users(id);
 <   ALTER TABLE ONLY public.tests DROP CONSTRAINT fktestuserhr;
       public          postgres    false    2793    217    219                       2606    50440    users fkuseraccounttypes    FK CONSTRAINT        ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkuseraccounttypes FOREIGN KEY (role_id) REFERENCES public.account_types(id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT fkuseraccounttypes;
       public          postgres    false    219    202    2757                       2606    50445    user_answers fkuseriduseranswer    FK CONSTRAINT     ~   ALTER TABLE ONLY public.user_answers
    ADD CONSTRAINT fkuseriduseranswer FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.user_answers DROP CONSTRAINT fkuseriduseranswer;
       public          postgres    false    219    218    2793                       2606    50450    users fkusermailing    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkusermailing FOREIGN KEY (mailing_id) REFERENCES public.mailing(id);
 =   ALTER TABLE ONLY public.users DROP CONSTRAINT fkusermailing;
       public          postgres    false    212    219    2775            ?   C   x?3?4?LL????2?4?LN??2?4?,-N-?2?4??(???M9ML-??9???+C*?b???? ???      ?   ?   x???=N?@?k?? ??r 
?QP?Lv'?H?Y?3?H?܍{?F?KI?~?'??a?9??3#???}?
woW?鮛???q?a?ϐ?ꌘS.0q??> d5?^(?"D?$>?YQ?YC5??(?&B???x?????/????kl?Ӛ?.?ƕۊ???X??(-?:⥦??s??۪3???&/?{
???ִ?KD??򀥰K??7=?U????A?R?O~????5?c????ʟ?      ?   ?  x??U???F???X?=? R"%??? II?iF䞼??K,?c???????u??????@8???*43?|??Lvite?/??븎?]?Hvk?V?_T?2?6N???c?S'?y0d???<?g??Nר??H
?
CZ+??5??s??^VŉP?X)IgIKv,???????????Y+.????y?t??M??c*3??R???,UI?)????!?]??W?m?k?h?????P?1?|?w?-Y??=u?}??)w?k9?y?d,??e@m????????i???	r??????A???t??5>?w???U?S?L?(?f?2|$ߩ?b&Xlbhw?4Y9L?r?d???????I?vطFp?0\
??$????N?v??$3c?U?E???0u~??׬җOG?^?Ʋna߻x?j?q?/??7?+猩???Ď8{C?[2?%a5=?`-y?~???F?
Y?Ù??1?!??yU
ُlp@5??-??e??o?eW??	2W'{!????p??I???4N? k%?n\??A??0r?;꾬???Fw?l??V?H?6??7"N?N??Ax???i?H????S??$??E?m ?K?9r??????4?V???K?%?.?[?W]?h?v?}'???oA!B?l*????ՒU???/??/???o??Ѷ?????%???????>??$?g??k???3?,??+?~b?w?????q???T+CG???6??N?l?	/v0????X?9շ???j??j????A???r???c??L?
?z?=?K?eo?T??0?L???Xi??9'L???6^??A7՞?x??J????i?V?*%g??;}?? ?cJ?,J3d?eA^9w??|??~$y?o??C?&????之 ?e???????{Ff??o??W????      ?      x?32?42???22?42?4??????? %?      ?   7  x?m??N?0???)????芄?k??}m?I|???rƊ<?1X?Hދk@ba???????j9{|?}L??D!Bb?Cor	6RC`%DLf??K?x?;_??;?n???}8????ɰ^, ?????U????G?`p????=1???D}j?a?*?g?hN?j?%`?=Y?{?M.g???C͉??/V7?S??1?JR?&?뿩??ع??C?}??G?5o<)?\߮?Z??lV?k[?????}?)+h6ܷr܆6^G??;?I|???/?4@e?r??[8?ں?a?Su9?M?*Ŷ,??e}??      ?      x?????? ? ?      ?   j   x??Q? ?o?eyXz OaҠ,?	??n???A*?P=7??|?q̯n?2?6?1k???x?4 ?$\??????n̫+Y?K?J????vD
 x9[7j??>k?TKd      ?   F   x?-??? C?s2L x?N??_(?y?6???f(?#?)?ďe??zM?f??Q7nqe???      ?      x?32?42?44?22?42?44?????? )=      ?   1   x?3?,?2b3 ? bCa"@ qC??H???460?1z\\\ s?b      ?      x?????? ? ?      ?   5  x??TMo?6<ۿ?a?????8=l/E?,|?%?y??G?R???o0?3r?-??ꐖ??m?e?q޼?!???l????
eX????J);f
?5>(?M'u?H????
E?l?ě??{????z1_??F??B???)˚??8]cӻ?O??-?M?W?X?s??T????;|????B?????о?????????ćWM~|?N?)?,H?)??7??x?<?oX??n'??7**?C?MK??]?* ZVobX??+ a?~e??Z?6@?Z?W???G? ?????m{?N ?4???e?jۓ7蚫??a*[?bُB?c}s+>`?TTI??¦F ?k?%g????R?&?l?r???	?2b?!y?'?B?v?I?RՆ)c????w?C?kxd???m.Tjd???zg [?`aL??:?$??1?@U?j??Dk?
?)?FU}%?5?Vˏ??*?????X?????-u?cf??zO&%?8??. ?Q?H%??YW:.?g?	????B???٤?qC??[P68
ѿ??0?J?2?ժ?CD??p?{h7>?`??Τ獭?ʰmE?ސSe??3????y?+?}u??OG??I????S?H$rO??c??ߪ??t*????`ڠx'^
??,?j"???H??????ac??2=>?????¶o(O?Bd?????i?ҭ?+m?xM?????????72=5K?%*Ѫ?q?"?hd?ױ?????k#?x_]!/??Ju???U?q?6????;hZ.dvT{?=??*???:??I??to??f??s???]?V?,^|mq?7g???_ӹ:&      ?   ?   x?U?A
B1??uz?L???.????oo??S?|?a????????3	?g?J??j?usvۺh????u??p?\??ܰ??[j??!???n9????f??V????O?
??.*???+?r?S)?	'<3?      ?      x?????? ? ?      ?   ?   x?}?Q
?0@??S??????a?J?:??qmg????8d??H?{$?9'Չx?LY݂???-ׂ?h?1???i?8?|
"?X???b%8????V%???????`?*???*Q3????JP?/?\q?s?3hY?}?^[??ُC?lq4?ͽ?b?/??$???/.??jG)}<?`|      ?   h   x?U???0?a?
??]??5M?҇%8??1??!??9sml4?d????? ź????1??'?????d?/??,?iy???.????u:????CD??&?      ?   ?  x?]T?v?J}n?#τ?*oA?7PTD?+/M?"r!y?u?b?'?5j??????ڻ?v?@R%/??-0C? 
?(sTFt?ģ'?=?Q0?f??#???g{Vw'??I?к??O?????0?G ???̼A?%?!?3J?2#y?@?%??q?eI(???x?|?B̓??????A:X{?"[ef?7?!??Wg?^?2?4???Q0??'E?9??U??q?tLD0`??Q?QR???B?e??????0C????5?VK?w????d?S?c\??X7?k%l???+G5?\??/?Z??Y%????8?=(3jG]???"O.}C?>???wL?FɃ???d??,??د??N??zi??m???X?$?s??	*?fz?A?de@???~????c ?W]OL??"?9T8???'W?C셎67V?;?n???.?ۉ`?? cT?vm?e4?;=,?0b ?՛.N?G#L?챩??$C`?֕?L??Ă?W??:xΚ͙??k虮?&mc???]?":m?????"?镀??yzx???w?s??c?w?O???<Dvg?f?Y}q?{k??SR??n?0?{??EeukX??H?!??K?S"P?Q????+?????Adx????h?^???p[Qw?????????
;?ՂނW?V%??g7ک??98?????6~3????D??F??od??n???/|???IXnQ??#?m?me????o?Z?1{:N?Q\/#??s?Y???Ӊ@?????
$?1??"???Zq?<??W??E???Jk??JZ?1??q??܋2??]l??s??3tX?49&1??? ?j???M?<?d?=H{???C 18???H?k???e?1C7?L/? 5~Te??k?5Q?':?e{??U~?>?? **'???wO??2?z???     
PGDMP             
             {            ebdb    13.7    14.5     %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            (           1262    16402    ebdb    DATABASE     Y   CREATE DATABASE ebdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE ebdb;
                postgres    false            )           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    3            �            1259    16403    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false            �            1259    16406    comments    TABLE     '  CREATE TABLE public.comments (
    comment_id integer NOT NULL,
    place_id smallint,
    stars double precision,
    content character varying(255),
    rant boolean,
    author_id smallint,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.comments;
       public         heap    postgres    false            �            1259    16409    comments_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.comments_comment_id_seq;
       public          postgres    false    201            *           0    0    comments_comment_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.comments_comment_id_seq OWNED BY public.comments.comment_id;
          public          postgres    false    202            �            1259    16411    places    TABLE     [  CREATE TABLE public.places (
    place_id integer NOT NULL,
    name character varying(255),
    city character varying,
    state character varying(255),
    cuisines character varying(255),
    pic character varying(255),
    founded integer,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.places;
       public         heap    postgres    false            �            1259    16417    places_place_id_seq    SEQUENCE     �   CREATE SEQUENCE public.places_place_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.places_place_id_seq;
       public          postgres    false    203            +           0    0    places_place_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.places_place_id_seq OWNED BY public.places.place_id;
          public          postgres    false    204            �            1259    16419    users    TABLE     ;  CREATE TABLE public.users (
    user_id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    password_digest character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16425    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    205            ,           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    206            �           2604    16427    comments comment_id    DEFAULT     z   ALTER TABLE ONLY public.comments ALTER COLUMN comment_id SET DEFAULT nextval('public.comments_comment_id_seq'::regclass);
 B   ALTER TABLE public.comments ALTER COLUMN comment_id DROP DEFAULT;
       public          postgres    false    202    201            �           2604    16428    places place_id    DEFAULT     r   ALTER TABLE ONLY public.places ALTER COLUMN place_id SET DEFAULT nextval('public.places_place_id_seq'::regclass);
 >   ALTER TABLE public.places ALTER COLUMN place_id DROP DEFAULT;
       public          postgres    false    204    203            �           2604    16429    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    206    205                      0    16403    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    200   k                  0    16406    comments 
   TABLE DATA           q   COPY public.comments (comment_id, place_id, stars, content, rant, author_id, created_at, updated_at) FROM stdin;
    public          postgres    false    201   �                  0    16411    places 
   TABLE DATA           m   COPY public.places (place_id, name, city, state, cuisines, pic, founded, created_at, updated_at) FROM stdin;
    public          postgres    false    203   P$       !          0    16419    users 
   TABLE DATA           o   COPY public.users (user_id, first_name, last_name, email, created_at, updated_at, password_digest) FROM stdin;
    public          postgres    false    205   �0       -           0    0    comments_comment_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.comments_comment_id_seq', 29, true);
          public          postgres    false    202            .           0    0    places_place_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.places_place_id_seq', 34, true);
          public          postgres    false    204            /           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 18, true);
          public          postgres    false    206            �           2606    16431     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    200            �           2606    16433    comments comments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (comment_id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    201            �           2606    16435    places places_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (place_id);
 <   ALTER TABLE ONLY public.places DROP CONSTRAINT places_pkey;
       public            postgres    false    203            �           2606    16437    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    205               b   x�U�;� Dў�@�'��ņ�k�� ��������!M�ݵ���}a�M>����-��6�����qU�:ϼ�/  ��m�������|�)�͠�'��&         c  x�}U˒�8]���Y�b�*$!c���&�Լ6��&��$�$��|�\��4z6.̑�=�u�D�Ԫ
.���7C^���l�Y��9`�琋*g��,�y�?��d��.�!��܍�z���'h����^S��9��y}t}�m�5�eGg5<�`b�[�k�5�X<��q���J2*ʛ�7 ��lD�%E8w�N����)v����t�I*�OC�x���lY��r�ߠ�A䐱��h��/E�*��1gUg☔�_y$`����%��e�+��|��Iw��'�:l�������t3�0��k=q^R�tm��eu�L�UbO��B�B|��P���[��x{]�M�B���p�m���VBwi�ف�%�g]Bu"-Ͼ�1��k����,��Q�t�[)^B��S>�i2.��L��u����3c,� z�6"	,���b#�9D�È�5X	6;Y�,*V�;���س9�j�L����!�Em�a�
w ��|�j.�?��������7Xo��T��u��G@�n�+JQ��*v�P�3.��Z�<&Gn�5.q��N�SjZګѩ����]��E������c��A?�L>.;��������T��8�}�);�ƫi+!D��Ѐ�Y��?������b�j�g����w^C��ʓ}}�������,!���P�#4�ͪ��1E�j�5\K���كV�ࡗ#p2���M�{������2�����;��O��GD;�&6�;-6���=n%ej�1����>��O?&��}����5D8zSZ�߰�W%��&Jyw��-�rM9�H�˓{㸨�8���a8cr'���5?:	�XN�+��|���|��i         �  x��X�r�6�-?:�$mע(J�e�d<�H�#q,�I:��$D"&	 M+��;��r}�=��R\'�݉#[\�{��":\�J<o��*��x�����*Y�*�	)�\�h�0��\�N�*!�T���ڴs��I��X��0=�Ÿ�5�)��]�f�Y�ҸFd�T���`�]L��6��n�x"Q��D�����K�C[��	�u ^�N�jvE�T�x�6t�M�9S�̐U�OuC�8��M���t!3����V��j��u��:�E`4^qp�v�j���w$^��J7���B��t��*v��]�t�i�5M +cY�*�nξn1_���*iӣ���������ijw8e�T��rAb�QWS5�l�օ��E�x>
���t���j�zxk��¨j�uFKFa4��a4��a89���|�a�7C;�pp\�	7.�5�+A�`~nL-*%m�>,� &�Ӧލ�?"�8z�㜫�+L"r�j�� �@�S�VpT��m�b�nTCK트m��\�{?R )���ѭ�(�a`c���F�4�E� �i���J��	�@4M�|�&b���h�NG��x��i:�ű��y8U�h:�Ƒ�;H�����yz۝����������c�ۧ�棉|���u]`���6��=�_�P�/{�_�'��;<Ez6c
�c��<�x��.N�&珢8:��d�(�v�����q�,���__b��<oz�=��0�O�:}�(�K�=�Oï�f�0��h?�
l��D��L\���T����Ɖ+���v�R�v�X"@����U��)�ϭ)z����mtR(J�?��	\����,���Sum�Lr��F&7�LD	y�_)���%ا����;I��알Z	����F �a�ou��b�T��Z`�؜����m�M:�,�lgU�ZKk�m��(C�dhnM��Q^�pj��6[�m�*�T� X爳3\����J�7�>*�:����jչ������]�k,�����+-Dg*�Dm�5�U�-�cO�b�����|b52�T ��IZ�>���t�7�RW�D�tҿL6v��k��� ���U���Ha�eo���a^�ښ�T�nK��Rލ��0�?�����|�d��yyz���a8>�̃��!��2�MD�@��ŕxk5\y�r����Dot�3�Hq\�b��B4("��]��J�e�l��É@a�Z*L�IUϔ ��qp'����*�\�)TI��)o�a����k<����cN�2��5c�2���Wi<lUF��C��y��HUf�����S|��|�R�^1Db�b�B@�!� cT��؛���,���E�;��t����Ib,��yrr*��_�9�nwR"����f��8?��Sl�����6v#rl�rHN����A7H$�-m�d/U��?��I�OP�m�B_H"��M�f�H
]�V�P��;H?k� M��/�'VQ ��Fb� ��_*���o��N�JW8`+I3�"���B��o��R�׭�F�y��T�TFRXёb��p}ڏB��x���e��y2ӈY���̻�F�R �9�9	ޣ��6�xpD(k�eן}����		P���� =�D:xn��آ��im���8r���O�;�����ޤ�T�4,Zc]u'�2ҧ�Z���}	�sx�9�/!�|�:���LI8��£ũ��5��q�^�VBR,=�SIj8�_���!����e�Ig�g��q�%�� �f����KV�?��/���x�JL�>�\[�B� 4V)˛f�������F%��h;�w���|s��^o��m�f*d9�OP��lR0S��fV�$��$E��u;��7�4\����:\�.�) ��
\�xSO�t2o)�vc�"}�����jv2��>Iq�� KbT��s���@y���p� -���i�%Kb�|Xz���n���b������H�@l��%���%��K	v++J��"z�0�D��|�"�B�ڹ�GBp�����K�*������+."\��C�P��F���� ����$�Mǲᬵ�Sev�ۢ���Ä�e:ܠ�0T¨�v�Z��x/߽Y�}Oϰ}��Ē�)��ߎw��Te�V���L,�LEnYh}>'���>��r�D��Q�}e �Y�Z��~ �t�1���'�����%�����t����>�ܯ��˗��.�T\?L���l�0����a�ed'� BW21�8��Inpn�ؖQ���$��PG�m|o-}w����1!�跙�Od��B���6���ih?�� >B@l�ܣ{�/�@�P�j��m��;SKÞ,J�@,�_P��w	�1S7��W�S��iOwx��r��}hf	���@o���Hd�=9�x��=�� �qL�*�5wC��۾�D�8�M��,�k��}�q�n/��g��뫻g�y:
����d<��E{{��\p7G�W� f��Z��L����6->�߶�Z�H�������|z�?"7\���|�����u}]�Hdb�!�}�*`z8�N�����C��uh'�,IՓHkr*�n؈�_��#���D��|u���ёf�Q�f
n�o��͢�|�@�ii[ҳ^��`��4�R��W� �7MȞA�cJ��PD�4�"C���޽C��9�n�4�f���v�$\�~I�>�S`�F����+�څ�=.��[��B-!�OH��I���xk`N\ �ԋ5��X.hDG��Q({��;'(�χ`ۉI�P�Ij�WP���`UG�2�>�2nA@N[[s������h�		f0d��p�c��2�=�±S����RT���p��}w�jq�2��:�����t�w����|��wg�yl���W��f_���|�k�a�6_�����)ՇN�L	u��;9t����%c%�e����"��Dr��[����7�U��ƭ*U�{]�v=*��Ni�;�\��[��)�b����EV~%R8���w�'F��0$��m^��N6q�DoΈ�X	��[�[W�2tqQS&�J�U���<ִFJ�׬w�d�u�I��HPXS���%E����*Q�» ��fY�>W���M=E���fy�7�.ʝN��`p� �-(U����M
��lh7�GI4�V�(TQ4�Wq2��t��j6U��p<��a�H7Fe=��l4��~p?vp̓��/� ����A0�L��;;;��#	0      !   �  x�}�Is�8���x��"$���v C��TodP<�̿����U��W:���|uu$
�$e�pw,���?�$�9�f	 ��g����I��uD �����z"�FO�Қ�j�k�،�|�B��-y�x{.��5�g��g��]��\:��
�K���s�Ɯ?"�ϨΥ��cU�ʒ� �f5Hhî��̊��r���G
��i?�D�]�Ҽ;XX*������k�4��8h�
��n-^���=�|KE�N%�a��� �su�m�����z��[�#i�I�v����`9P5y ��_y���@��A�*0�:|�&�/X��e]B��#փ�`�⵼��҃!Rl�8x��m_���̷�y5�������`�L:+�zQ)��٩^T
�Z���t�ˏ�K���b]Ԡ��wX߭�I��j���Z0g��9�q���b�I����O�9<��J���k8L�"���`���m�>��϶/a������:[���d?Xٖ����m�%ǋjn/�ه���^g��rӁ��P=#�����X�������2��ֱ�贾'R?=Z5,w��ł�y���;ڽ�C��P*��{ߏZ������A�=cY��g10���@TK��ɟ��=Tѱ���w�az�̫�)�X��mvB>Պ��d�</���N�C�}���d:��*��F��3ϫ;��Ï��-���<X����knQ�峁Cr�KWѥ�u�p�1�P���洙��xW-k<�,�Uͥ ���o���}0���K�뿒�P����Q�V��ʐ���NԺ80���tj@����`�����$!s��*��ժ!+�l����4ӯd�E
�J���Y�JA��%��G��qR�h�F�N;�Q�&�YZ���Dt'*'N��cO�� ���     
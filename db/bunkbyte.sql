PGDMP         ;                 y            bunkbyte    10.2    10.2 ;    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       1262    333826    bunkbyte    DATABASE     �   CREATE DATABASE bunkbyte WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE bunkbyte;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1                        3079    335335    citext 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;
    DROP EXTENSION citext;
                  false    5                       0    0    EXTENSION citext    COMMENT     S   COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';
                       false    2                        3079    333836    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                  false    5                       0    0    EXTENSION postgis    COMMENT     g   COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';
                       false    3            �            1259    351936    agent    TABLE     �   CREATE TABLE agent (
    id integer NOT NULL,
    name character varying,
    designation character varying,
    mobile_no numeric(10,0),
    users_owner_id integer
);
    DROP TABLE public.agent;
       public         postgres    false    5            �            1259    351934    agent_id_seq    SEQUENCE     }   CREATE SEQUENCE agent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.agent_id_seq;
       public       postgres    false    223    5                       0    0    agent_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE agent_id_seq OWNED BY agent.id;
            public       postgres    false    222            �            1259    335537    land    TABLE     �  CREATE TABLE land (
    id integer NOT NULL,
    users_owner_id integer,
    total_area numeric,
    has_boundary boolean,
    municipality character varying,
    title_ownership character varying,
    title_nature character varying,
    is_khata_registered boolean,
    litigation_info character varying,
    is_documents_avail boolean,
    land_use_perm character varying,
    cons_approval json[],
    encumbrance boolean,
    tax_payment boolean,
    property_id integer
);
    DROP TABLE public.land;
       public         postgres    false    5            �            1259    335535    land_id_seq    SEQUENCE     |   CREATE SEQUENCE land_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.land_id_seq;
       public       postgres    false    5    216                       0    0    land_id_seq    SEQUENCE OWNED BY     -   ALTER SEQUENCE land_id_seq OWNED BY land.id;
            public       postgres    false    215            �            1259    351957    logistic_park    TABLE     �  CREATE TABLE logistic_park (
    id integer NOT NULL,
    land_area numeric(10,2),
    prop_built_area numeric(10,2),
    curr_built_area numeric(10,2),
    ratio_gb_area character varying,
    year_oper timestamp without time zone,
    land_appr character varying,
    area_bts numeric(10,2),
    area_rtm numeric(10,2),
    has_ca_security boolean,
    ca_security character varying,
    has_op_mtn_property boolean,
    op_mtn_property character varying,
    has_op_mtn_ca boolean,
    op_mtn_ca character varying,
    has_mtn_lg boolean,
    mtn_lg character varying,
    has_stp_wtp boolean,
    stp_wtp character varying,
    other_info character varying,
    users_owner_id integer,
    property_id integer
);
 !   DROP TABLE public.logistic_park;
       public         postgres    false    5            �            1259    351955    logistic_park_id_seq1    SEQUENCE     �   CREATE SEQUENCE logistic_park_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.logistic_park_id_seq1;
       public       postgres    false    5    225                       0    0    logistic_park_id_seq1    SEQUENCE OWNED BY     @   ALTER SEQUENCE logistic_park_id_seq1 OWNED BY logistic_park.id;
            public       postgres    false    224            �            1259    343744    property    TABLE     �   CREATE TABLE property (
    id integer NOT NULL,
    name character varying,
    photo json[],
    video character varying,
    location geometry,
    type integer,
    approach_road character varying,
    users_owner_id integer,
    agent_id integer
);
    DROP TABLE public.property;
       public         postgres    false    5    3    5    3    5    3    5    3    5    3    5    3    5    3    5    3    5            �            1259    343742    property_id_seq    SEQUENCE     �   CREATE SEQUENCE property_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.property_id_seq;
       public       postgres    false    219    5                       0    0    property_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE property_id_seq OWNED BY property.id;
            public       postgres    false    218            �            1259    343771    property_type    TABLE     T   CREATE TABLE property_type (
    id integer NOT NULL,
    name character varying
);
 !   DROP TABLE public.property_type;
       public         postgres    false    5            �            1259    343769    property_type_id_seq    SEQUENCE     �   CREATE SEQUENCE property_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.property_type_id_seq;
       public       postgres    false    5    221                       0    0    property_type_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE property_type_id_seq OWNED BY property_type.id;
            public       postgres    false    220            �            1259    335550    title_ownership_unused    TABLE     U   CREATE TABLE title_ownership_unused (
    id integer,
    title character varying
);
 *   DROP TABLE public.title_ownership_unused;
       public         postgres    false    5                       0    0    TABLE title_ownership_unused    COMMENT     f   COMMENT ON TABLE title_ownership_unused IS 'Use later to link title_ownership column of users_owner';
            public       postgres    false    217            �            1259    333829    users_owner    TABLE     �  CREATE TABLE users_owner (
    id integer NOT NULL,
    name character varying,
    email character varying,
    register_date timestamp without time zone DEFAULT now(),
    password character varying,
    mobile_no numeric(10,0),
    location geometry,
    oper_cities json[],
    registered_office character varying,
    tenants json[],
    secret_token character varying,
    jwt_token character varying,
    is_verified boolean DEFAULT false
);
    DROP TABLE public.users_owner;
       public         postgres    false    5    3    5    3    5    3    5    3    5    3    5    3    5    3    5    3    5            �            1259    333827    user_owner_id_seq    SEQUENCE     �   CREATE SEQUENCE user_owner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.user_owner_id_seq;
       public       postgres    false    5    199                       0    0    user_owner_id_seq    SEQUENCE OWNED BY     :   ALTER SEQUENCE user_owner_id_seq OWNED BY users_owner.id;
            public       postgres    false    198            �            1259    351985 	   warehouse    TABLE     #  CREATE TABLE warehouse (
    id integer NOT NULL,
    land_area numeric(20,2),
    built_area numeric(20,2),
    municipality character varying,
    year_oper timestamp without time zone,
    land_appr character varying,
    is_standalone boolean,
    logistic_park_id integer,
    space_avl character varying,
    area numeric(20,2),
    avail_date timestamp without time zone,
    carpet_area numeric(20,2),
    length numeric(20,2),
    breadth numeric(20,2),
    centre_height numeric,
    eave_height numeric,
    no_docks numeric,
    dock_height numeric,
    has_dock_lever boolean,
    floor_info character varying,
    building_type character varying,
    has_skylight boolean,
    skylight_type character varying,
    skylight_area json,
    has_fire_protect boolean,
    has_fire_detect boolean,
    park_area numeric(20,2),
    no_trucks_park numeric,
    no_charge_port numeric,
    no_power_outlet numeric,
    has_toilet boolean,
    has_office_space boolean,
    users_owner_id integer,
    property_id integer,
    has_charge_port boolean
);
    DROP TABLE public.warehouse;
       public         postgres    false    5            �            1259    351983    warehouse_id_seq    SEQUENCE     �   CREATE SEQUENCE warehouse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.warehouse_id_seq;
       public       postgres    false    5    227                       0    0    warehouse_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE warehouse_id_seq OWNED BY warehouse.id;
            public       postgres    false    226            q           2604    351939    agent id    DEFAULT     V   ALTER TABLE ONLY agent ALTER COLUMN id SET DEFAULT nextval('agent_id_seq'::regclass);
 7   ALTER TABLE public.agent ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    223    223            n           2604    335540    land id    DEFAULT     T   ALTER TABLE ONLY land ALTER COLUMN id SET DEFAULT nextval('land_id_seq'::regclass);
 6   ALTER TABLE public.land ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    216    216            r           2604    351960    logistic_park id    DEFAULT     g   ALTER TABLE ONLY logistic_park ALTER COLUMN id SET DEFAULT nextval('logistic_park_id_seq1'::regclass);
 ?   ALTER TABLE public.logistic_park ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    225    225            o           2604    343747    property id    DEFAULT     \   ALTER TABLE ONLY property ALTER COLUMN id SET DEFAULT nextval('property_id_seq'::regclass);
 :   ALTER TABLE public.property ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219            p           2604    343774    property_type id    DEFAULT     f   ALTER TABLE ONLY property_type ALTER COLUMN id SET DEFAULT nextval('property_type_id_seq'::regclass);
 ?   ALTER TABLE public.property_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    221    221            j           2604    333832    users_owner id    DEFAULT     a   ALTER TABLE ONLY users_owner ALTER COLUMN id SET DEFAULT nextval('user_owner_id_seq'::regclass);
 =   ALTER TABLE public.users_owner ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            s           2604    351988    warehouse id    DEFAULT     ^   ALTER TABLE ONLY warehouse ALTER COLUMN id SET DEFAULT nextval('warehouse_id_seq'::regclass);
 ;   ALTER TABLE public.warehouse ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    227    227                      0    351936    agent 
   TABLE DATA               J   COPY agent (id, name, designation, mobile_no, users_owner_id) FROM stdin;
    public       postgres    false    223   �E       �          0    335537    land 
   TABLE DATA               �   COPY land (id, users_owner_id, total_area, has_boundary, municipality, title_ownership, title_nature, is_khata_registered, litigation_info, is_documents_avail, land_use_perm, cons_approval, encumbrance, tax_payment, property_id) FROM stdin;
    public       postgres    false    216   �F                 0    351957    logistic_park 
   TABLE DATA               ;  COPY logistic_park (id, land_area, prop_built_area, curr_built_area, ratio_gb_area, year_oper, land_appr, area_bts, area_rtm, has_ca_security, ca_security, has_op_mtn_property, op_mtn_property, has_op_mtn_ca, op_mtn_ca, has_mtn_lg, mtn_lg, has_stp_wtp, stp_wtp, other_info, users_owner_id, property_id) FROM stdin;
    public       postgres    false    225   EJ       �          0    343744    property 
   TABLE DATA               l   COPY property (id, name, photo, video, location, type, approach_road, users_owner_id, agent_id) FROM stdin;
    public       postgres    false    219   �K                  0    343771    property_type 
   TABLE DATA               *   COPY property_type (id, name) FROM stdin;
    public       postgres    false    221   �R       i          0    334136    spatial_ref_sys 
   TABLE DATA               Q   COPY spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public       postgres    false    201   �R       �          0    335550    title_ownership_unused 
   TABLE DATA               4   COPY title_ownership_unused (id, title) FROM stdin;
    public       postgres    false    217   S       �          0    333829    users_owner 
   TABLE DATA               �   COPY users_owner (id, name, email, register_date, password, mobile_no, location, oper_cities, registered_office, tenants, secret_token, jwt_token, is_verified) FROM stdin;
    public       postgres    false    199   4S                 0    351985 	   warehouse 
   TABLE DATA               �  COPY warehouse (id, land_area, built_area, municipality, year_oper, land_appr, is_standalone, logistic_park_id, space_avl, area, avail_date, carpet_area, length, breadth, centre_height, eave_height, no_docks, dock_height, has_dock_lever, floor_info, building_type, has_skylight, skylight_type, skylight_area, has_fire_protect, has_fire_detect, park_area, no_trucks_park, no_charge_port, no_power_outlet, has_toilet, has_office_space, users_owner_id, property_id, has_charge_port) FROM stdin;
    public       postgres    false    227   ?Y                  0    0    agent_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('agent_id_seq', 29, true);
            public       postgres    false    222                       0    0    land_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('land_id_seq', 82, true);
            public       postgres    false    215                       0    0    logistic_park_id_seq1    SEQUENCE SET     =   SELECT pg_catalog.setval('logistic_park_id_seq1', 36, true);
            public       postgres    false    224                       0    0    property_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('property_id_seq', 192, true);
            public       postgres    false    218                       0    0    property_type_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('property_type_id_seq', 4, true);
            public       postgres    false    220                       0    0    user_owner_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('user_owner_id_seq', 54, true);
            public       postgres    false    198                       0    0    warehouse_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('warehouse_id_seq', 26, true);
            public       postgres    false    226            w           2606    335545    land land_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY land
    ADD CONSTRAINT land_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.land DROP CONSTRAINT land_pkey;
       public         postgres    false    216            u           2606    335434    users_owner users_owner_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY users_owner
    ADD CONSTRAINT users_owner_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.users_owner DROP CONSTRAINT users_owner_pkey;
       public         postgres    false    199               �   x�E��
�0E�7_�/I�<��AQ܌�b�T�}c�u�fq8���z����
n��!�
/�����\7f��h�+mL"4Nu�O�h�(��Z�j!��A7��P��v��݁ɕ�[$Ƞh둮k�tMwCL��2!����FΕ�'Oc4xM��"�fN?�ߑ�M�.��llF�      �   �  x���OO�0 �sާ�8�����Ø&Mh�]z�R"�%�!��\;�P����3�R	�ɯ��{N�P��Bm>���;�[,��ex�ȏ���M�/���u;��4\7���˶n�U7u~?ۼ��?]]����������^�?��O7n�ո�Z�����4tM7ݾ���������_O��lV��u�_{@z���.���n�t[ֱe����v�y[Xb�P����@����,�-8�#���Ȁ��0�`�f�L0$�"�,�-�*�����A�J��&l�R�\0,�]�G����@��!8i`kT UҠ��C0�z�p����A�d��ʐ�� ��qNu*t	ҥ��T�
䜎Ӛ*�����t*��B0���5,�].�,�@�p�b2.��R>GJmÃjU���Ҵ甇e���	� �rq�62А�R2&�5�9�j[S'l:f㎶7�-hN��hX�b�p�&qt:�3
t�
���kc��i�8v��l�0umׄsU��_��efX��O�)�t�@띕N`�ʖ���7�i�
{�S�%�L0$hG�`(�sO.|���_Aۆ�L�Tg�*\�L�T�*�q�k80iK�.7A���(�2��LLԵ�����paI��Ӝ��7aQew�qjA�>IXY9�?r�L�3�긏��C���r77,N_xpk��]g�V�T����,���1�C*�a釲��<�T|����ٟ����~�ڐ���O�����:����0��i��8Q8+��8��c`5q�N�<�<�W�\z�|����Gb(ba}��V�Z��9oR�u�I��R��	���&aq܃�/+ڍ��e��W!��l[c%�Ő|nz,R��������򐜩�m%������Jd���X�1�82� R����f�\\*X| ��VM�Z         �  x����j�0���?E^�Œ|��e�޵�^�fئ���e��WN2=K�����H��{��;9Ĥ����:*+�+�__��t�������JO-X���6���F�N��]?��;w����Ŧ������ޅ�bwc��@2�	�|�ބ�ma��0���r;29�y���I�����<k�ӊ�+�$ӓ���)�˕���v6� BqBq�5��G�B�0}�>�U#6�) oe��L��I �2�Lť���dǊ�`*Z�A�F�ۈ �Gړ�.����dp+R�S%�
�6�zp2"Ώ������׬V&@��Y���UG�X�m�1(�\}�֯���6,I�?��T�U,<�-ft�p3ܼ����?�2��h�;:�����c����������?	��<���g      �   �  x��Z�n�F}����S��!9׾��4i��A��@`�Fn��&n^��{Grb��JKjW�5:�rx�Cj�ۣ�gG_O�^\�^_~�*�~-���tuu������O>��~S��K����{�}ѻ��o�>������o������$�3����6R`;�J��L`'�3��8�B`Pj��,4̅1�L��������˛������z��H���U����=��:yoP+�S���T~?�>=h{���+������R8J��RJG�XJi�(]K)�k`)���t,�4p�����F��0J	��k`)��cs,-�8�y(e�dJ��3��f^^�_Vi����M&�La3�6�if��j|5� �lY+�0�lX+�.�lW+M��I��4Ij&IV����Y�J�a��&��f1�d�
V���,:�9?=?{}���.��f�CZac�2�x  X��ų"G�>|�_�4y)�Q��|{y�9�ޞ<���	�� �П\ޝ�>'{n���۫�*��,�7K�7˘a�`���W���%v��6vA�@z=��1	D���J���Y��w&��N��*Л\�"o'�J���rY}B�:�6��z�MHŕ^5����pٍӪ[bi*_�c�^+�T�V�h�R"�RNXM�*Q/3�������xզ�lDi�S����r�V��e|��i�heBKFQ1�2ֻ��Χ��郥*�><�vF5�ǐHU���}����1�UT�Lv��\�}�Rf�	&e�ԧŉ0�4�l3��*G����S�"7�I��}�C>m��"X�u"WYzx��t��HԸRi��4�q��mZ�J�)2�ƕ�Sd��Wڽ���$��4/�h��H ��Ғ���4dKVlkF�s�UM]���>y������nU��wʍұ�F�H��9O���jj>o�{��7af}G�S�ՠDA� Y
S�{Ӿד�ׇ�?}��+��u���i!bۺ&�:��x���}C�����Z)�\�}�t�.��]�d*���4���=ld*w�+��p��W<'f�A���4��]j�[�.5˭p�ָKMrkܥ�5�Rs�w�1n�����q�R_5�R��]J}ոK��
w1�U�ά�C���������y��O+�
4ޏ�tT�_Ge��-�Zۑ2V��a��A��O�;m3jU���fR_�[�RRm�Ը�6�|�I���͞��9�؃��<���	���`D$� �C�p��"��S�߾����ҪUh��o�B��[���k��MiK��¸��U0�ǕW�&n#�ТR�u���0>Ŕ�f��m�K���p��������c�T�]749���L,T�n�P�������j�Vhs'���G�"�-��\�ކ+c�ToC��.q�zZ\��+����V���[��n��A[��Flڂ6��l$1i.��W^���'�1Z2��������З%x�ƹ8T��;�U��.�*������{h�&74<��Y��ڌn��
͈�r��+�\�K�"K	�"��7���X7.�����������o���jd��ʶTdj{+K1&D ����r�\�Q9���%X����&Ʈ��"�?�Y�`��;�͇4>��m���s�iChn[�E;Y(?@���;i}�7j���l�s3�1&$hۚ��v�~ƾ��a�|Wcs���6F�	�6�͘�8?>>��&�          A   x�3���O�,.�L.VH,��2��I�K�2�.Һ�9�y�
�E���ũ\&�>H�=... ��      i      x������ � �      �      x������ � �      �   �  x���k��H�?ӿ�3��;tUq��"���Q�L2�& �.���NOg�v6�N�X�<���}뜢 �{>�z����M2�/v|���="0 ���8�Y�C�g�}��v�qn���	6�1�,Z�p{���������шoc����Zq�}5޼����ۢ�-7��y�%�j���LT��h$�A�g�/(������rx�'�E�l�u�.G��7Ɩ���R�[��5e>1���i�oSҘ�8�������d>��g����8��ɛ�l�A�	S��6������8\�P� �8 ��~�����W�c���n�r��CS�,5��5�'!����Za���^,Ӿ�����t
��TKz��Y�c����1W����F߮9\���Y;@Y��#,"��My��7���V!7㗅��!ilG� ����9`n꺇��$��{��!1@쀠q�ch�'����"����)�d�D���͜��gs�#�fA5�NN ���A@���(D$I�)��!GM�O�|���O����¾;��a�zn����[���Is,���׽� ���N�e-��ڝv��N؏=���١ʃ��hS�,��n~�e2[�^f�1�T��H]�x�."���wLN~�x��9���}��;Vʵ���(��)��cw#y���覤�I7��)c�Ǻw�!�5�r�ۈˁW���S�T �cGP�\�5 �R��@����;���.v�*�������(+<��;���Ɖ�w�����n��ʕ�R���đy��M�>�ꁛ�c�J�tfkv�EH�p�=dX D�9�bO�P�1�D����:��{�  �Et7K�m�T�M�Qr8&W��c��~j�1%J�X�6��Z�?��n�~�����^�����F�����p�_�[��irDG���x�lW^��0�}�-�J_�~Q�n�5�ʆsA�ײf�Y�J�t�������9��k2��@��b�����tXg��2���$��"3͋� C4���ej���� ��U�P�B�Zv#ʟrA�	PپUه�8mnU6Eb_� �P>�A�7���WA�$���w�C��y� #�U�^e
aj�bb�{�~�K?B8 ��8!ɾ���ڞ6#k��h,�H�RVŏ��!3ƹ|r�� �Q�3� ��g�+�d�2a'����
��Tw�~����`�R_�B��i�r�\o�T��ŞZ�ڈ3�ݩ�����y��t/_��[
qs
7��ՍbY��v2	UZK��h���x;��qyW��M�.J���,t�3RJ�-��H�eF�:�l����w�t�=(���6�<iܥ��a�x�W�r����L��Z+uɍ��X��
���l<���m{:xP���MC��M� �� !�f	���I^���2���������vl�ւ�Q�,��S/��Sg�n��[dd�f��N��"��#3�wȀ.F�{d:2�>8u�YG?m��� �v���~��킄 ��m��s������F           x�͖Mn�0���)r��)KE�I$Yf�E�
ڍ�Σ(K�(��#0E��i8|�C��ּ?�|��wo������}����<�ء����_���h���k���`H��_�(J����U�^��pD�[�����t'��G	��j������g~Zx]tPyStu����F�bH!m&�[���4RiiX��O��2N���j�.���������3 &k�<��`z'��2�n,,�ѐ�4�
1/��(��q	B�ڥ(��(B�,�yy{�]�	�F�>�����j�_��n��Y��
�PaUuw�2}����PT�d����=�
y'���n98}�)�+�#9-�g'Z��,ϬX<���"�M�a�w���;��(3#2�k�K����τ�PXB�:�֤��7�C�5��N��C%W,��V�Q�B�1�)%����Iv0�.�`��X�x�+˦�%b��Kd~8���4�p"�]�l���P�a�c��&�H��ۦi���{     
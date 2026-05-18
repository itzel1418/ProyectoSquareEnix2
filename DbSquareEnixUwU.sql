--
-- PostgreSQL database dump
--

\restrict sMZvSP5XFK8xsWFVWfSmus3YoaRsDLehRcUO0eRnaPCO35aQqvMXfosY2p1sM7T

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-05-16 21:40:59

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5211 (class 1262 OID 50710)
-- Name: SquareEnix; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "SquareEnix" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';


ALTER DATABASE "SquareEnix" OWNER TO postgres;

\unrestrict sMZvSP5XFK8xsWFVWfSmus3YoaRsDLehRcUO0eRnaPCO35aQqvMXfosY2p1sM7T
\connect "SquareEnix"
\restrict sMZvSP5XFK8xsWFVWfSmus3YoaRsDLehRcUO0eRnaPCO35aQqvMXfosY2p1sM7T

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 230 (class 1259 OID 50786)
-- Name: biblioteca; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.biblioteca (
    idbiblioteca integer NOT NULL,
    fechacompra date DEFAULT CURRENT_DATE,
    idvideojuego integer NOT NULL,
    idusuario integer NOT NULL
);


ALTER TABLE public.biblioteca OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 50785)
-- Name: biblioteca_idbiblioteca_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.biblioteca_idbiblioteca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.biblioteca_idbiblioteca_seq OWNER TO postgres;

--
-- TOC entry 5212 (class 0 OID 0)
-- Dependencies: 229
-- Name: biblioteca_idbiblioteca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.biblioteca_idbiblioteca_seq OWNED BY public.biblioteca.idbiblioteca;


--
-- TOC entry 228 (class 1259 OID 50772)
-- Name: carrito; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrito (
    idcarrito integer NOT NULL,
    idusuario integer NOT NULL
);


ALTER TABLE public.carrito OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 50771)
-- Name: carrito_idcarrito_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carrito_idcarrito_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.carrito_idcarrito_seq OWNER TO postgres;

--
-- TOC entry 5213 (class 0 OID 0)
-- Dependencies: 227
-- Name: carrito_idcarrito_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carrito_idcarrito_seq OWNED BY public.carrito.idcarrito;


--
-- TOC entry 224 (class 1259 OID 50745)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    idcategoria integer NOT NULL,
    nombrecategoria character varying(100) NOT NULL
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 50744)
-- Name: categoria_idcategoria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_idcategoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categoria_idcategoria_seq OWNER TO postgres;

--
-- TOC entry 5214 (class 0 OID 0)
-- Dependencies: 223
-- Name: categoria_idcategoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_idcategoria_seq OWNED BY public.categoria.idcategoria;


--
-- TOC entry 239 (class 1259 OID 50886)
-- Name: categoriavideojuego; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoriavideojuego (
    idcategoria integer NOT NULL,
    idvideojuego integer NOT NULL
);


ALTER TABLE public.categoriavideojuego OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 50849)
-- Name: comunidadvideojuegos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comunidadvideojuegos (
    idpublicacion integer NOT NULL,
    comentario character varying(255),
    imagen character varying(255),
    fechasubida date DEFAULT CURRENT_DATE,
    idusuario integer NOT NULL,
    idvideojuego integer NOT NULL
);


ALTER TABLE public.comunidadvideojuegos OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 50848)
-- Name: comunidadvideojuegos_idpublicacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comunidadvideojuegos_idpublicacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comunidadvideojuegos_idpublicacion_seq OWNER TO postgres;

--
-- TOC entry 5215 (class 0 OID 0)
-- Dependencies: 235
-- Name: comunidadvideojuegos_idpublicacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comunidadvideojuegos_idpublicacion_seq OWNED BY public.comunidadvideojuegos.idpublicacion;


--
-- TOC entry 243 (class 1259 OID 50926)
-- Name: detallecarrito; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detallecarrito (
    iddetallecarrito integer NOT NULL,
    cantidad integer NOT NULL,
    idcarrito integer NOT NULL,
    idvideojuego integer NOT NULL
);


ALTER TABLE public.detallecarrito OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 50925)
-- Name: detallecarrito_iddetallecarrito_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detallecarrito_iddetallecarrito_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.detallecarrito_iddetallecarrito_seq OWNER TO postgres;

--
-- TOC entry 5216 (class 0 OID 0)
-- Dependencies: 242
-- Name: detallecarrito_iddetallecarrito_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detallecarrito_iddetallecarrito_seq OWNED BY public.detallecarrito.iddetallecarrito;


--
-- TOC entry 241 (class 1259 OID 50904)
-- Name: detalleorden; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalleorden (
    iddetalle integer NOT NULL,
    cantidad integer NOT NULL,
    preciounitario numeric(10,2) NOT NULL,
    idorden integer NOT NULL,
    idvideojuego integer NOT NULL
);


ALTER TABLE public.detalleorden OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 50903)
-- Name: detalleorden_iddetalle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detalleorden_iddetalle_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.detalleorden_iddetalle_seq OWNER TO postgres;

--
-- TOC entry 5217 (class 0 OID 0)
-- Dependencies: 240
-- Name: detalleorden_iddetalle_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detalleorden_iddetalle_seq OWNED BY public.detalleorden.iddetalle;


--
-- TOC entry 234 (class 1259 OID 50829)
-- Name: favorito; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favorito (
    idfavorito integer NOT NULL,
    idvideojuego integer NOT NULL,
    idusuario integer NOT NULL
);


ALTER TABLE public.favorito OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 50828)
-- Name: favorito_idfavorito_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.favorito_idfavorito_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.favorito_idfavorito_seq OWNER TO postgres;

--
-- TOC entry 5218 (class 0 OID 0)
-- Dependencies: 233
-- Name: favorito_idfavorito_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.favorito_idfavorito_seq OWNED BY public.favorito.idfavorito;


--
-- TOC entry 238 (class 1259 OID 50872)
-- Name: imagenes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.imagenes (
    idimagen integer NOT NULL,
    idvideojuego integer NOT NULL,
    urlimagen character varying(255) NOT NULL
);


ALTER TABLE public.imagenes OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 50871)
-- Name: imagenes_idimagen_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.imagenes_idimagen_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.imagenes_idimagen_seq OWNER TO postgres;

--
-- TOC entry 5219 (class 0 OID 0)
-- Dependencies: 237
-- Name: imagenes_idimagen_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.imagenes_idimagen_seq OWNED BY public.imagenes.idimagen;


--
-- TOC entry 249 (class 1259 OID 50990)
-- Name: notificaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notificaciones (
    idnotificacion integer NOT NULL,
    titulo character varying(100) NOT NULL,
    mensaje character varying(255),
    esvista boolean DEFAULT false,
    idusuario integer NOT NULL,
    idticket integer
);


ALTER TABLE public.notificaciones OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 50989)
-- Name: notificaciones_idnotificacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notificaciones_idnotificacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.notificaciones_idnotificacion_seq OWNER TO postgres;

--
-- TOC entry 5220 (class 0 OID 0)
-- Dependencies: 248
-- Name: notificaciones_idnotificacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notificaciones_idnotificacion_seq OWNED BY public.notificaciones.idnotificacion;


--
-- TOC entry 226 (class 1259 OID 50756)
-- Name: orden; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orden (
    idorden integer NOT NULL,
    estadopago character varying(50) NOT NULL,
    fechacreacion date DEFAULT CURRENT_DATE,
    idusuario integer NOT NULL
);


ALTER TABLE public.orden OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 50755)
-- Name: orden_idorden_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orden_idorden_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orden_idorden_seq OWNER TO postgres;

--
-- TOC entry 5221 (class 0 OID 0)
-- Dependencies: 225
-- Name: orden_idorden_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orden_idorden_seq OWNED BY public.orden.idorden;


--
-- TOC entry 251 (class 1259 OID 51175)
-- Name: reportesadmin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reportesadmin (
    idreporte integer NOT NULL,
    tiporeporte character varying(100) NOT NULL,
    fechageneracion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    idadmin integer NOT NULL
);


ALTER TABLE public.reportesadmin OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 51174)
-- Name: reportesadmin_idreporte_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reportesadmin_idreporte_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reportesadmin_idreporte_seq OWNER TO postgres;

--
-- TOC entry 5222 (class 0 OID 0)
-- Dependencies: 250
-- Name: reportesadmin_idreporte_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reportesadmin_idreporte_seq OWNED BY public.reportesadmin.idreporte;


--
-- TOC entry 232 (class 1259 OID 50807)
-- Name: reseñas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."reseñas" (
    "idreseña" integer NOT NULL,
    titulo character varying(100),
    comentario character varying(255),
    calificacion integer NOT NULL,
    fechacreacion date DEFAULT CURRENT_DATE,
    idusuario integer NOT NULL,
    idvideojuego integer NOT NULL
);


ALTER TABLE public."reseñas" OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 50806)
-- Name: reseñas_idreseña_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."reseñas_idreseña_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."reseñas_idreseña_seq" OWNER TO postgres;

--
-- TOC entry 5223 (class 0 OID 0)
-- Dependencies: 231
-- Name: reseñas_idreseña_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."reseñas_idreseña_seq" OWNED BY public."reseñas"."idreseña";


--
-- TOC entry 247 (class 1259 OID 50962)
-- Name: ticketsoporte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketsoporte (
    idticket integer NOT NULL,
    asunto character varying(100) NOT NULL,
    descripcion character varying(255),
    tiposolicitud character varying(100),
    estado character varying(50) NOT NULL,
    idusuario integer NOT NULL,
    idorden integer,
    idvideojuego integer
);


ALTER TABLE public.ticketsoporte OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 50961)
-- Name: ticketsoporte_idticket_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketsoporte_idticket_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ticketsoporte_idticket_seq OWNER TO postgres;

--
-- TOC entry 5224 (class 0 OID 0)
-- Dependencies: 246
-- Name: ticketsoporte_idticket_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketsoporte_idticket_seq OWNED BY public.ticketsoporte.idticket;


--
-- TOC entry 245 (class 1259 OID 50947)
-- Name: transacciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transacciones (
    idtransaccion integer NOT NULL,
    estado character varying(50) NOT NULL,
    idorden integer NOT NULL
);


ALTER TABLE public.transacciones OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 50946)
-- Name: transacciones_idtransaccion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transacciones_idtransaccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transacciones_idtransaccion_seq OWNER TO postgres;

--
-- TOC entry 5225 (class 0 OID 0)
-- Dependencies: 244
-- Name: transacciones_idtransaccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transacciones_idtransaccion_seq OWNED BY public.transacciones.idtransaccion;


--
-- TOC entry 220 (class 1259 OID 50712)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    idusuario integer NOT NULL,
    nombreusuario character varying(100) NOT NULL,
    correo character varying(150) NOT NULL,
    "contraseñahash" character varying(255) NOT NULL,
    fecha_registro date DEFAULT CURRENT_DATE,
    rol character varying(50) NOT NULL,
    nombre character varying(100),
    apepat character varying(100),
    apemat character varying(100),
    codigoverificacion character varying(10),
    verificado boolean DEFAULT false,
    imagenurl character varying(255)
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 50711)
-- Name: usuario_idusuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_idusuario_seq OWNER TO postgres;

--
-- TOC entry 5226 (class 0 OID 0)
-- Dependencies: 219
-- Name: usuario_idusuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_idusuario_seq OWNED BY public.usuario.idusuario;


--
-- TOC entry 222 (class 1259 OID 50733)
-- Name: videojuegos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.videojuegos (
    idvideojuego integer NOT NULL,
    titulo character varying(100) NOT NULL,
    descripcion character varying(255),
    precio numeric(10,2) NOT NULL,
    fechalanzamiento date,
    desarrollador character varying(100),
    estado character varying(50),
    peso character varying(50),
    instaladorurl character varying(255),
    vistas integer DEFAULT 0
);


ALTER TABLE public.videojuegos OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 50732)
-- Name: videojuegos_idvideojuego_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.videojuegos_idvideojuego_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.videojuegos_idvideojuego_seq OWNER TO postgres;

--
-- TOC entry 5227 (class 0 OID 0)
-- Dependencies: 221
-- Name: videojuegos_idvideojuego_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.videojuegos_idvideojuego_seq OWNED BY public.videojuegos.idvideojuego;


--
-- TOC entry 4944 (class 2604 OID 50789)
-- Name: biblioteca idbiblioteca; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.biblioteca ALTER COLUMN idbiblioteca SET DEFAULT nextval('public.biblioteca_idbiblioteca_seq'::regclass);


--
-- TOC entry 4943 (class 2604 OID 50775)
-- Name: carrito idcarrito; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito ALTER COLUMN idcarrito SET DEFAULT nextval('public.carrito_idcarrito_seq'::regclass);


--
-- TOC entry 4940 (class 2604 OID 50748)
-- Name: categoria idcategoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN idcategoria SET DEFAULT nextval('public.categoria_idcategoria_seq'::regclass);


--
-- TOC entry 4949 (class 2604 OID 50852)
-- Name: comunidadvideojuegos idpublicacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comunidadvideojuegos ALTER COLUMN idpublicacion SET DEFAULT nextval('public.comunidadvideojuegos_idpublicacion_seq'::regclass);


--
-- TOC entry 4953 (class 2604 OID 50929)
-- Name: detallecarrito iddetallecarrito; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detallecarrito ALTER COLUMN iddetallecarrito SET DEFAULT nextval('public.detallecarrito_iddetallecarrito_seq'::regclass);


--
-- TOC entry 4952 (class 2604 OID 50907)
-- Name: detalleorden iddetalle; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalleorden ALTER COLUMN iddetalle SET DEFAULT nextval('public.detalleorden_iddetalle_seq'::regclass);


--
-- TOC entry 4948 (class 2604 OID 50832)
-- Name: favorito idfavorito; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorito ALTER COLUMN idfavorito SET DEFAULT nextval('public.favorito_idfavorito_seq'::regclass);


--
-- TOC entry 4951 (class 2604 OID 50875)
-- Name: imagenes idimagen; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imagenes ALTER COLUMN idimagen SET DEFAULT nextval('public.imagenes_idimagen_seq'::regclass);


--
-- TOC entry 4956 (class 2604 OID 50993)
-- Name: notificaciones idnotificacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notificaciones ALTER COLUMN idnotificacion SET DEFAULT nextval('public.notificaciones_idnotificacion_seq'::regclass);


--
-- TOC entry 4941 (class 2604 OID 50759)
-- Name: orden idorden; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden ALTER COLUMN idorden SET DEFAULT nextval('public.orden_idorden_seq'::regclass);


--
-- TOC entry 4958 (class 2604 OID 51178)
-- Name: reportesadmin idreporte; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reportesadmin ALTER COLUMN idreporte SET DEFAULT nextval('public.reportesadmin_idreporte_seq'::regclass);


--
-- TOC entry 4946 (class 2604 OID 50810)
-- Name: reseñas idreseña; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."reseñas" ALTER COLUMN "idreseña" SET DEFAULT nextval('public."reseñas_idreseña_seq"'::regclass);


--
-- TOC entry 4955 (class 2604 OID 50965)
-- Name: ticketsoporte idticket; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketsoporte ALTER COLUMN idticket SET DEFAULT nextval('public.ticketsoporte_idticket_seq'::regclass);


--
-- TOC entry 4954 (class 2604 OID 50950)
-- Name: transacciones idtransaccion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacciones ALTER COLUMN idtransaccion SET DEFAULT nextval('public.transacciones_idtransaccion_seq'::regclass);


--
-- TOC entry 4935 (class 2604 OID 50715)
-- Name: usuario idusuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN idusuario SET DEFAULT nextval('public.usuario_idusuario_seq'::regclass);


--
-- TOC entry 4938 (class 2604 OID 50736)
-- Name: videojuegos idvideojuego; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videojuegos ALTER COLUMN idvideojuego SET DEFAULT nextval('public.videojuegos_idvideojuego_seq'::regclass);


--
-- TOC entry 5184 (class 0 OID 50786)
-- Dependencies: 230
-- Data for Name: biblioteca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.biblioteca (idbiblioteca, fechacompra, idvideojuego, idusuario) FROM stdin;
1	2026-05-14	2	11
2	2026-05-15	16	11
\.


--
-- TOC entry 5182 (class 0 OID 50772)
-- Dependencies: 228
-- Data for Name: carrito; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrito (idcarrito, idusuario) FROM stdin;
1	2
2	3
3	4
4	5
5	6
6	7
7	11
\.


--
-- TOC entry 5178 (class 0 OID 50745)
-- Dependencies: 224
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria (idcategoria, nombrecategoria) FROM stdin;
1	RPG
2	JRPG
3	Acción-Aventura
4	ARPG
5	Mundo Abierto
6	Hack and Slash
7	Estrategia
8	Stealth
9	Survival Horror
10	Disparos
\.


--
-- TOC entry 5193 (class 0 OID 50886)
-- Dependencies: 239
-- Data for Name: categoriavideojuego; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoriavideojuego (idcategoria, idvideojuego) FROM stdin;
3	29
10	29
9	29
2	26
1	26
7	24
6	24
8	24
3	23
10	23
7	23
3	22
10	22
7	22
6	22
5	22
3	21
10	21
7	21
6	21
5	21
3	20
7	20
2	20
5	20
3	19
2	19
1	19
3	18
10	18
1	18
8	18
3	17
10	17
7	17
6	17
5	17
3	16
10	16
7	16
5	16
9	16
3	15
4	15
6	15
2	15
8	15
3	14
4	14
6	14
5	14
1	14
3	13
4	13
2	13
5	13
3	12
7	12
2	12
5	12
3	11
7	11
2	11
1	11
8	11
3	10
4	10
2	10
5	10
8	10
3	9
4	9
2	9
5	9
3	8
4	8
6	8
2	8
3	7
7	7
2	7
8	7
3	6
7	6
2	6
5	6
1	6
3	5
10	5
7	5
2	5
3	4
7	4
2	4
1	4
3	3
4	3
2	3
1	3
3	2
2	2
5	2
1	2
3	1
2	1
1	1
\.


--
-- TOC entry 5190 (class 0 OID 50849)
-- Dependencies: 236
-- Data for Name: comunidadvideojuegos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comunidadvideojuegos (idpublicacion, comentario, imagen, fechasubida, idusuario, idvideojuego) FROM stdin;
1	No pues esta chido	\N	2026-05-14	11	2
2	Excelente juego me diverti demasiado al pasarmelo al 100%.	/squareenix/recursos/subidas/comunidad/img_6a08ac27da6e60.79362008.jpg	2026-05-16	11	16
3	Tifa mi loba.	/squareenix/recursos/subidas/comunidad/img_6a08aceb9cae75.84381107.jpg	2026-05-16	11	2
\.


--
-- TOC entry 5197 (class 0 OID 50926)
-- Dependencies: 243
-- Data for Name: detallecarrito; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detallecarrito (iddetallecarrito, cantidad, idcarrito, idvideojuego) FROM stdin;
1	1	1	2
2	1	1	14
3	2	2	11
4	1	3	1
5	1	4	16
6	1	5	14
7	1	6	19
\.


--
-- TOC entry 5195 (class 0 OID 50904)
-- Dependencies: 241
-- Data for Name: detalleorden; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalleorden (iddetalle, cantidad, preciounitario, idorden, idvideojuego) FROM stdin;
1	1	59.99	1	27
2	1	29.99	2	30
3	1	29.99	3	30
4	1	29.99	4	30
5	1	69.99	5	2
6	1	59.99	6	26
7	1	59.99	7	16
8	1	59.99	8	23
\.


--
-- TOC entry 5188 (class 0 OID 50829)
-- Dependencies: 234
-- Data for Name: favorito; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.favorito (idfavorito, idvideojuego, idusuario) FROM stdin;
\.


--
-- TOC entry 5192 (class 0 OID 50872)
-- Dependencies: 238
-- Data for Name: imagenes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.imagenes (idimagen, idvideojuego, urlimagen) FROM stdin;
7	29	/squareenix/recursos/subidas/juegos/img_6a07b56bdd4632.04633543.jpg
13	29	/squareenix/recursos/subidas/juegos/img_6a07b58ae469e6.97374841.jpg
14	29	/squareenix/recursos/subidas/juegos/img_6a07b58ae555a4.06883061.jpg
15	29	/squareenix/recursos/subidas/juegos/img_6a07b58ae5dfa2.10290123.jpg
16	29	/squareenix/recursos/subidas/juegos/img_6a07b58ae65e51.33298412.jpg
17	29	/squareenix/recursos/subidas/juegos/img_6a07b58ae6d3d4.42394209.jpg
18	28	/squareenix/recursos/subidas/juegos/img_6a07b6518ea681.15998884.jpg
19	28	/squareenix/recursos/subidas/juegos/img_6a07b662b03b64.06462934.jpg
20	28	/squareenix/recursos/subidas/juegos/img_6a07b662b13bb4.65986954.jpg
21	28	/squareenix/recursos/subidas/juegos/img_6a07b662b1e674.63687463.jpg
22	28	/squareenix/recursos/subidas/juegos/img_6a07b662b26ad8.71286483.jpg
23	28	/squareenix/recursos/subidas/juegos/img_6a07b662b2fe80.31138983.jpg
24	27	/squareenix/recursos/subidas/juegos/img_6a07b88e400812.52346817.jpg
25	27	/squareenix/recursos/subidas/juegos/img_6a07b896bd3b62.18891547.jpg
26	27	/squareenix/recursos/subidas/juegos/img_6a07b896beaf59.61644888.jpg
27	27	/squareenix/recursos/subidas/juegos/img_6a07b896bf3224.88977857.jpg
28	27	/squareenix/recursos/subidas/juegos/img_6a07b896bfaff7.59912280.jpg
29	27	/squareenix/recursos/subidas/juegos/img_6a07b896c014f7.71586894.jpg
30	26	/squareenix/recursos/subidas/juegos/img_6a07b979bfb271.21946130.jpg
31	26	/squareenix/recursos/subidas/juegos/img_6a07b983559ff9.13926641.jpg
32	26	/squareenix/recursos/subidas/juegos/img_6a07b98356b2c6.70682364.jpg
33	26	/squareenix/recursos/subidas/juegos/img_6a07b983571f72.33510677.jpg
34	26	/squareenix/recursos/subidas/juegos/img_6a07b9835792c4.23525476.jpg
35	26	/squareenix/recursos/subidas/juegos/img_6a07b98357fcf3.55817506.jpg
36	25	/squareenix/recursos/subidas/juegos/img_6a07b9f54bb425.98243521.jpg
37	25	/squareenix/recursos/subidas/juegos/img_6a07b9fcd674a8.94909963.jpg
38	25	/squareenix/recursos/subidas/juegos/img_6a07b9fcd769f1.37585874.jpg
39	25	/squareenix/recursos/subidas/juegos/img_6a07b9fcd80179.84150468.jpg
40	25	/squareenix/recursos/subidas/juegos/img_6a07b9fcd88827.19538100.jpg
41	25	/squareenix/recursos/subidas/juegos/img_6a07b9fcd92aa2.82941082.jpg
42	24	/squareenix/recursos/subidas/juegos/img_6a07baefd585a0.72001147.jpg
43	24	/squareenix/recursos/subidas/juegos/img_6a07baf7219f59.88161686.jpg
44	24	/squareenix/recursos/subidas/juegos/img_6a07baf7229df4.26908159.jpg
45	24	/squareenix/recursos/subidas/juegos/img_6a07baf7232ce2.21365370.jpg
46	24	/squareenix/recursos/subidas/juegos/img_6a07baf7239812.14447616.jpg
47	24	/squareenix/recursos/subidas/juegos/img_6a07baf72410d6.89227740.jpg
48	23	/squareenix/recursos/subidas/juegos/img_6a07bb8b0c21e4.45801209.jpg
49	23	/squareenix/recursos/subidas/juegos/img_6a07bb99c3f613.91638413.jpg
50	23	/squareenix/recursos/subidas/juegos/img_6a07bb99c4ed00.30714546.jpg
51	23	/squareenix/recursos/subidas/juegos/img_6a07bb99c55518.23027325.jpg
52	23	/squareenix/recursos/subidas/juegos/img_6a07bb99c5b4f6.89365294.jpg
53	23	/squareenix/recursos/subidas/juegos/img_6a07bb99c60dc1.19788174.jpg
54	22	/squareenix/recursos/subidas/juegos/img_6a07bc1475cc42.44452469.jpg
55	22	/squareenix/recursos/subidas/juegos/img_6a07bc1dcc04c9.31017902.jpg
56	22	/squareenix/recursos/subidas/juegos/img_6a07bc1dcd0d54.99714925.jpg
57	22	/squareenix/recursos/subidas/juegos/img_6a07bc1dcd8980.72407283.jpg
58	22	/squareenix/recursos/subidas/juegos/img_6a07bc1dce17f5.70401312.jpg
59	22	/squareenix/recursos/subidas/juegos/img_6a07bc1dce98f5.77242860.jpg
60	21	/squareenix/recursos/subidas/juegos/img_6a07bcd1964317.74304634.jpg
61	21	/squareenix/recursos/subidas/juegos/img_6a07bcdc1cbfa7.67721529.jpg
62	21	/squareenix/recursos/subidas/juegos/img_6a07bcdc1d93f9.68808067.jpg
63	21	/squareenix/recursos/subidas/juegos/img_6a07bcdc1e08d3.68281141.jpg
64	21	/squareenix/recursos/subidas/juegos/img_6a07bcdc1e7430.99163800.jpg
65	21	/squareenix/recursos/subidas/juegos/img_6a07bcdc1eefc5.71032576.jpg
66	20	/squareenix/recursos/subidas/juegos/img_6a07bdadc6a8e3.52895770.jpg
67	20	/squareenix/recursos/subidas/juegos/img_6a07bdb7247256.34845684.jpg
68	20	/squareenix/recursos/subidas/juegos/img_6a07bdb7254491.55829570.jpg
69	20	/squareenix/recursos/subidas/juegos/img_6a07bdb725db55.18521146.jpg
70	20	/squareenix/recursos/subidas/juegos/img_6a07bdb7269024.67396186.jpg
71	20	/squareenix/recursos/subidas/juegos/img_6a07bdb72724e4.23302206.jpg
72	19	/squareenix/recursos/subidas/juegos/img_6a08960e170804.60216174.jpg
73	19	/squareenix/recursos/subidas/juegos/img_6a0896177bc8d9.14710411.jpg
74	19	/squareenix/recursos/subidas/juegos/img_6a0896177c9f10.43053376.jpg
75	19	/squareenix/recursos/subidas/juegos/img_6a0896177d4d39.37840569.jpg
76	19	/squareenix/recursos/subidas/juegos/img_6a0896177dc5b6.19601128.jpg
77	19	/squareenix/recursos/subidas/juegos/img_6a0896177e3656.96164037.jpg
78	18	/squareenix/recursos/subidas/juegos/img_6a0896bf9fd793.59854728.jpg
79	18	/squareenix/recursos/subidas/juegos/img_6a0896c6d83b28.23970141.jpg
80	18	/squareenix/recursos/subidas/juegos/img_6a0896c6d8f8a0.92987975.jpg
81	18	/squareenix/recursos/subidas/juegos/img_6a0896c6d988b7.24483016.jpg
82	18	/squareenix/recursos/subidas/juegos/img_6a0896c6d9f634.87810553.jpg
83	18	/squareenix/recursos/subidas/juegos/img_6a0896c6da7e69.54703278.jpg
84	17	/squareenix/recursos/subidas/juegos/img_6a089757e07b87.68442561.jpg
85	17	/squareenix/recursos/subidas/juegos/img_6a0897619c45c1.43780951.jpg
86	17	/squareenix/recursos/subidas/juegos/img_6a0897619d48e6.72117222.jpg
87	17	/squareenix/recursos/subidas/juegos/img_6a0897619e0402.60106986.jpg
88	17	/squareenix/recursos/subidas/juegos/img_6a0897619eef77.68075097.jpg
89	17	/squareenix/recursos/subidas/juegos/img_6a0897619f8bb1.49852880.jpg
90	16	/squareenix/recursos/subidas/juegos/img_6a08981a9f1dc7.02402714.jpg
91	16	/squareenix/recursos/subidas/juegos/img_6a0898222633f6.44750248.jpg
92	16	/squareenix/recursos/subidas/juegos/img_6a089822270256.87580042.jpg
93	16	/squareenix/recursos/subidas/juegos/img_6a08982227ae00.32522028.jpg
94	16	/squareenix/recursos/subidas/juegos/img_6a089822285cc3.62073817.jpg
95	16	/squareenix/recursos/subidas/juegos/img_6a08982228d454.97239848.jpg
96	15	/squareenix/recursos/subidas/juegos/img_6a0898a4e418b1.42009766.jpg
97	15	/squareenix/recursos/subidas/juegos/img_6a0898ac5f4d69.23191403.jpg
98	15	/squareenix/recursos/subidas/juegos/img_6a0898ac605386.49446187.jpg
99	15	/squareenix/recursos/subidas/juegos/img_6a0898ac60e5d1.68646291.jpg
100	15	/squareenix/recursos/subidas/juegos/img_6a0898ac616e34.89948967.jpg
101	15	/squareenix/recursos/subidas/juegos/img_6a0898ac61d060.92192430.jpg
102	14	/squareenix/recursos/subidas/juegos/img_6a089929893570.48158370.jpg
103	14	/squareenix/recursos/subidas/juegos/img_6a0899313246b1.12729057.jpg
104	14	/squareenix/recursos/subidas/juegos/img_6a0899313306b1.54172435.jpg
105	14	/squareenix/recursos/subidas/juegos/img_6a089931337bc0.64470496.jpg
106	14	/squareenix/recursos/subidas/juegos/img_6a089931340378.12671051.jpg
107	14	/squareenix/recursos/subidas/juegos/img_6a089931348b08.29429942.jpg
108	13	/squareenix/recursos/subidas/juegos/img_6a089afdd34c85.32401319.jpg
109	13	/squareenix/recursos/subidas/juegos/img_6a089b05516735.66644314.jpg
110	13	/squareenix/recursos/subidas/juegos/img_6a089b05525bf7.62813610.jpg
111	13	/squareenix/recursos/subidas/juegos/img_6a089b0552eab8.53737237.jpg
112	13	/squareenix/recursos/subidas/juegos/img_6a089b055379f1.46833199.jpg
113	13	/squareenix/recursos/subidas/juegos/img_6a089b055428f8.21937527.jpg
114	12	/squareenix/recursos/subidas/juegos/img_6a089bcba64d42.59749691.jpg
115	12	/squareenix/recursos/subidas/juegos/img_6a089bd4f02df9.71099982.jpg
116	12	/squareenix/recursos/subidas/juegos/img_6a089bd4f11e88.24191311.jpg
117	12	/squareenix/recursos/subidas/juegos/img_6a089bd4f1d7a0.85026219.jpg
118	12	/squareenix/recursos/subidas/juegos/img_6a089bd4f278c0.39161189.jpg
119	12	/squareenix/recursos/subidas/juegos/img_6a089bd4f2e3b1.20504156.jpg
120	11	/squareenix/recursos/subidas/juegos/img_6a089c5c646ba8.40805365.jpg
121	11	/squareenix/recursos/subidas/juegos/img_6a089c63e3baa9.14160175.jpg
122	11	/squareenix/recursos/subidas/juegos/img_6a089c63e4db13.95851788.jpg
123	11	/squareenix/recursos/subidas/juegos/img_6a089c63e58f96.14225014.jpg
124	11	/squareenix/recursos/subidas/juegos/img_6a089c63e605e0.79254072.jpg
125	11	/squareenix/recursos/subidas/juegos/img_6a089c63e69509.09605358.jpg
126	10	/squareenix/recursos/subidas/juegos/img_6a089d04545609.70465452.jpg
127	10	/squareenix/recursos/subidas/juegos/img_6a089d0caf5fc7.72141717.jpg
128	10	/squareenix/recursos/subidas/juegos/img_6a089d0cb03660.03123343.jpg
129	10	/squareenix/recursos/subidas/juegos/img_6a089d0cb0afa3.05755867.jpg
130	10	/squareenix/recursos/subidas/juegos/img_6a089d0cb11b06.36693292.jpg
131	10	/squareenix/recursos/subidas/juegos/img_6a089d0cb19644.05630103.jpg
132	9	/squareenix/recursos/subidas/juegos/img_6a089e302914e2.36112150.jpg
133	9	/squareenix/recursos/subidas/juegos/img_6a089e36eed683.46291889.jpg
134	9	/squareenix/recursos/subidas/juegos/img_6a089e36efd701.37918018.jpg
135	9	/squareenix/recursos/subidas/juegos/img_6a089e36f04682.00835874.jpg
136	9	/squareenix/recursos/subidas/juegos/img_6a089e36f0b141.36089068.jpg
137	9	/squareenix/recursos/subidas/juegos/img_6a089e36f13494.15585691.jpg
138	8	/squareenix/recursos/subidas/juegos/img_6a089eae88ec98.47532703.jpg
139	8	/squareenix/recursos/subidas/juegos/img_6a089eb584f925.87072850.jpg
140	8	/squareenix/recursos/subidas/juegos/img_6a089eb585d308.41176250.jpg
141	8	/squareenix/recursos/subidas/juegos/img_6a089eb5864ee7.49930720.jpg
142	8	/squareenix/recursos/subidas/juegos/img_6a089eb586d815.63682258.jpg
143	8	/squareenix/recursos/subidas/juegos/img_6a089eb58745d4.89504292.jpg
144	7	/squareenix/recursos/subidas/juegos/img_6a08a02c91b433.75575965.jpg
145	7	/squareenix/recursos/subidas/juegos/img_6a08a035e16080.35580113.jpg
146	7	/squareenix/recursos/subidas/juegos/img_6a08a035e315e9.24509303.jpg
147	7	/squareenix/recursos/subidas/juegos/img_6a08a035e3ad56.44781198.jpg
148	7	/squareenix/recursos/subidas/juegos/img_6a08a035e43a28.31894341.jpg
149	7	/squareenix/recursos/subidas/juegos/img_6a08a035e4b1c0.75676876.jpg
150	6	/squareenix/recursos/subidas/juegos/img_6a08a0c70c4fe9.24811701.jpg
151	6	/squareenix/recursos/subidas/juegos/img_6a08a0ce62bec3.74383335.jpg
152	6	/squareenix/recursos/subidas/juegos/img_6a08a0ce63b590.73025781.jpg
153	6	/squareenix/recursos/subidas/juegos/img_6a08a0ce645d96.74177392.jpg
154	6	/squareenix/recursos/subidas/juegos/img_6a08a0ce64f753.44678196.jpg
155	6	/squareenix/recursos/subidas/juegos/img_6a08a0ce656d95.22472127.jpg
156	5	/squareenix/recursos/subidas/juegos/img_6a08a142a63e51.36292497.jpg
157	5	/squareenix/recursos/subidas/juegos/img_6a08a14976e841.74089697.jpg
158	5	/squareenix/recursos/subidas/juegos/img_6a08a14977f023.25746291.jpg
159	5	/squareenix/recursos/subidas/juegos/img_6a08a149785e61.21641210.jpg
160	5	/squareenix/recursos/subidas/juegos/img_6a08a14978cfd4.74882539.jpg
161	5	/squareenix/recursos/subidas/juegos/img_6a08a1497966e2.74143149.jpg
162	4	/squareenix/recursos/subidas/juegos/img_6a08a1cdc5c9e7.54788034.jpg
163	4	/squareenix/recursos/subidas/juegos/img_6a08a1d4a9d6c6.80850569.jpg
164	4	/squareenix/recursos/subidas/juegos/img_6a08a1d4aad9d2.61711256.jpg
165	4	/squareenix/recursos/subidas/juegos/img_6a08a1d4ab66b7.66601717.jpg
166	4	/squareenix/recursos/subidas/juegos/img_6a08a1d4ac1023.91508601.jpg
167	4	/squareenix/recursos/subidas/juegos/img_6a08a1d4ac9fc9.59119839.jpg
168	3	/squareenix/recursos/subidas/juegos/img_6a08a245d9efe8.66639566.jpg
169	3	/squareenix/recursos/subidas/juegos/img_6a08a24d30dad4.77649110.jpg
170	3	/squareenix/recursos/subidas/juegos/img_6a08a24d322c78.01678445.jpg
171	3	/squareenix/recursos/subidas/juegos/img_6a08a24d32c694.08673651.jpg
172	3	/squareenix/recursos/subidas/juegos/img_6a08a24d334bb7.94120969.jpg
173	3	/squareenix/recursos/subidas/juegos/img_6a08a24d33c5b4.87717448.jpg
174	2	/squareenix/recursos/subidas/juegos/img_6a08a2fa8efcd3.35000690.jpg
175	2	/squareenix/recursos/subidas/juegos/img_6a08a301eb5e09.06862848.jpg
176	2	/squareenix/recursos/subidas/juegos/img_6a08a301ec3f45.67787604.jpg
177	2	/squareenix/recursos/subidas/juegos/img_6a08a301ecd7b0.30324319.jpg
178	2	/squareenix/recursos/subidas/juegos/img_6a08a301ed5451.40832120.jpg
179	2	/squareenix/recursos/subidas/juegos/img_6a08a301edcd65.14005597.jpg
180	1	/squareenix/recursos/subidas/juegos/img_6a08a36da49407.15832152.jpg
181	1	/squareenix/recursos/subidas/juegos/img_6a08a374e67ec0.70844399.jpg
182	1	/squareenix/recursos/subidas/juegos/img_6a08a374e7b537.01536979.jpg
183	1	/squareenix/recursos/subidas/juegos/img_6a08a374e850f9.96468820.jpg
184	1	/squareenix/recursos/subidas/juegos/img_6a08a374e8c968.38073634.jpg
185	1	/squareenix/recursos/subidas/juegos/img_6a08a374e93df1.60036002.jpg
\.


--
-- TOC entry 5203 (class 0 OID 50990)
-- Dependencies: 249
-- Data for Name: notificaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notificaciones (idnotificacion, titulo, mensaje, esvista, idusuario, idticket) FROM stdin;
1	Compra exitosa	"FINAL FANTASY VII REBIRTH" ya está en tu biblioteca.	t	11	\N
2	Favorito añadido	Agregaste "The quiet man" a tus favoritos.	t	11	\N
3	Favorito añadido	Agregaste "Octopath Traveler II" a tus favoritos.	t	11	\N
4	Compra exitosa	"Shadow of the Tomb Raider" ya está en tu biblioteca.	t	11	\N
\.


--
-- TOC entry 5180 (class 0 OID 50756)
-- Dependencies: 226
-- Data for Name: orden; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orden (idorden, estadopago, fechacreacion, idusuario) FROM stdin;
1	pendiente	2026-05-14	11
2	pendiente	2026-05-14	11
3	pendiente	2026-05-14	11
4	pendiente	2026-05-14	11
5	completado	2026-05-14	11
6	pendiente	2026-05-15	11
7	completado	2026-05-15	11
8	pendiente	2026-05-15	11
\.


--
-- TOC entry 5205 (class 0 OID 51175)
-- Dependencies: 251
-- Data for Name: reportesadmin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reportesadmin (idreporte, tiporeporte, fechageneracion, idadmin) FROM stdin;
\.


--
-- TOC entry 5186 (class 0 OID 50807)
-- Dependencies: 232
-- Data for Name: reseñas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."reseñas" ("idreseña", titulo, comentario, calificacion, fechacreacion, idusuario, idvideojuego) FROM stdin;
\.


--
-- TOC entry 5201 (class 0 OID 50962)
-- Dependencies: 247
-- Data for Name: ticketsoporte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketsoporte (idticket, asunto, descripcion, tiposolicitud, estado, idusuario, idorden, idvideojuego) FROM stdin;
\.


--
-- TOC entry 5199 (class 0 OID 50947)
-- Dependencies: 245
-- Data for Name: transacciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transacciones (idtransaccion, estado, idorden) FROM stdin;
1	pendiente	1
2	pendiente	2
3	pendiente	3
4	pendiente	4
5	completado	5
6	pendiente	6
7	completado	7
8	pendiente	8
\.


--
-- TOC entry 5174 (class 0 OID 50712)
-- Dependencies: 220
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (idusuario, nombreusuario, correo, "contraseñahash", fecha_registro, rol, nombre, apepat, apemat, codigoverificacion, verificado, imagenurl) FROM stdin;
1	admin_square	admin@squareenix.com	hash_admin_123	2024-01-01	ADMIN	Administrador	Square	Enix	\N	f	\N
2	gamer_cloud	cloud@finalfantasy.com	hash_cloud_123	2024-01-15	CLIENTE	Cloud	Strife	pro	\N	f	\N
3	tifa_main	tifa@seventhheaven.com	hash_tifa_123	2024-01-16	CLIENTE	Tifa	Lockhart	galleton	\N	f	\N
4	sephiroth_fan	sephiroth@shinra.com	hash_seph_123	2024-01-17	CLIENTE	Sephiroth	free	fire	\N	f	\N
5	lara_croft	lara@tombraider.com	hash_lara_123	2024-01-18	CLIENTE	Lara	Croft	shi	\N	f	\N
6	nier_fan	nier@yorha.com	hash_nier_123	2024-01-19	CLIENTE	2B	uwu	lol	\N	f	\N
7	dragon_quest	dq@erdrick.com	hash_dq_123	2024-01-20	CLIENTE	Erdrick	rinner	Join	\N	f	\N
8	kingdom_heart	sora@destiny.com	hash_sora_123	2024-01-21	CLIENTE	Sora	sera	siro	\N	f	\N
9	chrono_trigger	crono@guardia.com	hash_crono_123	2024-01-22	CLIENTE	Crono	vea	proni	\N	f	\N
10	just_cause	rico@rodriguez.com	hash_rico_123	2024-01-23	CLIENTE	Rico	Rodriguez	rodny	\N	f	\N
14	Administrador	jesus@gmail.com	Jesus0309$	2026-05-14	ADMIN	Jesus	Ortega	Solis	\N	f	\N
15	Chuka	chuka394s@gmail.com	$2y$10$SbqAJ9BE8FRYFJoht531zezLw37m4wt1/O2yIvT8xMvkx4r0cG2PW	2026-05-14	admin	Jesus Abraham Ortega Solis	\N	\N	\N	t	\N
11	Jesus	jesuseldbsuper@gmail.com	$2y$10$9NHx6NO40ETE5FEHUW0Qd.Z3Z.jQ30ozckP9cIoricGKFx4ajftt.	2026-05-14	cliente	Jesus	-	\N	\N	t	/squareenix/recursos/subidas/avatares/img_6a08951f7ca989.55255347.jpg
\.


--
-- TOC entry 5176 (class 0 OID 50733)
-- Dependencies: 222
-- Data for Name: videojuegos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.videojuegos (idvideojuego, titulo, descripcion, precio, fechalanzamiento, desarrollador, estado, peso, instaladorurl, vistas) FROM stdin;
29	The quiet man	“THE QUIET MAN™ ofrece una experiencia inmersiva de acción cinematográfica impulsada por la historia, que combina de manera fluida escenas de acción real de alta producción, gráficos realistas por computadora y un juego de acción trepidante.”	300.00	2018-11-01	Square Enix	activo	20GB	\N	0
28	Harvestella	HARVESTELLA, un nuevo RPG de simulación de vida de SQUARE ENIX. ¡Lleva una vida autosuficiente con tu vibrante casa como base y coopera con aliados para superar diversas amenazas!	1199.00	2022-11-04	Square Enix	activo	30GB	\N	0
27	Octopath Traveler	Ocho viajeros. Ocho aventuras. Ocho roles por desempeñar. Emprende un viaje épico a través del vasto y maravilloso mundo de Orsterra y descubre las cautivadoras historias de cada uno de los ocho viajeros.	1399.00	2019-06-07	Square Enix	activo	35GB	\N	0
26	Octopath Traveler II	Este juego es una nueva entrega en la serie OCTOPATH TRAVELER, cuya primera entrega se lanzó originalmente en 2018 y vendió más de 3 millones de copias en todo el mundo.	1399.00	2023-02-24	Square Enix	activo	40GB	\N	0
25	Outriders	Looter shooter cooperativo	59.99	2021-04-01	People Can Fly	activo	70GB	\N	0
24	Life is Strange Remastered	Vive la historia de Life is Strange, galardonada con un premio BAFTA, ahora remasterizada con gráficos y animación mejorados gracias a la captura de movimiento.	895.00	2022-02-01	Deck Nine	activo	40GB	\N	0
23	Life is Strange: True Colors	Alex Chen esconde su "maldición", el poder psíquico de empatía, la habilidad de absorber y manipular las emociones. Al morir su hermano en un accidente, ella debe aceptar su poder, buscar la verdad y revelar secretos enterrados por mucho tiempo.	1299.00	2021-09-10	Deck Nine	activo	35GB	\N	0
22	Just Cause 3	Con más de 1000 km² de completa libertad, desde el cielo hasta el fondo del mar, Rico Rodríguez regresa para desatar el caos de las formas más creativas y explosivas imaginables.	199.00	2015-12-01	Avalanche Studios	activo	45GB	\N	0
21	Just Cause 4 Reloaded	El agente renegado Rico Rodríguez viaja a Solís, un enorme mundo sudamericano lleno de conflicto, opresión y condiciones climáticas extremas. Ponte tu traje aéreo, equipa tu gancho totalmente personalizable y prepárate para desatar la tormenta.	665.00	2018-12-04	Avalanche Studios	activo	55GB	\N	0
20	CHRONO CROSS: The Radical Dreamers Edition	CHRONO CROSS es un RPG que trasciende el tiempo y el espacio, desarrollándose a través de dos mundos paralelos interconectados. Con más de 40 miembros de equipo por conocer, personas y dimensiones se entrelazan en este épico drama sobre el propio planeta.	398.99	2022-04-07	Square Enix	activo	8GB	\N	0
19	Chrono trigger	El clásico RPG atemporal regresa cargado de mejoras. Viaja al pasado olvidado, al lejano futuro y hasta el fin del tiempo. Una gran aventura para salvar el planeta comienza ahora…	299.00	2018-02-27	Square Enix	activo	2GB	\N	0
18	Tomb Raider	Tomb Raider explora la intensa historia de origen de Lara Croft y su ascenso de una joven a una superviviente endurecida.	329.00	2013-03-05	Crystal Dynamics	activo	25GB	\N	0
17	Rise of the Tomb Raider	Rise of the Tomb Raider: 20 Year Celebration incluye el juego base y el Season Pass con contenido totalmente nuevo. Explora la Mansión Croft en la nueva historia ‘Lazos de Sangre’, y luego defiéndela contra una invasión zombi en ‘La Pesadilla de Lara’.	499.00	2016-01-28	Crystal Dynamics	activo	35GB	\N	0
16	Shadow of the Tomb Raider	“Mientras Lara Croft corre para salvar al mundo de un apocalipsis maya, debe convertirse en la Tomb Raider que está destinada a ser.	669.00	2018-09-14	Eidos-Montréal	activo	60GB	\N	0
15	NieR Replicant ver.1.22474487139	La precuela mejorada de NieR:Automata. Un joven bondadoso parte junto a Grimoire Weiss, un extraño libro parlante, en busca de los ‘Versos Sellados’ para salvar a su hermana Yonah, quien cayó gravemente enferma por la Plaga Negra.	1299.00	2021-04-23	Toylogic	activo	45GB	\N	0
14	NieR:Automata	NieR: Automata cuenta la historia de los androides 2B, 9S y A2 y su batalla por recuperar la distopía dominada por poderosas máquinas.	665.00	2017-03-07	PlatinumGames	activo	50GB	\N	0
13	DRAGON QUEST TREASURES	Erik y su hermana Mia sueñan con el día en que puedan explorar el mundo. Una noche se encuentran con dos criaturas de otro mundo, Porcus y Purrsula, y son llevados a Draconia: una tierra llena de tesoros que esperan ser descubiertos.	900.00	2022-12-09	Square Enix	activo	30GB	\N	0
12	DRAGON QUEST BUILDERS 2	DRAGON QUEST BUILDERS™ 2 es un RPG de construcción de bloques ambientado en una tierra fantástica amenazada por un culto malvado. Explora, lucha, construye y cosecha en la encantadora campaña para un jugador o crea grandes proyectos.	1025.00	2019-07-12	Square Enix	activo	40GB	\N	0
11	DRAGON QUEST XI S	La Definitive Edition incluye el aclamado DRAGON QUEST XI, además de escenarios adicionales, banda sonora orquestal, modo 2D y mucho más. Tanto si eres fan de toda la vida como si eres un nuevo aventurero, esta es la experiencia definitiva de DQXI.	895.00	2020-12-04	Square Enix	activo	55GB	\N	0
10	KINGDOM HEARTS HD 1.5 + 2.5 ReMIX	KINGDOM HEARTS -HD 1.5+2.5 ReMIX- es una colección remasterizada en HD con 6 experiencias inolvidables de KINGDOM HEARTS. Empuña tu Llave Espada para salvar los mundos Disney de la oscuridad.	900.00	2017-03-28	Square Enix	activo	55GB	\N	0
9	KINGDOM HEARTS HD 2.8	EL PRÓLOGO FINAL DE KINGDOM HEARTS HD 2.8 presenta 3 experiencias mágicas, todas ellas conduciendo a KINGDOM HEARTS III.	1000.00	2020-11-11	Square Enix	activo	25GB	\N	0
8	KINGDOM HEARTS III	KINGDOM HEARTS III + Re Mind (DLC) cierra un capítulo de la serie. Viaja a nuevos y emocionantes mundos de Disney y Pixar, y prepárate para el enfrentamiento final.	1000.00	2019-01-25	Square Enix	activo	60GB	\N	0
6	FINAL FANTASY XII THE ZODIAC AGE	Final Fantasy XIII es un RPG de fantasía en el que un grupo de valientes humanos lucha contra el destino en la utópica ciudad celeste de Cocoon y el mundo primigenio de Pulse. Sigue las batallas aceleradas.	156.00	2017-07-11	Square Enix	activo	45GB	\N	0
3	FINAL FANTASY XVI	Una fantasía oscura épica donde el destino lo deciden los Eikons y los Dominantes que los controlan. Esta es la historia de Clive Rosfield, un guerrero que jura vengarse del Eikon oscuro Ifrit, una entidad misteriosa que deja desgracias a su paso.	900.00	2023-06-22	Square Enix	activo	90GB	\N	0
30	BATTALION 2024	Battleroyale táctico	300.00	2024-05-15	Square Enix	descontinuado	45GB	\N	0
7	FINAL FANTASY IX	Con más de cinco millones de copias vendidas desde su lanzamiento en 2000, ¡FINAL FANTASY IX regresa con orgullo en Steam! ¡Ahora puedes revivir las aventuras de Zidane y su equipo en PC!.	205.00	2023-04-19	Square Enix	activo	15GB	\N	0
5	FINAL FANTASY X/X-2 HD Remaster	FINAL FANTASY X/X-2 HD Remaster celebra dos de las entregas más queridas y queridas de la franquicia mundialmente reconocida, completamente remasterizadas en una preciosa Alta Definición y ya disponibles en PC / Windows.	270.00	2015-05-12	Square Enix	activo	40GB	\N	0
4	FINAL FANTASY XIV Online	Únete a más de 30 millones de aventureros de todo el mundo y forma parte de un alucinante viaje en un increíble FINAL FANTASY en constante evolución. Disfruta de una historia inolvidable y emocionantes batallas.	275.00	2013-08-27	Square Enix	activo	80GB	\N	0
2	FINAL FANTASY VII REBIRTH	La travesía desconocida continúa... Tras escapar de la ciudad de Midgar, Cloud y sus amigos se embarcan en un viaje por todo el planeta. Les esperan nuevas aventuras en el vasto y extenso mundo.	800.00	2024-02-29	Square Enix	activo	150GB	\N	0
1	FINAL FANTASY VII REMAKE	El exagente de SOLDADO, Cloud Strife, llega a la ciudad del mako, Midgar. El mundo del clásico atemporal FINAL FANTASY VII renace con tecnología de gráficos de vanguardia y un nuevo sistema de batalla.	700.00	2020-04-10	Square Enix	activo	100GB	\N	0
\.


--
-- TOC entry 5228 (class 0 OID 0)
-- Dependencies: 229
-- Name: biblioteca_idbiblioteca_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.biblioteca_idbiblioteca_seq', 2, true);


--
-- TOC entry 5229 (class 0 OID 0)
-- Dependencies: 227
-- Name: carrito_idcarrito_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carrito_idcarrito_seq', 7, true);


--
-- TOC entry 5230 (class 0 OID 0)
-- Dependencies: 223
-- Name: categoria_idcategoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_idcategoria_seq', 11, false);


--
-- TOC entry 5231 (class 0 OID 0)
-- Dependencies: 235
-- Name: comunidadvideojuegos_idpublicacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comunidadvideojuegos_idpublicacion_seq', 3, true);


--
-- TOC entry 5232 (class 0 OID 0)
-- Dependencies: 242
-- Name: detallecarrito_iddetallecarrito_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detallecarrito_iddetallecarrito_seq', 8, true);


--
-- TOC entry 5233 (class 0 OID 0)
-- Dependencies: 240
-- Name: detalleorden_iddetalle_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalleorden_iddetalle_seq', 8, true);


--
-- TOC entry 5234 (class 0 OID 0)
-- Dependencies: 233
-- Name: favorito_idfavorito_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.favorito_idfavorito_seq', 2, true);


--
-- TOC entry 5235 (class 0 OID 0)
-- Dependencies: 237
-- Name: imagenes_idimagen_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.imagenes_idimagen_seq', 185, true);


--
-- TOC entry 5236 (class 0 OID 0)
-- Dependencies: 248
-- Name: notificaciones_idnotificacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notificaciones_idnotificacion_seq', 4, true);


--
-- TOC entry 5237 (class 0 OID 0)
-- Dependencies: 225
-- Name: orden_idorden_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orden_idorden_seq', 8, true);


--
-- TOC entry 5238 (class 0 OID 0)
-- Dependencies: 250
-- Name: reportesadmin_idreporte_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reportesadmin_idreporte_seq', 1, false);


--
-- TOC entry 5239 (class 0 OID 0)
-- Dependencies: 231
-- Name: reseñas_idreseña_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."reseñas_idreseña_seq"', 1, false);


--
-- TOC entry 5240 (class 0 OID 0)
-- Dependencies: 246
-- Name: ticketsoporte_idticket_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketsoporte_idticket_seq', 1, false);


--
-- TOC entry 5241 (class 0 OID 0)
-- Dependencies: 244
-- Name: transacciones_idtransaccion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transacciones_idtransaccion_seq', 8, true);


--
-- TOC entry 5242 (class 0 OID 0)
-- Dependencies: 219
-- Name: usuario_idusuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_idusuario_seq', 15, true);


--
-- TOC entry 5243 (class 0 OID 0)
-- Dependencies: 221
-- Name: videojuegos_idvideojuego_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.videojuegos_idvideojuego_seq', 31, false);


--
-- TOC entry 4979 (class 2606 OID 50795)
-- Name: biblioteca biblioteca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.biblioteca
    ADD CONSTRAINT biblioteca_pkey PRIMARY KEY (idbiblioteca);


--
-- TOC entry 4977 (class 2606 OID 50779)
-- Name: carrito carrito_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT carrito_pkey PRIMARY KEY (idcarrito);


--
-- TOC entry 4971 (class 2606 OID 50754)
-- Name: categoria categoria_nombrecategoria_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_nombrecategoria_key UNIQUE (nombrecategoria);


--
-- TOC entry 4973 (class 2606 OID 50752)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (idcategoria);


--
-- TOC entry 4989 (class 2606 OID 50892)
-- Name: categoriavideojuego categoriavideojuego_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoriavideojuego
    ADD CONSTRAINT categoriavideojuego_pkey PRIMARY KEY (idcategoria, idvideojuego);


--
-- TOC entry 4985 (class 2606 OID 50860)
-- Name: comunidadvideojuegos comunidadvideojuegos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comunidadvideojuegos
    ADD CONSTRAINT comunidadvideojuegos_pkey PRIMARY KEY (idpublicacion);


--
-- TOC entry 4993 (class 2606 OID 50935)
-- Name: detallecarrito detallecarrito_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detallecarrito
    ADD CONSTRAINT detallecarrito_pkey PRIMARY KEY (iddetallecarrito);


--
-- TOC entry 4991 (class 2606 OID 50914)
-- Name: detalleorden detalleorden_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalleorden
    ADD CONSTRAINT detalleorden_pkey PRIMARY KEY (iddetalle);


--
-- TOC entry 4983 (class 2606 OID 50837)
-- Name: favorito favorito_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorito
    ADD CONSTRAINT favorito_pkey PRIMARY KEY (idfavorito);


--
-- TOC entry 4987 (class 2606 OID 50880)
-- Name: imagenes imagenes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imagenes
    ADD CONSTRAINT imagenes_pkey PRIMARY KEY (idimagen);


--
-- TOC entry 4999 (class 2606 OID 50999)
-- Name: notificaciones notificaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT notificaciones_pkey PRIMARY KEY (idnotificacion);


--
-- TOC entry 4975 (class 2606 OID 50765)
-- Name: orden orden_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden
    ADD CONSTRAINT orden_pkey PRIMARY KEY (idorden);


--
-- TOC entry 5001 (class 2606 OID 51184)
-- Name: reportesadmin reportesadmin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reportesadmin
    ADD CONSTRAINT reportesadmin_pkey PRIMARY KEY (idreporte);


--
-- TOC entry 4981 (class 2606 OID 50817)
-- Name: reseñas reseñas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."reseñas"
    ADD CONSTRAINT "reseñas_pkey" PRIMARY KEY ("idreseña");


--
-- TOC entry 4997 (class 2606 OID 50973)
-- Name: ticketsoporte ticketsoporte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketsoporte
    ADD CONSTRAINT ticketsoporte_pkey PRIMARY KEY (idticket);


--
-- TOC entry 4995 (class 2606 OID 50955)
-- Name: transacciones transacciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacciones
    ADD CONSTRAINT transacciones_pkey PRIMARY KEY (idtransaccion);


--
-- TOC entry 4961 (class 2606 OID 50731)
-- Name: usuario usuario_correo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_correo_key UNIQUE (correo);


--
-- TOC entry 4963 (class 2606 OID 50729)
-- Name: usuario usuario_nombreusuario_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_nombreusuario_key UNIQUE (nombreusuario);


--
-- TOC entry 4965 (class 2606 OID 50727)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (idusuario);


--
-- TOC entry 4969 (class 2606 OID 50743)
-- Name: videojuegos videojuegos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videojuegos
    ADD CONSTRAINT videojuegos_pkey PRIMARY KEY (idvideojuego);


--
-- TOC entry 4966 (class 1259 OID 51191)
-- Name: idx_videojuegos_estado; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_videojuegos_estado ON public.videojuegos USING btree (estado);


--
-- TOC entry 4967 (class 1259 OID 51190)
-- Name: idx_videojuegos_titulo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_videojuegos_titulo ON public.videojuegos USING btree (titulo);


--
-- TOC entry 5004 (class 2606 OID 50801)
-- Name: biblioteca fk_bibusu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.biblioteca
    ADD CONSTRAINT fk_bibusu FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 5005 (class 2606 OID 50796)
-- Name: biblioteca fk_bibvid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.biblioteca
    ADD CONSTRAINT fk_bibvid FOREIGN KEY (idvideojuego) REFERENCES public.videojuegos(idvideojuego);


--
-- TOC entry 5003 (class 2606 OID 50780)
-- Name: carrito fk_carusu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT fk_carusu FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 5013 (class 2606 OID 50893)
-- Name: categoriavideojuego fk_catvid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoriavideojuego
    ADD CONSTRAINT fk_catvid FOREIGN KEY (idcategoria) REFERENCES public.categoria(idcategoria);


--
-- TOC entry 5014 (class 2606 OID 50898)
-- Name: categoriavideojuego fk_catvidv; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoriavideojuego
    ADD CONSTRAINT fk_catvidv FOREIGN KEY (idvideojuego) REFERENCES public.videojuegos(idvideojuego);


--
-- TOC entry 5010 (class 2606 OID 50861)
-- Name: comunidadvideojuegos fk_comusu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comunidadvideojuegos
    ADD CONSTRAINT fk_comusu FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 5011 (class 2606 OID 50866)
-- Name: comunidadvideojuegos fk_comvid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comunidadvideojuegos
    ADD CONSTRAINT fk_comvid FOREIGN KEY (idvideojuego) REFERENCES public.videojuegos(idvideojuego);


--
-- TOC entry 5017 (class 2606 OID 50936)
-- Name: detallecarrito fk_detcar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detallecarrito
    ADD CONSTRAINT fk_detcar FOREIGN KEY (idcarrito) REFERENCES public.carrito(idcarrito);


--
-- TOC entry 5018 (class 2606 OID 50941)
-- Name: detallecarrito fk_detcarvid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detallecarrito
    ADD CONSTRAINT fk_detcarvid FOREIGN KEY (idvideojuego) REFERENCES public.videojuegos(idvideojuego);


--
-- TOC entry 5015 (class 2606 OID 50915)
-- Name: detalleorden fk_detord; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalleorden
    ADD CONSTRAINT fk_detord FOREIGN KEY (idorden) REFERENCES public.orden(idorden);


--
-- TOC entry 5016 (class 2606 OID 50920)
-- Name: detalleorden fk_detvid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalleorden
    ADD CONSTRAINT fk_detvid FOREIGN KEY (idvideojuego) REFERENCES public.videojuegos(idvideojuego);


--
-- TOC entry 5008 (class 2606 OID 50843)
-- Name: favorito fk_favusu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorito
    ADD CONSTRAINT fk_favusu FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 5009 (class 2606 OID 50838)
-- Name: favorito fk_favvid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorito
    ADD CONSTRAINT fk_favvid FOREIGN KEY (idvideojuego) REFERENCES public.videojuegos(idvideojuego);


--
-- TOC entry 5012 (class 2606 OID 50881)
-- Name: imagenes fk_imavid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imagenes
    ADD CONSTRAINT fk_imavid FOREIGN KEY (idvideojuego) REFERENCES public.videojuegos(idvideojuego);


--
-- TOC entry 5023 (class 2606 OID 51005)
-- Name: notificaciones fk_nottic; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT fk_nottic FOREIGN KEY (idticket) REFERENCES public.ticketsoporte(idticket);


--
-- TOC entry 5024 (class 2606 OID 51000)
-- Name: notificaciones fk_notusu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT fk_notusu FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 5002 (class 2606 OID 50766)
-- Name: orden fk_ordusu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden
    ADD CONSTRAINT fk_ordusu FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 5025 (class 2606 OID 51185)
-- Name: reportesadmin fk_repadmin; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reportesadmin
    ADD CONSTRAINT fk_repadmin FOREIGN KEY (idadmin) REFERENCES public.usuario(idusuario);


--
-- TOC entry 5006 (class 2606 OID 50818)
-- Name: reseñas fk_resusu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."reseñas"
    ADD CONSTRAINT fk_resusu FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 5007 (class 2606 OID 50823)
-- Name: reseñas fk_resvid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."reseñas"
    ADD CONSTRAINT fk_resvid FOREIGN KEY (idvideojuego) REFERENCES public.videojuegos(idvideojuego);


--
-- TOC entry 5020 (class 2606 OID 50979)
-- Name: ticketsoporte fk_ticord; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketsoporte
    ADD CONSTRAINT fk_ticord FOREIGN KEY (idorden) REFERENCES public.orden(idorden);


--
-- TOC entry 5021 (class 2606 OID 50974)
-- Name: ticketsoporte fk_ticusu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketsoporte
    ADD CONSTRAINT fk_ticusu FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 5022 (class 2606 OID 50984)
-- Name: ticketsoporte fk_ticvid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketsoporte
    ADD CONSTRAINT fk_ticvid FOREIGN KEY (idvideojuego) REFERENCES public.videojuegos(idvideojuego);


--
-- TOC entry 5019 (class 2606 OID 50956)
-- Name: transacciones fk_traord; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacciones
    ADD CONSTRAINT fk_traord FOREIGN KEY (idorden) REFERENCES public.orden(idorden);


-- Completed on 2026-05-16 21:41:00

--
-- PostgreSQL database dump complete
--

\unrestrict sMZvSP5XFK8xsWFVWfSmus3YoaRsDLehRcUO0eRnaPCO35aQqvMXfosY2p1sM7T


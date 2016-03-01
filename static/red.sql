--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: consultas_centrales; Type: TABLE DATA; Schema: public; Owner: diego
--

COPY consultas_centrales (nombre, direccion, telefono, cif_empresa_id, codigo_provincia_id) FROM stdin;
Eólica La Janda, S.L.U.	Avenida Prado de la Feria, 11170 Medina-Sidonia	956411358	A95554630	11
Muela Cubillo	Calle Fermin Caballero, 7 - 1º - 16004	956415269	A95554630	16
Las Aldehuelas	Aldehuelas, La Poveda y Sta. Cruz Yanguas, 37478	932702800	A28023430	42
Refoyas	Forcall y Todolella, 12310	968369100	B85304558	12
Almatret	Almatret, 25187	916572287	B85304558	25
Badaia	Kuartango, Ribera Alta e Iruña Oka, 01430	945371064	B85304558	01
Monte do Ceo	Álama, 36830	986667210	A08015497	26
El Bayo	Pedrola y Luceni, 50690	976216129	A95554630	52
\.


--
-- Data for Name: consultas_empresas; Type: TABLE DATA; Schema: public; Owner: diego
--

COPY consultas_empresas (cif, nombre) FROM stdin;
A28023430	Endesa
A95554630	Iberdrola
A08015497	Gas Natural
B85304558	Eon
B33473752	Edp energia
\.


--
-- Data for Name: consultas_provincias; Type: TABLE DATA; Schema: public; Owner: diego
--

COPY consultas_provincias (codigo, nombre) FROM stdin;
01	Alava
02	Albacete
03	Alicante
04	Almeria
33	Asturias
05	Avila
06	Badajoz
08	Barcelona
09	Burgos
10	Caceres
11	Cadiz
39	Cantabria
12	Castellon
51	Ceuta
13	Ciudad Real
14	Cordoba
15	Corunya, A
16	Cuenca
17	Girona
18	Granada
19	Guadalajara
20	Guipuzcoa
21	Huelva
22	Huesca
07	Illes Balears
23	Jaen
24	Leon
25	Lleida
27	Lugo
28	Madrid
29	Malaga
52	Melilla
30	Murcia
31	Navarra
32	Ourense
34	Palencia
35	Palmas, Las
36	Pontevedra
26	Rioja, La
37	Salamanca
38	Santa Cruz De Tenerife
40	Segovia
41	Sevilla
42	Soria
43	Tarragona
44	Teruel
45	Toledo
46	Valencia
47	Valladolid
48	Vizcaya
49	Zamora
50	Zaragoza
\.


--
-- PostgreSQL database dump complete
--


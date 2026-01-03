--
-- PostgreSQL database dump
--

\restrict OVhOlUYfQA1JSky2hJdkyWVhdwekcj3aHUqtbVgwl7M4uSZ0dpUXa9ADHUSzJCH

-- Dumped from database version 17.7 (bdc8956)
-- Dumped by pg_dump version 17.7 (Ubuntu 17.7-3.pgdg22.04+1)

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
-- Name: asset_history; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.asset_history (
    id integer NOT NULL,
    user_id integer,
    record_date date NOT NULL,
    jp_stock_value real DEFAULT 0,
    us_stock_value real DEFAULT 0,
    cash_value real DEFAULT 0,
    gold_value real DEFAULT 0,
    crypto_value real DEFAULT 0,
    investment_trust_value real DEFAULT 0,
    insurance_value real DEFAULT 0,
    total_value real DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    prev_jp_stock_value double precision DEFAULT 0,
    prev_us_stock_value double precision DEFAULT 0,
    prev_cash_value double precision DEFAULT 0,
    prev_gold_value double precision DEFAULT 0,
    prev_crypto_value double precision DEFAULT 0,
    prev_investment_trust_value double precision DEFAULT 0,
    prev_insurance_value double precision DEFAULT 0,
    prev_total_value double precision DEFAULT 0
);


ALTER TABLE public.asset_history OWNER TO user;

--
-- Name: asset_history_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.asset_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.asset_history_id_seq OWNER TO user;

--
-- Name: asset_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.asset_history_id_seq OWNED BY public.asset_history.id;


--
-- Name: assets; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.assets (
    id integer NOT NULL,
    user_id integer,
    asset_type character varying(50) NOT NULL,
    symbol character varying(50) NOT NULL,
    name character varying(255),
    quantity real NOT NULL,
    price real DEFAULT 0,
    avg_cost real DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    display_order integer DEFAULT 0
);


ALTER TABLE public.assets OWNER TO user;

--
-- Name: assets_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.assets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.assets_id_seq OWNER TO user;

--
-- Name: assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.assets_id_seq OWNED BY public.assets.id;


--
-- Name: daily_snapshots; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.daily_snapshots (
    id integer NOT NULL,
    user_id integer,
    snapshot_date date NOT NULL,
    total_assets real NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.daily_snapshots OWNER TO user;

--
-- Name: daily_snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.daily_snapshots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.daily_snapshots_id_seq OWNER TO user;

--
-- Name: daily_snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.daily_snapshots_id_seq OWNED BY public.daily_snapshots.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    password_hash character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO user;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO user;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: asset_history id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.asset_history ALTER COLUMN id SET DEFAULT nextval('public.asset_history_id_seq'::regclass);


--
-- Name: assets id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assets ALTER COLUMN id SET DEFAULT nextval('public.assets_id_seq'::regclass);


--
-- Name: daily_snapshots id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.daily_snapshots ALTER COLUMN id SET DEFAULT nextval('public.daily_snapshots_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: asset_history; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.asset_history (id, user_id, record_date, jp_stock_value, us_stock_value, cash_value, gold_value, crypto_value, investment_trust_value, insurance_value, total_value, created_at, prev_jp_stock_value, prev_us_stock_value, prev_cash_value, prev_gold_value, prev_crypto_value, prev_investment_trust_value, prev_insurance_value, prev_total_value) FROM stdin;
1	2	2025-10-08	1.2334e+06	36683.797	392537	217590	63078.062	121194.914	174900	2.2393838e+06	2025-10-08 14:45:28.562843	0	0	0	0	0	0	0	0
93	1	2025-10-24	62600	30015.158	47324	223280	1684.12	37551	0	402454.28	2025-10-24 14:58:05.16003	0	0	0	0	0	0	0	0
92	2	2025-10-24	1.1907e+06	50727.41	493505	223280	50198.086	122461.164	174900	2.3057718e+06	2025-10-24 04:44:18.397349	0	0	0	0	0	0	0	0
95	3	2025-10-24	0	56475.273	100000	1.33968e+06	3.3374206e+07	37551	0	3.4907912e+07	2025-10-24 14:58:24.763687	0	0	0	0	0	0	0	0
4	2	2025-10-09	1.2483e+06	36439.027	392537	218900	62795.62	121194.914	174900	2.2550665e+06	2025-10-08 15:00:28.956359	0	0	0	0	0	0	0	0
5	1	2025-10-09	16600	30721.826	47324	218900	1870.3405	37316	0	352732.16	2025-10-08 15:04:29.264701	0	0	0	0	0	0	0	0
96	4	2025-10-24	0	0	0	22328	168.34335	0	0	22496.344	2025-10-24 14:58:28.157701	0	0	0	0	0	0	0	0
11	3	2025-10-09	0	57849.883	100000	1.3134e+06	3.6849268e+07	37316	0	3.8357832e+07	2025-10-09 08:36:31.56735	0	0	0	0	0	0	0	0
98	1	2025-10-25	62600	30245.684	47324	223280	1707.85	37551	0	402708.53	2025-10-25 14:58:05.862825	0	0	0	0	0	0	0	0
97	2	2025-10-25	1.1907e+06	50537.324	570678	223280	51178.27	122461.164	178760	2.3875948e+06	2025-10-25 09:00:04.290369	0	0	0	0	0	0	0	0
15	2	2025-10-10	1.2623e+06	37316.074	392537	217080	62563.47	122880.2	174900	2.2695768e+06	2025-10-09 15:07:43.563142	0	0	0	0	0	0	0	0
100	3	2025-10-25	0	56924.78	100000	1.33968e+06	3.3844464e+07	37551	0	3.537862e+07	2025-10-25 14:58:24.959573	0	0	0	0	0	0	0	0
101	4	2025-10-25	0	0	0	22328	170.785	0	0	22498.785	2025-10-25 14:58:28.259913	0	0	0	0	0	0	0	0
19	2	2025-10-11	1.2891e+06	35788	383537	215290	49871.938	123187.875	174900	2.2716748e+06	2025-10-10 15:49:44.060179	0	0	0	0	0	0	0	0
24	3	2025-10-12	0	55357.91	100000	1.29174e+06	3.3757268e+07	37623	0	3.5241988e+07	2025-10-12 06:32:14.866949	0	0	0	0	0	0	0	0
25	2	2025-10-12	1.2891e+06	35788	383537	215290	48457.402	123187.875	174900	2.2702602e+06	2025-10-12 06:32:45.266472	0	0	0	0	0	0	0	0
104	1	2025-10-26	68200	30245.684	47324	223280	1737.03	37551	0	408337.72	2025-10-26 14:58:05.555898	0	0	0	0	0	0	0	0
102	2	2025-10-26	1.1907e+06	50537.324	570678	223280	52339.062	122461.164	178760	2.3887555e+06	2025-10-25 17:52:24.357125	0	0	0	0	0	0	0	0
106	3	2025-10-26	0	56924.78	100000	1.33968e+06	3.442232e+07	37551	0	3.5956476e+07	2025-10-26 14:58:24.775901	0	0	0	0	0	0	0	0
107	4	2025-10-26	0	0	0	22328	173.70096	0	0	22501.701	2025-10-26 14:58:28.352756	0	0	0	0	0	0	0	0
109	1	2025-10-27	950000	30925.14	47324	221030	1757.374	37925	0	1.2889615e+06	2025-10-27 14:58:05.85861	0	0	0	0	0	0	0	0
108	2	2025-10-27	1.1443e+06	50513.01	413612	221030	52335.496	123829.49	178760	2.18438e+06	2025-10-26 15:43:41.656424	0	0	0	0	0	0	0	0
111	3	2025-10-27	0	58277.25	100000	1.32618e+06	3.482588e+07	37925	0	3.6348264e+07	2025-10-27 14:58:23.854381	0	0	0	0	0	0	0	0
28	2	2025-10-14	1.1742e+06	40676.324	493505	224630	50961.773	123187.875	174900	2.282061e+06	2025-10-13 15:49:04.458842	0	0	0	0	0	0	0	0
112	4	2025-10-27	0	0	0	22103	175.7374	0	0	22278.738	2025-10-27 14:58:27.357483	0	0	0	0	0	0	0	0
113	1	2025-10-28	944700	31152.656	47324	214830	1751.8524	38283	0	1.2780415e+06	2025-10-28 14:58:05.355961	0	0	0	0	0	0	0	0
114	2	2025-10-28	1.0864e+06	48841.258	413612	214830	51603.87	125345.3	178760	2.1193925e+06	2025-10-28 14:58:18.360341	0	0	0	0	0	0	0	0
115	3	2025-10-28	0	58741.38	100000	1.28898e+06	3.471646e+07	38283	0	3.6202464e+07	2025-10-28 14:58:23.869779	0	0	0	0	0	0	0	0
116	4	2025-10-28	0	0	0	21483	175.18524	0	0	21658.186	2025-10-28 14:58:27.661643	0	0	0	0	0	0	0	0
44	1	2025-10-15	14900	29420.979	47324	224520	1686.0004	36776	0	354626.97	2025-10-15 14:58:06.173437	0	0	0	0	0	0	0	0
38	2	2025-10-15	1.1522e+06	53274.88	493505	224520	50757.043	119715.19	174900	2.268872e+06	2025-10-14 15:40:05.465823	0	0	0	0	0	0	0	0
46	3	2025-10-15	0	55323.754	100000	1.34712e+06	3.341963e+07	36776	0	3.4958852e+07	2025-10-15 14:58:26.053976	0	0	0	0	0	0	0	0
47	4	2025-10-15	0	0	0	22452	168.60004	0	0	22620.6	2025-10-15 14:58:29.354985	0	0	0	0	0	0	0	0
50	1	2025-10-16	14000	29255.41	47324	227060	1672.8359	36697	0	356009.25	2025-10-16 14:58:05.454716	0	0	0	0	0	0	0	0
48	2	2025-10-16	1.0963e+06	53512.44	493505	227060	49465.99	119439.33	174900	2.2141828e+06	2025-10-16 07:00:42.554482	0	0	0	0	0	0	0	0
52	3	2025-10-16	0	54993.406	100000	1.36236e+06	3.315059e+07	36697	0	3.470464e+07	2025-10-16 14:58:26.064399	0	0	0	0	0	0	0	0
53	4	2025-10-16	0	0	0	22706	167.28358	0	0	22873.283	2025-10-16 14:58:29.566826	0	0	0	0	0	0	0	0
56	1	2025-10-17	93400	29014.9	47324	232540	1586.3126	36333	0	440198.22	2025-10-17 14:35:22.264013	0	0	0	0	0	0	0	0
54	2	2025-10-17	1.0347e+06	50493.793	493505	232540	46028.848	118381.18	174900	2.1505488e+06	2025-10-16 15:44:20.555341	0	0	0	0	0	0	0	0
60	3	2025-10-17	0	54504.234	100000	1.39524e+06	3.1453146e+07	36333	0	3.3039224e+07	2025-10-17 14:58:26.555281	0	0	0	0	0	0	0	0
61	4	2025-10-17	0	0	0	23254	158.63126	0	0	23412.63	2025-10-17 14:58:29.970745	0	0	0	0	0	0	0	0
62	1	2025-10-18	53200	29329.246	47324	232540	1616.8496	36333	0	400343.1	2025-10-18 09:39:16.957567	0	0	0	0	0	0	0	0
64	2	2025-10-18	1.0347e+06	49959.254	493505	232540	47615.22	118381.18	174900	2.1516008e+06	2025-10-18 14:58:21.060891	0	0	0	0	0	0	0	0
65	3	2025-10-18	0	55180	100000	1.39524e+06	3.2041108e+07	36333	0	3.362786e+07	2025-10-18 14:58:29.259105	0	0	0	0	0	0	0	0
66	4	2025-10-18	0	0	0	23254	161.68497	0	0	23415.686	2025-10-18 14:58:32.769345	0	0	0	0	0	0	0	0
67	1	2025-10-19	53200	29329.246	47324	232540	1640.0026	36333	0	400366.25	2025-10-19 14:58:05.755589	0	0	0	0	0	0	0	0
68	2	2025-10-19	1.0347e+06	49959.254	493505	232540	50007.16	118381.18	174900	2.1539925e+06	2025-10-19 14:58:20.262214	0	0	0	0	0	0	0	0
69	3	2025-10-19	0	55180	100000	1.39524e+06	3.2499932e+07	36333	0	3.4086684e+07	2025-10-19 14:58:27.260612	0	0	0	0	0	0	0	0
70	4	2025-10-19	0	0	0	23254	164.07603	0	0	23418.076	2025-10-19 14:58:30.855889	0	0	0	0	0	0	0	0
74	1	2025-10-20	59700	29444.334	47324	228360	1679.1198	36724	0	403231.47	2025-10-20 14:58:05.755596	0	0	0	0	0	0	0	0
76	3	2025-10-20	0	55386.863	100000	1.37016e+06	3.3271744e+07	36724	0	3.4834016e+07	2025-10-20 14:58:35.550037	0	0	0	0	0	0	0	0
77	4	2025-10-20	0	0	0	22836	167.89496	0	0	23003.895	2025-10-20 14:58:40.750447	0	0	0	0	0	0	0	0
71	2	2025-10-20	1.1081e+06	57386.93	493505	228360	50817.074	119659.51	174900	2.2327285e+06	2025-10-20 06:02:12.756437	0	0	0	0	0	0	0	0
79	1	2025-10-21	56600	29316.959	47324	233010	1700.5	37009	0	404960.47	2025-10-21 14:58:06.359333	0	0	0	0	0	0	0	0
80	2	2025-10-21	1.1136e+06	52278.492	493505	233010	51608.402	121036.38	174900	2.2399382e+06	2025-10-21 14:58:19.961348	0	0	0	0	0	0	0	0
81	3	2025-10-21	0	55096.984	100000	1.39806e+06	3.3698808e+07	37009	0	3.5288976e+07	2025-10-21 14:58:26.357418	0	0	0	0	0	0	0	0
82	4	2025-10-21	0	0	0	23301	170.30144	0	0	23471.3	2025-10-21 14:58:29.855069	0	0	0	0	0	0	0	0
84	1	2025-10-22	57000	29192.508	47324	222650	1651.5739	37292	0	395110.1	2025-10-22 14:58:05.305735	0	0	0	0	0	0	0	0
83	2	2025-10-22	1.1627e+06	48678.266	493505	222650	49037.855	121993.58	174900	2.2734648e+06	2025-10-22 11:13:20.956797	0	0	0	0	0	0	0	0
86	3	2025-10-22	0	54839.45	100000	1.3359e+06	3.2744424e+07	37292	0	3.4272456e+07	2025-10-22 14:58:25.467752	0	0	0	0	0	0	0	0
87	4	2025-10-22	0	0	0	22265	165.23401	0	0	22430.234	2025-10-22 14:58:29.159263	0	0	0	0	0	0	0	0
88	1	2025-10-23	56700	29549.703	47324	221440	1673.1	37228	0	393914.8	2025-10-23 14:58:05.355796	0	0	0	0	0	0	0	0
89	2	2025-10-23	1.1081e+06	49682.062	493505	221440	49707.598	121167.79	174900	2.2185025e+06	2025-10-23 14:58:19.967297	0	0	0	0	0	0	0	0
90	3	2025-10-23	0	55571.996	100000	1.32864e+06	3.3155822e+07	37228	0	3.4677264e+07	2025-10-23 14:58:26.05499	0	0	0	0	0	0	0	0
91	4	2025-10-23	0	0	0	22144	167.467	0	0	22311.467	2025-10-23 14:58:29.555984	0	0	0	0	0	0	0	0
118	1	2025-12-29	879900	30385.5	47324	250100	1.4e-05	39650	0	1.2473595e+06	2025-12-29 14:58:10.46468	879900	30385.5	47324	250100	1.4000000000000001e-05	39650	0	1247359.500014
117	2	2025-12-29	1.7588e+06	34051.5	247484	250100	32502.514	126190.27	178760	2.6278882e+06	2025-12-29 14:35:07.470035	1758800	34051.5	247484	250100	32502.5131784548	126190.27249999999	178760	2627888.2856784547
120	3	2025-12-29	0	58333.426	100000	1.5006e+06	0.277438	39650	0	1.6985838e+06	2025-12-29 14:58:28.30723	0	58333.424080000004	100000	1500600	0.277438	39650	0	1698583.701518
121	4	2025-12-29	0	0	0	25010	1.4e-06	0	0	25010	2025-12-29 14:58:32.071294	0	0	0	25010	1.4000000000000001e-06	0	0	25010.0000014
127	1	2025-12-30	879300	31162.396	47324	250100	1370.0138	39650	0	1.2489064e+06	2025-12-29 17:59:14.849022	879900	30385.5	47324	250100	1.4e-05	39650	0	1247359.5
122	2	2025-12-30	1.7588e+06	33615	247484	250100	33933.547	126190.27	178760	2.6288828e+06	2025-12-29 15:02:03.053495	1758800	34051.5	247484	250100	32502.514	126190.27	178760	2627888.2
\.


--
-- Data for Name: assets; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.assets (id, user_id, asset_type, symbol, name, quantity, price, avg_cost, created_at, display_order) FROM stdin;
45	1	cash	ろうきん		47324	0	0	2025-10-04 14:47:44.360656	0
51	3	cash	楽天銀行	楽天銀行	100000	0	0	2025-10-08 02:46:21.064235	0
40	2	cash	楽天銀行		10117	0	0	2025-10-02 12:39:51.163982	2
33	2	investment_trust	FANG+	FANG+	7451	84925	71131.39	2025-09-30 13:34:01.177079	0
47	2	cash	新札		40000	0	0	2025-10-05 03:33:46.962604	4
48	2	cash	旧2000		68000	0	0	2025-10-05 03:34:10.21905	5
57	1	jp_stock	3664	モブキャストホールディングス	100	35	10	2025-10-26 14:50:04.116824	0
46	1	jp_stock	5721	エス・サイエンス	100	260	100	2025-10-04 14:55:22.276361	0
59	1	jp_stock	6758	ソニーグループ	100	4029	3870	2025-10-27 10:32:46.153374	0
19	2	jp_stock	6634	ネクスグループ	100	114	198	2025-09-29 06:37:19.273255	10
18	2	jp_stock	6177	ＡｐｐＢａｎｋ	100	128	362	2025-09-29 06:37:04.729183	9
53	3	investment_trust	S&P500	S&P500	10000	39650	14567	2025-10-09 08:36:31.465081	0
52	3	crypto	BTC	BTC	1.9817	0.14	160	2025-10-08 03:38:59.283656	0
50	3	gold	金	金(Gold)	60	25010	17678	2025-10-08 02:44:25.178354	0
54	3	us_stock	NVDA	NVIDIA Corporation	2	186.82	146	2025-10-09 08:40:17.052901	0
41	4	crypto	BTC	BTC	1e-05	0.14	1	2025-10-03 04:26:40.511345	0
42	4	gold	1	金(Gold)	1	25010	1	2025-10-03 04:27:31.989263	0
21	2	jp_stock	9704	アゴーラホスピタリティーグループ	100	51	83	2025-09-29 06:42:50.543761	12
56	1	jp_stock	3350	メタプラネット	100	440	300	2025-10-17 14:35:21.95861	0
14	2	jp_stock	2134	北浜キャピタルパートナーズ	600	30	41.66	2025-09-29 06:35:19.172482	3
22	2	jp_stock	3807	フィスコ	100	116	191	2025-09-29 06:44:48.057959	5
62	2	jp_stock	1420	サンヨーホームズ	100	712	699	2025-12-22 07:26:50.756992	2
27	2	crypto	DOGE	ドージコイン	1304.96	19.29	63.761288	2025-09-29 16:09:31.304426	1
6	2	us_stock	JMIA	Jumia Technologies AG	3	11.52	6.7	2025-09-29 05:19:35.192792	0
16	2	jp_stock	4784	ＧＭＯインターネット	100	1043	1787	2025-09-29 06:36:02.943606	7
30	2	crypto	ETH	イーサリアム	0.00033908	457747.28	589816	2025-09-30 02:22:54.629598	2
31	2	crypto	XRP	リップル	24.778309	290.88	380.78	2025-09-30 02:24:39.135694	3
11	2	us_stock	NVTS	Navitas Semiconductor Corporati	15	7.25	9.05	2025-09-29 06:32:44.140204	2
20	2	jp_stock	6731	ピクセラ	100	33	88	2025-09-29 06:42:32.669875	11
37	2	cash	SBI		54825	0	0	2025-10-02 07:57:07.226339	0
10	2	jp_stock	5721	エス・サイエンス	5100	260	59.68	2025-09-29 06:30:57.808174	0
2	2	gold	金	金(Gold)	10	25010	14672	2025-09-29 04:18:55.765021	0
13	2	jp_stock	1783	ｆａｎｔａｓｉｓｔａ	1200	60	51.5	2025-09-29 06:34:52.707346	1
32	2	investment_trust	S&P500	S&P500	15867	39650	28990.312	2025-09-30 13:31:17.077621	0
29	2	crypto	BTC	ビットコイン	0.0001022	1.3680433e+07	1.5643817e+07	2025-09-30 02:01:06.481148	0
38	2	cash	ろうきん		154221	0	0	2025-10-02 07:57:26.861935	1
12	2	us_stock	SOFI	SoFi Technologies, Inc.	3	26.93	26.97	2025-09-29 06:33:17.900049	1
23	2	cash	百五銀行		8991	0	0	2025-09-29 06:47:22.367717	3
36	2	insurance	ソニー生命	個人年金保険	0	178760	150000	2025-10-02 07:56:35.767103	0
17	2	jp_stock	5255	モンスターラボ	600	170	305.96	2025-09-29 06:36:38.807067	8
49	2	jp_stock	3664	モブキャストホールディングス	200	35	73	2025-10-06 02:55:11.479352	4
1	1	gold	金	金(Gold)	10	25010	14672	2025-09-29 04:09:04.170606	0
28	1	crypto	BTC	ビットコイン	0.0001	1.3700138e+07	1.1112678e+07	2025-09-30 01:59:24.583332	0
44	1	investment_trust	S&P500	S&P500	10000	39650	12345	2025-10-04 13:04:49.064248	0
43	1	us_stock	NVDA	NVIDIA Corporation	1	187.54	119	2025-10-03 14:30:58.175068	0
24	1	us_stock	APLE	Apple Hospitality REIT, Inc.	1	11.99	20	2025-09-29 11:07:37.966315	0
60	1	jp_stock	6758	ソニーグループ	100	4029	3870	2025-10-27 10:32:46.35598	0
15	2	jp_stock	3823	ＴＨＥ　ＷＨＹ　ＨＯＷ　ＤＯ　ＣＯＭＰＡＮＹ	300	47	138.33	2025-09-29 06:35:42.239441	6
\.


--
-- Data for Name: daily_snapshots; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.daily_snapshots (id, user_id, snapshot_date, total_assets, created_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.users (id, username, password_hash, created_at) FROM stdin;
1	demo	pbkdf2:sha256:600000$rgVJpgatdcdKC3hU$1c8f669f60bd35e639b18a4b3220f3894aaab89b51ee90577c7920bb934c80bb	2025-09-29 04:03:09.186045
2	kinopio	pbkdf2:sha256:600000$eWUZEpjTDz8USUDn$84c358555cde1ed82c2c7ab7a0d70d797eb826e57e2d66896cc8ae58e330406b	2025-09-29 04:08:34.681158
3	1234	pbkdf2:sha256:600000$EZ6ZcxkCQoPXOfZF$b23e204ee1dd0bb7f2038d6fa2d214a6cbef9261ae32eeae6e2303a3085207fa	2025-09-29 07:01:06.135391
4	123	pbkdf2:sha256:600000$b30cvMDpEvnHyvwM$fbcca0771e3a14b036aaeffb28a76c1b2d6c5821cdae2b4f532cdbc09ccfad35	2025-10-03 04:25:08.527376
\.


--
-- Name: asset_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.asset_history_id_seq', 132, true);


--
-- Name: assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.assets_id_seq', 62, true);


--
-- Name: daily_snapshots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.daily_snapshots_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.users_id_seq', 5, true);


--
-- Name: asset_history asset_history_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.asset_history
    ADD CONSTRAINT asset_history_pkey PRIMARY KEY (id);


--
-- Name: asset_history asset_history_user_id_record_date_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.asset_history
    ADD CONSTRAINT asset_history_user_id_record_date_key UNIQUE (user_id, record_date);


--
-- Name: assets assets_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assets
    ADD CONSTRAINT assets_pkey PRIMARY KEY (id);


--
-- Name: daily_snapshots daily_snapshots_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.daily_snapshots
    ADD CONSTRAINT daily_snapshots_pkey PRIMARY KEY (id);


--
-- Name: daily_snapshots daily_snapshots_user_id_snapshot_date_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.daily_snapshots
    ADD CONSTRAINT daily_snapshots_user_id_snapshot_date_key UNIQUE (user_id, snapshot_date);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: idx_asset_history_user_date; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX idx_asset_history_user_date ON public.asset_history USING btree (user_id, record_date);


--
-- Name: idx_asset_history_user_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX idx_asset_history_user_id ON public.asset_history USING btree (user_id);


--
-- Name: idx_assets_user_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX idx_assets_user_id ON public.assets USING btree (user_id);


--
-- Name: idx_assets_user_type; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX idx_assets_user_type ON public.assets USING btree (user_id, asset_type);


--
-- Name: asset_history asset_history_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.asset_history
    ADD CONSTRAINT asset_history_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: assets assets_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.assets
    ADD CONSTRAINT assets_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: daily_snapshots daily_snapshots_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.daily_snapshots
    ADD CONSTRAINT daily_snapshots_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: cloud_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO neon_superuser WITH GRANT OPTION;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: cloud_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT ALL ON TABLES TO neon_superuser WITH GRANT OPTION;


--
-- PostgreSQL database dump complete
--

\unrestrict OVhOlUYfQA1JSky2hJdkyWVhdwekcj3aHUqtbVgwl7M4uSZ0dpUXa9ADHUSzJCH


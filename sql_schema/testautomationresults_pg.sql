--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _tbexecution; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._tbexecution (
    executionid smallint,
    name character varying(11) DEFAULT NULL::character varying
);


ALTER TABLE public._tbexecution OWNER TO rebasedata;

--
-- Name: _tbexecutiondetails; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._tbexecutiondetails (
    executiondetailsid smallint,
    executionid smallint,
    featureid smallint,
    testplanid smallint,
    testcaseid smallint,
    status character varying(4) DEFAULT NULL::character varying
);


ALTER TABLE public._tbexecutiondetails OWNER TO rebasedata;

--
-- Name: _tbfeature; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._tbfeature (
    featureid smallint,
    name character varying(9) DEFAULT NULL::character varying
);


ALTER TABLE public._tbfeature OWNER TO rebasedata;

--
-- Name: _tbtestcases; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._tbtestcases (
    testcaseid smallint,
    name character varying(10) DEFAULT NULL::character varying,
    testplanid smallint
);


ALTER TABLE public._tbtestcases OWNER TO rebasedata;

--
-- Name: _tbtestplan; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._tbtestplan (
    testplanid smallint,
    name character varying(10) DEFAULT NULL::character varying,
    featureid smallint
);


ALTER TABLE public._tbtestplan OWNER TO rebasedata;

--
-- Data for Name: _tbexecution; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._tbexecution (executionid, name) FROM stdin;
1	Execution-1
2	Execution-2
3	Execution-3
4	Execution-4
5	Execution-5
6	Execution-6
\.


--
-- Data for Name: _tbexecutiondetails; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._tbexecutiondetails (executiondetailsid, executionid, featureid, testplanid, testcaseid, status) FROM stdin;
1	1	1	1	1	Pass
2	1	1	1	2	Fail
3	1	1	1	3	Pass
4	1	1	2	4	Fail
5	1	1	2	5	Pass
6	1	1	2	6	Pass
7	1	1	3	7	Fail
8	1	1	3	8	Fail
9	1	1	3	9	Pass
10	1	2	4	10	Pass
11	1	2	4	11	Pass
12	1	2	4	12	Pass
13	1	2	5	13	Fail
14	1	2	5	14	Fail
15	1	2	6	15	Pass
16	1	2	6	16	Pass
17	1	2	6	17	Pass
18	2	1	1	1	Pass
19	2	1	1	2	Fail
20	2	1	1	3	Pass
21	2	1	2	4	Fail
22	2	1	2	5	Pass
23	2	1	2	6	Pass
24	2	1	3	7	Pass
25	2	1	3	8	Pass
26	2	1	3	9	Pass
27	2	2	4	10	Pass
28	2	2	4	11	Pass
29	2	2	4	12	Pass
30	2	2	5	13	Fail
31	2	2	5	14	Pass
32	2	2	6	15	Pass
33	2	2	6	16	Pass
34	2	2	6	17	Pass
35	3	1	1	1	Pass
36	3	1	1	2	Pass
37	3	1	1	3	Pass
38	3	1	2	4	Fail
39	3	1	2	5	Pass
40	3	1	2	6	Pass
41	3	1	3	7	Fail
42	3	1	3	8	Fail
43	3	1	3	9	Pass
44	3	2	4	10	Pass
45	3	2	4	11	Pass
46	3	2	4	12	Pass
47	3	2	5	13	Fail
48	3	2	5	14	Fail
49	3	2	6	15	Pass
50	3	2	6	16	Pass
51	3	2	6	17	Pass
52	5	1	1	1	Pass
53	5	1	1	2	Pass
54	5	1	1	3	Pass
55	5	1	2	4	Fail
56	5	1	2	5	Pass
57	5	1	2	6	Pass
58	5	1	3	7	Fail
59	5	1	3	8	Fail
60	5	1	3	9	Pass
61	5	2	4	10	Pass
62	5	2	4	11	Pass
63	5	2	4	12	Pass
64	5	2	5	13	Fail
65	5	2	5	14	Fail
66	5	2	6	15	Pass
67	5	2	6	16	Pass
68	5	2	6	17	Pass
69	4	1	1	1	Pass
70	4	1	1	2	Pass
71	4	1	1	3	Pass
72	4	1	2	4	Fail
73	4	1	2	5	Pass
74	4	1	2	6	Pass
75	4	1	3	7	Fail
76	4	1	3	8	Fail
77	4	1	3	9	Pass
78	4	2	4	10	Pass
79	4	2	4	11	Pass
80	4	2	4	12	Pass
81	4	2	5	13	Fail
82	4	2	5	14	Fail
83	4	2	6	15	Pass
84	4	2	6	16	Pass
85	4	2	6	17	Pass
86	5	3	1	1	Pass
87	5	3	7	18	Pass
88	6	1	1	1	Pass
89	6	1	1	2	Fail
90	6	1	1	3	Pass
91	6	1	2	4	Fail
92	6	1	2	5	Pass
93	6	1	2	6	Pass
94	6	1	3	7	Fail
95	6	1	3	8	Fail
96	6	1	3	9	Pass
97	6	2	4	10	Pass
98	6	2	4	11	Pass
99	6	2	4	12	Pass
100	6	2	5	13	Fail
101	6	2	5	14	Fail
102	6	2	6	15	Pass
103	6	2	6	16	Pass
104	6	2	6	17	Pass
\.


--
-- Data for Name: _tbfeature; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._tbfeature (featureid, name) FROM stdin;
1	Feature-1
2	Feature-2
3	Feature-3
4	Feature-4
5	Feature-5
\.


--
-- Data for Name: _tbtestcases; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._tbtestcases (testcaseid, name, testplanid) FROM stdin;
1	Testcase-1	1
2	Testcase-2	1
3	Testcase-3	1
4	Testcase-1	2
5	Testcase-2	2
6	Testcase-3	2
7	Testcase-1	3
8	Testcase-2	3
9	Testcase-3	3
10	Testcase-1	4
11	Testcase-2	4
12	Testcase-3	4
13	Testcase-1	5
14	Testcase-2	5
15	Testcase-3	6
16	Testcase-1	6
17	Testcase-2	7
18	Testcase-3	7
19	Testcase-1	8
20	Testcase-2	8
21	Testcase-3	9
22	Testcase-1	9
23	Testcase-2	9
24	Testcase-3	10
25	Testcase-1	10
26	Testcase-2	10
27	Testcase-3	10
28	Testcase-1	11
29	Testcase-2	11
30	Testcase-3	12
31	Testcase-1	13
32	Testcase-2	13
33	Testcase-3	13
34	Testcase-1	14
35	Testcase-2	14
36	Testcase-3	14
37	Testcase-1	15
38	Testcase-2	15
39	Testcase-3	15
\.


--
-- Data for Name: _tbtestplan; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._tbtestplan (testplanid, name, featureid) FROM stdin;
1	Testplan-1	1
2	Testplan-2	1
3	Testplan-3	1
4	Testplan-1	2
5	Testplan-2	2
6	Testplan-3	2
7	Testplan-1	3
8	Testplan-2	3
9	Testplan-3	3
10	Testplan-1	4
11	Testplan-2	4
12	Testplan-3	4
13	Testplan-1	5
14	Testplan-2	5
15	Testplan-3	5
\.


--
-- PostgreSQL database dump complete
--


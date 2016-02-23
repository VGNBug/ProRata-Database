--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5beta2
-- Dumped by pg_dump version 9.5beta2

-- Started on 2016-02-23 19:49:36

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2231 (class 0 OID 29807)
-- Dependencies: 180
-- Data for Name: bank; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO bank VALUES (1, 'NatWest', 'Test Addre', 'FA4 1KE', '0126503243', 'NatWest@te');


--
-- TOC entry 2234 (class 0 OID 29822)
-- Dependencies: 183
-- Data for Name: prorata_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO prorata_user VALUES (2450, 'p455w0rd', 'Daniel', 'Pawsey', 'daniel.pawsey@test.com', '1 Testington Lane', 'NR11 1NR');


--
-- TOC entry 2237 (class 0 OID 29837)
-- Dependencies: 186
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO account VALUES (601, 2450, '11223344', '112233', 1);
INSERT INTO account VALUES (604, 2450, '55667788', '223344', 1);
INSERT INTO account VALUES (650, 2450, '55667788', '223344', 1);
INSERT INTO account VALUES (700, 2450, '12121212', '233445', 1);


--
-- TOC entry 2266 (class 0 OID 0)
-- Dependencies: 201
-- Name: account_account_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('account_account_id_pk_seq', 1, false);


--
-- TOC entry 2267 (class 0 OID 0)
-- Dependencies: 202
-- Name: bank_bank_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bank_bank_id_pk_seq', 1, false);


--
-- TOC entry 2232 (class 0 OID 29812)
-- Dependencies: 181
-- Data for Name: employer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO employer VALUES (1, 'Test Company', '1 Mythical lane', 'TE1 2ST');
INSERT INTO employer VALUES (401, 'Undeclaired Employer', NULL, NULL);
INSERT INTO employer VALUES (402, 'Undeclaired Employer', NULL, NULL);
INSERT INTO employer VALUES (403, 'Undeclaired Employer', NULL, NULL);
INSERT INTO employer VALUES (404, 'Undeclaired Employer', NULL, NULL);
INSERT INTO employer VALUES (405, 'Undeclaired Employer', NULL, NULL);
INSERT INTO employer VALUES (406, 'Undeclaired Employer', NULL, NULL);
INSERT INTO employer VALUES (450, 'Undeclaired Employer', NULL, NULL);
INSERT INTO employer VALUES (451, 'Undeclaired Employer', NULL, NULL);
INSERT INTO employer VALUES (500, 'Undeclaired Employer', NULL, NULL);
INSERT INTO employer VALUES (501, 'Undeclaired Employer', NULL, NULL);
INSERT INTO employer VALUES (502, 'Undeclaired Employer', NULL, NULL);
INSERT INTO employer VALUES (550, 'Undeclaired Employer', NULL, NULL);
INSERT INTO employer VALUES (551, 'Undeclaired Employer', NULL, NULL);
INSERT INTO employer VALUES (552, 'Undeclaired Employer', NULL, NULL);


--
-- TOC entry 2238 (class 0 OID 29842)
-- Dependencies: 187
-- Data for Name: employment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO employment VALUES (401, 406, 2450, 15, '2015-10-12', NULL, 10, 'Test employment 3');
INSERT INTO employment VALUES (400, 404, 2450, 15, '2015-11-11', NULL, 15, 'Test employment 2');
INSERT INTO employment VALUES (1, 405, 2450, 15, '2015-11-11', NULL, 25, 'Test employment 1');


--
-- TOC entry 2242 (class 0 OID 29862)
-- Dependencies: 191
-- Data for Name: contract; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2268 (class 0 OID 0)
-- Dependencies: 208
-- Name: contract_contract_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contract_contract_id_pk_seq', 1, false);


--
-- TOC entry 2233 (class 0 OID 29817)
-- Dependencies: 182
-- Data for Name: employer_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2269 (class 0 OID 0)
-- Dependencies: 200
-- Name: employer_contact_employer_contact_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('employer_contact_employer_contact_id_pk_seq', 1, false);


--
-- TOC entry 2270 (class 0 OID 0)
-- Dependencies: 198
-- Name: employer_employer_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('employer_employer_id_pk_seq', 1, false);


--
-- TOC entry 2271 (class 0 OID 0)
-- Dependencies: 210
-- Name: employment_employment_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('employment_employment_id_pk_seq', 1, false);


--
-- TOC entry 2239 (class 0 OID 29847)
-- Dependencies: 188
-- Data for Name: employment_session; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2272 (class 0 OID 0)
-- Dependencies: 205
-- Name: employment_session_employment_session_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('employment_session_employment_session_id_pk_seq', 1, false);


--
-- TOC entry 2240 (class 0 OID 29852)
-- Dependencies: 189
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2243 (class 0 OID 29867)
-- Dependencies: 192
-- Data for Name: pay_cheque; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2273 (class 0 OID 0)
-- Dependencies: 196
-- Name: pay_cheque_pay_cheque_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pay_cheque_pay_cheque_id_pk_seq', 1, false);


--
-- TOC entry 2274 (class 0 OID 0)
-- Dependencies: 197
-- Name: payment_payment_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('payment_payment_id_pk_seq', 1, false);


--
-- TOC entry 2275 (class 0 OID 0)
-- Dependencies: 204
-- Name: prorata_user_prorata_user_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prorata_user_prorata_user_id_pk_seq', 1, false);


--
-- TOC entry 2276 (class 0 OID 0)
-- Dependencies: 193
-- Name: prorata_user_user_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prorata_user_user_id_pk_seq', 1, true);


--
-- TOC entry 2245 (class 0 OID 30020)
-- Dependencies: 194
-- Data for Name: subscription_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO subscription_type VALUES (0, 'standard', 0.00);


--
-- TOC entry 2246 (class 0 OID 30043)
-- Dependencies: 195
-- Data for Name: subscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO subscription VALUES (550, 2450, 0, '2016-02-21 00:00:00+00', NULL);


--
-- TOC entry 2277 (class 0 OID 0)
-- Dependencies: 209
-- Name: subscription_subscription_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('subscription_subscription_id_pk_seq', 1, false);


--
-- TOC entry 2278 (class 0 OID 0)
-- Dependencies: 206
-- Name: subscription_type_subscription_type_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('subscription_type_subscription_type_id_pk_seq', 1, false);


--
-- TOC entry 2235 (class 0 OID 29827)
-- Dependencies: 184
-- Data for Name: tax_bracket; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tax_bracket VALUES (1, '2015-12-30', 1, 1, '1');


--
-- TOC entry 2279 (class 0 OID 0)
-- Dependencies: 199
-- Name: tax_bracket_tax_bracket_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tax_bracket_tax_bracket_id_pk_seq', 1, false);


--
-- TOC entry 2241 (class 0 OID 29857)
-- Dependencies: 190
-- Data for Name: tax_deduction; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2280 (class 0 OID 0)
-- Dependencies: 203
-- Name: tax_deduction_tax_deduction_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tax_deduction_tax_deduction_id_pk_seq', 1, false);


--
-- TOC entry 2236 (class 0 OID 29832)
-- Dependencies: 185
-- Data for Name: user_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2281 (class 0 OID 0)
-- Dependencies: 207
-- Name: user_contact_user_contact_id_pk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_contact_user_contact_id_pk_seq', 1, false);


-- Completed on 2016-02-23 19:49:36

--
-- PostgreSQL database dump complete
--


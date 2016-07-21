--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cwd_app_dir_group_mapping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_app_dir_group_mapping (
    id bigint NOT NULL,
    app_dir_mapping_id bigint NOT NULL,
    application_id bigint NOT NULL,
    directory_id bigint NOT NULL,
    group_name character varying(255) NOT NULL
);


ALTER TABLE cwd_app_dir_group_mapping OWNER TO {{postgresUser}};

--
-- Name: cwd_app_dir_mapping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_app_dir_mapping (
    id bigint NOT NULL,
    application_id bigint NOT NULL,
    directory_id bigint NOT NULL,
    allow_all character(1) NOT NULL,
    list_index integer
);


ALTER TABLE cwd_app_dir_mapping OWNER TO {{postgresUser}};

--
-- Name: cwd_app_dir_operation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_app_dir_operation (
    app_dir_mapping_id bigint NOT NULL,
    operation_type character varying(32) NOT NULL
);


ALTER TABLE cwd_app_dir_operation OWNER TO {{postgresUser}};

--
-- Name: cwd_application; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_application (
    id bigint NOT NULL,
    application_name character varying(255) NOT NULL,
    lower_application_name character varying(255) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    active character(1) NOT NULL,
    description character varying(255),
    application_type character varying(32) NOT NULL,
    credential character varying(255) NOT NULL
);


ALTER TABLE cwd_application OWNER TO {{postgresUser}};

--
-- Name: cwd_application_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_application_address (
    application_id bigint NOT NULL,
    remote_address character varying(255) NOT NULL
);


ALTER TABLE cwd_application_address OWNER TO {{postgresUser}};

--
-- Name: cwd_application_alias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_application_alias (
    id bigint NOT NULL,
    application_id bigint NOT NULL,
    user_name character varying(255) NOT NULL,
    lower_user_name character varying(255) NOT NULL,
    alias_name character varying(255) NOT NULL,
    lower_alias_name character varying(255) NOT NULL
);


ALTER TABLE cwd_application_alias OWNER TO {{postgresUser}};

--
-- Name: cwd_application_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_application_attribute (
    application_id bigint NOT NULL,
    attribute_value character varying(4000),
    attribute_name character varying(255) NOT NULL
);


ALTER TABLE cwd_application_attribute OWNER TO {{postgresUser}};

--
-- Name: cwd_directory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_directory (
    id bigint NOT NULL,
    directory_name character varying(255) NOT NULL,
    lower_directory_name character varying(255) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    active character(1) NOT NULL,
    description character varying(255),
    impl_class character varying(255) NOT NULL,
    lower_impl_class character varying(255) NOT NULL,
    directory_type character varying(32) NOT NULL
);


ALTER TABLE cwd_directory OWNER TO {{postgresUser}};

--
-- Name: cwd_directory_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_directory_attribute (
    directory_id bigint NOT NULL,
    attribute_value character varying(4000),
    attribute_name character varying(255) NOT NULL
);


ALTER TABLE cwd_directory_attribute OWNER TO {{postgresUser}};

--
-- Name: cwd_directory_operation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_directory_operation (
    directory_id bigint NOT NULL,
    operation_type character varying(32) NOT NULL
);


ALTER TABLE cwd_directory_operation OWNER TO {{postgresUser}};

--
-- Name: cwd_expirable_user_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_expirable_user_token (
    id bigint NOT NULL,
    token character varying(255) NOT NULL,
    user_name character varying(255),
    email_address character varying(255),
    expiry_date bigint NOT NULL,
    directory_id bigint NOT NULL
);


ALTER TABLE cwd_expirable_user_token OWNER TO {{postgresUser}};

--
-- Name: cwd_granted_perm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_granted_perm (
    id bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    permission_id integer NOT NULL,
    group_mapping bigint
);


ALTER TABLE cwd_granted_perm OWNER TO {{postgresUser}};

--
-- Name: cwd_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_group (
    id bigint NOT NULL,
    group_name character varying(255) NOT NULL,
    lower_group_name character varying(255) NOT NULL,
    active character(1) NOT NULL,
    is_local character(1) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    description character varying(255),
    group_type character varying(32) NOT NULL,
    directory_id bigint NOT NULL
);


ALTER TABLE cwd_group OWNER TO {{postgresUser}};

--
-- Name: cwd_group_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_group_attribute (
    id bigint NOT NULL,
    group_id bigint NOT NULL,
    directory_id bigint NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(255),
    attribute_lower_value character varying(255)
);


ALTER TABLE cwd_group_attribute OWNER TO {{postgresUser}};

--
-- Name: cwd_membership; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_membership (
    id bigint NOT NULL,
    parent_id bigint,
    child_id bigint,
    membership_type character varying(32),
    group_type character varying(32) NOT NULL,
    parent_name character varying(255) NOT NULL,
    lower_parent_name character varying(255) NOT NULL,
    child_name character varying(255) NOT NULL,
    lower_child_name character varying(255) NOT NULL,
    directory_id bigint NOT NULL
);


ALTER TABLE cwd_membership OWNER TO {{postgresUser}};

--
-- Name: cwd_property; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_property (
    property_key character varying(255) NOT NULL,
    property_name character varying(255) NOT NULL,
    property_value character varying(4000)
);


ALTER TABLE cwd_property OWNER TO {{postgresUser}};

--
-- Name: cwd_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_token (
    id bigint NOT NULL,
    directory_id bigint NOT NULL,
    entity_name character varying(255) NOT NULL,
    random_number bigint NOT NULL,
    identifier_hash character varying(255) NOT NULL,
    random_hash character varying(255) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    last_accessed_date timestamp without time zone NOT NULL,
    last_accessed_time bigint DEFAULT 0 NOT NULL,
    duration bigint
);


ALTER TABLE cwd_token OWNER TO {{postgresUser}};

--
-- Name: cwd_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_user (
    id bigint NOT NULL,
    user_name character varying(255) NOT NULL,
    lower_user_name character varying(255) NOT NULL,
    active character(1) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    first_name character varying(255),
    lower_first_name character varying(255),
    last_name character varying(255),
    lower_last_name character varying(255),
    display_name character varying(255),
    lower_display_name character varying(255),
    email_address character varying(255),
    lower_email_address character varying(255),
    external_id character varying(255),
    directory_id bigint NOT NULL,
    credential character varying(255)
);


ALTER TABLE cwd_user OWNER TO {{postgresUser}};

--
-- Name: cwd_user_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_user_attribute (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    directory_id bigint NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(255),
    attribute_lower_value character varying(255)
);


ALTER TABLE cwd_user_attribute OWNER TO {{postgresUser}};

--
-- Name: cwd_user_credential_record; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_user_credential_record (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    password_hash character varying(255) NOT NULL,
    list_index integer
);


ALTER TABLE cwd_user_credential_record OWNER TO {{postgresUser}};

--
-- Name: cwd_webhook; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_webhook (
    id bigint NOT NULL,
    endpoint_url character varying(255) NOT NULL,
    application_id bigint NOT NULL,
    token character varying(255),
    oldest_failure_date timestamp without time zone,
    failures_since_last_success bigint NOT NULL
);


ALTER TABLE cwd_webhook OWNER TO {{postgresUser}};

--
-- Name: hibernate_unique_key; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE hibernate_unique_key (
    next_hi integer
);


ALTER TABLE hibernate_unique_key OWNER TO {{postgresUser}};

--
-- Data for Name: cwd_app_dir_group_mapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_app_dir_group_mapping (id, app_dir_mapping_id, application_id, directory_id, group_name) FROM stdin;
262145	196609	2	32769	crowd-administrators
\.


--
-- Data for Name: cwd_app_dir_mapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_app_dir_mapping (id, application_id, directory_id, allow_all, list_index) FROM stdin;
196609	2	32769	F	0
196610	3	32769	T	0
196611	4	32769	T	0
{% if jira %}196612	5	32769	T	0
{% endif %}{% if bitbucket %}196613	6	32769	T	0
{% endif %}\.


--
-- Data for Name: cwd_app_dir_operation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_app_dir_operation (app_dir_mapping_id, operation_type) FROM stdin;
196609	UPDATE_ROLE_ATTRIBUTE
196609	DELETE_GROUP
196609	CREATE_USER
196609	DELETE_USER
196609	UPDATE_ROLE
196609	UPDATE_GROUP
196609	DELETE_ROLE
196609	UPDATE_USER
196609	CREATE_GROUP
196609	UPDATE_USER_ATTRIBUTE
196609	CREATE_ROLE
196609	UPDATE_GROUP_ATTRIBUTE
196610	UPDATE_ROLE_ATTRIBUTE
196610	DELETE_GROUP
196610	CREATE_USER
196610	DELETE_USER
196610	UPDATE_ROLE
196610	UPDATE_GROUP
196610	DELETE_ROLE
196610	UPDATE_USER
196610	CREATE_GROUP
196610	UPDATE_USER_ATTRIBUTE
196610	CREATE_ROLE
196610	UPDATE_GROUP_ATTRIBUTE
196611	UPDATE_ROLE_ATTRIBUTE
196611	DELETE_GROUP
196611	CREATE_USER
196611	DELETE_USER
196611	UPDATE_ROLE
196611	UPDATE_GROUP
196611	DELETE_ROLE
196611	UPDATE_USER
196611	CREATE_GROUP
196611	UPDATE_USER_ATTRIBUTE
196611	CREATE_ROLE
196611	UPDATE_GROUP_ATTRIBUTE
{% if jira %}196612	UPDATE_ROLE_ATTRIBUTE
196612	DELETE_GROUP
196612	CREATE_USER
196612	DELETE_USER
196612	UPDATE_ROLE
196612	UPDATE_GROUP
196612	DELETE_ROLE
196612	UPDATE_USER
196612	CREATE_GROUP
196612	UPDATE_USER_ATTRIBUTE
196612	CREATE_ROLE
196612	UPDATE_GROUP_ATTRIBUTE
{% endif %}{% if bitbucket %}196613	UPDATE_ROLE_ATTRIBUTE
196613	DELETE_GROUP
196613	CREATE_USER
196613	DELETE_USER
196613	UPDATE_ROLE
196613	UPDATE_GROUP
196613	DELETE_ROLE
196613	UPDATE_USER
196613	CREATE_GROUP
196613	UPDATE_USER_ATTRIBUTE
196613	CREATE_ROLE
196613	UPDATE_GROUP_ATTRIBUTE
{% endif %}\.


--
-- Data for Name: cwd_application; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_application (id, application_name, lower_application_name, created_date, updated_date, active, description, application_type, credential) FROM stdin;
1	google-apps	google-apps	2016-07-07 08:39:01.36	2016-07-07 08:39:42.22	T	Google Applications Connector	PLUGIN	{PKCS5S2}Fsxc/gpwwjiFzNAHBy7e3SUfj1R3CmsWOstEq699qF5tu7spcRHPfHq3+CDiejSy
2	crowd	crowd	2016-07-07 08:39:37.895	2016-07-07 08:39:42.233	T	Crowd console	CROWD	{PKCS5S2}+ebYspXujIGikRoLVenN/BpbtwEg+WfR1u1Okk1BJpFG4nJwbeAr0Sv5U+YG7x5k
3	crowd-openid-server	crowd-openid-server	2016-07-07 08:39:41.799	2016-07-07 08:39:42.234	T	CrowdID OpenID server	GENERIC_APPLICATION	{PKCS5S2}FR5D2WA0AbOfVNlegv1TQ0CaEh5kGqFIifunM5IAqfEXRqKObAHpQMbTtXCukb/j
4	polyproject	polyproject	2016-07-07 08:41:24.738	2016-07-07 08:41:24.739	T	Appli de stage	GENERIC_APPLICATION	{PKCS5S2}5nDw0ntnUSnkEnkEZovxnjiMYHW9vyqgSoCzHx85BmiofzKexjP3yMbKy4ABNhiS
{% if bitbucket%}6	bitbucket	bitbucket	2016-07-07 08:42:14.028	2016-07-11 15:12:57.099	T		STASH	{PKCS5S2}QHH4F5gF4JGdU4sRY9HVA0Fwfh30bLD77b/k8UMqID6HEBaCw+aSFwoB4xXBEYaK
{% endif %}{% if jira %}5	jira	jira	2016-07-07 08:41:47.79	2016-07-11 15:15:20.199	T		JIRA	{PKCS5S2}S005JOmfoAFL9kUnfhEE5xc8pC1R9wmprXrPhIz4e4liG+RvsHd/FJWWbxmpxkLW
{% endif %}\.


--
-- Data for Name: cwd_application_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_application_address (application_id, remote_address) FROM stdin;
2	localhost
2	{{crowd.ip}}
2	9a7324b8cbea
2	0:0:0:0:0:0:0:1
2	127.0.0.1
3	localhost
3	172.17.0.3
3	127.0.0.1
4	172.18.0.1
{% if jira %}5	172.17.0.1
5	{{ jira.ip }}
{% endif %}{% if bitbucket %}6   {{ bitbucket.ip }}
6   172.18.0.1
{% endif %}\.


--
-- Data for Name: cwd_application_alias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_application_alias (id, application_id, user_name, lower_user_name, alias_name, lower_alias_name) FROM stdin;
\.


--
-- Data for Name: cwd_application_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_application_attribute (application_id, attribute_value, attribute_name) FROM stdin;
1	true	atlassian_sha1_applied
2	true	atlassian_sha1_applied
3	true	atlassian_sha1_applied
4	http://172.17.0.1/	applicationURL
4	true	atlassian_sha1_applied
{% if jira %}5	{{jira.baseUrl}}/{{jira.subdirectory}}/	applicationURL
5	true	atlassian_sha1_applied
{% endif %}{% if bitbucket %}6	{{bitbucket.baseUrl}}/{{bitbucket.subdirectory}}/	applicationURL
6	true	atlassian_sha1_applied
{% endif %}\.


--
-- Data for Name: cwd_directory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_directory (id, directory_name, lower_directory_name, created_date, updated_date, active, description, impl_class, lower_impl_class, directory_type) FROM stdin;
32769	Polytech'Nice Sophia Antipolis School of Engineering Crowd server	polytech'nice sophia antipolis school of engineering crowd server	2016-07-07 08:39:29.421	2016-07-07 08:39:42.226	T		com.atlassian.crowd.directory.InternalDirectory	com.atlassian.crowd.directory.internaldirectory	INTERNAL
\.


--
-- Data for Name: cwd_directory_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_directory_attribute (directory_id, attribute_value, attribute_name) FROM stdin;
32769		password_complexity_message
32769	atlassian-security	user_encryption_method
32769	0	password_max_attempts
32769	0	password_history_count
32769		password_regex
32769	0	password_max_change_time
\.


--
-- Data for Name: cwd_directory_operation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_directory_operation (directory_id, operation_type) FROM stdin;
32769	CREATE_USER
32769	CREATE_GROUP
32769	UPDATE_USER
32769	UPDATE_GROUP
32769	UPDATE_USER_ATTRIBUTE
32769	UPDATE_GROUP_ATTRIBUTE
32769	DELETE_USER
32769	DELETE_GROUP
\.


--
-- Data for Name: cwd_expirable_user_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_expirable_user_token (id, token, user_name, email_address, expiry_date, directory_id) FROM stdin;
\.


--
-- Data for Name: cwd_granted_perm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_granted_perm (id, created_date, permission_id, group_mapping) FROM stdin;
229377	2016-07-07 08:39:37.921	2	262145
229378	2016-07-07 08:39:42.268	2	262145
\.


--
-- Data for Name: cwd_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_group (id, group_name, lower_group_name, active, is_local, created_date, updated_date, description, group_type, directory_id) FROM stdin;
131073	crowd-administrators	crowd-administrators	T	F	2016-07-07 08:39:37.837	2016-07-07 08:39:37.837	\N	GROUP	32769
131074	jira-administrators	jira-administrators	T	F	2016-07-07 08:40:30.678	2016-07-07 08:40:30.678		GROUP	32769
131075	jira-developers	jira-developers	T	F	2016-07-07 08:40:35.432	2016-07-07 08:40:35.432		GROUP	32769
131076	jira-users	jira-users	T	F	2016-07-07 08:40:40.483	2016-07-07 08:40:40.483		GROUP	32769
\.


--
-- Data for Name: cwd_group_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_group_attribute (id, group_id, directory_id, attribute_name, attribute_value, attribute_lower_value) FROM stdin;
\.


--
-- Data for Name: cwd_membership; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_membership (id, parent_id, child_id, membership_type, group_type, parent_name, lower_parent_name, child_name, lower_child_name, directory_id) FROM stdin;
163841	131073	65537	GROUP_USER	GROUP	crowd-administrators	crowd-administrators	mosser	mosser	32769
163842	131074	65537	GROUP_USER	GROUP	jira-administrators	jira-administrators	mosser	mosser	32769
163843	131075	65537	GROUP_USER	GROUP	jira-developers	jira-developers	mosser	mosser	32769
163844	131076	65537	GROUP_USER	GROUP	jira-users	jira-users	mosser	mosser	32769
\.


--
-- Data for Name: cwd_property; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_property (property_key, property_name, property_value) FROM stdin;
crowd	deployment.title	Polytech'Nice Sophia Antipolis School of Engineering Crowd server
crowd	des.encryption.key	7NkpFlRtTBw=
crowd	session.time	1800000
crowd	cache.enabled	true
crowd	mailserver.message.template	Hello $firstname $lastname,\n\nYou (or someone else) have requested to reset your password for $deploymenttitle on $date.\n\nIf you follow the link below you will be able to personally reset your password.\n$resetlink\n\nThis password reset request is valid for the next 24 hours.\n\nHere are the details of your account:\n\nUsername: $username\nFull name: $firstname $lastname\nYour account is currently: $active\n\n$deploymenttitle administrator
crowd	email.template.forgotten.username	Hello $firstname $lastname,\n\nYou have requested the username for your email address: $email.\n\nYour username(s) are: $username\n\nIf you think this email was sent incorrectly, please contact one of the administrators at: $admincontact\n\n$deploymenttitle administrator
crowd	current.license.resource.total	0
crowd	secure.cookie	false
crowd	com.sun.jndi.ldap.connect.pool.initsize	1
crowd	com.sun.jndi.ldap.connect.pool.prefsize	10
crowd	com.sun.jndi.ldap.connect.pool.maxsize	0
crowd	com.sun.jndi.ldap.connect.pool.timeout	30000
crowd	com.sun.jndi.ldap.connect.pool.protocol	plain ssl
crowd	com.sun.jndi.ldap.connect.pool.authentication	simple
crowd	build.number	665
\.


--
-- Data for Name: cwd_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_token (id, directory_id, entity_name, random_number, identifier_hash, random_hash, created_date, last_accessed_date, last_accessed_time, duration) FROM stdin;
294913	-1	crowd	8842999515710312731	u489Iq0t0xJ3DKsvkNdMcQ00	tZ6b7jIMA6xBBOW0VQFBYA00	2016-07-07 08:39:42.326	2016-07-07 08:39:42.326	1467880782326	\N
294915	32769	mosser	4130975346835697029	as0UUhn0v37l0gs0HnvGCQ00	IMffWizE6ev252Jnsqk2XA00	2016-07-07 08:39:52.25	2016-07-07 08:39:52.25	1467880934097	\N
327684	-1	jira	8304706563784067373	hVtW5FElx8qNjHjM06Kw8A00	CskrP0rfac0oCOPb3libpA00	2016-07-11 15:21:36.761	2016-07-11 15:21:36.761	1468250561107	60
327682	32769	mosser	7330111551665492272	FBPJni260Jnrw0hG54aRVA00	r3XxJer9ord1FJmoMpSpCw00	2016-07-11 15:11:34.035	2016-07-11 15:11:34.035	1468251162193	\N
327681	-1	crowd	6909933844937244689	HynTzREIXxOhhDEp3DsKxg00	ysEp6n0UQND7PzfiCbGjHg00	2016-07-11 15:11:16.696	2016-07-11 15:11:16.696	1468251162269	\N
327683	-1	bitbucket	9067145202391027781	mW0xk2ARhvoQWPw4dc6mSQ00	0BF2yPJNOVbq5fIcE0Jzmg00	2016-07-11 15:13:03.36	2016-07-11 15:13:03.36	1468250000401	60
\.


--
-- Data for Name: cwd_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_user (id, user_name, lower_user_name, active, created_date, updated_date, first_name, lower_first_name, last_name, lower_last_name, display_name, lower_display_name, email_address, lower_email_address, external_id, directory_id, credential) FROM stdin;
65537	mosser	mosser	T	2016-07-07 08:39:37.794	2016-07-07 08:39:37.794	Sebastien	sebastien	Mosser	mosser	Sebastien Mosser	sebastien mosser	mosser@polytech.unice.fr	mosser@polytech.unice.fr	3758d6eb-3142-4912-a10f-7ee680464c0a	32769	{PKCS5S2}V4Bd7HI5cEfi8yjSJpRCic0vOa+Fb0hpkgLStm/i15C0AxU0CxiuIFwhRgqfu8qH
\.


--
-- Data for Name: cwd_user_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_user_attribute (id, user_id, directory_id, attribute_name, attribute_value, attribute_lower_value) FROM stdin;
98305	65537	32769	requiresPasswordChange	false	false
98306	65537	32769	invalidPasswordAttempts	0	0
98307	65537	32769	passwordLastChanged	1467880777804	1467880777804
98308	65537	32769	lastAuthenticated	1468249893976	1468249893976
98309	65537	32769	lastActive	1468251162193	1468251162193
\.


--
-- Data for Name: cwd_user_credential_record; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_user_credential_record (id, user_id, password_hash, list_index) FROM stdin;
\.


--
-- Data for Name: cwd_webhook; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_webhook (id, endpoint_url, application_id, token, oldest_failure_date, failures_since_last_success) FROM stdin;
\.


--
-- Data for Name: hibernate_unique_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY hibernate_unique_key (next_hi) FROM stdin;
11
\.


--
-- Name: cwd_app_dir_group_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_app_dir_group_mapping
    ADD CONSTRAINT cwd_app_dir_group_mapping_pkey PRIMARY KEY (id);


--
-- Name: cwd_app_dir_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_app_dir_mapping
    ADD CONSTRAINT cwd_app_dir_mapping_pkey PRIMARY KEY (id);


--
-- Name: cwd_app_dir_operation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_app_dir_operation
    ADD CONSTRAINT cwd_app_dir_operation_pkey PRIMARY KEY (app_dir_mapping_id, operation_type);


--
-- Name: cwd_application_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application_address
    ADD CONSTRAINT cwd_application_address_pkey PRIMARY KEY (application_id, remote_address);


--
-- Name: cwd_application_alias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application_alias
    ADD CONSTRAINT cwd_application_alias_pkey PRIMARY KEY (id);


--
-- Name: cwd_application_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application_attribute
    ADD CONSTRAINT cwd_application_attribute_pkey PRIMARY KEY (application_id, attribute_name);


--
-- Name: cwd_application_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application
    ADD CONSTRAINT cwd_application_pkey PRIMARY KEY (id);


--
-- Name: cwd_directory_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_directory_attribute
    ADD CONSTRAINT cwd_directory_attribute_pkey PRIMARY KEY (directory_id, attribute_name);


--
-- Name: cwd_directory_operation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_directory_operation
    ADD CONSTRAINT cwd_directory_operation_pkey PRIMARY KEY (directory_id, operation_type);


--
-- Name: cwd_directory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_directory
    ADD CONSTRAINT cwd_directory_pkey PRIMARY KEY (id);


--
-- Name: cwd_expirable_user_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_expirable_user_token
    ADD CONSTRAINT cwd_expirable_user_token_pkey PRIMARY KEY (id);


--
-- Name: cwd_granted_perm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_granted_perm
    ADD CONSTRAINT cwd_granted_perm_pkey PRIMARY KEY (id);


--
-- Name: cwd_group_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_group_attribute
    ADD CONSTRAINT cwd_group_attribute_pkey PRIMARY KEY (id);


--
-- Name: cwd_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_group
    ADD CONSTRAINT cwd_group_pkey PRIMARY KEY (id);


--
-- Name: cwd_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_membership
    ADD CONSTRAINT cwd_membership_pkey PRIMARY KEY (id);


--
-- Name: cwd_property_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_property
    ADD CONSTRAINT cwd_property_pkey PRIMARY KEY (property_key, property_name);


--
-- Name: cwd_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_token
    ADD CONSTRAINT cwd_token_pkey PRIMARY KEY (id);


--
-- Name: cwd_user_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user_attribute
    ADD CONSTRAINT cwd_user_attribute_pkey PRIMARY KEY (id);


--
-- Name: cwd_user_credential_record_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user_credential_record
    ADD CONSTRAINT cwd_user_credential_record_pkey PRIMARY KEY (id);


--
-- Name: cwd_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user
    ADD CONSTRAINT cwd_user_pkey PRIMARY KEY (id);


--
-- Name: cwd_webhook_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_webhook
    ADD CONSTRAINT cwd_webhook_pkey PRIMARY KEY (id);


--
-- Name: uk_alias_app_l_alias; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application_alias
    ADD CONSTRAINT uk_alias_app_l_alias UNIQUE (application_id, lower_alias_name);


--
-- Name: uk_alias_app_l_username; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application_alias
    ADD CONSTRAINT uk_alias_app_l_username UNIQUE (application_id, lower_user_name);


--
-- Name: uk_app_dir; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_app_dir_mapping
    ADD CONSTRAINT uk_app_dir UNIQUE (application_id, directory_id);


--
-- Name: uk_app_dir_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_app_dir_group_mapping
    ADD CONSTRAINT uk_app_dir_group UNIQUE (app_dir_mapping_id, group_name);


--
-- Name: uk_app_l_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application
    ADD CONSTRAINT uk_app_l_name UNIQUE (lower_application_name);


--
-- Name: uk_dir_l_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_directory
    ADD CONSTRAINT uk_dir_l_name UNIQUE (lower_directory_name);


--
-- Name: uk_expirable_user_token; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_expirable_user_token
    ADD CONSTRAINT uk_expirable_user_token UNIQUE (token);


--
-- Name: uk_group_name_attr_lval; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_group_attribute
    ADD CONSTRAINT uk_group_name_attr_lval UNIQUE (group_id, attribute_name, attribute_lower_value);


--
-- Name: uk_group_name_dir_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_group
    ADD CONSTRAINT uk_group_name_dir_id UNIQUE (lower_group_name, directory_id);


--
-- Name: uk_mem_parent_child_type; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_membership
    ADD CONSTRAINT uk_mem_parent_child_type UNIQUE (parent_id, child_id, membership_type);


--
-- Name: uk_token_id_hash; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_token
    ADD CONSTRAINT uk_token_id_hash UNIQUE (identifier_hash);


--
-- Name: uk_user_attr_name_lval; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user_attribute
    ADD CONSTRAINT uk_user_attr_name_lval UNIQUE (user_id, attribute_name, attribute_lower_value);


--
-- Name: uk_user_name_dir_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user
    ADD CONSTRAINT uk_user_name_dir_id UNIQUE (lower_user_name, directory_id);


--
-- Name: uk_webhook_url_app; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_webhook
    ADD CONSTRAINT uk_webhook_url_app UNIQUE (endpoint_url, application_id);


--
-- Name: idx_app_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_app_active ON cwd_application USING btree (active);


--
-- Name: idx_app_dir_group_group_dir; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_app_dir_group_group_dir ON cwd_app_dir_group_mapping USING btree (directory_id, group_name);


--
-- Name: idx_app_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_app_type ON cwd_application USING btree (application_type);


--
-- Name: idx_dir_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dir_active ON cwd_directory USING btree (active);


--
-- Name: idx_dir_l_impl_class; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dir_l_impl_class ON cwd_directory USING btree (lower_impl_class);


--
-- Name: idx_dir_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dir_type ON cwd_directory USING btree (directory_type);


--
-- Name: idx_expirable_user_token_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_expirable_user_token_key ON cwd_expirable_user_token USING btree (token);


--
-- Name: idx_external_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_external_id ON cwd_user USING btree (external_id);


--
-- Name: idx_group_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_active ON cwd_group USING btree (active, directory_id);


--
-- Name: idx_group_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_attr_dir_name_lval ON cwd_group_attribute USING btree (directory_id, attribute_name, attribute_lower_value);


--
-- Name: idx_group_attr_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_attr_group_id ON cwd_group_attribute USING btree (group_id);


--
-- Name: idx_group_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_dir_id ON cwd_group USING btree (directory_id);


--
-- Name: idx_mem_dir_child; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_child ON cwd_membership USING btree (membership_type, lower_child_name, directory_id);


--
-- Name: idx_mem_dir_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_parent ON cwd_membership USING btree (membership_type, lower_parent_name, directory_id);


--
-- Name: idx_mem_dir_parent_child; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_parent_child ON cwd_membership USING btree (membership_type, lower_parent_name, lower_child_name, directory_id);


--
-- Name: idx_token_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_token_dir_id ON cwd_token USING btree (directory_id);


--
-- Name: idx_token_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_token_key ON cwd_token USING btree (random_hash);


--
-- Name: idx_token_last_access; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_token_last_access ON cwd_token USING btree (last_accessed_date);


--
-- Name: idx_token_name_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_token_name_dir_id ON cwd_token USING btree (directory_id, entity_name);


--
-- Name: idx_user_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_active ON cwd_user USING btree (active, directory_id);


--
-- Name: idx_user_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_attr_dir_name_lval ON cwd_user_attribute USING btree (directory_id, attribute_name, attribute_lower_value);


--
-- Name: idx_user_attr_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_attr_user_id ON cwd_user_attribute USING btree (user_id);


--
-- Name: idx_user_lower_display_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_lower_display_name ON cwd_user USING btree (lower_display_name, directory_id);


--
-- Name: idx_user_lower_email_address; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_lower_email_address ON cwd_user USING btree (lower_email_address, directory_id);


--
-- Name: idx_user_lower_first_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_lower_first_name ON cwd_user USING btree (lower_first_name, directory_id);


--
-- Name: idx_user_lower_last_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_lower_last_name ON cwd_user USING btree (lower_last_name, directory_id);


--
-- Name: idx_user_name_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_name_dir_id ON cwd_user USING btree (directory_id);


--
-- Name: idx_webhook_url_app; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_webhook_url_app ON cwd_webhook USING btree (endpoint_url, application_id);


--
-- Name: fk_alias_app_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application_alias
    ADD CONSTRAINT fk_alias_app_id FOREIGN KEY (application_id) REFERENCES cwd_application(id);


--
-- Name: fk_app_dir_app; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_app_dir_mapping
    ADD CONSTRAINT fk_app_dir_app FOREIGN KEY (application_id) REFERENCES cwd_application(id);


--
-- Name: fk_app_dir_dir; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_app_dir_mapping
    ADD CONSTRAINT fk_app_dir_dir FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: fk_app_dir_group_app; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_app_dir_group_mapping
    ADD CONSTRAINT fk_app_dir_group_app FOREIGN KEY (application_id) REFERENCES cwd_application(id);


--
-- Name: fk_app_dir_group_dir; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_app_dir_group_mapping
    ADD CONSTRAINT fk_app_dir_group_dir FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: fk_app_dir_group_mapping; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_app_dir_group_mapping
    ADD CONSTRAINT fk_app_dir_group_mapping FOREIGN KEY (app_dir_mapping_id) REFERENCES cwd_app_dir_mapping(id);


--
-- Name: fk_app_dir_mapping; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_app_dir_operation
    ADD CONSTRAINT fk_app_dir_mapping FOREIGN KEY (app_dir_mapping_id) REFERENCES cwd_app_dir_mapping(id);


--
-- Name: fk_application_address; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application_address
    ADD CONSTRAINT fk_application_address FOREIGN KEY (application_id) REFERENCES cwd_application(id);


--
-- Name: fk_application_attribute; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application_attribute
    ADD CONSTRAINT fk_application_attribute FOREIGN KEY (application_id) REFERENCES cwd_application(id);


--
-- Name: fk_directory_attribute; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_directory_attribute
    ADD CONSTRAINT fk_directory_attribute FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: fk_directory_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_group
    ADD CONSTRAINT fk_directory_id FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: fk_directory_operation; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_directory_operation
    ADD CONSTRAINT fk_directory_operation FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: fk_group_attr_dir_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_group_attribute
    ADD CONSTRAINT fk_group_attr_dir_id FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: fk_group_attr_id_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_group_attribute
    ADD CONSTRAINT fk_group_attr_id_group_id FOREIGN KEY (group_id) REFERENCES cwd_group(id);


--
-- Name: fk_membership_dir; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_membership
    ADD CONSTRAINT fk_membership_dir FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: fk_permission_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_granted_perm
    ADD CONSTRAINT fk_permission_group FOREIGN KEY (group_mapping) REFERENCES cwd_app_dir_group_mapping(id);


--
-- Name: fk_user_attr_dir_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user_attribute
    ADD CONSTRAINT fk_user_attr_dir_id FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: fk_user_attribute_id_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user_attribute
    ADD CONSTRAINT fk_user_attribute_id_user_id FOREIGN KEY (user_id) REFERENCES cwd_user(id);


--
-- Name: fk_user_cred_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user_credential_record
    ADD CONSTRAINT fk_user_cred_user FOREIGN KEY (user_id) REFERENCES cwd_user(id);


--
-- Name: fk_user_dir_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user
    ADD CONSTRAINT fk_user_dir_id FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: fk_webhook_app; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_webhook
    ADD CONSTRAINT fk_webhook_app FOREIGN KEY (application_id) REFERENCES cwd_application(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


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
-- Name: postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


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
-- Name: AO_02A6C0_REJECTED_REF; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_02A6C0_REJECTED_REF" (
    "ID" integer NOT NULL,
    "REF_DISPLAY_ID" character varying(450) NOT NULL,
    "REF_ID" character varying(450) NOT NULL,
    "REF_STATUS" integer DEFAULT 0 NOT NULL,
    "REPOSITORY_ID" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "AO_02A6C0_REJECTED_REF" OWNER TO {{postgresUser}};

--
-- Name: AO_02A6C0_REJECTED_REF_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_02A6C0_REJECTED_REF_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_02A6C0_REJECTED_REF_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_02A6C0_REJECTED_REF_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_02A6C0_REJECTED_REF_ID_seq" OWNED BY "AO_02A6C0_REJECTED_REF"."ID";


--
-- Name: AO_02A6C0_SYNC_CONFIG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_02A6C0_SYNC_CONFIG" (
    "IS_ENABLED" boolean NOT NULL,
    "LAST_SYNC" timestamp without time zone NOT NULL,
    "REPOSITORY_ID" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "AO_02A6C0_SYNC_CONFIG" OWNER TO {{postgresUser}};

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_38321B_CUSTOM_CONTENT_LINK" (
    "CONTENT_KEY" character varying(255),
    "ID" integer NOT NULL,
    "LINK_LABEL" character varying(255),
    "LINK_URL" character varying(255),
    "SEQUENCE" integer DEFAULT 0
);


ALTER TABLE "AO_38321B_CUSTOM_CONTENT_LINK" OWNER TO {{postgresUser}};

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNED BY "AO_38321B_CUSTOM_CONTENT_LINK"."ID";


--
-- Name: AO_38F373_COMMENT_LIKE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_38F373_COMMENT_LIKE" (
    "COMMENT_ID" bigint DEFAULT 0 NOT NULL,
    "ID" bigint NOT NULL,
    "USER_ID" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "AO_38F373_COMMENT_LIKE" OWNER TO {{postgresUser}};

--
-- Name: AO_38F373_COMMENT_LIKE_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_38F373_COMMENT_LIKE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_38F373_COMMENT_LIKE_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_38F373_COMMENT_LIKE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_38F373_COMMENT_LIKE_ID_seq" OWNED BY "AO_38F373_COMMENT_LIKE"."ID";


--
-- Name: AO_58E6CE_HIPCHAT_NOTIFICATION; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_58E6CE_HIPCHAT_NOTIFICATION" (
    "ID" bigint NOT NULL,
    "NOTIFICATION_TYPE" character varying(255) NOT NULL,
    "REPO_ID" integer DEFAULT 0 NOT NULL,
    "ROOM_ID" character varying(255) NOT NULL
);


ALTER TABLE "AO_58E6CE_HIPCHAT_NOTIFICATION" OWNER TO {{postgresUser}};

--
-- Name: AO_58E6CE_HIPCHAT_NOTIFICATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_58E6CE_HIPCHAT_NOTIFICATION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_58E6CE_HIPCHAT_NOTIFICATION_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_58E6CE_HIPCHAT_NOTIFICATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_58E6CE_HIPCHAT_NOTIFICATION_ID_seq" OWNED BY "AO_58E6CE_HIPCHAT_NOTIFICATION"."ID";


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_5FB9D7_AOHIP_CHAT_LINK" (
    "ADDON_TOKEN_EXPIRY" timestamp without time zone,
    "API_URL" character varying(255),
    "CONNECT_DESCRIPTOR" text,
    "GROUP_ID" integer DEFAULT 0,
    "GROUP_NAME" character varying(255),
    "ID" integer NOT NULL,
    "OAUTH_ID" character varying(255),
    "SECRET_KEY" character varying(255),
    "SYSTEM_PASSWORD" character varying(255),
    "SYSTEM_TOKEN_EXPIRY" timestamp without time zone,
    "SYSTEM_USER" character varying(255),
    "SYSTEM_USER_TOKEN" character varying(255),
    "TOKEN" character varying(255)
);


ALTER TABLE "AO_5FB9D7_AOHIP_CHAT_LINK" OWNER TO {{postgresUser}};

--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" OWNED BY "AO_5FB9D7_AOHIP_CHAT_LINK"."ID";


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_5FB9D7_AOHIP_CHAT_USER" (
    "HIP_CHAT_LINK_ID" integer,
    "HIP_CHAT_USER_ID" character varying(255),
    "HIP_CHAT_USER_NAME" character varying(255),
    "ID" integer NOT NULL,
    "REFRESH_CODE" character varying(255),
    "USER_KEY" character varying(255),
    "USER_SCOPES" character varying(255),
    "USER_TOKEN" character varying(255),
    "USER_TOKEN_EXPIRY" timestamp without time zone
);


ALTER TABLE "AO_5FB9D7_AOHIP_CHAT_USER" OWNER TO {{postgresUser}};

--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" OWNED BY "AO_5FB9D7_AOHIP_CHAT_USER"."ID";


--
-- Name: AO_616D7B_BRANCH_MODEL; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_616D7B_BRANCH_MODEL" (
    "DEV_ID" character varying(450),
    "DEV_USE_DEFAULT" boolean NOT NULL,
    "IS_ENABLED" boolean NOT NULL,
    "PROD_ID" character varying(450),
    "PROD_USE_DEFAULT" boolean NOT NULL,
    "REPOSITORY_ID" integer NOT NULL
);


ALTER TABLE "AO_616D7B_BRANCH_MODEL" OWNER TO {{postgresUser}};

--
-- Name: AO_616D7B_BRANCH_TYPE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_616D7B_BRANCH_TYPE" (
    "FK_BM_ID" integer NOT NULL,
    "ID" integer NOT NULL,
    "IS_ENABLED" boolean NOT NULL,
    "PREFIX" character varying(450),
    "TYPE_ID" character varying(450)
);


ALTER TABLE "AO_616D7B_BRANCH_TYPE" OWNER TO {{postgresUser}};

--
-- Name: AO_616D7B_BRANCH_TYPE_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_616D7B_BRANCH_TYPE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_616D7B_BRANCH_TYPE_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_616D7B_BRANCH_TYPE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_616D7B_BRANCH_TYPE_ID_seq" OWNED BY "AO_616D7B_BRANCH_TYPE"."ID";


--
-- Name: AO_6978BB_PERMITTED_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_6978BB_PERMITTED_ENTITY" (
    "ENTITY_ID" integer NOT NULL,
    "FK_RESTRICTED_ID" integer NOT NULL,
    "GROUP_ID" character varying(255),
    "USER_ID" integer
);


ALTER TABLE "AO_6978BB_PERMITTED_ENTITY" OWNER TO {{postgresUser}};

--
-- Name: AO_6978BB_PERMITTED_ENTITY_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_6978BB_PERMITTED_ENTITY_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_6978BB_PERMITTED_ENTITY_ENTITY_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_6978BB_PERMITTED_ENTITY_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_6978BB_PERMITTED_ENTITY_ENTITY_ID_seq" OWNED BY "AO_6978BB_PERMITTED_ENTITY"."ENTITY_ID";


--
-- Name: AO_6978BB_RESTRICTED_REF; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_6978BB_RESTRICTED_REF" (
    "REF_ID" integer NOT NULL,
    "REF_TYPE" character varying(255) NOT NULL,
    "REF_VALUE" character varying(450) NOT NULL,
    "REPOSITORY_ID" integer NOT NULL,
    "RESTRICTION_TYPE" character varying(255) NOT NULL
);


ALTER TABLE "AO_6978BB_RESTRICTED_REF" OWNER TO {{postgresUser}};

--
-- Name: AO_6978BB_RESTRICTED_REF_REF_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_6978BB_RESTRICTED_REF_REF_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_6978BB_RESTRICTED_REF_REF_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_6978BB_RESTRICTED_REF_REF_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_6978BB_RESTRICTED_REF_REF_ID_seq" OWNED BY "AO_6978BB_RESTRICTED_REF"."REF_ID";


--
-- Name: AO_777666_JIRA_INDEX; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_777666_JIRA_INDEX" (
    "BRANCH" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "ISSUE" character varying(255) NOT NULL,
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "PR_ID" bigint,
    "PR_STATE" character varying(255),
    "REPOSITORY" integer NOT NULL
);


ALTER TABLE "AO_777666_JIRA_INDEX" OWNER TO {{postgresUser}};

--
-- Name: AO_777666_JIRA_INDEX_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_777666_JIRA_INDEX_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_777666_JIRA_INDEX_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_777666_JIRA_INDEX_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_777666_JIRA_INDEX_ID_seq" OWNED BY "AO_777666_JIRA_INDEX"."ID";


--
-- Name: AO_811463_GIT_LFS_REPO_CONFIG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_811463_GIT_LFS_REPO_CONFIG" (
    "IS_ENABLED" boolean NOT NULL,
    "REPOSITORY_ID" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "AO_811463_GIT_LFS_REPO_CONFIG" OWNER TO {{postgresUser}};

--
-- Name: AO_8E6075_MIRRORING_REQUEST; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_8E6075_MIRRORING_REQUEST" (
    "ADDON_DESCRIPTOR_URI" character varying(450),
    "BASE_URL" character varying(450) NOT NULL,
    "CREATED_DATE" timestamp without time zone NOT NULL,
    "DESCRIPTOR_URL" character varying(450) NOT NULL,
    "ID" integer NOT NULL,
    "MIRROR_ID" character varying(64) NOT NULL,
    "MIRROR_NAME" character varying(64) NOT NULL,
    "PRODUCT_TYPE" character varying(64) NOT NULL,
    "PRODUCT_VERSION" character varying(64) NOT NULL,
    "RESOLVED_DATE" timestamp without time zone,
    "RESOLVER_USER_ID" integer,
    "STATE" character varying(255) NOT NULL
);


ALTER TABLE "AO_8E6075_MIRRORING_REQUEST" OWNER TO {{postgresUser}};

--
-- Name: AO_8E6075_MIRRORING_REQUEST_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_8E6075_MIRRORING_REQUEST_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_8E6075_MIRRORING_REQUEST_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_8E6075_MIRRORING_REQUEST_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_8E6075_MIRRORING_REQUEST_ID_seq" OWNED BY "AO_8E6075_MIRRORING_REQUEST"."ID";


--
-- Name: AO_8E6075_MIRROR_SERVER; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_8E6075_MIRROR_SERVER" (
    "ADD_ON_KEY" character varying(64) NOT NULL,
    "BASE_URL" character varying(255) NOT NULL,
    "ID" character varying(64) NOT NULL,
    "LAST_SEEN" timestamp without time zone NOT NULL,
    "NAME" character varying(64) NOT NULL,
    "PRODUCT_TYPE" character varying(64) NOT NULL,
    "PRODUCT_VERSION" character varying(64) NOT NULL,
    "STATE" character varying(255) NOT NULL
);


ALTER TABLE "AO_8E6075_MIRROR_SERVER" OWNER TO {{postgresUser}};

--
-- Name: AO_92D5D5_USER_NOTIFICATION; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_92D5D5_USER_NOTIFICATION" (
    "BATCH_ID" character varying(255),
    "BATCH_SENDER_ID" character varying(255) NOT NULL,
    "DATA" text NOT NULL,
    "DATE" timestamp without time zone NOT NULL,
    "ID" bigint NOT NULL,
    "USER_ID" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "AO_92D5D5_USER_NOTIFICATION" OWNER TO {{postgresUser}};

--
-- Name: AO_92D5D5_USER_NOTIFICATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_92D5D5_USER_NOTIFICATION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_92D5D5_USER_NOTIFICATION_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_92D5D5_USER_NOTIFICATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_92D5D5_USER_NOTIFICATION_ID_seq" OWNED BY "AO_92D5D5_USER_NOTIFICATION"."ID";


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_A0B856_WEB_HOOK_LISTENER_AO" (
    "DESCRIPTION" text,
    "ENABLED" boolean,
    "EVENTS" text,
    "EXCLUDE_BODY" boolean,
    "FILTERS" text,
    "ID" integer NOT NULL,
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "LAST_UPDATED_USER" character varying(255),
    "NAME" text NOT NULL,
    "PARAMETERS" text,
    "REGISTRATION_METHOD" character varying(255) NOT NULL,
    "URL" text NOT NULL
);


ALTER TABLE "AO_A0B856_WEB_HOOK_LISTENER_AO" OWNER TO {{postgresUser}};

--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNED BY "AO_A0B856_WEB_HOOK_LISTENER_AO"."ID";


--
-- Name: AO_BD73C3_PROJECT_AUDIT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_BD73C3_PROJECT_AUDIT" (
    "ACTION" character varying(255) NOT NULL,
    "AUDIT_ITEM_ID" integer NOT NULL,
    "DATE" timestamp without time zone NOT NULL,
    "DETAILS" text,
    "PROJECT_ID" integer NOT NULL,
    "USER" integer
);


ALTER TABLE "AO_BD73C3_PROJECT_AUDIT" OWNER TO {{postgresUser}};

--
-- Name: AO_BD73C3_PROJECT_AUDIT_AUDIT_ITEM_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_BD73C3_PROJECT_AUDIT_AUDIT_ITEM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_BD73C3_PROJECT_AUDIT_AUDIT_ITEM_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_BD73C3_PROJECT_AUDIT_AUDIT_ITEM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_BD73C3_PROJECT_AUDIT_AUDIT_ITEM_ID_seq" OWNED BY "AO_BD73C3_PROJECT_AUDIT"."AUDIT_ITEM_ID";


--
-- Name: AO_BD73C3_REPOSITORY_AUDIT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_BD73C3_REPOSITORY_AUDIT" (
    "ACTION" character varying(255) NOT NULL,
    "AUDIT_ITEM_ID" integer NOT NULL,
    "DATE" timestamp without time zone NOT NULL,
    "DETAILS" text,
    "REPOSITORY_ID" integer NOT NULL,
    "USER" integer
);


ALTER TABLE "AO_BD73C3_REPOSITORY_AUDIT" OWNER TO {{postgresUser}};

--
-- Name: AO_BD73C3_REPOSITORY_AUDIT_AUDIT_ITEM_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_BD73C3_REPOSITORY_AUDIT_AUDIT_ITEM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_BD73C3_REPOSITORY_AUDIT_AUDIT_ITEM_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_BD73C3_REPOSITORY_AUDIT_AUDIT_ITEM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_BD73C3_REPOSITORY_AUDIT_AUDIT_ITEM_ID_seq" OWNED BY "AO_BD73C3_REPOSITORY_AUDIT"."AUDIT_ITEM_ID";


--
-- Name: AO_CFE8FA_BUILD_STATUS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_CFE8FA_BUILD_STATUS" (
    "CSID" character varying(40) NOT NULL,
    "DATE_ADDED" timestamp without time zone NOT NULL,
    "DESCRIPTION" character varying(255),
    "ID" integer NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "NAME" character varying(255),
    "STATE" character varying(255) NOT NULL,
    "URL" character varying(450) NOT NULL
);


ALTER TABLE "AO_CFE8FA_BUILD_STATUS" OWNER TO {{postgresUser}};

--
-- Name: AO_CFE8FA_BUILD_STATUS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_CFE8FA_BUILD_STATUS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_CFE8FA_BUILD_STATUS_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_CFE8FA_BUILD_STATUS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_CFE8FA_BUILD_STATUS_ID_seq" OWNED BY "AO_CFE8FA_BUILD_STATUS"."ID";


--
-- Name: AO_F4ED3A_ADD_ON_PROPERTY_AO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_F4ED3A_ADD_ON_PROPERTY_AO" (
    "ID" integer NOT NULL,
    "PLUGIN_KEY" character varying(80) NOT NULL,
    "PRIMARY_KEY" character varying(208) NOT NULL,
    "PROPERTY_KEY" character varying(127) NOT NULL,
    "VALUE" text NOT NULL
);


ALTER TABLE "AO_F4ED3A_ADD_ON_PROPERTY_AO" OWNER TO {{postgresUser}};

--
-- Name: AO_F4ED3A_ADD_ON_PROPERTY_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_F4ED3A_ADD_ON_PROPERTY_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_F4ED3A_ADD_ON_PROPERTY_AO_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_F4ED3A_ADD_ON_PROPERTY_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_F4ED3A_ADD_ON_PROPERTY_AO_ID_seq" OWNED BY "AO_F4ED3A_ADD_ON_PROPERTY_AO"."ID";


--
-- Name: AO_FB71B4_SSH_PUBLIC_KEY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_FB71B4_SSH_PUBLIC_KEY" (
    "ENTITY_ID" integer NOT NULL,
    "KEY_MD5" character varying(32) NOT NULL,
    "KEY_TEXT" text NOT NULL,
    "LABEL" character varying(255),
    "USER_ID" integer NOT NULL
);


ALTER TABLE "AO_FB71B4_SSH_PUBLIC_KEY" OWNER TO {{postgresUser}};

--
-- Name: AO_FB71B4_SSH_PUBLIC_KEY_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_FB71B4_SSH_PUBLIC_KEY_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_FB71B4_SSH_PUBLIC_KEY_ENTITY_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_FB71B4_SSH_PUBLIC_KEY_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_FB71B4_SSH_PUBLIC_KEY_ENTITY_ID_seq" OWNED BY "AO_FB71B4_SSH_PUBLIC_KEY"."ENTITY_ID";


--
-- Name: app_property; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE app_property (
    prop_key character varying(50) NOT NULL,
    prop_value character varying(2000) NOT NULL
);


ALTER TABLE app_property OWNER TO {{postgresUser}};

--
-- Name: bb_clusteredjob; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bb_clusteredjob (
    job_id character varying(255) NOT NULL,
    job_runner_key character varying(255) NOT NULL,
    sched_type integer NOT NULL,
    interval_millis bigint,
    first_run timestamp with time zone,
    cron_expression character varying(255),
    time_zone character varying(64),
    next_run timestamp with time zone,
    version bigint,
    parameters bytea
);


ALTER TABLE bb_clusteredjob OWNER TO {{postgresUser}};

--
-- Name: bb_pr_part_status_weight; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bb_pr_part_status_weight (
    status_id integer NOT NULL,
    status_weight integer NOT NULL
);


ALTER TABLE bb_pr_part_status_weight OWNER TO {{postgresUser}};

--
-- Name: bb_pr_reviewer_added; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bb_pr_reviewer_added (
    activity_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE bb_pr_reviewer_added OWNER TO {{postgresUser}};

--
-- Name: COLUMN bb_pr_reviewer_added.activity_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN bb_pr_reviewer_added.activity_id IS 'joinActivityKey';


--
-- Name: COLUMN bb_pr_reviewer_added.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN bb_pr_reviewer_added.user_id IS 'joinUserKey';


--
-- Name: bb_pr_reviewer_removed; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bb_pr_reviewer_removed (
    activity_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE bb_pr_reviewer_removed OWNER TO {{postgresUser}};

--
-- Name: COLUMN bb_pr_reviewer_removed.activity_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN bb_pr_reviewer_removed.activity_id IS 'joinActivityKey';


--
-- Name: COLUMN bb_pr_reviewer_removed.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN bb_pr_reviewer_removed.user_id IS 'joinuserKey';


--
-- Name: bb_pr_reviewer_upd_activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE bb_pr_reviewer_upd_activity (
    activity_id bigint NOT NULL
);


ALTER TABLE bb_pr_reviewer_upd_activity OWNER TO {{postgresUser}};

--
-- Name: COLUMN bb_pr_reviewer_upd_activity.activity_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN bb_pr_reviewer_upd_activity.activity_id IS 'joinPrimaryKey';


--
-- Name: changeset; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE changeset (
    id character varying(40) NOT NULL,
    author_timestamp timestamp with time zone NOT NULL
);


ALTER TABLE changeset OWNER TO {{postgresUser}};

--
-- Name: cs_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cs_attribute (
    cs_id character varying(40) NOT NULL,
    att_name character varying(64) NOT NULL,
    att_value character varying(1024) NOT NULL
);


ALTER TABLE cs_attribute OWNER TO {{postgresUser}};

--
-- Name: cs_indexer_state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cs_indexer_state (
    indexer_id character varying(128) NOT NULL,
    repository_id integer NOT NULL,
    last_run bigint
);


ALTER TABLE cs_indexer_state OWNER TO {{postgresUser}};

--
-- Name: cs_repo_membership; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cs_repo_membership (
    cs_id character varying(40) NOT NULL,
    repository_id integer NOT NULL
);


ALTER TABLE cs_repo_membership OWNER TO {{postgresUser}};

--
-- Name: current_app; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE current_app (
    id integer NOT NULL,
    application_id character varying(255) NOT NULL,
    public_key_base64 character varying(4000) NOT NULL,
    private_key_base64 character varying(4000) NOT NULL
);


ALTER TABLE current_app OWNER TO {{postgresUser}};

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
    list_index integer,
    is_allow_all character(1) NOT NULL
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
    created_date timestamp with time zone NOT NULL,
    updated_date timestamp with time zone NOT NULL,
    description character varying(255),
    application_type character varying(32) NOT NULL,
    credential character varying(255) NOT NULL,
    is_active character(1) NOT NULL
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
    created_date timestamp with time zone NOT NULL,
    updated_date timestamp with time zone NOT NULL,
    description character varying(255),
    impl_class character varying(255) NOT NULL,
    lower_impl_class character varying(255) NOT NULL,
    directory_type character varying(32) NOT NULL,
    is_active character(1) NOT NULL
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
-- Name: cwd_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_group (
    id bigint NOT NULL,
    group_name character varying(255) NOT NULL,
    lower_group_name character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    updated_date timestamp with time zone NOT NULL,
    description character varying(255),
    group_type character varying(32) NOT NULL,
    directory_id bigint NOT NULL,
    is_active character(1) NOT NULL,
    is_local character(1) NOT NULL
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
-- Name: cwd_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_user (
    id bigint NOT NULL,
    user_name character varying(255) NOT NULL,
    lower_user_name character varying(255) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    updated_date timestamp with time zone NOT NULL,
    first_name character varying(255),
    lower_first_name character varying(255),
    last_name character varying(255),
    lower_last_name character varying(255),
    display_name character varying(255),
    lower_display_name character varying(255),
    email_address character varying(255),
    lower_email_address character varying(255),
    directory_id bigint NOT NULL,
    credential character varying(255),
    is_active character(1) NOT NULL,
    external_id character varying(255)
);


ALTER TABLE cwd_user OWNER TO {{postgresUser}};

--
-- Name: COLUMN cwd_user.external_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN cwd_user.external_id IS 'external_id';


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
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE databasechangelog (
    id character varying(63) NOT NULL,
    author character varying(63) NOT NULL,
    filename character varying(200) NOT NULL,
    dateexecuted timestamp with time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20)
);


ALTER TABLE databasechangelog OWNER TO {{postgresUser}};

--
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp with time zone,
    lockedby character varying(255)
);


ALTER TABLE databasechangeloglock OWNER TO {{postgresUser}};

--
-- Name: hibernate_unique_key; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE hibernate_unique_key (
    next_hi integer
);


ALTER TABLE hibernate_unique_key OWNER TO {{postgresUser}};

--
-- Name: id_sequence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE id_sequence (
    sequence_name character varying(255) NOT NULL,
    next_val integer NOT NULL
);


ALTER TABLE id_sequence OWNER TO {{postgresUser}};

--
-- Name: plugin_setting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE plugin_setting (
    namespace character varying(255) NOT NULL,
    key_name character varying(255) NOT NULL,
    key_value text NOT NULL,
    id bigint NOT NULL
);


ALTER TABLE plugin_setting OWNER TO {{postgresUser}};

--
-- Name: COLUMN plugin_setting.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN plugin_setting.id IS 'id';


--
-- Name: plugin_state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE plugin_state (
    name character varying(255) NOT NULL,
    enabled boolean NOT NULL
);


ALTER TABLE plugin_state OWNER TO {{postgresUser}};

--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE project (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    project_key character varying(128) NOT NULL,
    description character varying(255),
    project_type integer NOT NULL,
    namespace character varying(128) NOT NULL
);


ALTER TABLE project OWNER TO {{postgresUser}};

--
-- Name: COLUMN project.namespace; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN project.namespace IS 'project namespace';


--
-- Name: repository; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE repository (
    id integer NOT NULL,
    slug character varying(128) NOT NULL,
    name character varying(128) NOT NULL,
    state integer NOT NULL,
    project_id integer NOT NULL,
    scm_id character varying(255) NOT NULL,
    hierarchy_id character varying(20) NOT NULL,
    is_forkable boolean NOT NULL,
    is_public boolean NOT NULL
);


ALTER TABLE repository OWNER TO {{postgresUser}};

--
-- Name: COLUMN repository.scm_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN repository.scm_id IS 'scmId';


--
-- Name: COLUMN repository.hierarchy_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN repository.hierarchy_id IS 'hierarchyId';


--
-- Name: COLUMN repository.is_forkable; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN repository.is_forkable IS 'forkable';


--
-- Name: COLUMN repository.is_public; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN repository.is_public IS 'publiclyAccessible';


--
-- Name: repository_access; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE repository_access (
    user_id integer NOT NULL,
    repository_id integer NOT NULL,
    last_accessed bigint NOT NULL
);


ALTER TABLE repository_access OWNER TO {{postgresUser}};

--
-- Name: sta_activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_activity (
    id bigint NOT NULL,
    activity_type integer NOT NULL,
    created_timestamp timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE sta_activity OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_activity.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_activity.id IS 'id';


--
-- Name: COLUMN sta_activity.activity_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_activity.activity_type IS 'discriminatorColumn';


--
-- Name: COLUMN sta_activity.created_timestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_activity.created_timestamp IS 'createdDate';


--
-- Name: COLUMN sta_activity.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_activity.user_id IS 'user';


--
-- Name: sta_cmt_disc_activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_cmt_disc_activity (
    activity_id bigint NOT NULL,
    discussion_id bigint NOT NULL
);


ALTER TABLE sta_cmt_disc_activity OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_cmt_disc_activity.activity_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_disc_activity.activity_id IS 'joinPrimaryKey';


--
-- Name: COLUMN sta_cmt_disc_activity.discussion_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_disc_activity.discussion_id IS 'discussion';


--
-- Name: sta_cmt_disc_comment_activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_cmt_disc_comment_activity (
    activity_id bigint NOT NULL,
    comment_id bigint NOT NULL,
    comment_action integer NOT NULL,
    anchor_id bigint
);


ALTER TABLE sta_cmt_disc_comment_activity OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_cmt_disc_comment_activity.activity_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_disc_comment_activity.activity_id IS 'joinPrimaryKey';


--
-- Name: COLUMN sta_cmt_disc_comment_activity.comment_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_disc_comment_activity.comment_id IS 'comment';


--
-- Name: COLUMN sta_cmt_disc_comment_activity.comment_action; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_disc_comment_activity.comment_action IS 'commentAction';


--
-- Name: COLUMN sta_cmt_disc_comment_activity.anchor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_disc_comment_activity.anchor_id IS 'commentAnchor';


--
-- Name: sta_cmt_disc_comment_anchor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_cmt_disc_comment_anchor (
    anchor_id bigint NOT NULL,
    discussion_id bigint NOT NULL,
    pr_id bigint
);


ALTER TABLE sta_cmt_disc_comment_anchor OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_cmt_disc_comment_anchor.anchor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_disc_comment_anchor.anchor_id IS 'joinPrimaryKey';


--
-- Name: COLUMN sta_cmt_disc_comment_anchor.discussion_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_disc_comment_anchor.discussion_id IS 'discussion';


--
-- Name: COLUMN sta_cmt_disc_comment_anchor.pr_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_disc_comment_anchor.pr_id IS 'pullRequest';


--
-- Name: sta_cmt_disc_participant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_cmt_disc_participant (
    id bigint NOT NULL,
    discussion_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE sta_cmt_disc_participant OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_cmt_disc_participant.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_disc_participant.id IS 'id';


--
-- Name: COLUMN sta_cmt_disc_participant.discussion_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_disc_participant.discussion_id IS 'discussion';


--
-- Name: COLUMN sta_cmt_disc_participant.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_disc_participant.user_id IS 'user';


--
-- Name: sta_cmt_discussion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_cmt_discussion (
    id bigint NOT NULL,
    repository_id integer NOT NULL,
    parent_count integer NOT NULL,
    commit_id character varying(40) NOT NULL,
    parent_id character varying(40)
);


ALTER TABLE sta_cmt_discussion OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_cmt_discussion.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_discussion.id IS 'id';


--
-- Name: COLUMN sta_cmt_discussion.repository_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_discussion.repository_id IS 'repository';


--
-- Name: COLUMN sta_cmt_discussion.parent_count; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_discussion.parent_count IS 'parents';


--
-- Name: COLUMN sta_cmt_discussion.commit_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_discussion.commit_id IS 'commitId';


--
-- Name: COLUMN sta_cmt_discussion.parent_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_cmt_discussion.parent_id IS 'parentId';


--
-- Name: sta_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_comment (
    id bigint NOT NULL,
    entity_version integer NOT NULL,
    author_id integer NOT NULL,
    created_timestamp timestamp with time zone NOT NULL,
    updated_timestamp timestamp with time zone NOT NULL,
    parent_id bigint,
    root_id bigint,
    comment_text text NOT NULL
);


ALTER TABLE sta_comment OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_comment.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_comment.id IS 'id';


--
-- Name: COLUMN sta_comment.entity_version; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_comment.entity_version IS 'version';


--
-- Name: COLUMN sta_comment.author_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_comment.author_id IS 'author';


--
-- Name: COLUMN sta_comment.created_timestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_comment.created_timestamp IS 'createdDate';


--
-- Name: COLUMN sta_comment.updated_timestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_comment.updated_timestamp IS 'updatedDate';


--
-- Name: COLUMN sta_comment.parent_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_comment.parent_id IS 'parent';


--
-- Name: COLUMN sta_comment.root_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_comment.root_id IS 'root';


--
-- Name: COLUMN sta_comment.comment_text; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_comment.comment_text IS 'text';


--
-- Name: sta_deleted_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_deleted_group (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    deleted_timestamp timestamp with time zone NOT NULL
);


ALTER TABLE sta_deleted_group OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_deleted_group.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_deleted_group.id IS 'id';


--
-- Name: COLUMN sta_deleted_group.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_deleted_group.name IS 'group name';


--
-- Name: COLUMN sta_deleted_group.deleted_timestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_deleted_group.deleted_timestamp IS 'deleted date';


--
-- Name: sta_diff_comment_anchor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_diff_comment_anchor (
    id bigint NOT NULL,
    entity_version integer NOT NULL,
    comment_id bigint NOT NULL,
    line_number integer NOT NULL,
    line_type integer,
    to_hash character varying(40) NOT NULL,
    to_path character varying(1024) NOT NULL,
    from_hash character varying(40),
    from_path character varying(1024),
    anchor_type integer NOT NULL,
    file_type integer
);


ALTER TABLE sta_diff_comment_anchor OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_diff_comment_anchor.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_diff_comment_anchor.id IS 'id';


--
-- Name: COLUMN sta_diff_comment_anchor.entity_version; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_diff_comment_anchor.entity_version IS 'version';


--
-- Name: COLUMN sta_diff_comment_anchor.comment_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_diff_comment_anchor.comment_id IS 'comment';


--
-- Name: COLUMN sta_diff_comment_anchor.line_number; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_diff_comment_anchor.line_number IS 'line';


--
-- Name: COLUMN sta_diff_comment_anchor.line_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_diff_comment_anchor.line_type IS 'lineType';


--
-- Name: COLUMN sta_diff_comment_anchor.to_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_diff_comment_anchor.to_hash IS 'toHash';


--
-- Name: COLUMN sta_diff_comment_anchor.to_path; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_diff_comment_anchor.to_path IS 'path';


--
-- Name: COLUMN sta_diff_comment_anchor.from_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_diff_comment_anchor.from_hash IS 'fromHash';


--
-- Name: COLUMN sta_diff_comment_anchor.from_path; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_diff_comment_anchor.from_path IS 'fromPath';


--
-- Name: COLUMN sta_diff_comment_anchor.file_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_diff_comment_anchor.file_type IS 'fileType';


--
-- Name: sta_drift_request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_drift_request (
    id bigint NOT NULL,
    pr_id bigint NOT NULL,
    old_from_hash character varying(40) NOT NULL,
    old_to_hash character varying(40) NOT NULL,
    new_from_hash character varying(40) NOT NULL,
    new_to_hash character varying(40) NOT NULL
);


ALTER TABLE sta_drift_request OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_drift_request.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_drift_request.id IS 'id';


--
-- Name: COLUMN sta_drift_request.pr_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_drift_request.pr_id IS 'pullRequest';


--
-- Name: COLUMN sta_drift_request.old_from_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_drift_request.old_from_hash IS 'oldFromHash';


--
-- Name: COLUMN sta_drift_request.old_to_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_drift_request.old_to_hash IS 'oldToHash';


--
-- Name: COLUMN sta_drift_request.new_from_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_drift_request.new_from_hash IS 'newFromHash';


--
-- Name: COLUMN sta_drift_request.new_to_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_drift_request.new_to_hash IS 'newToHash';


--
-- Name: sta_global_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_global_permission (
    id bigint NOT NULL,
    perm_id integer NOT NULL,
    group_name character varying(255),
    user_id integer
);


ALTER TABLE sta_global_permission OWNER TO {{postgresUser}};

--
-- Name: sta_normal_project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_normal_project (
    project_id integer NOT NULL,
    is_public boolean NOT NULL
);


ALTER TABLE sta_normal_project OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_normal_project.project_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_normal_project.project_id IS 'id';


--
-- Name: COLUMN sta_normal_project.is_public; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_normal_project.is_public IS 'publiclyAccessible';


--
-- Name: sta_normal_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_normal_user (
    user_id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    locale character varying(32),
    deleted_timestamp timestamp with time zone,
    time_zone character varying(64)
);


ALTER TABLE sta_normal_user OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_normal_user.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_normal_user.user_id IS 'joinPrimaryKey';


--
-- Name: COLUMN sta_normal_user.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_normal_user.name IS 'normal user name';


--
-- Name: COLUMN sta_normal_user.slug; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_normal_user.slug IS 'normal user slug';


--
-- Name: COLUMN sta_normal_user.locale; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_normal_user.locale IS 'user_locale';


--
-- Name: COLUMN sta_normal_user.deleted_timestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_normal_user.deleted_timestamp IS 'deletedDate';


--
-- Name: COLUMN sta_normal_user.time_zone; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_normal_user.time_zone IS 'timeZone';


--
-- Name: sta_permission_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_permission_type (
    perm_id integer NOT NULL,
    perm_weight integer NOT NULL
);


ALTER TABLE sta_permission_type OWNER TO {{postgresUser}};

--
-- Name: sta_personal_project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_personal_project (
    project_id integer NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE sta_personal_project OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_personal_project.project_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_personal_project.project_id IS 'id';


--
-- Name: COLUMN sta_personal_project.owner_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_personal_project.owner_id IS 'owner';


--
-- Name: sta_pr_activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_pr_activity (
    activity_id bigint NOT NULL,
    pr_id bigint NOT NULL,
    pr_action integer NOT NULL
);


ALTER TABLE sta_pr_activity OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_pr_activity.activity_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_activity.activity_id IS 'joinPrimaryKey';


--
-- Name: COLUMN sta_pr_activity.pr_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_activity.pr_id IS 'pullRequest';


--
-- Name: COLUMN sta_pr_activity.pr_action; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_activity.pr_action IS 'action';


--
-- Name: sta_pr_comment_activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_pr_comment_activity (
    activity_id bigint NOT NULL,
    comment_id bigint NOT NULL,
    comment_action integer NOT NULL,
    anchor_id bigint
);


ALTER TABLE sta_pr_comment_activity OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_pr_comment_activity.activity_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_comment_activity.activity_id IS 'joinPrimaryKey';


--
-- Name: COLUMN sta_pr_comment_activity.comment_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_comment_activity.comment_id IS 'comment';


--
-- Name: COLUMN sta_pr_comment_activity.comment_action; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_comment_activity.comment_action IS 'commentAction';


--
-- Name: COLUMN sta_pr_comment_activity.anchor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_comment_activity.anchor_id IS 'commentAnchor';


--
-- Name: sta_pr_diff_comment_anchor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_pr_diff_comment_anchor (
    anchor_id bigint NOT NULL,
    pr_id bigint NOT NULL,
    is_orphaned boolean NOT NULL,
    diff_type integer NOT NULL
);


ALTER TABLE sta_pr_diff_comment_anchor OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_pr_diff_comment_anchor.anchor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_diff_comment_anchor.anchor_id IS 'joinPrimaryKey';


--
-- Name: COLUMN sta_pr_diff_comment_anchor.pr_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_diff_comment_anchor.pr_id IS 'pullRequest';


--
-- Name: COLUMN sta_pr_diff_comment_anchor.is_orphaned; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_diff_comment_anchor.is_orphaned IS 'orphaned';


--
-- Name: sta_pr_merge_activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_pr_merge_activity (
    activity_id bigint NOT NULL,
    hash character varying(40)
);


ALTER TABLE sta_pr_merge_activity OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_pr_merge_activity.activity_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_merge_activity.activity_id IS 'joinPrimaryKey';


--
-- Name: COLUMN sta_pr_merge_activity.hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_merge_activity.hash IS 'hash';


--
-- Name: sta_pr_participant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_pr_participant (
    id bigint NOT NULL,
    pr_id bigint NOT NULL,
    pr_role integer NOT NULL,
    user_id integer NOT NULL,
    participant_status integer NOT NULL
);


ALTER TABLE sta_pr_participant OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_pr_participant.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_participant.id IS 'id';


--
-- Name: COLUMN sta_pr_participant.pr_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_participant.pr_id IS 'pullRequest';


--
-- Name: COLUMN sta_pr_participant.pr_role; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_participant.pr_role IS 'role';


--
-- Name: COLUMN sta_pr_participant.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_participant.user_id IS 'user';


--
-- Name: COLUMN sta_pr_participant.participant_status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_participant.participant_status IS 'approved';


--
-- Name: sta_pr_rescope_activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_pr_rescope_activity (
    activity_id bigint NOT NULL,
    from_hash character varying(40) NOT NULL,
    to_hash character varying(40) NOT NULL,
    prev_from_hash character varying(40) NOT NULL,
    prev_to_hash character varying(40) NOT NULL,
    commits_added integer,
    commits_removed integer
);


ALTER TABLE sta_pr_rescope_activity OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_pr_rescope_activity.activity_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_activity.activity_id IS 'joinPrimaryKey';


--
-- Name: COLUMN sta_pr_rescope_activity.from_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_activity.from_hash IS 'fromHash';


--
-- Name: COLUMN sta_pr_rescope_activity.to_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_activity.to_hash IS 'toHash';


--
-- Name: COLUMN sta_pr_rescope_activity.prev_from_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_activity.prev_from_hash IS 'previousFromHash';


--
-- Name: COLUMN sta_pr_rescope_activity.prev_to_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_activity.prev_to_hash IS 'previousToHash';


--
-- Name: COLUMN sta_pr_rescope_activity.commits_added; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_activity.commits_added IS 'addedCommits';


--
-- Name: COLUMN sta_pr_rescope_activity.commits_removed; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_activity.commits_removed IS 'removedCommits';


--
-- Name: sta_pr_rescope_commit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_pr_rescope_commit (
    activity_id bigint NOT NULL,
    changeset_id character varying(40) NOT NULL,
    action integer NOT NULL
);


ALTER TABLE sta_pr_rescope_commit OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_pr_rescope_commit.activity_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_commit.activity_id IS 'activity';


--
-- Name: COLUMN sta_pr_rescope_commit.changeset_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_commit.changeset_id IS 'changsetId';


--
-- Name: COLUMN sta_pr_rescope_commit.action; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_commit.action IS 'action';


--
-- Name: sta_pr_rescope_request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_pr_rescope_request (
    id bigint NOT NULL,
    repo_id integer NOT NULL,
    user_id integer NOT NULL,
    created_timestamp timestamp with time zone NOT NULL
);


ALTER TABLE sta_pr_rescope_request OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_pr_rescope_request.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_request.id IS 'id';


--
-- Name: COLUMN sta_pr_rescope_request.repo_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_request.repo_id IS 'repository';


--
-- Name: COLUMN sta_pr_rescope_request.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_request.user_id IS 'user';


--
-- Name: COLUMN sta_pr_rescope_request.created_timestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_request.created_timestamp IS 'createdDate';


--
-- Name: sta_pr_rescope_request_change; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_pr_rescope_request_change (
    request_id bigint NOT NULL,
    ref_id character varying(1024) NOT NULL,
    change_type integer NOT NULL,
    from_hash character varying(40),
    to_hash character varying(40)
);


ALTER TABLE sta_pr_rescope_request_change OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_pr_rescope_request_change.request_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_request_change.request_id IS 'rescopeRequest';


--
-- Name: COLUMN sta_pr_rescope_request_change.ref_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_request_change.ref_id IS 'refId';


--
-- Name: COLUMN sta_pr_rescope_request_change.change_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_request_change.change_type IS 'type';


--
-- Name: COLUMN sta_pr_rescope_request_change.from_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_request_change.from_hash IS 'fromHash';


--
-- Name: COLUMN sta_pr_rescope_request_change.to_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pr_rescope_request_change.to_hash IS 'toHash';


--
-- Name: sta_project_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_project_permission (
    id bigint NOT NULL,
    perm_id integer NOT NULL,
    project_id integer NOT NULL,
    group_name character varying(255),
    user_id integer
);


ALTER TABLE sta_project_permission OWNER TO {{postgresUser}};

--
-- Name: sta_pull_request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_pull_request (
    id bigint NOT NULL,
    entity_version integer NOT NULL,
    scoped_id bigint NOT NULL,
    pr_state integer NOT NULL,
    created_timestamp timestamp with time zone NOT NULL,
    updated_timestamp timestamp with time zone NOT NULL,
    from_repository_id integer NOT NULL,
    to_repository_id integer NOT NULL,
    from_branch_fqn character varying(1024) NOT NULL,
    to_branch_fqn character varying(1024) NOT NULL,
    from_branch_name character varying(255) NOT NULL,
    to_branch_name character varying(255) NOT NULL,
    from_hash character varying(40) NOT NULL,
    to_hash character varying(40) NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    locked_timestamp timestamp with time zone,
    rescoped_timestamp timestamp with time zone NOT NULL
);


ALTER TABLE sta_pull_request OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_pull_request.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.id IS 'id, globalId';


--
-- Name: COLUMN sta_pull_request.entity_version; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.entity_version IS 'version';


--
-- Name: COLUMN sta_pull_request.scoped_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.scoped_id IS 'scopedId';


--
-- Name: COLUMN sta_pull_request.pr_state; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.pr_state IS 'state';


--
-- Name: COLUMN sta_pull_request.created_timestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.created_timestamp IS 'createdDate';


--
-- Name: COLUMN sta_pull_request.updated_timestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.updated_timestamp IS 'updatedDate';


--
-- Name: COLUMN sta_pull_request.from_repository_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.from_repository_id IS 'fromRef.repository';


--
-- Name: COLUMN sta_pull_request.to_repository_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.to_repository_id IS 'toRef.repository';


--
-- Name: COLUMN sta_pull_request.from_branch_fqn; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.from_branch_fqn IS 'fromRef.id';


--
-- Name: COLUMN sta_pull_request.to_branch_fqn; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.to_branch_fqn IS 'toRef.id';


--
-- Name: COLUMN sta_pull_request.from_branch_name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.from_branch_name IS 'fromRef.displayId';


--
-- Name: COLUMN sta_pull_request.to_branch_name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.to_branch_name IS 'toRef.displayId';


--
-- Name: COLUMN sta_pull_request.from_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.from_hash IS 'fromRef.hash';


--
-- Name: COLUMN sta_pull_request.to_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.to_hash IS 'toRef.hash';


--
-- Name: COLUMN sta_pull_request.title; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.title IS 'title';


--
-- Name: COLUMN sta_pull_request.description; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.description IS 'description';


--
-- Name: COLUMN sta_pull_request.locked_timestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.locked_timestamp IS 'lockedDate';


--
-- Name: COLUMN sta_pull_request.rescoped_timestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_pull_request.rescoped_timestamp IS 'rescopeDate';


--
-- Name: sta_remember_me_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_remember_me_token (
    id bigint NOT NULL,
    series character varying(64) NOT NULL,
    token character varying(64) NOT NULL,
    user_id integer NOT NULL,
    expiry_timestamp timestamp with time zone NOT NULL,
    claimed boolean NOT NULL,
    claimed_address character varying(255)
);


ALTER TABLE sta_remember_me_token OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_remember_me_token.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_remember_me_token.user_id IS 'userId';


--
-- Name: sta_repo_activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_repo_activity (
    activity_id bigint NOT NULL,
    repository_id integer NOT NULL
);


ALTER TABLE sta_repo_activity OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_repo_activity.activity_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_repo_activity.activity_id IS 'joinPrimaryKey';


--
-- Name: COLUMN sta_repo_activity.repository_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_repo_activity.repository_id IS 'repository';


--
-- Name: sta_repo_hook; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_repo_hook (
    id bigint NOT NULL,
    repository_id integer NOT NULL,
    hook_key character varying(255) NOT NULL,
    is_enabled boolean NOT NULL,
    lob_id bigint
);


ALTER TABLE sta_repo_hook OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_repo_hook.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_repo_hook.id IS 'id';


--
-- Name: COLUMN sta_repo_hook.repository_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_repo_hook.repository_id IS 'repository';


--
-- Name: COLUMN sta_repo_hook.hook_key; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_repo_hook.hook_key IS 'hookKey';


--
-- Name: COLUMN sta_repo_hook.is_enabled; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_repo_hook.is_enabled IS 'enabled';


--
-- Name: COLUMN sta_repo_hook.lob_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_repo_hook.lob_id IS 'settings';


--
-- Name: sta_repo_origin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_repo_origin (
    repository_id integer NOT NULL,
    origin_id integer NOT NULL
);


ALTER TABLE sta_repo_origin OWNER TO {{postgresUser}};

--
-- Name: sta_repo_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_repo_permission (
    id bigint NOT NULL,
    perm_id integer NOT NULL,
    repo_id integer NOT NULL,
    group_name character varying(255),
    user_id integer
);


ALTER TABLE sta_repo_permission OWNER TO {{postgresUser}};

--
-- Name: sta_repo_push_activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_repo_push_activity (
    activity_id bigint NOT NULL
);


ALTER TABLE sta_repo_push_activity OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_repo_push_activity.activity_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_repo_push_activity.activity_id IS 'joinPrimaryKey';


--
-- Name: sta_repo_push_ref; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_repo_push_ref (
    activity_id bigint NOT NULL,
    ref_id character varying(1024) NOT NULL,
    change_type integer NOT NULL,
    from_hash character varying(40) NOT NULL,
    to_hash character varying(40) NOT NULL
);


ALTER TABLE sta_repo_push_ref OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_repo_push_ref.activity_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_repo_push_ref.activity_id IS 'activity';


--
-- Name: COLUMN sta_repo_push_ref.ref_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_repo_push_ref.ref_id IS 'refId';


--
-- Name: COLUMN sta_repo_push_ref.change_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_repo_push_ref.change_type IS 'type';


--
-- Name: COLUMN sta_repo_push_ref.from_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_repo_push_ref.from_hash IS 'fromHash';


--
-- Name: COLUMN sta_repo_push_ref.to_hash; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_repo_push_ref.to_hash IS 'toHash';


--
-- Name: sta_repository_scoped_id; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_repository_scoped_id (
    repository_id integer NOT NULL,
    scope_type character varying(255) NOT NULL,
    next_id bigint NOT NULL
);


ALTER TABLE sta_repository_scoped_id OWNER TO {{postgresUser}};

--
-- Name: sta_service_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_service_user (
    user_id integer NOT NULL,
    display_name character varying(255) NOT NULL,
    active boolean NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    email_address character varying(255),
    label character varying(128) NOT NULL
);


ALTER TABLE sta_service_user OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_service_user.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_service_user.user_id IS 'joinPrimaryKey';


--
-- Name: COLUMN sta_service_user.display_name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_service_user.display_name IS 'service user display_name';


--
-- Name: COLUMN sta_service_user.active; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_service_user.active IS 'service user active';


--
-- Name: COLUMN sta_service_user.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_service_user.name IS 'service user name';


--
-- Name: COLUMN sta_service_user.slug; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_service_user.slug IS 'service user slug';


--
-- Name: COLUMN sta_service_user.email_address; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_service_user.email_address IS 'service user email';


--
-- Name: COLUMN sta_service_user.label; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_service_user.label IS 'service user label';


--
-- Name: sta_shared_lob; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_shared_lob (
    id bigint NOT NULL,
    lob_data text NOT NULL
);


ALTER TABLE sta_shared_lob OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_shared_lob.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_shared_lob.id IS 'id';


--
-- Name: COLUMN sta_shared_lob.lob_data; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_shared_lob.lob_data IS 'data';


--
-- Name: sta_task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_task (
    id bigint NOT NULL,
    anchor_id bigint NOT NULL,
    anchor_type integer NOT NULL,
    author_id integer NOT NULL,
    context_id bigint NOT NULL,
    context_type integer NOT NULL,
    created_timestamp timestamp with time zone NOT NULL,
    task_state integer NOT NULL,
    task_text text NOT NULL
);


ALTER TABLE sta_task OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_task.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_task.id IS 'id';


--
-- Name: COLUMN sta_task.anchor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_task.anchor_id IS 'anchor.id';


--
-- Name: COLUMN sta_task.anchor_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_task.anchor_type IS 'discriminatorColumn';


--
-- Name: COLUMN sta_task.author_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_task.author_id IS 'author';


--
-- Name: COLUMN sta_task.context_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_task.context_id IS 'context.id';


--
-- Name: COLUMN sta_task.context_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_task.context_type IS 'discriminatorColumn';


--
-- Name: COLUMN sta_task.created_timestamp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_task.created_timestamp IS 'createdDate';


--
-- Name: COLUMN sta_task.task_state; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_task.task_state IS 'state';


--
-- Name: COLUMN sta_task.task_text; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_task.task_text IS 'text';


--
-- Name: sta_user_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_user_settings (
    id integer NOT NULL,
    lob_id bigint NOT NULL
);


ALTER TABLE sta_user_settings OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_user_settings.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_user_settings.id IS 'id';


--
-- Name: COLUMN sta_user_settings.lob_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_user_settings.lob_id IS 'settings';


--
-- Name: sta_watcher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sta_watcher (
    id bigint NOT NULL,
    watchable_id bigint NOT NULL,
    watchable_type integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE sta_watcher OWNER TO {{postgresUser}};

--
-- Name: COLUMN sta_watcher.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_watcher.id IS 'id';


--
-- Name: COLUMN sta_watcher.watchable_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_watcher.watchable_id IS 'watchable.id';


--
-- Name: COLUMN sta_watcher.watchable_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_watcher.watchable_type IS 'discriminatorColumn';


--
-- Name: COLUMN sta_watcher.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN sta_watcher.user_id IS 'user.id';


--
-- Name: stash_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE stash_user (
    id integer NOT NULL
);


ALTER TABLE stash_user OWNER TO {{postgresUser}};

--
-- Name: trusted_app; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE trusted_app (
    id integer NOT NULL,
    application_id character varying(255) NOT NULL,
    certificate_timeout bigint NOT NULL,
    public_key_base64 character varying(4000) NOT NULL
);


ALTER TABLE trusted_app OWNER TO {{postgresUser}};

--
-- Name: trusted_app_restriction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE trusted_app_restriction (
    id integer NOT NULL,
    trusted_app_id integer NOT NULL,
    restriction_type smallint NOT NULL,
    restriction_value character varying(255) NOT NULL
);


ALTER TABLE trusted_app_restriction OWNER TO {{postgresUser}};

--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_02A6C0_REJECTED_REF" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_02A6C0_REJECTED_REF_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_38321B_CUSTOM_CONTENT_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_38F373_COMMENT_LIKE" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_38F373_COMMENT_LIKE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_58E6CE_HIPCHAT_NOTIFICATION" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_58E6CE_HIPCHAT_NOTIFICATION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_USER" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_616D7B_BRANCH_TYPE" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_616D7B_BRANCH_TYPE_ID_seq"'::regclass);


--
-- Name: ENTITY_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_6978BB_PERMITTED_ENTITY" ALTER COLUMN "ENTITY_ID" SET DEFAULT nextval('"AO_6978BB_PERMITTED_ENTITY_ENTITY_ID_seq"'::regclass);


--
-- Name: REF_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_6978BB_RESTRICTED_REF" ALTER COLUMN "REF_ID" SET DEFAULT nextval('"AO_6978BB_RESTRICTED_REF_REF_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_777666_JIRA_INDEX" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_777666_JIRA_INDEX_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_8E6075_MIRRORING_REQUEST" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_8E6075_MIRRORING_REQUEST_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_92D5D5_USER_NOTIFICATION" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_92D5D5_USER_NOTIFICATION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_A0B856_WEB_HOOK_LISTENER_AO" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"'::regclass);


--
-- Name: AUDIT_ITEM_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_BD73C3_PROJECT_AUDIT" ALTER COLUMN "AUDIT_ITEM_ID" SET DEFAULT nextval('"AO_BD73C3_PROJECT_AUDIT_AUDIT_ITEM_ID_seq"'::regclass);


--
-- Name: AUDIT_ITEM_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_BD73C3_REPOSITORY_AUDIT" ALTER COLUMN "AUDIT_ITEM_ID" SET DEFAULT nextval('"AO_BD73C3_REPOSITORY_AUDIT_AUDIT_ITEM_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_CFE8FA_BUILD_STATUS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_CFE8FA_BUILD_STATUS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_F4ED3A_ADD_ON_PROPERTY_AO" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_F4ED3A_ADD_ON_PROPERTY_AO_ID_seq"'::regclass);


--
-- Name: ENTITY_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_FB71B4_SSH_PUBLIC_KEY" ALTER COLUMN "ENTITY_ID" SET DEFAULT nextval('"AO_FB71B4_SSH_PUBLIC_KEY_ENTITY_ID_seq"'::regclass);


--
-- Data for Name: AO_02A6C0_REJECTED_REF; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_02A6C0_REJECTED_REF" ("ID", "REF_DISPLAY_ID", "REF_ID", "REF_STATUS", "REPOSITORY_ID") FROM stdin;
\.


--
-- Name: AO_02A6C0_REJECTED_REF_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_02A6C0_REJECTED_REF_ID_seq"', 1, false);


--
-- Data for Name: AO_02A6C0_SYNC_CONFIG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_02A6C0_SYNC_CONFIG" ("IS_ENABLED", "LAST_SYNC", "REPOSITORY_ID") FROM stdin;
\.


--
-- Data for Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_38321B_CUSTOM_CONTENT_LINK" ("CONTENT_KEY", "ID", "LINK_LABEL", "LINK_URL", "SEQUENCE") FROM stdin;
\.


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"', 1, false);


--
-- Data for Name: AO_38F373_COMMENT_LIKE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_38F373_COMMENT_LIKE" ("COMMENT_ID", "ID", "USER_ID") FROM stdin;
\.


--
-- Name: AO_38F373_COMMENT_LIKE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_38F373_COMMENT_LIKE_ID_seq"', 1, false);


--
-- Data for Name: AO_58E6CE_HIPCHAT_NOTIFICATION; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_58E6CE_HIPCHAT_NOTIFICATION" ("ID", "NOTIFICATION_TYPE", "REPO_ID", "ROOM_ID") FROM stdin;
\.


--
-- Name: AO_58E6CE_HIPCHAT_NOTIFICATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_58E6CE_HIPCHAT_NOTIFICATION_ID_seq"', 1, false);


--
-- Data for Name: AO_5FB9D7_AOHIP_CHAT_LINK; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_5FB9D7_AOHIP_CHAT_LINK" ("ADDON_TOKEN_EXPIRY", "API_URL", "CONNECT_DESCRIPTOR", "GROUP_ID", "GROUP_NAME", "ID", "OAUTH_ID", "SECRET_KEY", "SYSTEM_PASSWORD", "SYSTEM_TOKEN_EXPIRY", "SYSTEM_USER", "SYSTEM_USER_TOKEN", "TOKEN") FROM stdin;
\.


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"', 1, false);


--
-- Data for Name: AO_5FB9D7_AOHIP_CHAT_USER; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_5FB9D7_AOHIP_CHAT_USER" ("HIP_CHAT_LINK_ID", "HIP_CHAT_USER_ID", "HIP_CHAT_USER_NAME", "ID", "REFRESH_CODE", "USER_KEY", "USER_SCOPES", "USER_TOKEN", "USER_TOKEN_EXPIRY") FROM stdin;
\.


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"', 1, false);


--
-- Data for Name: AO_616D7B_BRANCH_MODEL; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_616D7B_BRANCH_MODEL" ("DEV_ID", "DEV_USE_DEFAULT", "IS_ENABLED", "PROD_ID", "PROD_USE_DEFAULT", "REPOSITORY_ID") FROM stdin;
\.


--
-- Data for Name: AO_616D7B_BRANCH_TYPE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_616D7B_BRANCH_TYPE" ("FK_BM_ID", "ID", "IS_ENABLED", "PREFIX", "TYPE_ID") FROM stdin;
\.


--
-- Name: AO_616D7B_BRANCH_TYPE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_616D7B_BRANCH_TYPE_ID_seq"', 1, false);


--
-- Data for Name: AO_6978BB_PERMITTED_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_6978BB_PERMITTED_ENTITY" ("ENTITY_ID", "FK_RESTRICTED_ID", "GROUP_ID", "USER_ID") FROM stdin;
\.


--
-- Name: AO_6978BB_PERMITTED_ENTITY_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_6978BB_PERMITTED_ENTITY_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_6978BB_RESTRICTED_REF; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_6978BB_RESTRICTED_REF" ("REF_ID", "REF_TYPE", "REF_VALUE", "REPOSITORY_ID", "RESTRICTION_TYPE") FROM stdin;
\.


--
-- Name: AO_6978BB_RESTRICTED_REF_REF_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_6978BB_RESTRICTED_REF_REF_ID_seq"', 1, false);


--
-- Data for Name: AO_777666_JIRA_INDEX; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_777666_JIRA_INDEX" ("BRANCH", "ID", "ISSUE", "LAST_UPDATED", "PR_ID", "PR_STATE", "REPOSITORY") FROM stdin;
\.


--
-- Name: AO_777666_JIRA_INDEX_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_777666_JIRA_INDEX_ID_seq"', 1, false);


--
-- Data for Name: AO_811463_GIT_LFS_REPO_CONFIG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_811463_GIT_LFS_REPO_CONFIG" ("IS_ENABLED", "REPOSITORY_ID") FROM stdin;
\.


--
-- Data for Name: AO_8E6075_MIRRORING_REQUEST; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_8E6075_MIRRORING_REQUEST" ("ADDON_DESCRIPTOR_URI", "BASE_URL", "CREATED_DATE", "DESCRIPTOR_URL", "ID", "MIRROR_ID", "MIRROR_NAME", "PRODUCT_TYPE", "PRODUCT_VERSION", "RESOLVED_DATE", "RESOLVER_USER_ID", "STATE") FROM stdin;
\.


--
-- Name: AO_8E6075_MIRRORING_REQUEST_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_8E6075_MIRRORING_REQUEST_ID_seq"', 1, false);


--
-- Data for Name: AO_8E6075_MIRROR_SERVER; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_8E6075_MIRROR_SERVER" ("ADD_ON_KEY", "BASE_URL", "ID", "LAST_SEEN", "NAME", "PRODUCT_TYPE", "PRODUCT_VERSION", "STATE") FROM stdin;
\.


--
-- Data for Name: AO_92D5D5_USER_NOTIFICATION; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_92D5D5_USER_NOTIFICATION" ("BATCH_ID", "BATCH_SENDER_ID", "DATA", "DATE", "ID", "USER_ID") FROM stdin;
\.


--
-- Name: AO_92D5D5_USER_NOTIFICATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_92D5D5_USER_NOTIFICATION_ID_seq"', 1, false);


--
-- Data for Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_A0B856_WEB_HOOK_LISTENER_AO" ("DESCRIPTION", "ENABLED", "EVENTS", "EXCLUDE_BODY", "FILTERS", "ID", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "PARAMETERS", "REGISTRATION_METHOD", "URL") FROM stdin;
\.


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"', 1, false);


--
-- Data for Name: AO_BD73C3_PROJECT_AUDIT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_BD73C3_PROJECT_AUDIT" ("ACTION", "AUDIT_ITEM_ID", "DATE", "DETAILS", "PROJECT_ID", "USER") FROM stdin;
\.


--
-- Name: AO_BD73C3_PROJECT_AUDIT_AUDIT_ITEM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_BD73C3_PROJECT_AUDIT_AUDIT_ITEM_ID_seq"', 1, false);


--
-- Data for Name: AO_BD73C3_REPOSITORY_AUDIT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_BD73C3_REPOSITORY_AUDIT" ("ACTION", "AUDIT_ITEM_ID", "DATE", "DETAILS", "REPOSITORY_ID", "USER") FROM stdin;
\.


--
-- Name: AO_BD73C3_REPOSITORY_AUDIT_AUDIT_ITEM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_BD73C3_REPOSITORY_AUDIT_AUDIT_ITEM_ID_seq"', 1, false);


--
-- Data for Name: AO_CFE8FA_BUILD_STATUS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_CFE8FA_BUILD_STATUS" ("CSID", "DATE_ADDED", "DESCRIPTION", "ID", "KEY", "NAME", "STATE", "URL") FROM stdin;
\.


--
-- Name: AO_CFE8FA_BUILD_STATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_CFE8FA_BUILD_STATUS_ID_seq"', 1, false);


--
-- Data for Name: AO_F4ED3A_ADD_ON_PROPERTY_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_F4ED3A_ADD_ON_PROPERTY_AO" ("ID", "PLUGIN_KEY", "PRIMARY_KEY", "PROPERTY_KEY", "VALUE") FROM stdin;
\.


--
-- Name: AO_F4ED3A_ADD_ON_PROPERTY_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_F4ED3A_ADD_ON_PROPERTY_AO_ID_seq"', 1, false);


--
-- Data for Name: AO_FB71B4_SSH_PUBLIC_KEY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_FB71B4_SSH_PUBLIC_KEY" ("ENTITY_ID", "KEY_MD5", "KEY_TEXT", "LABEL", "USER_ID") FROM stdin;
\.


--
-- Name: AO_FB71B4_SSH_PUBLIC_KEY_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_FB71B4_SSH_PUBLIC_KEY_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: app_property; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY app_property (prop_key, prop_value) FROM stdin;
instance.application.mode	default
license	{{bitbucket.license}}
server.id	{{ bitbucket.serverId }}
instance.home	/var/atlassian/application-data/bitbucket/shared
instance.name	{{bitbucket.name}}
instance.url	{{bitbucket.baseUrl}}/{{bitbucket.directory}}
setup.completed	true
\.


--
-- Data for Name: bb_clusteredjob; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bb_clusteredjob (job_id, job_runner_key, sched_type, interval_millis, first_run, cron_expression, time_zone, next_run, version, parameters) FROM stdin;
GroupCleanUpJob	com.atlassian.stash.internal.user.DefaultUserAdminService$GroupCleanUpJob	1	21600000	2016-07-11 21:04:06.096+00	\N	\N	2016-07-11 21:04:06.096+00	1	\N
UserCleanupJob	com.atlassian.stash.internal.user.DefaultUserAdminService$UserCleanupJob	1	21600000	2016-07-11 21:04:06.177+00	\N	\N	2016-07-11 21:04:06.177+00	1	\N
CleanupExpiredRememberMeTokensJob	com.atlassian.stash.internal.auth.RememberMeTokenCleanupScheduler$CleanupExpiredRememberMeTokensJob	1	18000000	2016-07-11 20:04:06.202+00	\N	\N	2016-07-11 20:04:06.202+00	1	\N
com.atlassian.bitbucket.internal.audit.AuditCleanupJobRunner	com.atlassian.bitbucket.internal.audit.AuditCleanupJobRunner	1	3600000	2016-07-11 16:05:54.148+00	\N	\N	2016-07-11 16:05:54.148+00	1	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c02000078700000000174000e434845434b5f494e54455256414c7571007e000400000001737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000018
CompatibilityPluginScheduler.JobId.LocalPluginLicenseNotificationJob-job	CompatibilityPluginScheduler.JobRunnerKey.LocalPluginLicenseNotificationJob-job-handler	1	86400000	2016-07-11 15:05:54.655+00	\N	\N	2016-07-12 15:05:54.672+00	2	\N
CompatibilityPluginScheduler.JobId.PluginRequestCheckJob-job	CompatibilityPluginScheduler.JobRunnerKey.PluginRequestCheckJob-job-handler	1	3600000	2016-07-11 15:05:54.676+00	\N	\N	2016-07-11 16:05:54.698+00	2	\N
CompatibilityPluginScheduler.JobId.PluginUpdateCheckJob-job	CompatibilityPluginScheduler.JobRunnerKey.PluginUpdateCheckJob-job-handler	1	86400000	2016-07-12 01:16:46.419+00	\N	\N	2016-07-12 01:16:46.419+00	1	\N
CompatibilityPluginScheduler.JobId.InstanceTopologyJob-job	CompatibilityPluginScheduler.JobRunnerKey.InstanceTopologyJob-job-handler	1	86400000	2016-07-11 17:44:12.708+00	\N	\N	2016-07-11 17:44:12.708+00	1	\N
CompatibilityPluginScheduler.JobId.Service Provider Session Remover	CompatibilityPluginScheduler.JobRunnerKey.Service Provider Session Remover	1	28800000	2016-07-11 23:05:56.571+00	\N	\N	2016-07-11 23:05:56.571+00	1	\N
com.atlassian.crowd.manager.directory.monitor.poller.DirectoryPollerManager.32770	com.atlassian.crowd.manager.directory.monitor.poller.DirectoryPollerManager	1	3600000	2016-07-11 15:13:18.255+00	\N	\N	2016-07-11 16:13:18.255+00	2	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c02000078700000000174000c4449524543544f52595f49447571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000008002
CleanupEmptyRescopesJob	com.atlassian.stash.internal.pull.rescope.DefaultRescopeProcessor$CleanupEmptyRescopesJob	1	1800000	2016-07-11 15:34:06.321+00	\N	\N	2016-07-11 16:04:06.321+00	2	\N
BatchNotificationJobRunner	com.atlassian.stash.internal.notification.batch.BatchNotificationJob$BatchNotificationJobRunner	1	60000	2016-07-11 15:06:54.347+00	\N	\N	2016-07-11 15:39:54.349+00	34	\N
\.


--
-- Data for Name: bb_pr_part_status_weight; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bb_pr_part_status_weight (status_id, status_weight) FROM stdin;
0	100
1	300
2	200
\.


--
-- Data for Name: bb_pr_reviewer_added; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bb_pr_reviewer_added (activity_id, user_id) FROM stdin;
\.


--
-- Data for Name: bb_pr_reviewer_removed; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bb_pr_reviewer_removed (activity_id, user_id) FROM stdin;
\.


--
-- Data for Name: bb_pr_reviewer_upd_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bb_pr_reviewer_upd_activity (activity_id) FROM stdin;
\.


--
-- Data for Name: changeset; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY changeset (id, author_timestamp) FROM stdin;
\.


--
-- Data for Name: cs_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cs_attribute (cs_id, att_name, att_value) FROM stdin;
\.


--
-- Data for Name: cs_indexer_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cs_indexer_state (indexer_id, repository_id, last_run) FROM stdin;
\.


--
-- Data for Name: cs_repo_membership; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cs_repo_membership (cs_id, repository_id) FROM stdin;
\.


--
-- Data for Name: current_app; Type: TABLE DATA; Schema: public; Owner: postgres
--

-- COPY current_app (id, application_id, public_key_base64, private_key_base64) FROM stdin;
-- 1	AC1200030155DA7CC820BB1B0D98A7B9	MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAy1drOcihPf8+Y8SKtCnkqnHaOxh4X+/4HPmCguIDqb03t1Hseca6j6PhvdihYQbCKtFCOjHxOSsd8cn2B872TtmMpN/pUEh2/smV9uZZ4fYWqaCdPJTcDW6Y/3oYYBA2nqiOSillhvu+TC8WZuoDUZ9JU8lG62LVsaIxZES6tb1eGFXS2Q3Dn/MXFBRXkao20zLXiFHYINTIOPzHvU38gF38303WcVs3XCZ4EZ/nH80x4XqwFJhAfraVJgyR8nwDcMh4+lej/1LugoCStwS7KsV+DPaRIJVAB36Zr8wUIDvXASbEoKlfQy0bCu43iJZlZnuyv4hIZYAu4Z4eeRG76wIDAQAB	MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDLV2s5yKE9/z5jxIq0KeSqcdo7GHhf7/gc+YKC4gOpvTe3Uex5xrqPo+G92KFhBsIq0UI6MfE5Kx3xyfYHzvZO2Yyk3+lQSHb+yZX25lnh9hapoJ08lNwNbpj/ehhgEDaeqI5KKWWG+75MLxZm6gNRn0lTyUbrYtWxojFkRLq1vV4YVdLZDcOf8xcUFFeRqjbTMteIUdgg1Mg4/Me9TfyAXfzfTdZxWzdcJngRn+cfzTHherAUmEB+tpUmDJHyfANwyHj6V6P/Uu6CgJK3BLsqxX4M9pEglUAHfpmvzBQgO9cBJsSgqV9DLRsK7jeIlmVme7K/iEhlgC7hnh55EbvrAgMBAAECggEAMwG9QHPu2oXl6RHat0HQ/d5sXymOvIYOB3qhPeKjB5eS29Xdi1iJ4NE7pasrJBMVbrcqNT3k5DHII6hFIoVMbNAOgyc1t/FNhDEeAJ6cyl04JxnGh3VR0767+03twl8ezGK8uqaytI7+l86yAGPQLE/YDX/uXcpfj1z/pcbFzSN9+2h19+WcA9LjKDUYtzt1816k3pej8V9saYxPgqXeIPHzoFFp6qRj5xyd2lYNmHSLX4oHMcH96kzFZveCb4nCfa4XlzDNITAXbx19w/oqpNrlG/nlvTV1CA/c+15yRHnMYpgd9HiLnHUXavXuDKVxk6U9dlpiNCGCfNIF6uFUKQKBgQD6VEAcXNBLaQkwTLBLimRSW+WG5qL9DXK8rM3JrRMd6YWAhVa56KommvCScJ8PfkL3gUOm50KKbE1D3f80GzE4++Fb3+3lWkap2OC9BZZs80YF7KXCX+lHDhKb2arQKznHgztcLkuWWYuL713RMtkjeqYyqYCqwkAlhwA1DtmJYwKBgQDP8quLDHoUAhQcQKPi+Y8URIb3reA+G3OVMu2Any1lKuPIRQ0Wiar915pmnVZltkurT/GKggmDdSL1fLQPrOLIiM+Ee6HesUzCP+PTNbXdrQFplXE1yuRTJSZ97h6/mBpc+SiHP04QN8j5bShAnCY6AFhyGcj5u1RNTl59djjN2QKBgQDQ3tl7kOnv8h1LosF61mds3ObAT9LxaHYy/dDblUEdNUtCeH9rsbm/aoqO9c+SYtzHnaDwM4gu7bzugt49AO9qR6i7OzZJp7DMaXzj2zSvhbEIonOQouyHcDOQvOcsuNSGJ3axLKO/OMoaIcjbFB1f4CeqoAoO8PQLHADNRK24VwKBgQCveCECizu0CHD5yh3AmD8ApjaRZvoyzi1A96FriGXg2UkuI/5AR1ivLDBQaHGQEDxXyXSTINlwQPaH2XuDQqp29uLM8xoK9OdFfm37OnZFIQhxFLZb4uG5uz54wubVWz7bty9YuLVhgAEpX8+4fUrQZJw9Y76v5D/ln7yh95FFOQKBgFuHldG77SfDQgVjdaBRm93mYCVcr/S60l0fURQGrNd/kcbCJSt9MNxvVN5/CGa7PLfMRhA7inLFrHyXPuaYM+2EE89mZWoCsSp3EcTlmXdj+vfCgPolhqvOxs9y6PU+D6k8tl5kjAggF5mjY+c/6OmFN2UPiMReX1CJCGqVsRHB
-- \.


--
-- Data for Name: cwd_app_dir_group_mapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_app_dir_group_mapping (id, app_dir_mapping_id, application_id, directory_id, group_name) FROM stdin;
\.


--
-- Data for Name: cwd_app_dir_mapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_app_dir_mapping (id, application_id, directory_id, list_index, is_allow_all) FROM stdin;
{%if crowd %}65537	1	32769	0	T
65538	1	32770	1	T
{% endif %}\.


--
-- Data for Name: cwd_app_dir_operation; Type: TABLE DATA; Schema: public; Owner: postgres
--
{% if crowd %}
COPY cwd_app_dir_operation (app_dir_mapping_id, operation_type) FROM stdin;
65537	DELETE_GROUP
65537	UPDATE_ROLE_ATTRIBUTE
65537	UPDATE_ROLE
65537	CREATE_USER
65537	DELETE_ROLE
65537	CREATE_ROLE
65537	UPDATE_USER
65537	UPDATE_GROUP_ATTRIBUTE
65537	DELETE_USER
65537	UPDATE_USER_ATTRIBUTE
65537	CREATE_GROUP
65537	UPDATE_GROUP
65538	DELETE_GROUP
65538	UPDATE_ROLE_ATTRIBUTE
65538	UPDATE_ROLE
65538	CREATE_USER
65538	DELETE_ROLE
65538	CREATE_ROLE
65538	UPDATE_USER
65538	UPDATE_GROUP_ATTRIBUTE
65538	DELETE_USER
65538	UPDATE_USER_ATTRIBUTE
65538	CREATE_GROUP
65538	UPDATE_GROUP
\.
{% endif %}

--
-- Data for Name: cwd_application; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_application (id, application_name, lower_application_name, created_date, updated_date, description, application_type, credential, is_active) FROM stdin;
{% if crowd %}1	crowd-embedded	crowd-embedded	2016-07-11 15:02:30.259+00	2016-07-11 15:13:12.799+00	\N	CROWD	{PKCS5S2}eMkkEl8ED99b2p0a6EBBU8Et6E0+Y5LweRgoIvA60xnBlGP5rvljBNpjol2Cl2nX	T
{% endif %}\.


--
-- Data for Name: cwd_application_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_application_address (application_id, remote_address) FROM stdin;
\.


--
-- Data for Name: cwd_application_alias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_application_alias (id, application_id, user_name, lower_user_name, alias_name, lower_alias_name) FROM stdin;
\.


--
-- Data for Name: cwd_application_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

-- COPY cwd_application_attribute (application_id, attribute_value, attribute_name) FROM stdin;
-- 1	true	aggregateMemberships
-- 1	true	atlassian_sha1_applied
-- \.


--
-- Data for Name: cwd_directory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_directory (id, directory_name, lower_directory_name, created_date, updated_date, description, impl_class, lower_impl_class, directory_type, is_active) FROM stdin;
32769	Bitbucket Internal Directory	bitbucket internal directory	2016-07-11 15:02:30.444+00	2016-07-11 15:02:30.444+00	Bitbucket Internal Directory	com.atlassian.crowd.directory.InternalDirectory	com.atlassian.crowd.directory.internaldirectory	INTERNAL	T
{% if crowd %}32770	Crowd Server	crowd server	2016-07-11 15:13:12.758+00	2016-07-11 15:13:20.428+00	\N	com.atlassian.crowd.directory.RemoteCrowdDirectory	com.atlassian.crowd.directory.remotecrowddirectory	CROWD	T
{% endif %}\.


--
-- Data for Name: cwd_directory_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_directory_attribute (directory_id, attribute_value, attribute_name) FROM stdin;
32769	atlassian-security	user_encryption_method
{% if crowd %}32770	true	crowd.sync.incremental.enabled
32770	admin	application.password
32770	http://{{crowd.ip}}:8095/crowd	crowd.server.url
32770	3600	directory.cache.synchronise.interval
32770	true	useNestedGroups
32770	bitbucket	application.name
32770	false	com.atlassian.crowd.directory.sync.issynchronising
32770	2147	com.atlassian.crowd.directory.sync.lastdurationms
32770	1468249998281	com.atlassian.crowd.directory.sync.laststartsynctime
{% endif %}\.


--
-- Data for Name: cwd_directory_operation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_directory_operation (directory_id, operation_type) FROM stdin;
32769	UPDATE_ROLE_ATTRIBUTE
32769	DELETE_GROUP
32769	UPDATE_ROLE
32769	CREATE_USER
32769	DELETE_ROLE
32769	CREATE_ROLE
32769	UPDATE_USER
32769	UPDATE_GROUP_ATTRIBUTE
32769	DELETE_USER
32769	UPDATE_USER_ATTRIBUTE
32769	CREATE_GROUP
32769	UPDATE_GROUP
{% if crowd %}32770	UPDATE_GROUP_ATTRIBUTE
32770	UPDATE_USER_ATTRIBUTE
{% endif %}\.


--
-- Data for Name: cwd_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_group (id, group_name, lower_group_name, created_date, updated_date, description, group_type, directory_id, is_active, is_local) FROM stdin;
98305	stash-users	stash-users	2016-07-11 15:02:31.8+00	2016-07-11 15:02:31.8+00	\N	GROUP	32769	T	F{% if crowd %}
98306	jira-developers	jira-developers	2016-07-11 15:13:19.654+00	2016-07-11 15:13:19.654+00		GROUP	32770	T	F
98307	jira-users	jira-users	2016-07-11 15:13:19.658+00	2016-07-11 15:13:19.658+00		GROUP	32770	T	F
98308	jira-administrators	jira-administrators	2016-07-11 15:13:19.658+00	2016-07-11 15:13:19.658+00		GROUP	32770	T	F
98309	crowd-administrators	crowd-administrators	2016-07-11 15:13:19.658+00	2016-07-11 15:13:19.658+00	\N	GROUP	32770	T	F
{% endif %}\.


--
-- Data for Name: cwd_group_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_group_attribute (id, group_id, directory_id, attribute_name, attribute_value, attribute_lower_value) FROM stdin;
\.


--
-- Data for Name: cwd_membership; Type: TABLE DATA; Schema: public; Owner: postgres
-- ????????

COPY cwd_membership (id, parent_id, child_id, membership_type, group_type, parent_name, lower_parent_name, child_name, lower_child_name, directory_id) FROM stdin;
196609	98305	131073	GROUP_USER	GROUP	stash-users	stash-users	{{bitbucket.username}}	{{bitbucket.l_username}}	32769
{% if crowd %}196610	98309	131074	GROUP_USER	GROUP	crowd-administrators	crowd-administrators	{{crowd.username}}	{{crowd.username}}	32770
196611	98308	131074	GROUP_USER	GROUP	jira-administrators	jira-administrators	{{crowd.username}}	{{crowd.username}}	32770
196612	98306	131074	GROUP_USER	GROUP	jira-developers	jira-developers	{{crowd.username}}	{{crowd.username}}	32770
196613	98307	131074	GROUP_USER	GROUP	jira-users	jira-users	{{crowd.username}}	{{crowd.username}}	32770
{% endif %}\.


--
-- Data for Name: cwd_property; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_property (property_key, property_name, property_value) FROM stdin;
\.


--
-- Data for Name: cwd_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_user (id, user_name, lower_user_name, created_date, updated_date, first_name, lower_first_name, last_name, lower_last_name, display_name, lower_display_name, email_address, lower_email_address, directory_id, credential, is_active, external_id) FROM stdin;
131073	{{bitbucket.username}}	{{bitbucket.l_username}}	2016-07-11 15:02:33.498+00	2016-07-11 15:02:33.498+00	{{bitbucket.first_name}}	{{bitbucket.l_first_name}}	{{bitbucket.l_last_name}}	{{bitbucket.l_last_name}}	{{bitbucket.first_name}} {{bitbucket.last_name}}	{{bitbucket.l_first_name}} {{bitbucket.l_last_name}}	{{bitbucket.mail}}	{{bitbucket.mail}}	32769	{{bitbucket.password}}	T	5314b988-b5a4-4a14-a7ee-858440aea0a4
{%if crowd%}131074	{{crowd.username}}	{{crowd.l_username}}	2016-07-11 15:13:19.131+00	2016-07-11 15:13:19.131+00	{{crowd.first_name}}	{{crowd.l_first_name}}	{{crowd.last_name}}	{{crowd.l_last_name}}	{{crowd.last_name}} {{crowd.first_name}}	{{crowd.l_last_name}} {{crowd.l_first_name}}	{{crowd.mail}}	{{crowd.mail}}	32770	nopass	T	32769:3758d6eb-3142-4912-a10f-7ee680464c0a
{% endif %}\.



--
-- Data for Name: cwd_user_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_user_attribute (id, user_id, directory_id, attribute_name, attribute_value, attribute_lower_value) FROM stdin;
163841	131073	32769	passwordLastChanged	1468249353522	1468249353522
163842	131073	32769	requiresPasswordChange	false	false
163843	131073	32769	invalidPasswordAttempts	0	0
163844	131073	32769	lastAuthenticated	1468249563639	1468249563639
163845	131073	32769	lastAuthenticationTimestamp	1468249563804	1468249563804
\.


--
-- Data for Name: cwd_user_credential_record; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_user_credential_record (id, user_id, password_hash, list_index) FROM stdin;
\.

COPY databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase) FROM stdin;
STASHDEV-7910-1	jhinch	liquibase/r3_4/bootstrap-upgrade.xml	2016-07-11 15:00:25.056639+00	1	EXECUTED	3:4ae450c8e1912bae3bcad0a35694e8f4	Create Table	Create the 'app_property' table, only if it hasn't already been created	\N	2.0.5
initial-schema-01	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:35.210633+00	2	EXECUTED	3:57267587db3cf72d7ddcf3bcb9d8c9d2	Create Table		\N	2.0.5
initial-schema-02	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:35.363064+00	3	EXECUTED	3:ffb4f65e042926c584170dbf14367744	Create Table		\N	2.0.5
initial-schema-03	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:35.551307+00	4	EXECUTED	3:5a84448c253d992e66735299b43f8f79	Create Table		\N	2.0.5
initial-schema-04	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:36.0378+00	5	EXECUTED	3:393beaf7c3ebf7218790e1d68f62d783	Create Table		\N	2.0.5
initial-schema-05	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:36.267702+00	6	EXECUTED	3:dc65120a2e8b99a24ff82c548d70e1fb	Create Table, Add Primary Key		\N	2.0.5
initial-schema-06	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:36.376126+00	7	EXECUTED	3:02da791270dad1b7fd7b3b6cdf91f4e2	Create Table, Add Primary Key		\N	2.0.5
initial-schema-07	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:36.77656+00	8	EXECUTED	3:1e459e96366b782e0868ce043526b1e8	Create Table		\N	2.0.5
initial-schema-08	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:37.159737+00	9	EXECUTED	3:939def81f56d8dcba7997d1869e0fbb2	Create Table, Add Primary Key		\N	2.0.5
initial-schema-09	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:37.534998+00	10	EXECUTED	3:66d4910b7100786046358fe8d45b8878	Create Table, Add Primary Key		\N	2.0.5
initial-schema-10	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:37.756472+00	11	EXECUTED	3:8bd3fa178b66557d463e14883ca811b3	Create Table, Add Primary Key		\N	2.0.5
initial-schema-11	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:38.048536+00	12	EXECUTED	3:abb171eb7cdef450592031ea215397a8	Create Table		\N	2.0.5
initial-schema-12	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:38.280427+00	13	EXECUTED	3:5f0eb3fa6ab12db750fc6a0a89cbc050	Create Table		\N	2.0.5
initial-schema-13	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:38.742902+00	14	EXECUTED	3:fc01ddbc78538b9f39095a42a3fe91be	Create Table		\N	2.0.5
initial-schema-14	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:38.920072+00	15	EXECUTED	3:98e3961ec553941e137b676becfe9758	Create Table, Add Primary Key		\N	2.0.5
initial-schema-15	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:39.026923+00	16	EXECUTED	3:cc5ab58160194c77e4c9c02a817e9c6f	Create Table		\N	2.0.5
initial-schema-16	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:39.227461+00	17	EXECUTED	3:a36e77d6206eeda90f1a8e8f5803d952	Create Table		\N	2.0.5
initial-schema-17	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:39.620651+00	18	EXECUTED	3:7d6f0a0ddc97f33f9f52f49c26e7e5a5	Create Table		\N	2.0.5
initial-schema-18	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:40.074293+00	19	EXECUTED	3:3ebb528cd7b8bd5e4d1545643b94aa44	Create Table		\N	2.0.5
initial-schema-19	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:40.165533+00	20	EXECUTED	3:04b8463f2d6bf338a28a5b3aabdb3b7f	Create Index		\N	2.0.5
initial-schema-20	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:40.273917+00	21	EXECUTED	3:c378b0fda9323bc60f2b65c21edfed53	Create Index		\N	2.0.5
initial-schema-21	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:40.389042+00	22	EXECUTED	3:0f8c15342371752258168935580208e1	Create Index		\N	2.0.5
initial-schema-22	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:40.547476+00	23	EXECUTED	3:b1ef7ced0759ee685a77cc9953a42158	Create Index		\N	2.0.5
initial-schema-23	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:40.758395+00	24	EXECUTED	3:94b80e2d6dd2a60dd2240ef2dba9504e	Create Index		\N	2.0.5
initial-schema-24	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:41.039669+00	25	EXECUTED	3:046e0717ab0b70c59c4dbf6f0fe75470	Create Index		\N	2.0.5
initial-schema-25	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:41.33106+00	26	EXECUTED	3:3d71a8e52b6457d1525d822784928cc3	Create Index		\N	2.0.5
initial-schema-26	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:41.722145+00	27	EXECUTED	3:4555c9232ce4fa71733395b6256454a3	Create Index		\N	2.0.5
initial-schema-27	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:41.930832+00	28	EXECUTED	3:3aefb4b328d0af5370af35571984c6d8	Create Index		\N	2.0.5
initial-schema-28	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:42.030514+00	29	EXECUTED	3:41bbf37720c26f10217ef892c14588db	Create Index		\N	2.0.5
initial-schema-29	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:42.113811+00	30	EXECUTED	3:16b8f5bc220706102da87e969296243a	Create Index		\N	2.0.5
initial-schema-30	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:42.222331+00	31	EXECUTED	3:9c4c8fd3c53e32e471572f53d3ed6bf9	Create Index		\N	2.0.5
initial-schema-31	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:42.330689+00	32	EXECUTED	3:3bf36ca1b027766242573b7f7a79c325	Create Index		\N	2.0.5
initial-schema-32	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:42.405714+00	33	EXECUTED	3:a23f0ee937c40a37404d0402de394322	Create Index		\N	2.0.5
initial-schema-33	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:42.480692+00	34	EXECUTED	3:75db9e498deaa048cbef8217e9e88799	Create Index		\N	2.0.5
initial-schema-34	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:42.589052+00	35	EXECUTED	3:a1d916340aed52d7740d278a418584b2	Create Index		\N	2.0.5
initial-schema-35	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:42.689089+00	36	EXECUTED	3:428a1a2b4bd83cf78e3074144eb81b2e	Create Index		\N	2.0.5
initial-schema-36	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:42.76423+00	37	EXECUTED	3:ffdfa2a35c9f3c8cdebb96e07476d14b	Create Index		\N	2.0.5
initial-schema-37	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:42.855821+00	38	EXECUTED	3:9b5d1e50c030174a51ef1402be824a7f	Create Index		\N	2.0.5
initial-schema-38	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:42.972537+00	39	EXECUTED	3:6526828cd67c3afe707bbe505e8a8746	Create Index		\N	2.0.5
initial-schema-39	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:43.067211+00	40	EXECUTED	3:a9ef114a5df3af11bda73e44593113e2	Create Index		\N	2.0.5
initial-schema-40	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:43.142263+00	41	EXECUTED	3:197cf65b8755895a65262b0db5db1aa1	Create Index		\N	2.0.5
initial-schema-41	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:43.416884+00	42	EXECUTED	3:5df083314109ea2ceceaa3dd495810b7	Create Index		\N	2.0.5
initial-schema-42	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:43.667748+00	43	EXECUTED	3:dddbe7e7452dcbdbbbc41d1668149cfc	Create Index		\N	2.0.5
initial-schema-43	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:44.058423+00	44	EXECUTED	3:8b7b235b0bd0dbd2134e5bc27d69ccd8	Create Index		\N	2.0.5
initial-schema-44	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:44.26438+00	45	EXECUTED	3:0c5b3e86a5057f7e58e8d39e42ac2351	Create Index		\N	2.0.5
initial-schema-45	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:44.367479+00	46	EXECUTED	3:136331fa6d06250ac5456c8f94af544f	Create Index		\N	2.0.5
initial-schema-46	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:44.471923+00	47	EXECUTED	3:735de85aade4f31bb4b64924bad16d5e	Create Index		\N	2.0.5
initial-schema-47	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:44.623054+00	48	EXECUTED	3:02da495ccba16402016bcce29dfc7612	Create Index		\N	2.0.5
initial-schema-48	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:44.70005+00	49	EXECUTED	3:34aaa09a84997eec11437169a7818c1e	Create Index		\N	2.0.5
initial-schema-49	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:44.781008+00	50	EXECUTED	3:5c008bdd6ad329dc90bdfe87d5de32a2	Create Index		\N	2.0.5
initial-schema-50	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:44.93919+00	51	EXECUTED	3:9d2910399d3547ced80411f58d7001bc	Create Index		\N	2.0.5
initial-schema-51	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:45.030916+00	52	EXECUTED	3:2f5a5362d9a1a3ddfc047ad93387c203	Create Index		\N	2.0.5
initial-schema-52	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:45.231188+00	53	EXECUTED	3:5d4ca86df3a3d328cfb9adcc3ae35a8d	Create Table		\N	2.0.5
initial-schema-53	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:45.490643+00	54	EXECUTED	3:bbb7edfc3c1cf4e1ede6f6a869b80f3d	Create Table		\N	2.0.5
initial-schema-54	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:46.166149+00	55	EXECUTED	3:1721d03952f415b16f57538b5d6c9b8d	Create Table, Add Unique Constraint, Add Foreign Key Constraint		\N	2.0.5
initial-schema-55	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:46.489616+00	56	EXECUTED	3:bf51e62b65dc0de7bbbf7f135a35faf0	Create Table, Add Foreign Key Constraint (x2)		\N	2.0.5
initial-schema-56	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:46.822589+00	57	EXECUTED	3:bacd40e3462e3705cbbc6cae363fe000	Create Table		\N	2.0.5
initial-schema-57	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:46.955871+00	58	EXECUTED	3:e1c2f41f129688783602cfbd83da1939	Create Table, Add Unique Constraint, Add Foreign Key Constraint		\N	2.0.5
initial-schema-58	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:47.123143+00	59	EXECUTED	3:c6ae70b5c5cb36633870ade25269d507	Create Table		\N	2.0.5
initial-schema-59	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:47.229421+00	60	EXECUTED	3:a6528cb8475a97bda8e2d779d75f081c	Create Table		\N	2.0.5
initial-schema-60	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:47.243792+00	61	MARK_RAN	3:e1817b8e5cfe69dbe4926b0ad49754d3	Create Table		\N	2.0.5
initial-schema-61	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:47.289764+00	62	EXECUTED	3:4e86c2586cd37042de2d404a30f05cdd	Create Table, Insert Row		\N	2.0.5
initial-schema-62	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:47.336471+00	63	EXECUTED	3:630562ae42ffd80ee4159c905b5cb38a	Create Table		\N	2.0.5
initial-schema-63	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:47.466439+00	64	EXECUTED	3:9fab371131a956fc46aaee3dfcfc25a1	Create Table, Add Primary Key		\N	2.0.5
initial-schema-64	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/initial-schema.xml	2016-07-11 15:00:47.591298+00	65	EXECUTED	3:d724614c8e937b1114be4541636aba3b	Create Table		\N	2.0.5
m13-01	gcrain	com/atlassian/caviar/db/changelog/r1_0/m13.xml	2016-07-11 15:00:47.631435+00	66	MARK_RAN	3:ef4f21faec1a9a30d6bcf92bc1cfaae5	Modify data type		\N	2.0.5
CAV-1123-1	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/m15.xml	2016-07-11 15:00:47.708626+00	67	EXECUTED	3:6ad6013537b5dd1d8b5b95318f3220e3	Create Table		\N	2.0.5
CAV-1123-2	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/m15.xml	2016-07-11 15:00:47.749419+00	68	EXECUTED	3:308e94c33533b17b8215a8f715e8a810	Create Table		\N	2.0.5
CAV-1123-3	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/m15.xml	2016-07-11 15:00:48.19145+00	69	EXECUTED	3:795c1b96cbf330ffcbd952463f3131c4	Create Index		\N	2.0.5
CAV-1123-4	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/m15.xml	2016-07-11 15:00:48.308052+00	70	EXECUTED	3:b50193f77e40078d7bbcf37766dc48e7	Create Index		\N	2.0.5
CAV-1123-5	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/m15.xml	2016-07-11 15:00:48.350108+00	71	EXECUTED	3:5613a42f125feb744fcdc8f5443e6530	Create Table		\N	2.0.5
CAV-1123-6	mheemskerk	com/atlassian/caviar/db/changelog/r1_0/m15.xml	2016-07-11 15:00:48.448316+00	72	EXECUTED	3:f51d401b67e773b3b62777c5926cbddc	Create Table		\N	2.0.5
STASH-1842-1	gcrain	liquibase/r1_0/m17.xml	2016-07-11 15:00:48.52307+00	73	EXECUTED	3:d53e8617aad1b90d1611d7d5e0bca23d	Drop Column		\N	2.0.5
STASHDEV-363-recent-repos-01	mstudman	liquibase/r1_1/m03.xml	2016-07-11 15:00:48.577319+00	74	EXECUTED	3:4690a8cd9ddf2be3b81883fcd567dbdc	Create Table		\N	2.0.5
STASHDEV-363-recent-repos-02	mstudman	liquibase/r1_1/m03.xml	2016-07-11 15:00:48.702472+00	75	EXECUTED	3:32efc3468bc4a77ea6927489b9af0f85	Add Primary Key		\N	2.0.5
STASHDEV-363-recent-repos-03	mstudman	liquibase/r1_1/m03.xml	2016-07-11 15:00:48.819185+00	76	EXECUTED	3:e5aa2a064381dc05010fab90b4c705de	Create Index		\N	2.0.5
STASHDEV-595-1	bturner	liquibase/r1_1/m04.xml	2016-07-11 15:00:48.860794+00	77	EXECUTED	3:8767ab3892d88806e32669af73ead216	Drop Column	Anonymous access is not currently supported in Stash. When it is, it will likely not be implemented the way\n            this column was designed to support, so there's no point in keeping the column in the table.	\N	2.0.5
STASHDEV-1392-1	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:57.438262+00	149	EXECUTED	3:9ec89668d5128e8e5ab6e11abb34a0b5	Drop Foreign Key Constraint		\N	2.0.5
STASHDEV-595-2	bturner	liquibase/r1_1/m04.xml	2016-07-11 15:00:48.994322+00	78	EXECUTED	3:e36f06032c4d7e551843c484ef1d62d1	Create Table	Metadata table for adding knowledge of each's permission's relative weight to the database. This allows more\n            efficient retrieval of a user or group's "highest" permission.\n\n            See Permission.getWeight() documentation for more details.	\N	2.0.5
STASHDEV-595-3	bturner	liquibase/r1_1/m04.xml	2016-07-11 15:00:49.047297+00	79	EXECUTED	3:1dee63fd0ae829da4da575f4e38e5f63	Insert Row (x10)	Initial population of relative weights for all permissions. These values must match the values specified in\n            the Permission enumeration _exactly_ or the database will return incorrect results.	\N	2.0.5
STASHDEV-595-4	bturner	liquibase/r1_1/m04.xml	2016-07-11 15:00:49.068908+00	80	EXECUTED	3:73e4096be733eea6a2fd58a26423c045	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1042-01	jhinch	liquibase/r1_2/m01.xml	2016-07-11 15:00:49.135943+00	81	EXECUTED	3:c3522ba04ae1c261764020b374ac3062	Add Column		\N	2.0.5
STASHDEV-1042-02	jhinch	liquibase/r1_2/m01.xml	2016-07-11 15:00:49.354706+00	82	EXECUTED	3:c7d19413bf5be63196ecc2fc4565fd16	Custom Change		\N	2.0.5
STASHDEV-1042-03	jhinch	liquibase/r1_2/m01.xml	2016-07-11 15:00:49.502749+00	83	EXECUTED	3:50184e8c341f38dcdd6f9ca700bfe571	Drop Column		\N	2.0.5
STASHDEV-1042-04	jhinch	liquibase/r1_2/m01.xml	2016-07-11 15:00:49.532877+00	84	EXECUTED	3:6e95c484d33ec37c3562894e70c0cebd	Add Not-Null Constraint		\N	2.0.5
STASHDEV-1042-05	jhinch	liquibase/r1_2/m01.xml	2016-07-11 15:00:49.625685+00	85	EXECUTED	3:4bc65adb841cc9e4f44fbe892af4ea83	Add Column		\N	2.0.5
STASHDEV-1042-06	jhinch	liquibase/r1_2/m01.xml	2016-07-11 15:00:49.66848+00	86	EXECUTED	3:b40d6151af6a559776878178c8b8b314	Custom Change		\N	2.0.5
STASHDEV-1042-07	jhinch	liquibase/r1_2/m01.xml	2016-07-11 15:00:49.716248+00	87	EXECUTED	3:12ae27e05fe78c2151c8b4f9042acd6a	Drop Column		\N	2.0.5
STASHDEV-1042-08	jhinch	liquibase/r1_2/m01.xml	2016-07-11 15:00:49.769081+00	88	EXECUTED	3:84fdfe2eed04220ce2d1e1ea160638d4	Add Not-Null Constraint		\N	2.0.5
STASHDEV-1042-09	jhinch	liquibase/r1_2/m01.xml	2016-07-11 15:00:49.793835+00	89	EXECUTED	3:b58fc7503acca048776c409ab3dae1da	Add Column		\N	2.0.5
STASHDEV-1042-10	jhinch	liquibase/r1_2/m01.xml	2016-07-11 15:00:49.912755+00	90	EXECUTED	3:1766465f1f4285428704e942952da82b	Custom Change		\N	2.0.5
STASHDEV-1042-11	jhinch	liquibase/r1_2/m01.xml	2016-07-11 15:00:49.943812+00	91	EXECUTED	3:6ca7511cadfd4a578296179aef042cda	Drop Column		\N	2.0.5
STASHDEV-1042-12	jhinch	liquibase/r1_2/m01.xml	2016-07-11 15:00:49.993812+00	92	EXECUTED	3:ffde71ede1c0925bf608e5501a63ea74	Add Not-Null Constraint		\N	2.0.5
STASHDEV-616-01	dpinn	liquibase/r1_2/m03.xml	2016-07-11 15:00:50.040163+00	93	MARK_RAN	3:a9f926a299806903995fbb3713ada765	Drop Foreign Key Constraint	Drop the REPOSITORY.FK_REPOSITORY_REPOSITORY_ORIGIN foreign key constraint	\N	2.0.5
STASHDEV-616-02	dpinn	liquibase/r1_2/m03.xml	2016-07-11 15:00:50.10234+00	94	EXECUTED	3:abfec581137d757f2dc7372926dfad6d	Add Foreign Key Constraint	Add the REPOSITORY.FK_REPOSITORY_ORIGIN foreign key constraint\n            to replace the REPOSITORY.FK_REPOSITORY_REPOSITORY_ORIGIN foreign key constraint	\N	2.0.5
STASHDEV-616-03	dpinn	liquibase/r1_2/m03.xml	2016-07-11 15:00:50.159035+00	95	MARK_RAN	3:b1f680e1c426fb51f0a80ddad2e0391c	Drop Foreign Key Constraint	Drop the CS_REPO_MEMBERSHIP.FK_CS_REPO_MEMBERSHIP_CHANGESET foreign key constraint	\N	2.0.5
STASHDEV-616-04	dpinn	liquibase/r1_2/m03.xml	2016-07-11 15:00:50.19391+00	96	EXECUTED	3:d8ef69b6f4e38f5ef26b56d4aeb85844	Add Foreign Key Constraint	Add the CS_REPO_MEMBERSHIP.FK_REPO_MEMBERSHIP_CHANGESET foreign key constraint\n            to replace the CS_REPO_MEMBERSHIP.FK_CS_REPO_MEMBERSHIP_CHANGESET foreign key constraint	\N	2.0.5
STASHDEV-616-05	dpinn	liquibase/r1_2/m03.xml	2016-07-11 15:00:50.240752+00	97	MARK_RAN	3:e4f5aff15989af6555e0e843c04a59fb	Drop Foreign Key Constraint	Drop the CS_REPO_MEMBERSHIP.FK_CS_REPO_MEMBERSHIP_REPOSITORY foreign key constraint	\N	2.0.5
STASHDEV-616-06	dpinn	liquibase/r1_2/m03.xml	2016-07-11 15:00:50.297905+00	98	EXECUTED	3:d9c879564eab37979ff6e3800dd255b7	Add Foreign Key Constraint	Add the CS_REPO_MEMBERSHIP.FK_REPO_MEMBERSHIP_REPO foreign key constraint\n            to replace the CS_REPO_MEMBERSHIP.FK_CS_REPO_MEMBERSHIP_REPOSITORY foreign key constraint	\N	2.0.5
STASHDEV-616-07	dpinn	liquibase/r1_2/m03.xml	2016-07-11 15:00:50.359907+00	99	MARK_RAN	3:f615e2446e8ed0a10b877ce713ef1cb3	Drop Foreign Key Constraint	Drop the REPOSITORY_ACCESS.FK_REPOSITORY_ACCESS_ID_STASH_USER_ID foreign key constraint	\N	2.0.5
STASHDEV-616-08	dpinn	liquibase/r1_2/m03.xml	2016-07-11 15:00:50.496883+00	100	EXECUTED	3:4662f6d5090143a2327e4e30dea4a9ae	Add Foreign Key Constraint	Add the REPOSITORY_ACCESS.FK_REPOSITORY_ACCESS_USER foreign key constraint\n            to replace the REPOSITORY_ACCESS.FK_REPOSITORY_ACCESS_ID_STASH_USER_ID foreign key constraint	\N	2.0.5
STASHDEV-616-09	dpinn	liquibase/r1_2/m03.xml	2016-07-11 15:00:50.574063+00	101	MARK_RAN	3:a44bd21b8df538a2095649410e9830d9	Drop Foreign Key Constraint	Drop the REPOSITORY_ACCESS.FK_REPOSITORY_ACCESS_ID_REPOSITORY_ID foreign key constraint	\N	2.0.5
STASHDEV-616-10	dpinn	liquibase/r1_2/m03.xml	2016-07-11 15:00:50.797371+00	102	EXECUTED	3:6c0823edf631eac234e14a5553125096	Add Foreign Key Constraint	Add the REPOSITORY_ACCESS.FK_REPOSITORY_ACCESS_REPO foreign key constraint\n            to replace the REPOSITORY_ACCESS.FK_REPOSITORY_ACCESS_ID_REPOSITORY_ID foreign key constraint	\N	2.0.5
STASHDEV-1023-1	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:51.047201+00	103	EXECUTED	3:91ec647d777a6961d024c5044f52a338	Create Table		\N	2.0.5
STASHDEV-1023-2	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:51.230932+00	104	EXECUTED	3:8bd8c6003b058fcaf6effd03bf38e1c4	Create Index		\N	2.0.5
STASHDEV-1023-3	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:51.323926+00	105	EXECUTED	3:b1cceb5ac854e4d43988fb9986c881c4	Create Index		\N	2.0.5
STASHDEV-1023-4	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:51.429296+00	106	EXECUTED	3:83005efe633943eabf8ff5b32bbb2e1f	Create Index		\N	2.0.5
STASHDEV-1651-5	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:51.443688+00	107	MARK_RAN	3:5c48164e17bd5a0ae40574623e68d216	Drop Foreign Key Constraint	If fk_sta_comment_author was created by a previous incarnation of this changelog, drop it so it can be\n            recreated correctly.	\N	2.0.5
STASHDEV-1651-6	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:51.504424+00	108	EXECUTED	3:9e870fbdeba5884528578e6326e9a585	Add Foreign Key Constraint	Create a foreign key between comments and their authors. Note that this foreign key does not cascade\n            deletions as it is expected that Stash users will never be deleted.	\N	2.0.5
STASHDEV-1651-1	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:51.518518+00	109	MARK_RAN	3:40cd3c0626a7ea7efae0311f9f98f420	Drop Foreign Key Constraint	If fk_sta_comment_parent was created by a previous incarnation of this changelog, drop it so it can be\n            recreated correctly.	\N	2.0.5
STASHDEV-1651-2	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:51.562907+00	110	EXECUTED	3:9c798bf074a57825ca85ecaa9f4e7870	Add Foreign Key Constraint	Create a foreign key between replies and their parent comment. Note that this foreign key does not cascade\n            deletions; such cascades must be handled in code.	\N	2.0.5
STASHDEV-1651-3	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:51.593877+00	111	MARK_RAN	3:efb13826bb8f7935f6979314a98458f2	Drop Foreign Key Constraint	If fk_sta_comment_root was created by a previous incarnation of this changelog, drop it so it can be\n            recreated correctly.	\N	2.0.5
STASHDEV-1651-4	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:51.721527+00	112	EXECUTED	3:5a4f6f2022fcbbcf0e27a1e02e57c396	Add Foreign Key Constraint	Create a foreign key between replies and their root comment, where a root comment is the top-level comment\n            in a thread. Note that this foreign key does not cascade deletions; such cascades must be handled in code.	\N	2.0.5
STASHDEV-1023-8	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:51.860503+00	113	EXECUTED	3:6b7bb08abe83d63f2e9de8c76f12a22e	Create Table		\N	2.0.5
STASHDEV-1023-9	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:51.964896+00	114	EXECUTED	3:9d83bb3346c0dd73525429bc6946f623	Create Index		\N	2.0.5
STASHDEV-1023-10	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:52.146605+00	115	EXECUTED	3:f75ee66eda4383c0411ea0cdad0c5567	Create Index		\N	2.0.5
STASHDEV-1023-11	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:52.402208+00	116	EXECUTED	3:da96a64f058160fb995d9b84765d5b83	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1023-12	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:52.815236+00	117	EXECUTED	3:52d5798b64a158dcfb4931f2f9cc23a3	Create Table		\N	2.0.5
STASHDEV-1023-13	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:53.227846+00	118	EXECUTED	3:ada498205ca27119bc2cf9e3d42cdfcf	Create Index		\N	2.0.5
STASHDEV-1023-14	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:53.318721+00	119	EXECUTED	3:d86446a867bc3474fff1637ca6415041	Create Index		\N	2.0.5
STASHDEV-1651-7	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:53.348704+00	120	MARK_RAN	3:5329ac247e849b6fd2edd99b5b535abc	Drop Foreign Key Constraint	If fk_sta_activity_user was created by a previous incarnation of this changelog, drop it so it can be\n            recreated correctly.	\N	2.0.5
STASHDEV-1651-8	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:53.396037+00	121	EXECUTED	3:6857e26a44834157c6fdfaa2f2898c64	Add Foreign Key Constraint	Create a foreign key between activities and their user. Note that this foreign key does not cascade\n            deletions as it is expected that Stash users will never be deleted.	\N	2.0.5
STASHDEV-1205-1	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:53.514863+00	122	EXECUTED	3:322906ec8cb283989dc8c2b7a3023e9c	Create Table	Sequence generation table for creating IDs that are scoped by a repository. Multiple scope types may exist\n            for each repository, and each scope will get its own sequence of IDs, starting from 1.	\N	2.0.5
STASHDEV-1205-2	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:53.574006+00	123	EXECUTED	3:93cf6bb31c720ee37a2dc63ceb9b570d	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1023-16	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:53.724595+00	124	EXECUTED	3:988acbbb867c2469537de734d4a960dd	Create Table		\N	2.0.5
STASHDEV-1205-3	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:53.949059+00	125	EXECUTED	3:beeaf3b5e3c47422473ed7fbd69a9cce	Add Unique Constraint		\N	2.0.5
STASHDEV-1023-17	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:54.151381+00	126	EXECUTED	3:80b7e67bd29be93adb0a83f680b9bb5e	Create Index		\N	2.0.5
STASHDEV-1023-18	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:54.450494+00	127	EXECUTED	3:95e76da29e2d2ae7b3e154a2162be19e	Create Index		\N	2.0.5
STASHDEV-1023-19	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:54.574467+00	128	EXECUTED	3:eac12eb803d90d9d164246acbe6ece2b	Create Index		\N	2.0.5
STASHDEV-1205-4	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:54.646521+00	129	EXECUTED	3:2ecc93ec9ba382f22e293bbed6e08bc4	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1205-5	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:54.713214+00	130	EXECUTED	3:9df3cb53617c2ba44dc9f2f52b9fb816	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1023-20	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:55.021757+00	131	EXECUTED	3:faad56bf6ac147ecd512d5d4c0ed253e	Create Table		\N	2.0.5
STASHDEV-1023-21	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:55.579869+00	132	EXECUTED	3:094d5364f226ba20f2142e3858ae6284	Create Index		\N	2.0.5
STASHDEV-1023-22	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:55.628873+00	133	EXECUTED	3:9377e3c87b4e0ea3259ea33f1428f366	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1023-23	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:55.770468+00	134	EXECUTED	3:d335ca727d344af94c814079ef121c7a	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1023-24	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:55.863642+00	135	EXECUTED	3:c29ec55a9f3e05facaad6b578c611b21	Create Table		\N	2.0.5
STASHDEV-1023-25	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:55.996395+00	136	EXECUTED	3:50384125bca92e6a4cbe8f6971881611	Create Index		\N	2.0.5
STASHDEV-1023-26	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:56.095553+00	137	EXECUTED	3:7d5fb290cb7de298e8a6e965baff90eb	Create Index		\N	2.0.5
STASHDEV-1023-27	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:56.146339+00	138	EXECUTED	3:16016f8285c5750df495f6b82f573f74	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1651-9	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:56.162436+00	139	MARK_RAN	3:ffb926280bd23c80aac56362be02945c	Drop Foreign Key Constraint	If fk_sta_pr_com_act_anchor was created by a previous incarnation of this changelog, drop it so it can be\n            recreated correctly.	\N	2.0.5
STASHDEV-1651-10	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:56.221489+00	140	EXECUTED	3:087c504033976358d2efb84a7cc4eddf	Add Foreign Key Constraint	Create a foreign key between comment activities and their comment anchor, if one is set. Note that this\n            foreign key does not cascade deletions as it is expected anchors will never be deleted without deleting\n            their attached comme...	\N	2.0.5
STASHDEV-1023-29	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:56.271578+00	141	EXECUTED	3:d98077d81da30a8d7283661e4e318255	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1023-30	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:56.454757+00	142	EXECUTED	3:0cd826080924a7c1aeb58907647761b0	Create Table		\N	2.0.5
STASHDEV-1023-31	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:56.720853+00	143	EXECUTED	3:5e06b96802b4a30a6fa2c7b68c00a57a	Create Index		\N	2.0.5
STASHDEV-1023-32	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:57.023004+00	144	EXECUTED	3:ec8f02c8d93d6d8f9724d06e165715e4	Create Index		\N	2.0.5
STASHDEV-1023-33	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:57.162449+00	145	EXECUTED	3:95c3308e765a4ef1da3e7fe02a96f5fd	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1651-11	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:57.180286+00	146	MARK_RAN	3:97d14b9106d58a4a4337bbf0fa5719fe	Drop Foreign Key Constraint	If fk_sta_pr_participant_user was created by a previous incarnation of this changelog, drop it so it can be\n            recreated correctly.	\N	2.0.5
STASHDEV-1651-12	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:57.196307+00	147	EXECUTED	3:e67c553266bb607da08d4bd452c35c46	Add Foreign Key Constraint	Create a foreign key between participants and their user. Note that this foreign key does not cascade\n            deletions as it is expected that Stash users will never be deleted.	\N	2.0.5
STASHDEV-1023-35	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:57.388024+00	148	EXECUTED	3:9eefd69778e652f30bf4a206548eb346	Add Unique Constraint		\N	2.0.5
STASHDEV-1392-2	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:57.454688+00	150	EXECUTED	3:ea320d21d65b9f518de8fcf020bb2b5a	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1392-3	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:57.496524+00	151	EXECUTED	3:b0c9ef3715f2d6026c1252c084e7d7eb	Drop Foreign Key Constraint		\N	2.0.5
STASHDEV-1651-13	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:57.601521+00	152	MARK_RAN	3:b0c9ef3715f2d6026c1252c084e7d7eb	Drop Foreign Key Constraint	If fk_sta_pull_request_from_repo was created by a previous incarnation of this changelog, drop it so it can\n            be recreated correctly.	\N	2.0.5
STASHDEV-1651-14	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:57.851683+00	153	EXECUTED	3:2ecc93ec9ba382f22e293bbed6e08bc4	Add Foreign Key Constraint	Create a foreign key between pull requests and the repository they originate from. Note that this foreign\n            key does not cascade deletions as, currently, the from and to repositories will always be the same. When\n            this changes, del...	\N	2.0.5
STASHDEV-1392-5	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:57.89299+00	154	EXECUTED	3:719c7545078781d64d00e68f4fcb99e0	Drop Foreign Key Constraint		\N	2.0.5
STASHDEV-1392-6	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:57.927124+00	155	EXECUTED	3:f992b71d41311e72bc73f6dd8684317e	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1392-7	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:57.996231+00	156	EXECUTED	3:d283449be55baf3cbf58a9badb28da9c	Rename Column		\N	2.0.5
STASHDEV-1392-8	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:58.067718+00	157	EXECUTED	3:2727d25fb03eb91fa8564f92e3ff43a9	Add Column		\N	2.0.5
STASHDEV-1455-1	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:58.12107+00	158	EXECUTED	3:ccec8a564947ace757c55189aaad939d	Add Column		\N	2.0.5
STASHDEV-1455-2	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:58.135959+00	159	EXECUTED	3:29056a3eb962259ef550fb9dbd7f95c0	Update Data		\N	2.0.5
STASHDEV-1455-3	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:58.173375+00	160	EXECUTED	3:a7c320189fc9509dca422449dc760d78	Add Not-Null Constraint		\N	2.0.5
STASHDEV-1455-4	bturner	liquibase/r1_3/m01.xml	2016-07-11 15:00:58.225873+00	161	EXECUTED	3:c86e2a802ccf066fa12a942dba01ac50	Drop Column		\N	2.0.5
STASHDEV-1201-1	bturner	liquibase/r1_3/m02.xml	2016-07-11 15:00:58.278021+00	162	EXECUTED	3:aa6145a20f2be0199c865283bb7e30bb	Add Column	Add a new CLOB column to sta_pull_request to replace the previous description column.	\N	2.0.5
STASHDEV-1201-2	bturner	liquibase/r1_3/m02.xml	2016-07-11 15:00:58.302358+00	163	EXECUTED	3:8c59bff86f1d61a9719af9bfcb589f8d	Update Data	Copy the VARCHAR description into the CLOB pr_description. Note that, in Postgres, this will store the text\n            directly in the column, which is the correct usage to support Unicode encodings.	\N	2.0.5
STASHDEV-1201-3	bturner	liquibase/r1_3/m02.xml	2016-07-11 15:00:58.359301+00	164	EXECUTED	3:36711e28aa58cf8c0722aa64db387bdd	Drop Column	Drop the old VARCHAR(255) description column.	\N	2.0.5
STASHDEV-1201-4	bturner	liquibase/r1_3/m02.xml	2016-07-11 15:00:58.412821+00	165	EXECUTED	3:3f8a82358fa24ff11d8bec2d946c864a	Rename Column	Rename the pr_description column to description. Note that, to correctly support MySQL, the data type\n            set here is MySQL-specific. That property is ignored for all other RDBMSs.	\N	2.0.5
STASHDEV-1724-2	bturner	liquibase/r1_3/m02.xml	2016-07-11 15:00:58.428549+00	166	EXECUTED	3:b666ce30fde8ea1fb4bc9473d3b0bc2c	Custom Change	Rewrite comment CLOBs which have been stored as LargeObjects (OIDs) in Postgres to store the text directly\n            in the column instead.	\N	2.0.5
STASHDEV-1690-1	dpinn	liquibase/r1_3/m02.xml	2016-07-11 15:00:58.526195+00	167	EXECUTED	3:1c7086cbc8157e7770153ca8cfbd4c25	Create Table		\N	2.0.5
STASHDEV-1690-2	tpettersen	liquibase/r1_3/m02.xml	2016-07-11 15:00:58.627066+00	168	EXECUTED	3:3bfefdbe7480386dcfa235f4d114c0d6	Add Unique Constraint		\N	2.0.5
STASHDEV-1690-3	dpinn	liquibase/r1_3/m02.xml	2016-07-11 15:00:58.683105+00	169	EXECUTED	3:3a34fa0dd841702ffaab54348657ca8f	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1697-1	mstudman	liquibase/r1_3/m03.xml	2016-07-11 15:00:58.750295+00	170	EXECUTED	3:213befbad5065170d7cee252ef10ce20	Add Column	Add a new column to sta_pr_participant to record whether the participant has approved the pull request	\N	2.0.5
STASHDEV-1697-2	mstudman	liquibase/r1_3/m03.xml	2016-07-11 15:00:58.798203+00	171	EXECUTED	3:63c03bd9938c101be5312f4ef00f5bbb	Add Not-Null Constraint	Add not null constraint on sta_pr_participant.pr_approved	\N	2.0.5
STASHDEV-1739-1	pepoirot	liquibase/r1_3/m03.xml	2016-07-11 15:00:58.828935+00	172	EXECUTED	3:9d3b45ac0cf1c32134afa3fe6ac9201a	Drop Foreign Key Constraint	Removes the foreign key relationship from trusted_app_restriction to trusted_app, to be able\n            to recreate it and enable deletion cascading.	\N	2.0.5
STASHDEV-1739-2	pepoirot	liquibase/r1_3/m03.xml	2016-07-11 15:00:58.887438+00	173	EXECUTED	3:9c5d092f0122dd951ad2d14d26c5cdcc	Add Foreign Key Constraint	Enables deletion cascading, so that deleting a trusted application also removes the associated\n            restrictions.	\N	2.0.5
STASHDEV-1325-1	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:00:58.931709+00	174	EXECUTED	3:9e021a9d5ec16ec7242d6ceeefd89457	Drop Index	This index prioritised the to_path above the from_hash. Actual usage of the index suggests searching by\n            to_hash, from_hash and then path will be more efficient, because from_hash is always provided but to_path\n            may not be (when l...	\N	2.0.5
STASHDEV-1325-2	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:00:59.164885+00	175	EXECUTED	3:56fc7c3828b33a04fa9c57209ce114b3	Create Index	Create a single-column index on the from_hash.	\N	2.0.5
STASHDEV-1325-3	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:00:59.223317+00	176	EXECUTED	3:fe9038fb27ff4db43b600c39922ecd27	Create Index	Create a single-column index on the to_hash.	\N	2.0.5
STASHDEV-1325-4	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:00:59.304063+00	177	EXECUTED	3:63e6b9f184f06a402c24da170595f66e	Create Index	Create a single-column index on the to_path.	\N	2.0.5
STASHDEV-1325-5	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:00:59.362453+00	178	EXECUTED	3:23a7ea54bcb09cdc8f2217191526770b	Add Column	Add a discriminator column, allowing subclasses of an InternalDiffCommentAnchor.	\N	2.0.5
STASHDEV-1325-6	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:00:59.390995+00	179	EXECUTED	3:bce4cf52accf26c92a40a66eaa4d8ea7	Update Data	Set the discriminator to 1, the value for a simple InternalDiffCommentAnchor, for every existing row.	\N	2.0.5
STASHDEV-1325-7	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:00:59.681593+00	180	EXECUTED	3:e1396d9dfffef49e6b6f6d818d02dec7	Add Not-Null Constraint	Set the NOT NULL constraint on the anchor_type.	\N	2.0.5
STASHDEV-1325-8	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:01:01.014885+00	181	EXECUTED	3:dda79f51ce0850f9b8c06762ab5701e8	Create Table	Create the table for the InternalPullRequestDiffCommentAnchor, a joined subtype of InternalDiffCommentAnchor\n            which adds in a reference to the pull request.	\N	2.0.5
STASHDEV-1325-9	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:01:01.240855+00	182	EXECUTED	3:912bd02dc50f4a2b388000c93feb1c97	Create Index	Index InternalPullRequestDiffCommentAnchors by the pull request they belong to, and tag the orphaned flag\n            into the index as well since it will be used while calculating comment drift.	\N	2.0.5
STASHDEV-1325-10	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:01:01.41198+00	183	EXECUTED	3:5780883bb741470e305071ce8f226e27	Add Foreign Key Constraint	Add a foreign key back to the InternalDiffCommentAnchor that is the base class.\n\n            Note: It's safe to cascade this deletion because if the parent row in sta_diff_comment anchor is being\n            deleted we want to remove any children rows ...	\N	2.0.5
STASHDEV-1325-11	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:01:01.555299+00	184	EXECUTED	3:cab5d30c3daafa31f473ff43be3a11ab	Add Foreign Key Constraint	Add a foreign key to the pull request the InternalPullRequestDiffCommentAnchor belongs to.\n\n            Note: Because this table is a "child" of sta_diff_comment_anchor, this foreign key cannot\n            cascade deletions; it would leave orphaned row...	\N	2.0.5
STASHDEV-1325-12b	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:01:01.614702+00	185	EXECUTED	3:6568f1c85174ad11a1f21ee5322181e5	Custom SQL	Join between the sta_pr_activity and sta_pr_comment_activity table to populate sta_pr_diff_comment_anchor\n            for all existing anchors. This version is for Postgres, which uses a boolean column to for booleans.	\N	2.0.5
STASHDEV-1325-13	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:01:01.671141+00	186	EXECUTED	3:0bb5d9e9835075b858cc4230b3bccefb	Drop Foreign Key Constraint	Drop the previous foreign key constraint between sta_pr_activity and sta_pull_request. It was created\n            with ON DELETE CASCADE, but that is not valid for "child" tables. If the pull request is deleted, it\n            will leave phantom rows i...	\N	2.0.5
STASHDEV-1325-14	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:01:01.771563+00	187	EXECUTED	3:3903c55d220b7cc5d8607eeb7ab031df	Add Foreign Key Constraint	Recreate the fk_sta_pr_activity_pr foreign key without an ON DELETE CASCADE clause.	\N	2.0.5
STASHDEV-1325-15	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:01:01.846484+00	188	EXECUTED	3:7f8773392a6ed2f615eae672c9e69b50	Drop Foreign Key Constraint	Drop the previous foreign key constraint between sta_pr_comment_activity and sta_comment. It was created\n            with ON DELETE CASCADE, but that is not valid for "child" tables. If the comment is deleted it will leave\n            phantom rows in s...	\N	2.0.5
STASHDEV-1325-16	bturner	liquibase/r1_3/m04.xml	2016-07-11 15:01:01.972908+00	189	EXECUTED	3:a12231ef0e55fd91e7beabf14bb9f978	Add Foreign Key Constraint	Recreate the fk_sta_pr_com_act_comment foreign key without an ON DELETE CASCADE clause.	\N	2.0.5
STASHDEV-1700-1	mheemskerk	liquibase/r1_3/m04.xml	2016-07-11 15:01:02.064164+00	190	EXECUTED	3:40cd3c0626a7ea7efae0311f9f98f420	Drop Foreign Key Constraint	Drop the self referential foreign key constraint on sta_comment for the parent_id column, so we can recreate\n            it with onDelete=cascade. The constraint causes problems when comments are bulk deleted on in MySQL. MySQL\n            applies the ...	\N	2.0.5
STASHDEV-1700-2	mheemskerk	liquibase/r1_3/m04.xml	2016-07-11 15:01:02.214662+00	191	EXECUTED	3:efb13826bb8f7935f6979314a98458f2	Drop Foreign Key Constraint	Drop the self referential foreign key constraint on sta_comment for the root_id column, so we can recreate\n            it with onDelete=cascade. The constraint causes problems when comments are bulk deleted on in MySQL. MySQL\n            applies the fo...	\N	2.0.5
STASHDEV-1700-3	mheemskerk	liquibase/r1_3/m04.xml	2016-07-11 15:01:02.328807+00	192	EXECUTED	3:ad63271d32403c259dc159f2f81720bf	Add Foreign Key Constraint	Recreate the self referential foreign key constraint on sta_comment for the parent_id column with\n            it with onDelete=cascade. Unfortunately, self-referential cascading deletes are not supported for MSSQL.	\N	2.0.5
STASHDEV-1700-4	mheemskerk	liquibase/r1_3/m04.xml	2016-07-11 15:01:02.437118+00	193	EXECUTED	3:0159ec7b6f31b937a04af0e56a9c01ee	Add Foreign Key Constraint	Recreate the self referential foreign key constraint on sta_comment for the root_id column with\n            it with onDelete=cascade. Unfortunately, self-referential cascading deletes are not supported for MSSQL.	\N	2.0.5
STASHDEV-1771-1	mstudman	liquibase/r1_3/m04.xml	2016-07-11 15:01:02.698299+00	194	EXECUTED	3:81903a6c195008ce61227bb254899a39	Create Table	Create the table for the InternalPullRequestMergeActivity, a joined subtype of InternalPullRequestActivity\n            which adds the possibly null hash which merged the pull request.	\N	2.0.5
STASHDEV-1771-2	mstudman	liquibase/r1_3/m04.xml	2016-07-11 15:01:02.839772+00	195	EXECUTED	3:ba602876635bdfb2e2d25e4b49f4a572	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1674-1	bturner	liquibase/r1_3/m05.xml	2016-07-11 15:01:02.995479+00	196	EXECUTED	3:38d18e0360577ef197b7c3ba80f7e29b	Create Table	Create the table for the InternalPullRequestRescopeActivity, a joined subtype of InternalPullRequestActivity\n            which stores the current and previous from and to hashes for the pull request.	\N	2.0.5
STASHDEV-1674-2	bturner	liquibase/r1_3/m05.xml	2016-07-11 15:01:03.098637+00	197	EXECUTED	3:2dc132a2b21e853cbfc35809499b56e2	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-1918-1	bturner	liquibase/r1_3/m08.xml	2016-07-11 15:01:03.136817+00	198	EXECUTED	3:d654ada372bb6ceb5044c5e0fe47fc1c	Drop Index	Drop the previous from repository index so we can recreate it including the branch FQN.	\N	2.0.5
STASHDEV-1918-2	bturner	liquibase/r1_3/m08.xml	2016-07-11 15:01:03.165057+00	199	EXECUTED	3:392d761582c554b4eef2ea6f560634e1	Drop Index	Drop the previous to repository index so we can recreate it including the branch FQN.	\N	2.0.5
STASHDEV-1918-3	bturner	liquibase/r1_3/m08.xml	2016-07-11 15:01:03.340152+00	200	EXECUTED	3:8496f064eada60185cd89abe7adbf691	Create Index	Create a composite index on the from repository's ID and fully-qualified branch name.	\N	2.0.5
STASHDEV-1918-4	bturner	liquibase/r1_3/m08.xml	2016-07-11 15:01:03.428274+00	201	EXECUTED	3:a12d9f631da8509c38fcb4c400bbe6a9	Create Index	Create a composite index on the to repository's ID and fully-qualified branch name.	\N	2.0.5
STASHDEV-2081-1	mheemskerk	liquibase/r1_3/m08.xml	2016-07-11 15:01:03.635998+00	202	EXECUTED	3:ddb4961ec16ffd8055620094ad59066a	Create Table	Create a table to store the comment drift requests in the database so they survive\n            server restarts.	\N	2.0.5
STASHDEV-2081-2	mheemskerk	liquibase/r1_3/m08.xml	2016-07-11 15:01:03.669034+00	203	EXECUTED	3:c014130608d572ecd905401df030bc4a	Add Foreign Key Constraint	Create foreign key constraint from sta_drift_request.pr_id --> sta_pull_request.id	\N	2.0.5
STASHDEV-2081-3	mheemskerk	liquibase/r1_3/m08.xml	2016-07-11 15:01:03.964479+00	204	EXECUTED	3:5c26b5e679da3b5cb0299c8ec37fe635	Create Table	Create a table to store the pull request rescope requests in the database so they survive\n            server restarts.	\N	2.0.5
STASHDEV-2081-4	mheemskerk	liquibase/r1_3/m08.xml	2016-07-11 15:01:04.035598+00	205	EXECUTED	3:9620191a9f68bdb2ea45877093294085	Add Foreign Key Constraint	Create foreign key constraint from sta_pr_rescope_request.repo_id --> repository.id	\N	2.0.5
STASHDEV-2081-5	mheemskerk	liquibase/r1_3/m08.xml	2016-07-11 15:01:04.080193+00	206	EXECUTED	3:99870034dc341ec56c5feed4eea63ada	Add Foreign Key Constraint	Create foreign key constraint from sta_pr_rescope_request.user_id --> stash_user.id	\N	2.0.5
STASHDEV-2600-01	mstudman	liquibase/r2_0/m06.xml	2016-07-11 15:01:04.111089+00	207	EXECUTED	3:a7716444382d6880eb5d861b98a0edaa	Custom Change		\N	2.0.5
STASHDEV-2716-1	tbright	liquibase/r2_1/m01.xml	2016-07-11 15:01:04.199816+00	208	EXECUTED	3:2a2e9fe759543f38095baaf28dd3dd4a	Modify data type	Increase the attribute value size to the maximum allowable by the DBs we use. The intention is for use to\n            be able to store JSON values here. The limit is 4000 single byte chars in Oracle.	\N	2.0.5
STASHDEV-962-1	bturner	liquibase/r2_1/m01.xml	2016-07-11 15:01:04.246904+00	209	EXECUTED	3:69f5ccd6665dcece4d3535ecd441afae	Add Column	Add a column for the ProjectType type property, allowing the creation of new project types. The column\n            defaults to nullable to allow for existing rows, which will be adjusted by the next commit.	\N	2.0.5
STASHDEV-962-2	bturner	liquibase/r2_1/m01.xml	2016-07-11 15:01:04.275258+00	210	EXECUTED	3:e22e95ec35440abac12a69d0c3ad466f	Update Data	All existing projects are normal projects, so a blanket update will reflect this.	\N	2.0.5
STASHDEV-962-3	bturner	liquibase/r2_1/m01.xml	2016-07-11 15:01:04.33286+00	211	EXECUTED	3:1a0bf1973619d6da2fe6924099cdb0fc	Add Not-Null Constraint	Having set a value on any existing projects, mark the column as not null.	\N	2.0.5
STASHDEV-962-4	bturner	liquibase/r2_1/m01.xml	2016-07-11 15:01:04.433127+00	212	EXECUTED	3:a1ea9d5e1a67ad2ca4f0c1b66fd956c1	Create Index	Create an index on the project type to allow filtering personal projects out of the project list.	\N	2.0.5
STASHDEV-3052-01	mstudman	liquibase/r2_1/p01.xml	2016-07-11 15:01:04.476606+00	213	EXECUTED	3:045cb33f4992e8e6abe324976e13d374	Custom Change	De-duplicate cs_indexer_state entries with identical (repository_id, indexer_id) values.	\N	2.0.5
STASHDEV-3052-02	mstudman	liquibase/r2_1/p01.xml	2016-07-11 15:01:04.567462+00	214	EXECUTED	3:43383637d72292ce091ca414030ec63f	Add Primary Key	Create a primary key on (repository_id, indexer_id) for cs_indexer_state.	\N	2.0.5
STASHDEV-3270-1	mheemskerk	liquibase/r2_2/m01.xml	2016-07-11 15:01:04.848654+00	215	EXECUTED	3:4a11dc765ac925ee66147a8892e70a40	Drop Table	Stash never needed to have the CWD_TOKEN table. It's only used by Crowd for storing SSO tokens. Embedded\n            Crowd doesn't need it.	\N	2.0.5
STASHDEV-3270-2	mheemskerk	liquibase/r2_2/m01.xml	2016-07-11 15:01:04.974863+00	216	EXECUTED	3:bf0deafb34e5d60a429093310a1e75d2	Drop Primary Key	remote_address_binary and remote_address_mask are part of the primary key for cwd_application_address,\n            so the primary key must be dropped before the columns are dropped.	\N	2.0.5
STASHDEV-3270-3	mheemskerk	liquibase/r2_2/m01.xml	2016-07-11 15:01:04.991907+00	217	EXECUTED	3:7097c0c75db724f85d55a9d24403601b	Drop Column	Crowd has removed the 'mask' and 'encodedAddressBytes' properties from the Application entity. They were\n            unused for a long time and have finally been removed. This removes the column from the database.	\N	2.0.5
STASHDEV-3270-4	mheemskerk	liquibase/r2_2/m01.xml	2016-07-11 15:01:05.025349+00	218	EXECUTED	3:0aa74470b6d9296ae2d2c87a7a761211	Drop Column	Crowd has removed the 'mask' and 'encodedAddressBytes' properties from the Application entity. They were\n            unused for a long time and have finally been removed. This removes the column from the database	\N	2.0.5
STASHDEV-3270-5	mheemskerk	liquibase/r2_2/m01.xml	2016-07-11 15:01:05.124725+00	219	EXECUTED	3:327ed912a2dbdfd4f67cdf61d3dd27d0	Add Primary Key	Recreate the primary key on cwd_application_address now that the binary and mask columns have been dropped.	\N	2.0.5
STASHDEV-2892-1	tbright	liquibase/r2_2/m01.xml	2016-07-11 15:01:05.222712+00	220	EXECUTED	3:16bb7f5ecdf5719822ccac2ab717dcd2	Create Table		\N	2.0.5
STASHDEV-2892-2	tbright	liquibase/r2_2/m01.xml	2016-07-11 15:01:05.339401+00	221	EXECUTED	3:302044e5eee48352c4f5997ab43eb361	Create Index		\N	2.0.5
STASHDEV-2892-3	tbright	liquibase/r2_2/m01.xml	2016-07-11 15:01:05.489589+00	222	EXECUTED	3:384cff4e9c7c34e75d75a1479ef6e4ff	Add Unique Constraint		\N	2.0.5
STASHDEV-2916-1	cofarrell_tbright	liquibase/r2_2/m01.xml	2016-07-11 15:01:05.766808+00	223	EXECUTED	3:682f60e6c243608129be967656f6548b	Create Table		\N	2.0.5
STASHDEV-2916-2	cofarrell	liquibase/r2_2/m01.xml	2016-07-11 15:01:05.864637+00	224	EXECUTED	3:b8366e97f5a2770dc4fe4163dbeabede	Add Unique Constraint		\N	2.0.5
STASHDEV-3474-01	tbright	liquibase/r2_2/p01.xml	2016-07-11 15:01:05.899527+00	225	EXECUTED	3:1743d960c6d661ff36d7322d0031b3bc	Custom Change	De-duplicate cs_repo_membership entries with identical (cs_id, repository_id) values.	\N	2.0.5
STASHDEV-3474-02	tbright	liquibase/r2_2/p01.xml	2016-07-11 15:01:06.236561+00	226	EXECUTED	3:86fd1fd62f6dde71e6218f28dba3790d	Add Primary Key	Create a primary key on (cs_id, repository_id) for cs_repo_membership.	\N	2.0.5
STASHDEV-3474-03	tbright	liquibase/r2_2/p01.xml	2016-07-11 15:01:06.617563+00	227	EXECUTED	3:321a93f26d74bdae1048c1df97b6c0fb	Create Index	Create an index key on repository_id for cs_repo_membership.	\N	2.0.5
STASHDEV-3283-1	bturner	liquibase/r2_3/m01.xml	2016-07-11 15:01:06.674506+00	228	EXECUTED	3:e30e29fe451c5f70197df27a0479824b	Drop Column	The system has not been setting status messages for multiple releases. Remove the column from the\n            table entirely, since it is not really used.	\N	2.0.5
STASHDEV-3283-2	bturner	liquibase/r2_3/m01.xml	2016-07-11 15:01:06.732846+00	229	EXECUTED	3:fe6f3fb0b57ed4e1158260044ec5f980	Add Column	Add a column for tracking repository hierarchies. It must be initially nullable, and will be marked\n            non-null in a subsequent changeset after it is populated.	\N	2.0.5
STASHDEV-3283-3	bturner	liquibase/r2_3/m01.xml	2016-07-11 15:01:06.771423+00	230	EXECUTED	3:42abcf07cea54b88e94a7f129003465d	Custom Change	Run a custom change to set hierarchy IDs for all repositories.	\N	2.0.5
STASHDEV-3283-4	bturner	liquibase/r2_3/m01.xml	2016-07-11 15:01:06.824593+00	231	EXECUTED	3:4c63caa4ad8e7c2f6dc945cda54469b6	Add Not-Null Constraint	Switch hierarchy_id to non-null.	\N	2.0.5
STASHDEV-3283-5	bturner	liquibase/r2_3/m01.xml	2016-07-11 15:01:06.886617+00	232	EXECUTED	3:660f963d54686deaf6f9b238e677356e	Create Index	Create index for hierarchy ID, since it wil be used frequently to load all repositories in a hierarchy\n            when creating pull requests.	\N	2.0.5
STASHDEV-3283-6	bturner	liquibase/r2_3/m01.xml	2016-07-11 15:01:07.119471+00	233	EXECUTED	3:2045dab528fc839f2e5dcbe800fc9e78	Create Index	Create index for origin ID, for use retrieving forks of a given repository.	\N	2.0.5
STASHDEV-3283-7	bturner	liquibase/r2_3/m01.xml	2016-07-11 15:01:07.411069+00	234	EXECUTED	3:7f0ae657bfb3e58562c47a4fb1103788	Create Index	Create index for repository project ID, which is used in almost every query against the repository table\n            to restrict results to a single project (usually joined by key).	\N	2.0.5
STASHDEV-3283-8	bturner	liquibase/r2_3/m01.xml	2016-07-11 15:01:07.640469+00	235	EXECUTED	3:5386f3bc655de954ce148b094dd93f5a	Create Index	Create index for repository state, which will be used to filter deleted repositories out of query results.	\N	2.0.5
STASHDEV-3283-9b	bturner	liquibase/r2_3/m01.xml	2016-07-11 15:01:07.658424+00	236	MARK_RAN	3:206391c871ec540051bb4253cfa17f43	Drop Index	This index is redundant; it's covered by a unique constraint. The changeset that created it has been\n            removed from the changelog.	\N	2.0.5
STASHDEV-3567-2	bturner	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:10.951361+00	267	EXECUTED	3:dfe14991d6eb27617fe15b13d32f100e	Add Foreign Key Constraint	Create a cascading foreign key from sta_normal_project back to project	\N	2.0.5
STASHDEV-3283-10b	bturner	liquibase/r2_3/m01.xml	2016-07-11 15:01:07.904891+00	237	MARK_RAN	3:2dacfd56c11cd8d7411c349360ddef55	Drop Index	This index is redundant; it's covered by a unique constraint. The changeset that created it has been\n            removed from the changelog.	\N	2.0.5
STASHDEV-3283-11	bturner	liquibase/r2_3/m01.xml	2016-07-11 15:01:08.044456+00	238	EXECUTED	3:a1a4ddb62d364fef062907f6c72915fe	Drop Foreign Key Constraint	Drop the foreign key between cs_indexer_state and repository so it can be modified to cascade deletion.	\N	2.0.5
STASHDEV-3283-12	bturner	liquibase/r2_3/m01.xml	2016-07-11 15:01:08.10277+00	239	EXECUTED	3:cbe6cf3d50c29e4b38abf70f71ddf8e8	Add Foreign Key Constraint	Re-add fk_cs_indexer_state_repository with ON DELETE CASCADE.	\N	2.0.5
STASH-3195-1a	bturner	liquibase/r2_3/m01.xml	2016-07-11 15:01:08.149428+00	240	EXECUTED	3:a462e24642b40eb0a6252de21a056f6c	Modify data type	Increase the repository name limit from 64 characters to 128.	\N	2.0.5
STASH-3195-2a	bturner	liquibase/r2_3/m01.xml	2016-07-11 15:01:08.28588+00	241	EXECUTED	3:463246bb564e550c23c91c30d38985ec	Modify data type	Increase the repository slug limit from 64 characters to 128, to match the new name limit.	\N	2.0.5
STASHDEV-3619-1	bturner	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:08.34474+00	242	EXECUTED	3:e810fea38dcfb2f9248f1dd6659903fb	Add Column	Add a column to the "repository" table for the forkable flag.	\N	2.0.5
STASHDEV-3619-2	bturner	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:08.353304+00	243	EXECUTED	3:65e4ae45fefee65a360db3cee013bd8c	Update Data	Mark all existing repositories as forkable by default.	\N	2.0.5
STASHDEV-3619-3	bturner	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:08.411051+00	244	EXECUTED	3:2e2a936a31c01eb97f6fdfc36fd9c138	Add Not-Null Constraint	After setting the default value, mark "repository"."is_forkable" as NOT NULL.	\N	2.0.5
STASHDEV-3458-1	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:08.474792+00	245	EXECUTED	3:405cee8aae36fd952a835980d647d66e	Rename Table	Rename weighted_permission to sta_permission_type	\N	2.0.5
STASHDEV-3458-2	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:08.719331+00	246	EXECUTED	3:c47265a907f5222063bb7faaf7b1e6d9	Create Table	Create the table that will receive the global permissions from the 'granted_permission' table.	\N	2.0.5
STASHDEV-3458-3	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:08.742622+00	247	EXECUTED	3:82968f7461a2e289ea5dd7685e70a9bd	Add Foreign Key Constraint	Add the foreign key constraint between the 'stash_user' table and the global permission table.	\N	2.0.5
STASHDEV-3458-4	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:08.782676+00	248	EXECUTED	3:15060b0d809f000e814e7d0d2c2f3a9e	Add Foreign Key Constraint	Add the foreign key constraint between the 'sta_permission_type' table and the global permission table.	\N	2.0.5
STASHDEV-3458-5	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:08.882429+00	249	EXECUTED	3:8e460c3a85247fbd5d7475b750fcba25	Create Index	Add an index to the 'user_id' column on in the 'sta_global_permission' table.	\N	2.0.5
STASHDEV-3458-6	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:08.957121+00	250	EXECUTED	3:4fe3e529771c24b748780a28d5e5e29a	Create Index	Add an index to the 'group_name' column on in the 'sta_global_permission' table.	\N	2.0.5
STASHDEV-3458-7	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:09.049943+00	251	EXECUTED	3:1dfb8f036d6492f1b1969c686363f823	Create Table	Create the table that will receive the project permissions from the 'granted_permission' table.	\N	2.0.5
STASHDEV-3458-8	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:09.150016+00	252	EXECUTED	3:e80d6b98615d49dbe4fdf2a0fb18b849	Add Foreign Key Constraint	Add the foreign key constraint between the 'stash_user' table and the project permission table.	\N	2.0.5
STASHDEV-3458-9	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:09.365762+00	253	EXECUTED	3:276b90760ed3bb1a9418f9a48a632d35	Add Foreign Key Constraint	Add the foreign key constraint between the 'project' table and the repository permission table.\n            Deleting a repository will be cascaded to the associated project permissions.	\N	2.0.5
STASHDEV-3458-10	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:09.461877+00	254	EXECUTED	3:7de408c81aae9e919336bca701ac83d2	Add Foreign Key Constraint	Add the foreign key constraint between the 'sta_permission_type' table and the project permission table.	\N	2.0.5
STASHDEV-3458-11	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:09.552086+00	255	EXECUTED	3:c08dbd43afbd36bbf774195f748d9926	Create Index	Add an index to the 'user_id' column on in the 'sta_project_permission' table.	\N	2.0.5
STASHDEV-3458-12	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:09.660555+00	256	EXECUTED	3:6ad5ab33d10ab87a85d79a4a7889db99	Create Index	Add an index to the 'group_name' column on in the 'sta_project_permission' table.	\N	2.0.5
STASHDEV-3458-13	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:09.775441+00	257	EXECUTED	3:7d95589fda846aeeada3a51d6d54b6ee	Create Table	Create the table that will receive the new repository permissions.	\N	2.0.5
STASHDEV-3458-14	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:09.853352+00	258	EXECUTED	3:1640ce743ad6297db8689d340f676116	Add Foreign Key Constraint	Add the foreign key constraint between the 'stash_user' table and the repository permission table.	\N	2.0.5
STASHDEV-3458-15	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:09.952554+00	259	EXECUTED	3:cb2b416a045fba7c68a5bc2f1e8b1857	Add Foreign Key Constraint	Add the foreign key constraint between the 'repository' table and the repository permission table.\n            Deleting a repository will be cascaded to the associated repository permissions.	\N	2.0.5
STASHDEV-3458-16	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:09.991354+00	260	EXECUTED	3:8850b2b180985d7a75880d2e9d2536f7	Add Foreign Key Constraint	Add the foreign key constraint between the 'sta_permission_type' table and the repository permission table.	\N	2.0.5
STASHDEV-3458-17	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:10.190732+00	261	EXECUTED	3:8f9abe368278db400f7fd4c54d053a26	Create Index	Add an index to the 'user_id' column on in the 'sta_repo_permission' table.	\N	2.0.5
STASHDEV-3458-18	jhinch	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:10.284524+00	262	EXECUTED	3:1a388393f48c5f9f4f08c60f0b403298	Create Index	Add an index to the 'group_name' column on in the 'sta_repo_permission' table.	\N	2.0.5
STASHDEV-3458-19	pepoirot	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:10.325132+00	263	EXECUTED	3:67e0af278ca021e2276600cd4e7b69fd	Custom SQL	Migrate the global permissions in 'granted_permission' to the new 'sta_global_permission' table.	\N	2.0.5
STASHDEV-3458-20	pepoirot	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:10.353326+00	264	EXECUTED	3:76aaf4e6f44f756f8ff994b4aac54998	Custom SQL	Migrate the project permissions in 'granted_permission' to the new 'sta_project_permission' table.\n            Due to an existing bug which allowed you do grant REPO_* level permissions on a project we explicitly select\n            only project permiss...	\N	2.0.5
STASHDEV-3458-21	pepoirot	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:10.433369+00	265	EXECUTED	3:4878325ff105ccd23fd746ee5f93f46a	Drop Table	Drop the 'granted_permission' table.	\N	2.0.5
STASHDEV-3567-1	bturner	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:10.718183+00	266	EXECUTED	3:b459d7f8a0d608f73089e82b6b22bdc9	Create Table	Create the new sta_normal_project table	\N	2.0.5
STASHDEV-3567-3	bturner	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:10.974944+00	268	EXECUTED	3:e5d00cb759da4cfac4acd76a098cfae3	Custom SQL	Populate the sta_normal_project table with all of the rows from project that identify normal projects.	\N	2.0.5
STASHDEV-3567-4	bturner	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:11.292501+00	269	EXECUTED	3:57d359aa7ed519a2afcc5bd33de7c392	Create Table	Create the new sta_personal_project table	\N	2.0.5
STASHDEV-3567-5	bturner	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:11.346464+00	270	EXECUTED	3:fb40317923d657712794d68594f42f68	Add Foreign Key Constraint	Create a cascading foreign key from sta_personal_project back to project	\N	2.0.5
STASHDEV-3567-6	bturner	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:11.392608+00	271	EXECUTED	3:75c88cf38efd5514a09fdec40cd7899f	Add Foreign Key Constraint	Create a foreign key from sta_personal_project to its owner in stash_user	\N	2.0.5
STASHDEV-3567-7	bturner	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:11.410257+00	272	EXECUTED	3:96604290e46683d80e519cc693132f71	Custom Change	Use a custom change to populate sta_personal_project from projects and set owner links.	\N	2.0.5
STASHDEV-3734-1	mstudman	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:11.692714+00	273	EXECUTED	3:e3b1ec0c9249b3bd25e63bf942b98f38	Add Column	Adds the column stash_user.slug, initially nullable and non-unique, for tracking a user's slug.	\N	2.0.5
STASHDEV-3734-2	mstudman	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:11.729845+00	274	EXECUTED	3:664608cffb169fd6f6755c3742f0881e	Update Data	Default all user slugs to the username, which is already unique.	\N	2.0.5
STASHDEV-3734-3	mstudman	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:11.767544+00	275	EXECUTED	3:2a9534643a2454f8c00c6094326b902f	Add Not-Null Constraint	Adds not-null constraint on stash_user.slug now that all rows have values	\N	2.0.5
STASHDEV-3734-4	mstudman	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:12.007849+00	276	EXECUTED	3:0915ae71248292c6cc8c73d79b6a5cc4	Add Unique Constraint	Adds uniqueness constraint on stash_user.slug now that all rows have values	\N	2.0.5
STASHDEV-3734-6	mstudman	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:12.069258+00	277	EXECUTED	3:6e885e00b6fdeafbd3deb6da572f908f	Custom Change	Update any stash_user rows where the name is not an appropriate slug, ensuring a valid\n            slug (computed from the name) is set.	\N	2.0.5
STASHDEV-3994-2	bturner	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:12.307647+00	278	EXECUTED	3:b3a15896fb2ed718796896400e2a1ae6	Modify data type	Shrink the user slug column from 255 characters to 127. SetStashUserSlug should have already ensured there\n            are no rows left in the database with long values (H2, Oracle and PostgreSQL only)	\N	2.0.5
STASHDEV-3994-5	bturner	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:12.546869+00	279	EXECUTED	3:aa2b8306175fef8b3ed068ac9cfdb858	Modify data type	Increase the project key from 64 characters to 128.	\N	2.0.5
STASHDEV-3994-7	bturner	liquibase/r2_4/upgrade.xml	2016-07-11 15:01:12.751711+00	280	EXECUTED	3:d72414ae2e8c6b6cdaaa0f27a8ebef4d	Modify data type	Increase the project name from 64 characters to 128.	\N	2.0.5
STASHDEV-4154-1	jhinch	liquibase/r2_5/upgrade.xml	2016-07-11 15:01:12.784718+00	281	EXECUTED	3:954cdbd4b0bd464083bf0e836c16b8e2	Add Column	Add a column to the "repository" table for the public flag.	\N	2.0.5
STASHDEV-4154-2	jhinch	liquibase/r2_5/upgrade.xml	2016-07-11 15:01:12.802505+00	282	EXECUTED	3:8edb2e43d6048e78dbe86d06aeb46b43	Update Data	Mark all existing repositories as private by default.	\N	2.0.5
STASHDEV-4154-3	jhinch	liquibase/r2_5/upgrade.xml	2016-07-11 15:01:12.851239+00	283	EXECUTED	3:2558ae73d492fc2bc579af6aa3bb9eac	Add Not-Null Constraint	After setting the default value, mark "repository"."is_public" as NOT NULL.	\N	2.0.5
STASHDEV-4154-4	jhinch	liquibase/r2_5/upgrade.xml	2016-07-11 15:01:12.892882+00	284	EXECUTED	3:2f134f50fdd840656c8abeab22a4cab8	Add Column	Add a column to the "sta_normal_project" table for the public flag.	\N	2.0.5
STASHDEV-4154-5	jhinch	liquibase/r2_5/upgrade.xml	2016-07-11 15:01:12.904476+00	285	EXECUTED	3:39552ecb18e1fd9fb6e307fe1ff3fb72	Update Data	Mark all existing projects as private by default.	\N	2.0.5
STASHDEV-4154-6	jhinch	liquibase/r2_5/upgrade.xml	2016-07-11 15:01:12.958702+00	286	EXECUTED	3:439ce026f754f07f726836bbddfdd9ab	Add Not-Null Constraint	After setting the default value, mark "sta_normal_project"."is_public" as NOT NULL.	\N	2.0.5
STASHDEV-3319-1	bturner	liquibase/r2_5/upgrade.xml	2016-07-11 15:01:12.984576+00	287	EXECUTED	3:8b788c4c73b5c678001631e9917c6699	Add Column	Add commits_added and commits_removed columns for tracking the total number of commits added and removed\n            by a rescope activity. These may be null, in which case they're calculated on retrieval.	\N	2.0.5
STASHDEV-3319-2	bturner	liquibase/r2_5/upgrade.xml	2016-07-11 15:01:13.111655+00	288	EXECUTED	3:630d8c82b7ba19fd7317570b46795dd4	Create Table	Create sta_pr_rescope_commit table for recording the IDs of commits added and removed by a rescope activity.	\N	2.0.5
STASHDEV-3319-3	bturner	liquibase/r2_5/upgrade.xml	2016-07-11 15:01:13.434172+00	289	EXECUTED	3:0264e6a95ecf041e5b3055a934a1ceaf	Create Index	Add an index on the rescope activity ID, which will be used by the foreign key.	\N	2.0.5
STASHDEV-3319-4	bturner	liquibase/r2_5/upgrade.xml	2016-07-11 15:01:13.53384+00	290	EXECUTED	3:f1e7aa71abd66941ff77f7d1fbf363dc	Add Foreign Key Constraint	Create a foreign key from rescope commits to their rescope activity, with cascading deletion.	\N	2.0.5
STASH-3884-1	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:13.701605+00	291	EXECUTED	3:f4542fed73ac2dffb90f2f105bf7f5ff	Add Column	Add cwd_application.is_active column to replace the existing cwd_application.active column.	\N	2.0.5
STASH-3884-2	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:13.734941+00	292	EXECUTED	3:8e1ede100ea7c2a7ba3e8bbe9a3a4c23	Update Data	Populate cwd_application.is_active from active by trimming the trailing spaces.	\N	2.0.5
STASH-3884-3	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:13.868174+00	293	EXECUTED	3:1ecd1c958baac336c46e1b22dab1c405	Add Not-Null Constraint	Add NOT NULL constraint on cwd_application.is_active.	\N	2.0.5
STASH-3804-5	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:14.013844+00	294	EXECUTED	3:28dd76d794b72abaffaf76b2dd1ac6fb	Drop Column	Drop the cwd_application.active column. The Hibernate mapping now expects is_active instead.	\N	2.0.5
STASH-3884-6	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:14.200436+00	295	EXECUTED	3:524033727c5805655bbd999488603ce2	Create Index	Add index on cwd_application.is_active, and fix its case while we're at it.	\N	2.0.5
STASH-3884-7	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:14.458645+00	296	EXECUTED	3:986005ebfa8a5b232b70247a3e5652da	Add Column	Add cwd_directory.is_active column to replace the existing cwd_directory.active column.	\N	2.0.5
STASH-3884-8	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:14.49409+00	297	EXECUTED	3:8498f99c6bf66ade1495a7878c83e44d	Update Data	Populate cwd_directory.is_active from active by trimming the trailing spaces.	\N	2.0.5
STASH-3884-9	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:14.626493+00	298	EXECUTED	3:2ad933bc8fc0616d874f77219f7f1525	Add Not-Null Constraint	Add NOT NULL constraint on cwd_directory.is_active.	\N	2.0.5
STASHDEV-3320-9	bturner	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:25.021158+00	390	EXECUTED	3:dc51e380a2900756fed2a73fe4a9d240	Add Foreign Key Constraint		\N	2.0.5
STASH-3804-11	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:14.69032+00	299	EXECUTED	3:8460053340521ec46efc316524a33fbc	Drop Column	Drop the cwd_directory.active column. The Hibernate mapping now expects is_active instead.	\N	2.0.5
STASH-3884-12	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:14.74559+00	300	EXECUTED	3:f46f87d25df9be7cfeabfc25d16ac1ea	Create Index	Add index on cwd_directory.is_active, and fix its case while we're at it.	\N	2.0.5
STASH-3884-13	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:14.809638+00	301	EXECUTED	3:3146aa338899e8057fbdb78eb1222936	Add Column	Add a cwd_app_dir_mapping.is_allow_all column to replace the existing cwd_app_dir_mapping.allow_all column.	\N	2.0.5
STASH-3884-14	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:14.835586+00	302	EXECUTED	3:423a161e7719bd86b332fb33554b5652	Update Data	Populate cwd_app_dir_mapping.is_allow_all from allow_all by trimming the trailing spaces.	\N	2.0.5
STASH-3884-15	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:14.867906+00	303	EXECUTED	3:3b0109dced27a7e620e7714796b4c40c	Add Not-Null Constraint	Add NOT NULL constraint on cwd_app_dir_mapping.is_allow_all.	\N	2.0.5
STASH-3804-16	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:14.968002+00	304	EXECUTED	3:7f378502096d57cc199b2fe655912f06	Drop Column	Drop the cwd_app_dir_mapping.allow_all column. This Hibernate mapping now expects is_allow_all instead.	\N	2.0.5
STASH-3884-17	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:14.984424+00	305	EXECUTED	3:b817f90ecaf289086e3278853e77904d	Add Column	Add cwd_group.is_active column to replace the existing cwd_group.active column.	\N	2.0.5
STASH-3884-18	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:14.993507+00	306	EXECUTED	3:4d2c147b2340cb8c5970bf1c7bbe5041	Update Data	Populate cwd_group.is_active from active by trimming the trailing spaces.	\N	2.0.5
STASH-3884-19	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:15.009249+00	307	EXECUTED	3:37df79e5934e9a398ce471121e94dc88	Add Not-Null Constraint	Add NOT NULL constraint on cwd_group.is_active.	\N	2.0.5
STASH-3804-20	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:15.173229+00	308	EXECUTED	3:9e951b46b43c8d4d3cf273ba41e247b0	Drop Index	Drop the index on cwd_group.active so it can be recreated with new columns.	\N	2.0.5
STASH-3804-21	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:15.308449+00	309	EXECUTED	3:2561043878f33d48083f6d796ea02e6b	Drop Column	Drop the cwd_group.active column. The Hibernate mapping now expects is_active instead.	\N	2.0.5
STASH-3884-22	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:15.559605+00	310	EXECUTED	3:fef3ce7721d4cbefc48b5ae44a05401d	Create Index	Add index on cwd_group.is_active, and fix its case while we're at it.	\N	2.0.5
STASH-3884-23	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:15.592936+00	311	EXECUTED	3:d34df85312ee73ef1c7456f01854cf45	Add Column	Add placeholder cwd_group.tmp_local column to replace is_local.	\N	2.0.5
STASH-3884-24	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:15.610381+00	312	EXECUTED	3:10b4ae863cb84bdf2f122e04409b4769	Update Data	Populate cwd_group.tmp_local from is_local by trimming the trailing spaces.	\N	2.0.5
STASH-3804-25	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:15.658431+00	313	EXECUTED	3:ae9edb7eeefee040a60de8a5c84b98ce	Drop Column	Drop the existing cwd_group.is_local column to make room for renaming the tmp_local column.	\N	2.0.5
STASH-3884-26	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:15.709657+00	314	EXECUTED	3:73225971d725f9ef5c48f47cad1bbc77	Rename Column	Rename cwd_group.tmp_local to is_local, effectively truncating the column from CHAR(255) to CHAR(1).	\N	2.0.5
STASH-3884-27	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:15.775131+00	315	EXECUTED	3:e8b03872a8524282a36e4191109a478b	Add Not-Null Constraint	Re-add the NOT NULL constraint on cwd_group.is_local.	\N	2.0.5
STASH-3884-28	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:15.841945+00	316	EXECUTED	3:694b84cf30af11c0849e41de81187db4	Add Column	Add cwd_user.is_active column to replace the existing cwd_user.active column.	\N	2.0.5
STASH-3884-29	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:15.869101+00	317	EXECUTED	3:c8da654edd50c7e6f4856281fa25950e	Update Data	Populate cwd_user.is_active from cwd_user.active by trimming the trailing spaces.	\N	2.0.5
STASH-3884-30	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:15.941727+00	318	EXECUTED	3:4e5272ad1e33b281468324cea72dc7e8	Add Not-Null Constraint	Add NOT NULL constraint on cwd_user.is_active.	\N	2.0.5
STASH-3804-31	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:15.959519+00	319	EXECUTED	3:f82d475b96ec4cc73ca3ddaf4471c572	Drop Index	Drop the index on cwd_user.active so it can be recreated with new columns.	\N	2.0.5
STASH-3804-32	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:15.975827+00	320	EXECUTED	3:15b711fdd3dbb4b8c7533632fc4e67e3	Drop Column	Drop the cwd_user.active column. The Hibernate mapping now expects is_active instead.	\N	2.0.5
STASH-3884-33	bturner	liquibase/r2_7/p01.xml	2016-07-11 15:01:16.227659+00	321	EXECUTED	3:d80669bb5908861ebcdead4c81381997	Create Index	Add index on cwd_user.is_active, and fix its case while we're at it.	\N	2.0.5
STASHDEV-5102-1	cofarrell	liquibase/r2_9/upgrade.xml	2016-07-11 15:01:16.242715+00	322	EXECUTED	3:ba2b10ee7507e3c5bcd36b924a38bdee	Custom SQL	Uppercase all of the indexed JIRA values to allow for queries that don't have to be case insensitive	\N	2.0.5
STASHDEV-5250-1	mheemskerk	liquibase/r2_9/upgrade.xml	2016-07-11 15:01:16.50031+00	323	EXECUTED	3:fd28729c44be65d769334ad5764ba6bb	Add Column	Add a column to the "cwd_user" table for an external identifier.	\N	2.0.5
STASHDEV-5398-1	dkordonski	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:16.542979+00	324	EXECUTED	3:a038ec9c6ba056756c4f843ef0859ad5	Add Column	Add file_type column to sta_diff_comment_anchor to support anchoring comments in diffs in source or\n            destination file	\N	2.0.5
STASHDEV-5398-2	dkordonski	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:16.674596+00	325	EXECUTED	3:0acc37f2a1353ac56b88f8d0926ad30d	Update Data (x2)	Update file_type to proper values according to line_type.\n            line_type = 1 (ADDED) -> file_type = 1 (TO)\n            line_type not null -> file_type = 0 (FROM)\n            for line_type null we leave file_type null as this means non-line anchor	\N	2.0.5
STASHDEV-5791-1	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:16.960861+00	326	EXECUTED	3:b74cc62265c9cbe000f02f4863d26142	Create Table	Create the sta_cmt_discussion table for CommitDiscussion.	\N	2.0.5
STASHDEV-5791-2	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:17.267852+00	327	EXECUTED	3:9b0200e0cb7652b5f27029354b5b53ec	Create Index	Create an index on discussion repositories.	\N	2.0.5
STASHDEV-5791-3	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:17.559489+00	328	EXECUTED	3:3678b3b0c027ac6893c27922ee55ce91	Create Index	Create an index on discussion commit IDs.	\N	2.0.5
STASHDEV-5791-4	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:17.998241+00	329	EXECUTED	3:692e3e688127957fcf715e225d2bdd52	Add Unique Constraint	Create a unique constraint ensuring multiple discussions are not started on the same commit ID within\n            a single repository.	\N	2.0.5
STASHDEV-5791-5	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:18.056207+00	330	EXECUTED	3:91527913d214600dac2ac1d7b94e6dd0	Add Foreign Key Constraint	Create a foreign key between discussions and their repositories, cascading deletion to remove discussions\n            when their containing repository is deleted.	\N	2.0.5
STASHDEV-5791-6	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:18.176613+00	331	EXECUTED	3:021e69ce94c12ffa8532cc048c2e2043	Create Table	Create the sta_cmt_disc_participant table for tracking which users have participated in a commit discussion.	\N	2.0.5
STASHDEV-5791-7	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:18.251419+00	332	EXECUTED	3:d9df13d3b27682c2dbc0d16deefaaf0d	Create Index	Create an index on participant discussions to speed up processing the foreign key.	\N	2.0.5
STASHDEV-5791-8	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:18.343206+00	333	EXECUTED	3:b4860f757a558704cd453bfa2c57fddf	Create Index	Create an index on participant users to speed up processing the foreign key.	\N	2.0.5
STASHDEV-5791-9	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:18.393097+00	334	EXECUTED	3:5b57dc9a8fde10d29bba0f8293f0cb36	Add Foreign Key Constraint	Create a foreign key between discussion participants and the discussion, cascading deletion to remove\n            participants when discussions are deleted.	\N	2.0.5
STASHDEV-5791-10	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:18.463134+00	335	EXECUTED	3:903efae5d34ffedb31a07f06c3345285	Add Foreign Key Constraint	Create a foreign key between discussion participants and their user. Note that this foreign key does\n            not cascade deletions as it is expected that Stash users will never be deleted.	\N	2.0.5
STASHDEV-5791-11	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:18.743432+00	336	EXECUTED	3:15d3329c1e72e73c9b62c29f1accdb80	Add Unique Constraint	Create a unique constraint ensuring a given user is not a participant in any discussion more than once.	\N	2.0.5
STASHDEV-5791-12	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:18.834879+00	337	EXECUTED	3:9b023d1667e4a5ecc77968d19c4bb784	Create Table	Create the sta_repo_activity table for tracking repository activity streams.	\N	2.0.5
STASHDEV-5791-13	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:18.99566+00	338	EXECUTED	3:6aeb155ec1fca500e9a1ec62847695f5	Create Index		\N	2.0.5
STASHDEV-5791-14	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:19.045905+00	339	EXECUTED	3:1a3895d8cfbe24a03a1a2cd754ec7b6f	Add Foreign Key Constraint	Create a foreign key between repository activities and their base activities, cascading deletion to\n            simplify deleting activities.	\N	2.0.5
STASHDEV-5791-15	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:19.104249+00	340	EXECUTED	3:9b9d0102f9dc03bcc682ae8df62d92f1	Add Foreign Key Constraint	Create a foreign key between activities and their repositories. This foreign key does not cascade\n            because doing so would leave orphaned partial activities	\N	2.0.5
STASHDEV-5791-16	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:19.428878+00	341	EXECUTED	3:b7940596a69a0f9fa430202620271f14	Create Table	Create the sta_cmt_disc_activity table for tracking commit discussion activity streams.	\N	2.0.5
STASHDEV-5791-17	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:19.55323+00	342	EXECUTED	3:5a5764bcb19f60e1a5c880f6645a187a	Create Index	Create an index on discussion IDs to facilitate applying the foreign key to sta_cmt_discussion.	\N	2.0.5
STASHDEV-5791-18	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:19.644901+00	343	EXECUTED	3:d7a9399ff567038a660b687c1f9c0853	Add Foreign Key Constraint	Create a foreign key between discussion activities and their base repository activities, cascading\n            deletion to simplify deleting activities.	\N	2.0.5
STASHDEV-5791-19	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:19.694948+00	344	EXECUTED	3:394c5cfcb7574d9fff2779383b2caec8	Add Foreign Key Constraint	Create a foreign key between discussion activities and their discussions. Note that this foreign key\n            does not cascade deletions because doing so would leave orphaned rows in other activity tables.	\N	2.0.5
STASHDEV-5791-20	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:20.033843+00	345	EXECUTED	3:8c12baf2178e3eec451762bad1b45239	Create Table	Create the sta_cmt_disc_comment_activity for tracking commit discussion comments in the activity stream.	\N	2.0.5
STASHDEV-5791-21	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:20.261672+00	346	EXECUTED	3:f750a5213d6a766a68ffc2e70bdbb3e6	Create Index	Create an index on anchor IDs to facilitate applying the foreign key to sta_diff_comment_anchor.	\N	2.0.5
STASHDEV-5791-22	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:20.703361+00	347	EXECUTED	3:90aaf4be7b2c74606a0761b6d0873764	Create Index	Create an index on comment IDs to facilitate applying the foreign key to sta_comment.	\N	2.0.5
STASHDEV-5791-23	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:20.73754+00	348	EXECUTED	3:d162fe3b0a31f506f677abf7cfbd362c	Add Foreign Key Constraint	Create a foreign key between comment activities and their base discussion activities, cascading deletion\n            to simplify deleting activities.	\N	2.0.5
STASHDEV-5791-24	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:20.985588+00	349	EXECUTED	3:f48571e17ec6184df4b5de5e2e0f4feb	Add Foreign Key Constraint	Create a foreign key between comment activities and their comment anchor, if one is set. Note that this\n            foreign key does not cascade deletions as it is expected anchors will never be deleted without deleting\n            their attached comme...	\N	2.0.5
STASHDEV-5791-25	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:21.020035+00	350	EXECUTED	3:17c013808085c849d2e4cb66f6fca128	Add Foreign Key Constraint	Create a foreign key between comment activities and their comments. Note that this foreign key does not\n            cascade deletions because doing so would leave orphaned rows in other activity tables.	\N	2.0.5
STASHDEV-5791-26	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:21.204698+00	351	EXECUTED	3:fe8f2ed981c0c878097cd0d74395f48a	Create Table	Create the table for the InternalChangesetDiffCommentAnchor, a joined subtype of InternalDiffCommentAnchor\n            which adds in a reference to an AnnotatedChangeset.	\N	2.0.5
STASHDEV-5791-27	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:21.304327+00	352	EXECUTED	3:7426073e0db8eb2540376a457171828a	Create Index	Create an index on discussion IDs to facilitate applying the foreign key to sta_cmt_discussion.	\N	2.0.5
STASHDEV-5791-28	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:21.358205+00	353	EXECUTED	3:b8ba40866f746b611f3569ec1ba7f625	Add Foreign Key Constraint	Create a foreign key between discussion comment anchors and their base anchor, cascading deletion\n            to simplify deleting anchors.	\N	2.0.5
STASHDEV-5791-29	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:21.586447+00	354	EXECUTED	3:c01ba3effcd5e3b8b64337f20bbc0477	Add Foreign Key Constraint	Create a foreign key between discussion comment anchors and their discussions. Note that this foreign\n            key does not cascade deletions between doing so would leave orphaned rows in sta_diff_comment_anchor.	\N	2.0.5
STASH-2642-1	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:21.772009+00	355	EXECUTED	3:702a3594ce10afaa3a2a1515227b90e9	Create Table		\N	2.0.5
STASH-2642-2	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:21.830311+00	356	EXECUTED	3:ac2c89807f5c890f0bf9cbe58416fc0a	Add Foreign Key Constraint	Create a foreign key between push activities and their base repository activities, cascading deletion\n            to simplify deleting activities.	\N	2.0.5
STASH-2642-3	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:22.130563+00	357	EXECUTED	3:a355c10724541bb8f8cfadbe0124294d	Create Table		\N	2.0.5
STASH-2642-4	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:22.222029+00	358	EXECUTED	3:808316afeeaa3be0802ac251cc1e2f33	Add Primary Key	On all sensible databases, create a primary key between the activity ID and ref ID. No single push\n            should ever be able to update the same ref more than once.	\N	2.0.5
STASH-2642-5	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:22.272134+00	359	EXECUTED	3:808432dd0996af506de7a4090eaff0d6	Create Index	Create an index on activity IDs to facilitate applying the foreign key to sta_repo_push_activity.	\N	2.0.5
STASH-2642-7	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:22.28873+00	360	EXECUTED	3:168404538dc8a5ed31ca11479febae3f	Add Foreign Key Constraint	Create a foreign key between push activities and their base repository activities, cascading deletion\n            to simplify deleting activities.	\N	2.0.5
STASH-2642-8	bturner	liquibase/r2_11/upgrade.xml	2016-07-11 15:01:22.299173+00	361	EXECUTED	3:ce46664dfb842e87efe0e90a5434aab8	Update Data (x2)	Update id_sequence to make room for the change in allocation sizes for activities and rescope requests.	\N	2.0.5
STASHDEV-5511-1	mstudman	liquibase/r2_12/upgrade.xml	2016-07-11 15:01:22.347024+00	362	EXECUTED	3:06f38c892b0c672d6c9ce3c944718509	Create Table	Creating the sta_service_user table for the InternalServiceUser entity.	\N	2.0.5
STASHDEV-5511-2	mstudman	liquibase/r2_12/upgrade.xml	2016-07-11 15:01:22.363636+00	363	EXECUTED	3:c8146aac157d96e5e0a928167fa8df63	Add Foreign Key Constraint	Create a foreign key constraint between service users and their base user.	\N	2.0.5
STASHDEV-5511-3	mstudman	liquibase/r2_12/upgrade.xml	2016-07-11 15:01:22.738358+00	364	EXECUTED	3:0d3b70c19f65f1bb8f9772d68d1b4057	Create Table	Creating the sta_normal_user table for the InternalNormalUser entity.\n            The length of the 'locale' column is just largest enough to allow for the slightly longer 'ja_JP_JP' locales.\n            This column default to nullable because the sett...	\N	2.0.5
STASHDEV-5511-4	mstudman	liquibase/r2_12/upgrade.xml	2016-07-11 15:01:22.766699+00	365	EXECUTED	3:75304eaa40f50485dc88a0b30ee023e9	Add Foreign Key Constraint	Create a foreign key constraint between normal users and their base user.	\N	2.0.5
STASHDEV-5511-5	mstudman	liquibase/r2_12/upgrade.xml	2016-07-11 15:01:22.872878+00	366	EXECUTED	3:86309655d9cd7645f65661f547af3fab	Custom SQL	Insert sta_normal_user rows for all the stash_user rows	\N	2.0.5
STASHDEV-5511-7	mstudman	liquibase/r2_12/upgrade.xml	2016-07-11 15:01:23.033674+00	367	EXECUTED	3:38b95e83860ae23fc9afd5fc0fc1d6d4	Drop Column	Dropping column name from table stash_user as this now lives on sta_normal_user	\N	2.0.5
STASHDEV-5511-9	mstudman	liquibase/r2_12/upgrade.xml	2016-07-11 15:01:23.050036+00	368	EXECUTED	3:5d24292e027713527d4d62d7a7b0cfed	Drop Column	Dropping column slug from table stash_user as this now lives on sta_normal_user	\N	2.0.5
STASHDEV-6470-01	cszmajda	liquibase/r3_0/upgrade.xml	2016-07-11 15:01:23.163438+00	369	EXECUTED	3:744282c826eb14df0091eab2ac010795	Drop Foreign Key Constraint	Drop the CS_REPO_MEMBERSHIP.FK_REPO_MEMBERSHIP_REPO foreign key constraint	\N	2.0.5
STASHDEV-6470-02	cszmajda	liquibase/r3_0/upgrade.xml	2016-07-11 15:01:23.191536+00	370	EXECUTED	3:22957fdb647242ef0a3b7a09e68afe9c	Add Foreign Key Constraint	Add back the CS_REPO_MEMBERSHIP.FK_REPO_MEMBERSHIP_REPO foreign key constraint with ON DELETE CASCADE	\N	2.0.5
STASHDEV-6116-1	mheemskerk	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:23.200646+00	371	EXECUTED	3:151a6664f43d0ea32d7769e6c25dd2e4	Custom SQL	Drop sta_pr_rescope_request from id_sequence table, because sta_pr_rescope_request IDs are no\n            longer generated by Hibernate	\N	2.0.5
STASHDEV-6754-1	jhinch	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:23.216499+00	372	EXECUTED	3:577a69b387ae456f2eeeae5f3635b793	Add Column	Create a nullable 'id' column on the 'plugin_setting' table	\N	2.0.5
STASHDEV-6754-2	jhinch	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:23.227202+00	373	EXECUTED	3:6e85b0eb493a2b22dfe51e5f442b5331	Custom Change	Populate the 'id' column on the 'plugin_setting' table and seed the 'id_sequence' table	\N	2.0.5
STASHDEV-6754-3	jhinch	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:23.261427+00	374	EXECUTED	3:5e932da89b5baf0873249f8528912b71	Add Not-Null Constraint	Make 'id' column on the 'plugin_setting' table not null	\N	2.0.5
STASHDEV-6754-4b	jhinch	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:23.383811+00	375	EXECUTED	3:e0a6b90aaf7051edad6c3045c89974b5	Drop Primary Key	Drop the primary key on the 'key_name' and 'namespace' columns from 'plugin_setting' table.\n            The constraint was not given an explicit name and liquibase fails on Postgres 8.x when attempting\n            to retrieve the correct constraint nam...	\N	2.0.5
STASHDEV-6754-5	jhinch	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:23.650168+00	376	EXECUTED	3:f6d4c8299dec6a15896f6bf33ef982df	Add Primary Key	Add new primary key on 'id' column on the 'plugin_setting' table	\N	2.0.5
STASHDEV-6754-6	jhinch	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:23.724984+00	377	EXECUTED	3:4f0dc7fa6d1f09165a6b01ea87531b63	Add Unique Constraint	Add a unique constraint the 'key_name' and 'namespace' columns from 'plugin_setting'	\N	2.0.5
STASHDEV-7129-1	mheemskerk	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:23.758176+00	378	EXECUTED	3:5a85a170a43cf0604d1ddad1d2970c8d	Rename Table	Rename id_sequence so we can recreate it and dedupe the data	\N	2.0.5
STASHDEV-7129-2	mheemskerk	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:23.991941+00	379	EXECUTED	3:1fcc9868a67cd639a5157caf46af533b	Create Table	Recreate id_sequence table with the proper constraints	\N	2.0.5
STASHDEV-7129-3	mheemskerk	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:24.022576+00	380	EXECUTED	3:6793efc6036191672918f5731c577370	Custom SQL	Copy and dedupe the old id_sequence contents to the new id_sequence table	\N	2.0.5
STASHDEV-7129-4	mheemskerk	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:24.066738+00	381	EXECUTED	3:73f2811c1c7db464cc3daf2dc2ab6264	Drop Table	Drop id_sequence_dupes	\N	2.0.5
STASHDEV-3320-1	bturner	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:24.266603+00	382	EXECUTED	3:82127befc583dc15880fe1d2fbad87fb	Create Table		\N	2.0.5
STASHDEV-3320-2	bturner	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:24.281964+00	383	EXECUTED	3:e9677982b61c204bc5707b5b329a7945	Custom SQL		\N	2.0.5
STASHDEV-3320-3	bturner	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:24.456793+00	384	EXECUTED	3:dc06e1db78be0d159b797ee73d066eca	Create Table		\N	2.0.5
STASHDEV-3320-4	bturner	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:24.62345+00	385	EXECUTED	3:86e8e25f35a404afc3487c0ef9da922a	Create Index		\N	2.0.5
STASHDEV-3320-5	bturner	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:24.673486+00	386	EXECUTED	3:050ee6dce3949fb037d4bd2203d9bb98	Create Index	Create an index on the LOB ID used to store settings, for use by the foreign key.	\N	2.0.5
STASHDEV-3320-6	bturner	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:24.82317+00	387	EXECUTED	3:a8cffc089396ba2ef4df048aefaf2781	Create Index		\N	2.0.5
STASHDEV-3320-7	bturner	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:24.954533+00	388	EXECUTED	3:53c5ee9e1a8e8cd85ffa5dfdfdd9d815	Add Unique Constraint		\N	2.0.5
STASHDEV-3320-8	bturner	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:24.98784+00	389	EXECUTED	3:0a32dfaa1e0075076855dd1c319e9573	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-3320-10	bturner	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:25.039041+00	391	EXECUTED	3:4bbb4bb1ab20430fc18fdeb0338afc86	Custom Change		\N	2.0.5
STASHDEV-3320-11	bturner	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:25.055748+00	392	EXECUTED	3:0e4fcfb3b2c3fa537464bca17ec97727	Update Data (x2)		\N	2.0.5
STASHDEV-3320-12	bturner	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:25.088086+00	393	EXECUTED	3:3c05a182d3cdc03d8e89a82c1abb5365	Drop Table		\N	2.0.5
STASHDEV-3320-13	bturner	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:25.121715+00	394	EXECUTED	3:dc4a55e5f895edf249904602c15d1944	Drop Table		\N	2.0.5
STASHDEV-7021-1	jpalacios	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:25.196324+00	395	EXECUTED	3:2ea9270cc8e5063b8c9ad71414e2ad47	Create Table		\N	2.0.5
STASHDEV-7021-4	jpalacios	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:25.231708+00	396	EXECUTED	3:ffdbdb28d607d3bed1aafdc3b6e1cf1a	Add Foreign Key Constraint		\N	2.0.5
STASHDEV-7021-5	jpalacios	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:25.265076+00	397	EXECUTED	3:dd5ec8c4b752396c614b1548a595494d	Add Foreign Key Constraint		\N	2.0.5
STASH-4631	rstocker	liquibase/r3_2/upgrade.xml	2016-07-11 15:01:25.29834+00	398	EXECUTED	3:17470437e30a9baa56555e10626afb41	Add Column	Add column 'deleted_timestamp' to 'sta_normal_user'	\N	2.0.5
STASHDEV-7551-1	jthomas,pepoirot	liquibase/r3_3/upgrade.xml	2016-07-11 15:01:25.623517+00	399	EXECUTED	3:d04f9d5aecb645d1459e467aa282a7ce	Create Table		\N	2.0.5
STASHDEV-7780-1	jthomas	liquibase/r3_3/upgrade.xml	2016-07-11 15:01:25.773406+00	400	EXECUTED	3:0685c6bd644784c6cdcab2d4dc3a4cea	Create Index		\N	2.0.5
STASHDEV-7780-2	jthomas	liquibase/r3_3/upgrade.xml	2016-07-11 15:01:25.940303+00	401	EXECUTED	3:4b02e60cea210ca640461d1566f27e9d	Create Index		\N	2.0.5
STASHDEV-7846-1	jhinch	liquibase/r3_4/upgrade.xml	2016-07-11 15:01:25.951227+00	402	EXECUTED	3:9fc271f73f300bb87b89c8ae123b78ca	Custom Change	Enable membership aggregation if it has no chance of altering effective permissions	\N	2.0.5
STASHDEV-8207-1	mheemskerk	liquibase/r3_5/upgrade.xml	2016-07-11 15:01:26.071411+00	403	EXECUTED	3:8cafbd306498b33e03f2191ad4d43c51	Add Column	Add locked_timestamp to sta_pull_request	\N	2.0.5
STASHDEV-8207-2	mheemskerk	liquibase/r3_5/upgrade.xml	2016-07-11 15:01:26.095227+00	404	EXECUTED	3:43d277cdf334b35e2b7b529f1938e62e	Custom Change	InternalRescopeRequest is managed by Hibernate again. Re-initialize id_sequence for sta_pr_rescope_request.	\N	2.0.5
STASH-4413-1	jthomas	liquibase/r3_7/upgrade.xml	2016-07-11 15:01:26.118325+00	405	EXECUTED	3:31e5d844046bff54738510253cf2fa8b	Custom Change	Remove orphaned memberships where membership_type is equal to 'GROUP_USER'. This _should_ remove all the duplicates.\n            If they have any duplicates left over we'll have to just delete them all. Getting in a state where\n            this will de...	\N	2.0.5
STASH-4413-2	jthomas	liquibase/r3_7/upgrade.xml	2016-07-11 15:01:26.296201+00	406	EXECUTED	3:86bb9a42335458886fc3d2be8ab26e1d	Add Unique Constraint	Add a unique constraint to "cwd_membership" for the existing index "idx_mem_dir_parent_child".	\N	2.0.5
STASHDEV-8755-1	mheemskerk	liquibase/r3_8/upgrade.xml	2016-07-11 15:01:26.348403+00	407	EXECUTED	3:d05bfe0bdd7f3e66b879a558b70feb33	Create Table	Creates sta_remember_me_token table	\N	2.0.5
STASHDEV-8755-2	mheemskerk	liquibase/r3_8/upgrade.xml	2016-07-11 15:01:26.381726+00	408	EXECUTED	3:846491a7a079591d383c6eed1aba60d5	Add Foreign Key Constraint	Add a foreign key constraint to stash_user	\N	2.0.5
STASHDEV-8755-3	mheemskerk	liquibase/r3_8/upgrade.xml	2016-07-11 15:01:26.440028+00	409	EXECUTED	3:37237f856504ad3e8e489eefbe042a0e	Add Unique Constraint	Add a uniqueness constraint on sta_remember_me_token (series, token)	\N	2.0.5
STASHDEV-8755-4	mheemskerk	liquibase/r3_8/upgrade.xml	2016-07-11 15:01:26.456796+00	410	EXECUTED	3:49dad78d722430a38d8eac52bdcb67e0	Drop Table	Drop the old persistent_logins table	\N	2.0.5
STASHDEV-8452-1	mheemskerk	liquibase/r3_8/upgrade.xml	2016-07-11 15:01:26.531896+00	411	EXECUTED	3:aec8c98825f168abcfd37e5d2e7f71d9	Create Table	Create "sta_repo_origin" table to manage the repository -> origin relationship. This is step 1 in getting rid\n            of the self-referential foreign key on the "repository" table.\n            A repository can only have a single origin. As a result...	\N	2.0.5
STASHDEV-8452-2	mheemskerk	liquibase/r3_8/upgrade.xml	2016-07-11 15:01:26.59644+00	412	EXECUTED	3:ee30f7f31fd3f3c1a4f1b6ccac91bdec	Create Index	Create index on "sta_repo_origin.origin_id	\N	2.0.5
STASHDEV-8452-3	mheemskerk	liquibase/r3_8/upgrade.xml	2016-07-11 15:01:26.616088+00	413	EXECUTED	3:81c48906c9dc85d80961470bb3a0d9fe	Custom SQL	Migrate the is-origin-of relationship from the "repository" table to the "sta_repo_origin" table	\N	2.0.5
STASHDEV-8452-4	mheemskerk	liquibase/r3_8/upgrade.xml	2016-07-11 15:01:26.648153+00	414	EXECUTED	3:c506885a5a924a23bbac5e70357b8edf	Drop Foreign Key Constraint	Drop the foreign key constraint on repository.origin_id prior to dropping the column	\N	2.0.5
STASHDEV-8452-5	mheemskerk	liquibase/r3_8/upgrade.xml	2016-07-11 15:01:26.681573+00	415	EXECUTED	3:07e48eeed7463fc428c291bd62062729	Drop Index	Drop the index on repository.origin_id prior to dropping the column	\N	2.0.5
STASHDEV-8452-6	mheemskerk	liquibase/r3_8/upgrade.xml	2016-07-11 15:01:26.714753+00	416	EXECUTED	3:8b73a31edebcedc9faab0193734c66af	Drop Column	Drop the "origin_id" column from the "repository" table	\N	2.0.5
STASH-7261	jpalacios	liquibase/r3_9/upgrade.xml	2016-07-11 15:01:26.732729+00	417	EXECUTED	3:10db88089d0553a055fdb63b097bbb34	Delete Data		\N	2.0.5
STASH-7119-1	jpalacios	liquibase/r3_9/upgrade.xml	2016-07-11 15:01:26.914761+00	418	EXECUTED	3:2c95fad05ac3431c039b28a654a39929	Create Table		\N	2.0.5
STASH-7119-2	jpalacios	liquibase/r3_9/upgrade.xml	2016-07-11 15:01:26.977311+00	419	EXECUTED	3:f3f97bc565fdb10be4af53321d6b347f	Create Index	Create an index on the deleted timestamp to filter by date during the cleanup task.	\N	2.0.5
STASHDEV-9310-1	mheemskerk	liquibase/r3_9/upgrade.xml	2016-07-11 15:01:27.052549+00	420	EXECUTED	3:828df8808876fc1227f0c73d76fe62cf	Add Column	Add columns to the sta_service_user table	\N	2.0.5
STASHDEV-9310-2	mheemskerk	liquibase/r3_9/upgrade.xml	2016-07-11 15:01:27.07172+00	421	EXECUTED	3:86a49b815d1779a900fc424797b1449b	Custom Change	Populates the new columns in the sta_service_user_new table	\N	2.0.5
STASHDEV-9310-3	mheemskerk	liquibase/r3_9/upgrade.xml	2016-07-11 15:01:27.106476+00	422	EXECUTED	3:f0fd6b099bcae56dc1307a759b6bb9fb	Add Not-Null Constraint	Add not-null constraint to the sta_service_user.active column	\N	2.0.5
STASHDEV-9310-4	mheemskerk	liquibase/r3_9/upgrade.xml	2016-07-11 15:01:27.139727+00	423	EXECUTED	3:8bd3372d0981f1ebc5df1c987f7fae51	Add Not-Null Constraint	Add not-null constraint to the sta_service_user.name column	\N	2.0.5
STASHDEV-9310-5	mheemskerk	liquibase/r3_9/upgrade.xml	2016-07-11 15:01:27.206435+00	424	EXECUTED	3:f3e5d8b5c39af5457dfb6aba52bfd343	Add Unique Constraint	Add unique constraint to the sta_service_user.name column	\N	2.0.5
STASHDEV-9310-6	mheemskerk	liquibase/r3_9/upgrade.xml	2016-07-11 15:01:27.239638+00	425	EXECUTED	3:54313156a08b74c04ddbc54af0b4f321	Add Not-Null Constraint	Add not-null constraint to the sta_service_user.slug column	\N	2.0.5
STASHDEV-9310-7	mheemskerk	liquibase/r3_9/upgrade.xml	2016-07-11 15:01:27.314731+00	426	EXECUTED	3:c4312d3440627cf015cfe58074c8540a	Add Unique Constraint	Add unique constraint to the sta_service_user.slug column	\N	2.0.5
STASHDEV-9310-8	mheemskerk	liquibase/r3_9/upgrade.xml	2016-07-11 15:01:27.344076+00	427	EXECUTED	3:61d9bff2dd9dc10e08d916e4d30a34e0	Add Not-Null Constraint	Add not-null constraint to the sta_service_user.label column	\N	2.0.5
STASH-5244-1	bturner	liquibase/r3_10/upgrade.xml	2016-07-11 15:01:27.361945+00	428	EXECUTED	3:24272bb2ae1ad77fa202ad4bb016eb6a	Update Data		\N	2.0.5
STASH-5244-3	bturner	liquibase/r3_10/upgrade.xml	2016-07-11 15:01:27.435879+00	429	EXECUTED	3:02e40ad511bf6ad82488f1437eb04742	Add Unique Constraint		\N	2.0.5
STASHDEV-9602-1	jpalacios	liquibase/r3_12/upgrade.xml	2016-07-11 15:01:27.494106+00	430	EXECUTED	3:a5ef1940b4fab8c416717803bafef583	Create Index	Add index on sta_pull_request.updated_timestamp	\N	2.0.5
STASHDEV-9602-2	jpalacios	liquibase/r3_12/upgrade.xml	2016-07-11 15:01:27.569149+00	431	EXECUTED	3:047f4cbd19ac97eadb8631ad25650ff9	Create Index	Add index on sta_pull_request.to_repository_id, sta_pull_request.updated_timestamp	\N	2.0.5
STASHDEV-9602-3	jpalacios	liquibase/r3_12/upgrade.xml	2016-07-11 15:01:27.785701+00	432	EXECUTED	3:d7f54b878eeabbf6233d3c5dbfcaa0b9	Create Index	Add index on sta_pull_request.from_repository_id, sta_pull_request.updated_timestamp	\N	2.0.5
STASH-7580	rfriend	liquibase/r3_12/upgrade.xml	2016-07-11 15:01:27.890896+00	433	EXECUTED	3:8f6ce985de9374d2186d94fde2264d98	Update Data		\N	2.0.5
STASHDEV-9922-1	bturner	liquibase/r4_0/upgrade.xml	2016-07-11 15:01:27.949318+00	434	EXECUTED	3:9096c52530c46222b996f85aa024a30f	Update Data (x9)		\N	2.0.5
STASHDEV-9922-2	bturner	liquibase/r4_0/upgrade.xml	2016-07-11 15:01:27.990103+00	435	EXECUTED	3:4fb585e7ea71d8a135ffc74fde7b4145	Update Data		\N	2.0.5
STASHDEV-10475-1	sgoodhew	liquibase/r4_0/upgrade.xml	2016-07-11 15:01:28.007347+00	436	EXECUTED	3:da5220c1c38ef764a0483d6eea739a72	Delete Data		\N	2.0.5
BSERV-8242-1a	bturner	liquibase/r4_0/p07.xml	2016-07-11 15:01:28.02421+00	437	EXECUTED	3:ce04c4936fba5f094ae753a110f8725f	Update Data	Update rows with the stash-bundled-hooks key to use the new bitbucket-bundled-hooks key, unless\n            a row with that key already exists for the repository.	\N	2.0.5
BSERV-8242-2	bturner	liquibase/r4_0/p07.xml	2016-07-11 15:01:28.040669+00	438	EXECUTED	3:6a03d847a77a99fd447decb3accdbf09	Delete Data	Delete any remaining rows with the stash-bundled-hooks key. A row with the bitbucket-bundled-hooks\n            key must already exist for each of these rows or they would have been updated.	\N	2.0.5
BSERVDEV-10768-2	jpalacios	liquibase/r4_2/upgrade.xml	2016-07-11 15:01:28.559957+00	439	EXECUTED	3:25c2e3fb2a4fe28ce3db041ffe13e18e	Custom SQL	Change the type of 'approved' flag from boolean to int for postgres	\N	2.0.5
BSERVDEV-10768-4	jpalacios	liquibase/r4_2/upgrade.xml	2016-07-11 15:01:28.589416+00	440	EXECUTED	3:f4c012042b932d25b8ffe9c0b8156f55	Rename Column	Rename 'approved' column to 'participant_status'	\N	2.0.5
BSERVDEV-10769	jpalacios	liquibase/r4_2/upgrade.xml	2016-07-11 15:01:28.607716+00	441	EXECUTED	3:3188d80d56e964dedda6f9b70abcd90c	Update Data	Reset participant status for authors	\N	2.0.5
BSERVDEV-10791-1	mheemskerk	liquibase/r4_2/upgrade.xml	2016-07-11 15:01:28.639465+00	442	EXECUTED	3:3fd7ea1cf41ce435483d7ced4a4137f1	Add Column	Add namespace column to project table for support of 3-level clone URLs for mirrors	\N	2.0.5
BSERVDEV-10791-2	mheemskerk	liquibase/r4_2/upgrade.xml	2016-07-11 15:01:28.672412+00	443	EXECUTED	3:775fa13a9a16c17f7824ec5539a8bd38	Add Not-Null Constraint	Add not-null constraint to namespace, initializing all null values to #	\N	2.0.5
BSERVDEV-10791-3	mheemskerk	liquibase/r4_2/upgrade.xml	2016-07-11 15:01:28.714421+00	444	EXECUTED	3:ac552e247b18880c168925ef8ed58748	Drop Unique Constraint	Drop uk_project_name	\N	2.0.5
BSERVDEV-10791-4	mheemskerk	liquibase/r4_2/upgrade.xml	2016-07-11 15:01:28.873718+00	445	EXECUTED	3:899054cd42afcee3d6d7b91d0ef8f10b	Add Unique Constraint	Recreate uk_project_name on namespace,name	\N	2.0.5
BSERVDEV-10791-5	mheemskerk	liquibase/r4_2/upgrade.xml	2016-07-11 15:01:28.905952+00	446	EXECUTED	3:38f6544f5e772158c32ba3c52faa2229	Drop Unique Constraint	Drop uk_project_key	\N	2.0.5
BSERVDEV-10791-6	mheemskerk	liquibase/r4_2/upgrade.xml	2016-07-11 15:01:29.055884+00	447	EXECUTED	3:7c7202eae90feea8c4c4e640942f4d1e	Add Unique Constraint	Recreate uk_project_key on namespace,project_key	\N	2.0.5
BSERVDEV-10186	bturner	liquibase/r4_2/upgrade.xml	2016-07-11 15:01:29.122456+00	448	EXECUTED	3:8b432b0dceed2e6ac9f33686f984e48c	Create Index	Add an index for looking up rescope requests by repository ID.	\N	2.0.5
BSERVDEV-10774-1	jpalacios	liquibase/r4_4/upgrade.xml	2016-07-11 15:01:29.240367+00	449	EXECUTED	3:9323bff95cf030c0211c333c5945119a	Create Table	Create a weighting table for sorting by participant status	\N	2.0.5
BSERVDEV-10774-2	jpalacios	liquibase/r4_4/upgrade.xml	2016-07-11 15:01:29.26403+00	450	EXECUTED	3:00bb03a1f3a6759a18bb9ff798c136db	Insert Row (x3)	Populate weighting table for sorting by participant status.\n            Mapping will be: UNAPPROVED(0) -> 0, NEEDS_WORK(2) -> 1, APPROVED(1) -> 2	\N	2.0.5
BSERVDEV-10820	jpalacios	liquibase/r4_4/upgrade.xml	2016-07-11 15:01:29.281779+00	451	EXECUTED	3:c896a069f8727f22b077a2b253d28f3f	Update Data	Promote participants who have approved a PR to reviewers	\N	2.0.5
BSERVDEV-11532-1	jthomas	liquibase/r4_4/upgrade.xml	2016-07-11 15:01:29.439141+00	452	EXECUTED	3:5a7b692a67ad86ebeb6a4f76466b1e41	Create Table		\N	2.0.5
BSERVDEV-11532-2	jthomas	liquibase/r4_4/upgrade.xml	2016-07-11 15:01:29.472531+00	453	EXECUTED	3:8c7671795ab4630ca0b745d3bcf6962d	Add Foreign Key Constraint		\N	2.0.5
BSERVDEV-11532-3	jthomas	liquibase/r4_4/upgrade.xml	2016-07-11 15:01:29.565369+00	454	EXECUTED	3:09d51e7e4e50a174733c6449c187837e	Create Table		\N	2.0.5
BSERVDEV-11532-5	jthomas	liquibase/r4_4/upgrade.xml	2016-07-11 15:01:29.597309+00	455	EXECUTED	3:096d1e3d12c46f6ff93726c0cb382960	Add Foreign Key Constraint		\N	2.0.5
BSERVDEV-11532-6	jthomas	liquibase/r4_4/upgrade.xml	2016-07-11 15:01:29.630716+00	456	EXECUTED	3:4f490fb585ba4e249a9a2e4f0941983d	Add Foreign Key Constraint		\N	2.0.5
BSERVDEV-11532-7	jthomas	liquibase/r4_4/upgrade.xml	2016-07-11 15:01:29.790413+00	457	EXECUTED	3:3caaf19fcd8c3b1f97aee7dca61de5bd	Create Table		\N	2.0.5
BSERVDEV-11532-9	jthomas	liquibase/r4_4/upgrade.xml	2016-07-11 15:01:29.822906+00	458	EXECUTED	3:ba4f5bace1af776ae3265391b7fdaec6	Add Foreign Key Constraint		\N	2.0.5
BSERVDEV-11532-10	jthomas	liquibase/r4_4/upgrade.xml	2016-07-11 15:01:29.947576+00	459	EXECUTED	3:f524fa16fdd339a5c51e81ddcec2f3b6	Add Foreign Key Constraint		\N	2.0.5
BSERV-7216-1	mheemskerk	liquibase/r4_5/upgrade.xml	2016-07-11 15:01:30.21551+00	460	EXECUTED	3:044aa9e8f226d3f660b4dfd6d0ffb329	Create Table	Create the sta_pr_rescope_request_change table to persist the ref-changes with the rescope requests	\N	2.0.5
BSERV-7216-2	mheemskerk	liquibase/r4_5/upgrade.xml	2016-07-11 15:01:30.257133+00	461	EXECUTED	3:ee02a8ef364b325dfaddaf799971e8e7	Add Primary Key	On all sensible databases, create a primary key between the rescope request ID and ref ID. No single\n            rescope trigger should ever be able to change the same ref more than once.	\N	2.0.5
BSERV-7216-4	mheemskerk	liquibase/r4_5/upgrade.xml	2016-07-11 15:01:30.273841+00	462	EXECUTED	3:0100d69a49e1f5dd90615887774569ad	Add Foreign Key Constraint	Create a foreign key between rescope request ref changes and the rescope request, cascading deletion\n            to simplify deleting rescope requests.	\N	2.0.5
BSERV-7216-5	mheemskerk	liquibase/r4_5/upgrade.xml	2016-07-11 15:01:30.290285+00	463	EXECUTED	3:4e466ad69aba980498f00a49482066b7	Drop Column	Drop the branch_fqn column from the rescope request table. It has been replaced by individual ref changes.\n            After the upgrade, any persisted rescope requests will be executed as a full-repository rescope.	\N	2.0.5
BSERV-7216-6	mheemskerk	liquibase/r4_5/upgrade.xml	2016-07-11 15:01:30.31537+00	464	EXECUTED	3:c2b75b130908484f45ae3601b5ff67f0	Add Column	Add the created_date column to track when the rescope request was created. This can be used to order the\n            requests by date to ensure they are replayed in the correct order	\N	2.0.5
BSERV-7216-7	mheemskerk	liquibase/r4_5/upgrade.xml	2016-07-11 15:01:30.348864+00	465	EXECUTED	3:6b3459b3f280f055d0b928fbf6230d00	Add Column	Add the rescoped_date column to track when the scope (from/to ref) of a pull request was last updated.	\N	2.0.5
BSERV-7216-8	mheemskerk	liquibase/r4_5/upgrade.xml	2016-07-11 15:01:30.380849+00	466	EXECUTED	3:e37b192fd188be457cfecbfdd30208b9	Add Not-Null Constraint	Add non-null constraint to sta_pr_rescope_request.created_timestamp	\N	2.0.5
BSERV-7216-9	mheemskerk	liquibase/r4_5/upgrade.xml	2016-07-11 15:01:30.415456+00	467	EXECUTED	3:84941426846e2222ab93503e951769fd	Add Not-Null Constraint	Add non-null constraint to sta_pull_request.rescoped_timestamp	\N	2.0.5
BSERVDEV-11909-1	cszmajda	liquibase/r4_6/upgrade.xml	2016-07-11 15:01:30.499281+00	468	EXECUTED	3:41f1de39db68ba750ba6f449f86bbe38	Create Table	Create clustered job table backing atlassian-scheduler-caesium	\N	2.0.5
BSERVDEV-11909-2	cszmajda	liquibase/r4_6/upgrade.xml	2016-07-11 15:01:30.562215+00	469	EXECUTED	3:98ab847b3063402b75c4b1e4eba5aa1a	Create Index	Add an index for bb_clusteredjob.job_runner_key	\N	2.0.5
BSERVDEV-11909-3	cszmajda	liquibase/r4_6/upgrade.xml	2016-07-11 15:01:30.633619+00	470	EXECUTED	3:3c6410ac6903f75a67808c756e0b430b	Create Index	Add an index for bb_clusteredjob.nextRun	\N	2.0.5
BSERVDEV-12154	bbain	liquibase/r4_6/upgrade.xml	2016-07-11 15:01:30.664132+00	471	EXECUTED	3:6018f6b6d59d90f464f0be2973ff56d2	Add Column	Add column 'time_zone' to 'sta_normal_user'	\N	2.0.5
BSERVDEV-12323-1	jpalacios	liquibase/r4_7/upgrade.xml	2016-07-11 15:01:30.690455+00	472	EXECUTED	3:3409ac6ddf38de0fc4c6589ebac21530	Add Column	Add a diff_type column to sta_pr_diff_comment_anchor and initialize it to 0 (EFFECTIVE)	\N	2.0.5
BSERVDEV-12323-2	jpalacios	liquibase/r4_7/upgrade.xml	2016-07-11 15:01:30.707041+00	473	EXECUTED	3:6250832d54578cfeea12312cac9bdada	Add Not-Null Constraint		\N	2.0.5
BSERVDEV-12323-3	jpalacios	liquibase/r4_7/upgrade.xml	2016-07-11 15:01:30.739436+00	474	EXECUTED	3:06002cab028e6df261db77bc5cdb12da	Add Column	Add a pr_id column to sta_cmt_disc_comment_anchor and initialize it to null	\N	2.0.5
BSERVDEV-12323-4	jpalacios	liquibase/r4_7/upgrade.xml	2016-07-11 15:01:30.807397+00	475	EXECUTED	3:7aa3a440139659eaf49dc3261cc42f9f	Create Index	Add a pr_id column index to sta_cmt_disc_comment_anchor	\N	2.0.5
BSERVDEV-12323-5	jpalacios	liquibase/r4_7/upgrade.xml	2016-07-11 15:01:30.878673+00	476	EXECUTED	3:bb2e47c460760829f6874c17706873be	Add Foreign Key Constraint	Add foreign key constraint to the relationship between commit discussion anchor and the pull request	\N	2.0.5
\.



--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
1	f	\N	\N
\.


--
-- Data for Name: hibernate_unique_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY hibernate_unique_key (next_hi) FROM stdin;
7
\.


--
-- Data for Name: id_sequence; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY id_sequence (sequence_name, next_val) FROM stdin;
granted_permission	21
stash_user	101
sta_shared_lob	41
current_app	21
plugin_setting	81
sta_remember_me_token	41
\.


--
-- Data for Name: plugin_setting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY plugin_setting (namespace, key_name, key_value, id) FROM stdin;
bitbucket.global.settings	com.atlassian.bitbucket.server.bitbucket-git-lfs.tokensecret	1364hshese6l6gdarm3vrdo8vmii31ve4raqfmg7gibv13qig258	1
bitbucket.global.settings	AO_6978BB_#	1	2
bitbucket.global.settings	AO_616D7B_#	1	3
bitbucket.global.settings	AO_FB71B4_#	3	4
bitbucket.global.settings	AO_02A6C0_#	1	5{% if jira %}
bitbucket.global.settings	applinks.admin.6005122a-c12f-3cd8-9ccf-6d2a5af48dfa.type	jira	6
bitbucket.global.settings	applinks.admin.6005122a-c12f-3cd8-9ccf-6d2a5af48dfa.name	Polytech JIRA	7
bitbucket.global.settings	applinks.admin.6005122a-c12f-3cd8-9ccf-6d2a5af48dfa.display.url	{{jira.baseUrl}}/{{jira.subdirectory}}	8
bitbucket.global.settings	applinks.admin.6005122a-c12f-3cd8-9ccf-6d2a5af48dfa.rpc.url	{{jira.baseUrl}}/{{jira.subdirectory}}	9
bitbucket.global.settings	applinks.global.application.ids	#java.util.List\n6005122a-c12f-3cd8-9ccf-6d2a5af48dfa	10
bitbucket.global.settings	applinks.admin.6005122a-c12f-3cd8-9ccf-6d2a5af48dfa.primary	true	11
bitbucket.global.settings	com.atlassian.oauth.consumer.ConsumerService:host.__HOST_SERVICE__	#java.util.Properties\n#Mon Jul 11 15:05:52 UTC 2016\nprivateKey=MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAIF5huAzbrR757GcpWPqSY/4JVX9fdBs/bxFAJFK0YQOW5AXs1Z6JTbZ2rGnS8bkXV1tdz5GKOquf2LSF/VYKp4RPOUCmKMrgRF0Rt70QANjVXh3Kbpx4y1FhhDlCBVkogTrWi5UVJYBzF7stCLFUmUqTTy6FfoaNwqlIroADDoxAgMBAAECgYBXaIfZzF8skYm1qp8tePn4q/not528nBgghiT/8ZbIpDjEanu0IfoFscWmsd7Cg2FUtZYPAKaW6P8u488w3zjFTgc5i/wv7mCKQQY7NLL+lz8g2WJGibShjHks1SrPGb1Gm+MAv/A9EzW1ZZNrL2WEJ7n/KQvvuZfKZuLBI4COEQJBAM3kTMVRQ0IYpJ3oNMyj5hwwTcij4/5vaYVJEI8MfS+wc+r3O2Sk4HyvEX6gFpOsbUH0JQaTMshJ7CBxvOWAxjMCQQCg/DRsFwDdt58e/nmsZkjedATiTUX18e3SLrygACcHEbwupI9CcehfEnemRKV8bHr3kIeiCsVAVt2s6Nvsu3ILAkAjzHU4vbdnD6fXuN8tUbYZ4qAzqaNjwvVi8mBJrw85MoIFMbWG+0/4/euZy7YBOTLKC+xAJ2nl/0xqG7yPXwOXAkA+rNIP/wi0SWfm3jYqu4vFJ7A7FtCVB0KK4O1I8aZAJ1R3aFPqD4TjdsIkdndjMKzTM27K1JylBuy5A9OToAqvAkEAu0SiC0oAiiSijfQA+1hXGpLv4zrIAidy7zMtxs2pFGVWOjs+3FHOMfXi07ao2TvAf+zOHSd61HHLhLMgrwNAzQ\\=\\=\nname=Bitbucket\nkey=Bitbucket\\:0900407872\ndescription=Atlassian Bitbucket at http\\://134.59.130.155/bitbucket \nsignatureMethod=RSA_SHA1\npublicKey=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCBeYbgM260e+exnKVj6kmP+CVV/X3QbP28RQCRStGEDluQF7NWeiU22dqxp0vG5F1dbXc+Rijqrn9i0hf1WCqeETzlApijK4ERdEbe9EADY1V4dym6ceMtRYYQ5QgVZKIE61ouVFSWAcxe7LQixVJlKk08uhX6GjcKpSK6AAw6MQIDAQAB\n	12
bitbucket.global.settings	com.atlassian.oauth.serviceprovider.ServiceProviderConsumerStore.allConsumerKeys	jira%3A0b744a74-9c0e-4bb8-8fbf-32f64c8eaabe	13
bitbucket.global.settings	com.atlassian.oauth.serviceprovider.ServiceProviderConsumerStore.con736a97a028b2beac22e36aa59daf45ec	#java.util.Properties\n#Mon Jul 11 15:05:53 UTC 2016\ntwoLOImpersonationAllowed=false\nname=Polytech JIRA\ndescription=Atlassian JIRA at http\\://localhost/jira\nthreeLOAllowed=true\npublicKey=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDSdZDwz/qvofee4LrAMJDOGe6Igg6dqCQ6WJL5U5lWfqIYnnnIFQarydQU/imbeiTZ/fKUZjQHxfCKfyhXk/gyIfMnHpt2S973kj/pgwzUA5wp0fIDPA/zbsKpee/ZcWZbGiLu9sCnAfnJVgYYWk20eElxLleFiItOnhaQIwLaNwIDAQAB\ntwoLOAllowed=true\n	14
bitbucket.global.settings	applinks.application.6005122a-c12f-3cd8-9ccf-6d2a5af48dfa.oauth.incoming.consumerkey	jira:0b744a74-9c0e-4bb8-8fbf-32f64c8eaabe	15
bitbucket.global.settings	applinks.admin.6005122a-c12f-3cd8-9ccf-6d2a5af48dfa.propertyKeys	#java.util.List\noauth.incoming.consumerkey	16
bitbucket.global.settings	applinks.admin.6005122a-c12f-3cd8-9ccf-6d2a5af48dfa.auth.52e4d6463f02700eeefbefc74233de4f	#java.util.Properties\n#Mon Jul 11 15:05:53 UTC 2016\n	17
bitbucket.global.settings	applinks.admin.6005122a-c12f-3cd8-9ccf-6d2a5af48dfa.auth.4e751871359fc86ed973d2a58b40c2b7	#java.util.Properties\n#Mon Jul 11 15:05:53 UTC 2016\n	19
bitbucket.global.settings	applinks.admin.6005122a-c12f-3cd8-9ccf-6d2a5af48dfa.providerKeys	#java.util.List\ncom.atlassian.applinks.api.auth.types.OAuthAuthenticationProvider\ncom.atlassian.applinks.api.auth.types.TwoLeggedOAuthAuthenticationProvider	18{% endif %}
bitbucket.global.settings	com.atlassian.analytics.client.configuration..analytics_enabled	true	20
bitbucket.global.settings	com.atlassian.analytics.client.configuration..policy_acknowledged	true	21
bitbucket.global.settings	com.atlassian.analytics.client.configuration.uuid	d5f2978e-8cb8-41cd-8d31-51a587353fb3	22
bitbucket.global.settings	com.atlassian.analytics.client.configuration.serverid	{{ bitbucket.serverId }}	23
bitbucket.global.settings	com.atlassian.bitbucket.server.bitbucket-git:build	7	24
bitbucket.global.settings	com.atlassian.upm:notifications:notification-plugin.request	#java.util.List\n	26
bitbucket.global.settings	com.atlassian.upm:notifications:notification-edition.mismatch	#java.util.List\n	27
bitbucket.global.settings	com.atlassian.upm:notifications:notification-evaluation.expired	#java.util.List\n	28
bitbucket.global.settings	com.atlassian.upm:notifications:notification-evaluation.nearlyexpired	#java.util.List\n	29
bitbucket.global.settings	com.atlassian.upm:notifications:notification-maintenance.expired	#java.util.List\n	30
bitbucket.global.settings	com.atlassian.upm:notifications:notification-maintenance.nearlyexpired	#java.util.List\n	31
bitbucket.global.settings	plugins.lastVersion.server	4007001	32
bitbucket.global.settings	plugins.lastVersion.plugins	1.1.86-bitbucket-04	33
bitbucket.global.settings	com.atlassian.crowd.embedded.admin:build	3	34
bitbucket.global.settings	com.atlassian.upm:notifications:dismissal-plugin.request	#java.util.List\n	37
bitbucket.global.settings	com.atlassian.upm:notifications:dismissal-update	#java.util.List\n	38
bitbucket.global.settings	com.atlassian.upm:notifications:dismissal-evaluation.expired	#java.util.List\n	39
bitbucket.global.settings	com.atlassian.upm.log.PluginSettingsAuditLogService:log:upm_audit_log_v3	#java.util.List\n	25
bitbucket.global.settings	com.atlassian.upm.atlassian-universal-plugin-manager-plugin:build	5	35
com.atlassian.bitbucket.server.bitbucket-jira-development-integration	plugin.dev-summary.repository.trigger.settings.changed	false	49
bitbucket.global.settings	com.atlassian.upm:notifications:dismissal-evaluation.nearlyexpired	#java.util.List\n	40
bitbucket.global.settings	com.atlassian.upm:notifications:dismissal-edition.mismatch	#java.util.List\n	41
bitbucket.global.settings	com.atlassian.upm:notifications:dismissal-maintenance.expired	#java.util.List\n	42
bitbucket.global.settings	com.atlassian.upm:notifications:dismissal-maintenance.nearlyexpired	#java.util.List\n	43
bitbucket.global.settings	com.atlassian.upm:notifications:dismissal-auto.updated.plugin	#java.util.List\n	44
bitbucket.global.settings	com.atlassian.upm:notifications:dismissal-auto.updated.upm	#java.util.List\n	45
bitbucket.global.settings	com.atlassian.upm.request.PluginSettingsPluginRequestStore:requests:requests_v2	#java.util.List\n	46
bitbucket.global.settings	com.atlassian.support.stp:build	1	47
bitbucket.global.settings	com.atlassian.bitbucket.server.bitbucket-jira-development-integration:build	6	48
bitbucket.global.settings	com.atlassian.plugins.custom_apps.hasCustomOrder	false	50
bitbucket.global.settings	com.atlassian.plugins.atlassian-nav-links-plugin:build	1	51
bitbucket.global.settings	com.atlassian.upm:notifications:notification-update	#java.util.List\n	52
bitbucket.global.settings	com.atlassian.nps.plugin.status.nps_acknowledged	true	56
com.atlassian.bitbucket.search.bitbucket-search-query	elasticsearch.username	bitbucket	53
com.atlassian.bitbucket.search.bitbucket-search-query	elasticsearch.password	c2a0c39fd61b498e7e723662b2622eb3bc13b93d	54
bitbucket.global.settings	com.atlassian.nps.plugin.status.nps_enabled	true	55
\.


--
-- Data for Name: plugin_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY plugin_state (name, enabled) FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY project (id, name, project_key, description, project_type, namespace) FROM stdin;
\.


--
-- Data for Name: repository; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY repository (id, slug, name, state, project_id, scm_id, hierarchy_id, is_forkable, is_public) FROM stdin;
\.


--
-- Data for Name: repository_access; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY repository_access (user_id, repository_id, last_accessed) FROM stdin;
\.


--
-- Data for Name: sta_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_activity (id, activity_type, created_timestamp, user_id) FROM stdin;
\.


--
-- Data for Name: sta_cmt_disc_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_cmt_disc_activity (activity_id, discussion_id) FROM stdin;
\.


--
-- Data for Name: sta_cmt_disc_comment_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_cmt_disc_comment_activity (activity_id, comment_id, comment_action, anchor_id) FROM stdin;
\.


--
-- Data for Name: sta_cmt_disc_comment_anchor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_cmt_disc_comment_anchor (anchor_id, discussion_id, pr_id) FROM stdin;
\.


--
-- Data for Name: sta_cmt_disc_participant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_cmt_disc_participant (id, discussion_id, user_id) FROM stdin;
\.


--
-- Data for Name: sta_cmt_discussion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_cmt_discussion (id, repository_id, parent_count, commit_id, parent_id) FROM stdin;
\.


--
-- Data for Name: sta_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_comment (id, entity_version, author_id, created_timestamp, updated_timestamp, parent_id, root_id, comment_text) FROM stdin;
\.


--
-- Data for Name: sta_deleted_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_deleted_group (id, name, deleted_timestamp) FROM stdin;
\.


--
-- Data for Name: sta_diff_comment_anchor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_diff_comment_anchor (id, entity_version, comment_id, line_number, line_type, to_hash, to_path, from_hash, from_path, anchor_type, file_type) FROM stdin;
\.


--
-- Data for Name: sta_drift_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_drift_request (id, pr_id, old_from_hash, old_to_hash, new_from_hash, new_to_hash) FROM stdin;
\.


--
-- Data for Name: sta_global_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_global_permission (id, perm_id, group_name, user_id) FROM stdin;
1	9	stash-users	\N
2	7	\N	1
{% if crowd %}12	6	jira-administrators	\N
13	9	jira-developers	\N
14	9	jira-users	\N
{% endif %}\.

--
-- Data for Name: sta_normal_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_normal_project (project_id, is_public) FROM stdin;
\.


--
-- Data for Name: sta_normal_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_normal_user (user_id, name, slug, locale, deleted_timestamp, time_zone) FROM stdin;
1	{{bitbucket.username}}	{{bitbucket.username}}	\N	\N	\N{% if crowd%}
2	{{crowd.username}}	{{crowd.username}}	\N	\N	\N
{% endif %}\.


--
-- Data for Name: sta_permission_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_permission_type (perm_id, perm_weight) FROM stdin;
9	0
0	1000
2	2000
1	3000
3	4000
8	5000
4	6000
5	7000
6	10000
7	10000
\.


--
-- Data for Name: sta_personal_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_personal_project (project_id, owner_id) FROM stdin;
\.


--
-- Data for Name: sta_pr_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_pr_activity (activity_id, pr_id, pr_action) FROM stdin;
\.


--
-- Data for Name: sta_pr_comment_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_pr_comment_activity (activity_id, comment_id, comment_action, anchor_id) FROM stdin;
\.


--
-- Data for Name: sta_pr_diff_comment_anchor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_pr_diff_comment_anchor (anchor_id, pr_id, is_orphaned, diff_type) FROM stdin;
\.


--
-- Data for Name: sta_pr_merge_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_pr_merge_activity (activity_id, hash) FROM stdin;
\.


--
-- Data for Name: sta_pr_participant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_pr_participant (id, pr_id, pr_role, user_id, participant_status) FROM stdin;
\.


--
-- Data for Name: sta_pr_rescope_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_pr_rescope_activity (activity_id, from_hash, to_hash, prev_from_hash, prev_to_hash, commits_added, commits_removed) FROM stdin;
\.


--
-- Data for Name: sta_pr_rescope_commit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_pr_rescope_commit (activity_id, changeset_id, action) FROM stdin;
\.


--
-- Data for Name: sta_pr_rescope_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_pr_rescope_request (id, repo_id, user_id, created_timestamp) FROM stdin;
\.


--
-- Data for Name: sta_pr_rescope_request_change; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_pr_rescope_request_change (request_id, ref_id, change_type, from_hash, to_hash) FROM stdin;
\.


--
-- Data for Name: sta_project_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_project_permission (id, perm_id, project_id, group_name, user_id) FROM stdin;
\.


--
-- Data for Name: sta_pull_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_pull_request (id, entity_version, scoped_id, pr_state, created_timestamp, updated_timestamp, from_repository_id, to_repository_id, from_branch_fqn, to_branch_fqn, from_branch_name, to_branch_name, from_hash, to_hash, title, description, locked_timestamp, rescoped_timestamp) FROM stdin;
\.


--
-- Data for Name: sta_remember_me_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_remember_me_token (id, series, token, user_id, expiry_timestamp, claimed, claimed_address) FROM stdin;
1	a7e80a68fd5631b63250d0f9d82a1004b869283a	dfc2777f95c3724e25242159ec19ce606ca5669b	1	2016-08-10 15:06:03.852+00	f	\N
\.


--
-- Data for Name: sta_repo_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_repo_activity (activity_id, repository_id) FROM stdin;
\.


--
-- Data for Name: sta_repo_hook; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_repo_hook (id, repository_id, hook_key, is_enabled, lob_id) FROM stdin;
\.


--
-- Data for Name: sta_repo_origin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_repo_origin (repository_id, origin_id) FROM stdin;
\.


--
-- Data for Name: sta_repo_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_repo_permission (id, perm_id, repo_id, group_name, user_id) FROM stdin;
\.


--
-- Data for Name: sta_repo_push_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_repo_push_activity (activity_id) FROM stdin;
\.


--
-- Data for Name: sta_repo_push_ref; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_repo_push_ref (activity_id, ref_id, change_type, from_hash, to_hash) FROM stdin;
\.


--
-- Data for Name: sta_repository_scoped_id; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_repository_scoped_id (repository_id, scope_type, next_id) FROM stdin;
\.


--
-- Data for Name: sta_service_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_service_user (user_id, display_name, active, name, slug, email_address, label) FROM stdin;
\.


--
-- Data for Name: sta_shared_lob; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_shared_lob (id, lob_data) FROM stdin;
1	{"SEEN_NEEDS_WORK_DISCOVERY":true,"SEEN_BITBUCKET_UPGRADE_PAGE":true}
2	{"SHOW_GETTING_STARTED_PAGE":true,"plugin.bitbucket-notification:batchFeatureDiscoveryCount":-1,"SEEN_NEEDS_WORK_DISCOVERY":true}
\.


--
-- Data for Name: sta_task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_task (id, anchor_id, anchor_type, author_id, context_id, context_type, created_timestamp, task_state, task_text) FROM stdin;
\.


--
-- Data for Name: sta_user_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_user_settings (id, lob_id) FROM stdin;
1	1
2	2
\.


--
-- Data for Name: sta_watcher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sta_watcher (id, watchable_id, watchable_type, user_id) FROM stdin;
\.


--
-- Data for Name: stash_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY stash_user (id) FROM stdin;
1
2
\.


--
-- Data for Name: trusted_app; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY trusted_app (id, application_id, certificate_timeout, public_key_base64) FROM stdin;
\.


--
-- Data for Name: trusted_app_restriction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY trusted_app_restriction (id, trusted_app_id, restriction_type, restriction_value) FROM stdin;
\.


--
-- Name: AO_02A6C0_REJECTED_REF_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_02A6C0_REJECTED_REF"
    ADD CONSTRAINT "AO_02A6C0_REJECTED_REF_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_02A6C0_SYNC_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_02A6C0_SYNC_CONFIG"
    ADD CONSTRAINT "AO_02A6C0_SYNC_CONFIG_pkey" PRIMARY KEY ("REPOSITORY_ID");


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_38321B_CUSTOM_CONTENT_LINK"
    ADD CONSTRAINT "AO_38321B_CUSTOM_CONTENT_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_38F373_COMMENT_LIKE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_38F373_COMMENT_LIKE"
    ADD CONSTRAINT "AO_38F373_COMMENT_LIKE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_58E6CE_HIPCHAT_NOTIFICATION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_58E6CE_HIPCHAT_NOTIFICATION"
    ADD CONSTRAINT "AO_58E6CE_HIPCHAT_NOTIFICATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_LINK"
    ADD CONSTRAINT "AO_5FB9D7_AOHIP_CHAT_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_USER"
    ADD CONSTRAINT "AO_5FB9D7_AOHIP_CHAT_USER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_616D7B_BRANCH_MODEL_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_616D7B_BRANCH_MODEL"
    ADD CONSTRAINT "AO_616D7B_BRANCH_MODEL_pkey" PRIMARY KEY ("REPOSITORY_ID");


--
-- Name: AO_616D7B_BRANCH_TYPE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_616D7B_BRANCH_TYPE"
    ADD CONSTRAINT "AO_616D7B_BRANCH_TYPE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6978BB_PERMITTED_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_6978BB_PERMITTED_ENTITY"
    ADD CONSTRAINT "AO_6978BB_PERMITTED_ENTITY_pkey" PRIMARY KEY ("ENTITY_ID");


--
-- Name: AO_6978BB_RESTRICTED_REF_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_6978BB_RESTRICTED_REF"
    ADD CONSTRAINT "AO_6978BB_RESTRICTED_REF_pkey" PRIMARY KEY ("REF_ID");


--
-- Name: AO_777666_JIRA_INDEX_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_777666_JIRA_INDEX"
    ADD CONSTRAINT "AO_777666_JIRA_INDEX_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_811463_GIT_LFS_REPO_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_811463_GIT_LFS_REPO_CONFIG"
    ADD CONSTRAINT "AO_811463_GIT_LFS_REPO_CONFIG_pkey" PRIMARY KEY ("REPOSITORY_ID");


--
-- Name: AO_8E6075_MIRRORING_REQUEST_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_8E6075_MIRRORING_REQUEST"
    ADD CONSTRAINT "AO_8E6075_MIRRORING_REQUEST_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_8E6075_MIRROR_SERVER_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_8E6075_MIRROR_SERVER"
    ADD CONSTRAINT "AO_8E6075_MIRROR_SERVER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_92D5D5_USER_NOTIFICATION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_92D5D5_USER_NOTIFICATION"
    ADD CONSTRAINT "AO_92D5D5_USER_NOTIFICATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_A0B856_WEB_HOOK_LISTENER_AO"
    ADD CONSTRAINT "AO_A0B856_WEB_HOOK_LISTENER_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_BD73C3_PROJECT_AUDIT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_BD73C3_PROJECT_AUDIT"
    ADD CONSTRAINT "AO_BD73C3_PROJECT_AUDIT_pkey" PRIMARY KEY ("AUDIT_ITEM_ID");


--
-- Name: AO_BD73C3_REPOSITORY_AUDIT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_BD73C3_REPOSITORY_AUDIT"
    ADD CONSTRAINT "AO_BD73C3_REPOSITORY_AUDIT_pkey" PRIMARY KEY ("AUDIT_ITEM_ID");


--
-- Name: AO_CFE8FA_BUILD_STATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_CFE8FA_BUILD_STATUS"
    ADD CONSTRAINT "AO_CFE8FA_BUILD_STATUS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_F4ED3A_ADD_ON_PROPERTY_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_F4ED3A_ADD_ON_PROPERTY_AO"
    ADD CONSTRAINT "AO_F4ED3A_ADD_ON_PROPERTY_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_FB71B4_SSH_PUBLIC_KEY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_FB71B4_SSH_PUBLIC_KEY"
    ADD CONSTRAINT "AO_FB71B4_SSH_PUBLIC_KEY_pkey" PRIMARY KEY ("ENTITY_ID");


--
-- Name: bb_pr_part_status_weight_status_weight_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bb_pr_part_status_weight
    ADD CONSTRAINT bb_pr_part_status_weight_status_weight_key UNIQUE (status_weight);


--
-- Name: pk_app_property; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_property
    ADD CONSTRAINT pk_app_property PRIMARY KEY (prop_key);


--
-- Name: pk_bb_clusteredjob; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bb_clusteredjob
    ADD CONSTRAINT pk_bb_clusteredjob PRIMARY KEY (job_id);


--
-- Name: pk_bb_pr_part_status_weight; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bb_pr_part_status_weight
    ADD CONSTRAINT pk_bb_pr_part_status_weight PRIMARY KEY (status_id);


--
-- Name: pk_bb_pr_reviewer_added; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bb_pr_reviewer_added
    ADD CONSTRAINT pk_bb_pr_reviewer_added PRIMARY KEY (activity_id, user_id);


--
-- Name: pk_bb_pr_reviewer_removed; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bb_pr_reviewer_removed
    ADD CONSTRAINT pk_bb_pr_reviewer_removed PRIMARY KEY (activity_id, user_id);


--
-- Name: pk_bb_pr_reviewer_upd_act; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bb_pr_reviewer_upd_activity
    ADD CONSTRAINT pk_bb_pr_reviewer_upd_act PRIMARY KEY (activity_id);


--
-- Name: pk_changeset; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY changeset
    ADD CONSTRAINT pk_changeset PRIMARY KEY (id);


--
-- Name: pk_cs_indexer_state; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cs_indexer_state
    ADD CONSTRAINT pk_cs_indexer_state PRIMARY KEY (repository_id, indexer_id);


--
-- Name: pk_cs_repo_membership; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cs_repo_membership
    ADD CONSTRAINT pk_cs_repo_membership PRIMARY KEY (cs_id, repository_id);


--
-- Name: pk_current_app; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY current_app
    ADD CONSTRAINT pk_current_app PRIMARY KEY (id);


--
-- Name: pk_databasechangelog; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY databasechangelog
    ADD CONSTRAINT pk_databasechangelog PRIMARY KEY (id, author, filename);


--
-- Name: pk_databasechangeloglock; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY databasechangeloglock
    ADD CONSTRAINT pk_databasechangeloglock PRIMARY KEY (id);


--
-- Name: pk_global_permission; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_global_permission
    ADD CONSTRAINT pk_global_permission PRIMARY KEY (id);


--
-- Name: pk_id_sequence; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY id_sequence
    ADD CONSTRAINT pk_id_sequence PRIMARY KEY (sequence_name);


--
-- Name: pk_plugin_setting; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY plugin_setting
    ADD CONSTRAINT pk_plugin_setting PRIMARY KEY (id);


--
-- Name: pk_plugin_state; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY plugin_state
    ADD CONSTRAINT pk_plugin_state PRIMARY KEY (name);


--
-- Name: pk_project; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project
    ADD CONSTRAINT pk_project PRIMARY KEY (id);


--
-- Name: pk_project_permission; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_project_permission
    ADD CONSTRAINT pk_project_permission PRIMARY KEY (id);


--
-- Name: pk_remember_me_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_remember_me_token
    ADD CONSTRAINT pk_remember_me_id PRIMARY KEY (id);


--
-- Name: pk_repo_permission; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_permission
    ADD CONSTRAINT pk_repo_permission PRIMARY KEY (id);


--
-- Name: pk_repository; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY repository
    ADD CONSTRAINT pk_repository PRIMARY KEY (id);


--
-- Name: pk_repository_access; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY repository_access
    ADD CONSTRAINT pk_repository_access PRIMARY KEY (user_id, repository_id);


--
-- Name: pk_sta_activity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_activity
    ADD CONSTRAINT pk_sta_activity PRIMARY KEY (id);


--
-- Name: pk_sta_cmt_disc_activity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_activity
    ADD CONSTRAINT pk_sta_cmt_disc_activity PRIMARY KEY (activity_id);


--
-- Name: pk_sta_cmt_disc_com_activity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_comment_activity
    ADD CONSTRAINT pk_sta_cmt_disc_com_activity PRIMARY KEY (activity_id);


--
-- Name: pk_sta_cmt_disc_comment_anchor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_comment_anchor
    ADD CONSTRAINT pk_sta_cmt_disc_comment_anchor PRIMARY KEY (anchor_id);


--
-- Name: pk_sta_cmt_disc_participant; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_participant
    ADD CONSTRAINT pk_sta_cmt_disc_participant PRIMARY KEY (id);


--
-- Name: pk_sta_cmt_discussion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_discussion
    ADD CONSTRAINT pk_sta_cmt_discussion PRIMARY KEY (id);


--
-- Name: pk_sta_comment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_comment
    ADD CONSTRAINT pk_sta_comment PRIMARY KEY (id);


--
-- Name: pk_sta_deleted_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_deleted_group
    ADD CONSTRAINT pk_sta_deleted_group PRIMARY KEY (id);


--
-- Name: pk_sta_diff_comment_anchor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_diff_comment_anchor
    ADD CONSTRAINT pk_sta_diff_comment_anchor PRIMARY KEY (id);


--
-- Name: pk_sta_drift_request; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_drift_request
    ADD CONSTRAINT pk_sta_drift_request PRIMARY KEY (id);


--
-- Name: pk_sta_normal_project; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_normal_project
    ADD CONSTRAINT pk_sta_normal_project PRIMARY KEY (project_id);


--
-- Name: pk_sta_normal_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_normal_user
    ADD CONSTRAINT pk_sta_normal_user PRIMARY KEY (user_id);


--
-- Name: pk_sta_personal_project; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_personal_project
    ADD CONSTRAINT pk_sta_personal_project PRIMARY KEY (project_id);


--
-- Name: pk_sta_pr_activity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_activity
    ADD CONSTRAINT pk_sta_pr_activity PRIMARY KEY (activity_id);


--
-- Name: pk_sta_pr_comment_activity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_comment_activity
    ADD CONSTRAINT pk_sta_pr_comment_activity PRIMARY KEY (activity_id);


--
-- Name: pk_sta_pr_diff_comment_anchor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_diff_comment_anchor
    ADD CONSTRAINT pk_sta_pr_diff_comment_anchor PRIMARY KEY (anchor_id);


--
-- Name: pk_sta_pr_merge_activity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_merge_activity
    ADD CONSTRAINT pk_sta_pr_merge_activity PRIMARY KEY (activity_id);


--
-- Name: pk_sta_pr_participant; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_participant
    ADD CONSTRAINT pk_sta_pr_participant PRIMARY KEY (id);


--
-- Name: pk_sta_pr_rescope_activity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_rescope_activity
    ADD CONSTRAINT pk_sta_pr_rescope_activity PRIMARY KEY (activity_id);


--
-- Name: pk_sta_pr_rescope_commit; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_rescope_commit
    ADD CONSTRAINT pk_sta_pr_rescope_commit PRIMARY KEY (activity_id, changeset_id);


--
-- Name: pk_sta_pr_rescope_req_change; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_rescope_request_change
    ADD CONSTRAINT pk_sta_pr_rescope_req_change PRIMARY KEY (request_id, ref_id);


--
-- Name: pk_sta_pr_rescope_request; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_rescope_request
    ADD CONSTRAINT pk_sta_pr_rescope_request PRIMARY KEY (id);


--
-- Name: pk_sta_pull_request; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pull_request
    ADD CONSTRAINT pk_sta_pull_request PRIMARY KEY (id);


--
-- Name: pk_sta_repo_activity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_activity
    ADD CONSTRAINT pk_sta_repo_activity PRIMARY KEY (activity_id);


--
-- Name: pk_sta_repo_hook; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_hook
    ADD CONSTRAINT pk_sta_repo_hook PRIMARY KEY (id);


--
-- Name: pk_sta_repo_origin; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_origin
    ADD CONSTRAINT pk_sta_repo_origin PRIMARY KEY (repository_id);


--
-- Name: pk_sta_repo_push_activity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_push_activity
    ADD CONSTRAINT pk_sta_repo_push_activity PRIMARY KEY (activity_id);


--
-- Name: pk_sta_repo_push_ref; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_push_ref
    ADD CONSTRAINT pk_sta_repo_push_ref PRIMARY KEY (activity_id, ref_id);


--
-- Name: pk_sta_repository_scoped_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repository_scoped_id
    ADD CONSTRAINT pk_sta_repository_scoped_id PRIMARY KEY (repository_id, scope_type);


--
-- Name: pk_sta_service_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_service_user
    ADD CONSTRAINT pk_sta_service_user PRIMARY KEY (user_id);


--
-- Name: pk_sta_shared_lob; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_shared_lob
    ADD CONSTRAINT pk_sta_shared_lob PRIMARY KEY (id);


--
-- Name: pk_sta_task; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_task
    ADD CONSTRAINT pk_sta_task PRIMARY KEY (id);


--
-- Name: pk_sta_user_settings; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_user_settings
    ADD CONSTRAINT pk_sta_user_settings PRIMARY KEY (id);


--
-- Name: pk_sta_watcher; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_watcher
    ADD CONSTRAINT pk_sta_watcher PRIMARY KEY (id);


--
-- Name: pk_stash_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY stash_user
    ADD CONSTRAINT pk_stash_user PRIMARY KEY (id);


--
-- Name: pk_trusted_app; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY trusted_app
    ADD CONSTRAINT pk_trusted_app PRIMARY KEY (id);


--
-- Name: pk_trusted_app_restriction; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY trusted_app_restriction
    ADD CONSTRAINT pk_trusted_app_restriction PRIMARY KEY (id);


--
-- Name: pk_weighted_permission; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_permission_type
    ADD CONSTRAINT pk_weighted_permission PRIMARY KEY (perm_id);


--
-- Name: sys_pk_10069; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_app_dir_group_mapping
    ADD CONSTRAINT sys_pk_10069 PRIMARY KEY (id);


--
-- Name: sys_pk_10077; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_app_dir_mapping
    ADD CONSTRAINT sys_pk_10077 PRIMARY KEY (id);


--
-- Name: sys_pk_10083; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_app_dir_operation
    ADD CONSTRAINT sys_pk_10083 PRIMARY KEY (app_dir_mapping_id, operation_type);


--
-- Name: sys_pk_10093; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application
    ADD CONSTRAINT sys_pk_10093 PRIMARY KEY (id);


--
-- Name: sys_pk_10100; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application_address
    ADD CONSTRAINT sys_pk_10100 PRIMARY KEY (remote_address);


--
-- Name: sys_pk_10108; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application_alias
    ADD CONSTRAINT sys_pk_10108 PRIMARY KEY (id);


--
-- Name: sys_pk_10116; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application_attribute
    ADD CONSTRAINT sys_pk_10116 PRIMARY KEY (application_id, attribute_name);


--
-- Name: sys_pk_10127; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_directory
    ADD CONSTRAINT sys_pk_10127 PRIMARY KEY (id);


--
-- Name: sys_pk_10133; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_directory_attribute
    ADD CONSTRAINT sys_pk_10133 PRIMARY KEY (directory_id, attribute_name);


--
-- Name: sys_pk_10137; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_directory_operation
    ADD CONSTRAINT sys_pk_10137 PRIMARY KEY (directory_id, operation_type);


--
-- Name: sys_pk_10148; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_group
    ADD CONSTRAINT sys_pk_10148 PRIMARY KEY (id);


--
-- Name: sys_pk_10156; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_group_attribute
    ADD CONSTRAINT sys_pk_10156 PRIMARY KEY (id);


--
-- Name: sys_pk_10167; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_membership
    ADD CONSTRAINT sys_pk_10167 PRIMARY KEY (id);


--
-- Name: sys_pk_10173; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_property
    ADD CONSTRAINT sys_pk_10173 PRIMARY KEY (property_key, property_name);


--
-- Name: sys_pk_10194; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user
    ADD CONSTRAINT sys_pk_10194 PRIMARY KEY (id);


--
-- Name: sys_pk_10202; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user_attribute
    ADD CONSTRAINT sys_pk_10202 PRIMARY KEY (id);


--
-- Name: sys_pk_10209; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user_credential_record
    ADD CONSTRAINT sys_pk_10209 PRIMARY KEY (id);


--
-- Name: u_ao_8e6075_mirror_881127116; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_8E6075_MIRROR_SERVER"
    ADD CONSTRAINT u_ao_8e6075_mirror_881127116 UNIQUE ("ADD_ON_KEY");


--
-- Name: u_ao_f4ed3a_add_on_1238639798; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_F4ED3A_ADD_ON_PROPERTY_AO"
    ADD CONSTRAINT u_ao_f4ed3a_add_on_1238639798 UNIQUE ("PRIMARY_KEY");


--
-- Name: uk_mem_dir_parent_child; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_membership
    ADD CONSTRAINT uk_mem_dir_parent_child UNIQUE (directory_id, lower_child_name, lower_parent_name, membership_type);


--
-- Name: uk_project_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project
    ADD CONSTRAINT uk_project_key UNIQUE (namespace, project_key);


--
-- Name: uk_project_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project
    ADD CONSTRAINT uk_project_name UNIQUE (namespace, name);


--
-- Name: uk_slug_project_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY repository
    ADD CONSTRAINT uk_slug_project_id UNIQUE (slug, project_id);


--
-- Name: uk_trusted_app_restrict; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY trusted_app_restriction
    ADD CONSTRAINT uk_trusted_app_restrict UNIQUE (trusted_app_id, restriction_type, restriction_value);


--
-- Name: uq_cwd_user_dir_ext_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user
    ADD CONSTRAINT uq_cwd_user_dir_ext_id UNIQUE (directory_id, external_id);


--
-- Name: uq_normal_user_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_normal_user
    ADD CONSTRAINT uq_normal_user_name UNIQUE (name);


--
-- Name: uq_normal_user_slug; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_normal_user
    ADD CONSTRAINT uq_normal_user_slug UNIQUE (slug);


--
-- Name: uq_plug_setting_ns_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY plugin_setting
    ADD CONSTRAINT uq_plug_setting_ns_key UNIQUE (key_name, namespace);


--
-- Name: uq_remember_me_series_token; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_remember_me_token
    ADD CONSTRAINT uq_remember_me_series_token UNIQUE (series, token);


--
-- Name: uq_sta_cmt_disc_part_disc_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_participant
    ADD CONSTRAINT uq_sta_cmt_disc_part_disc_user UNIQUE (discussion_id, user_id);


--
-- Name: uq_sta_cmt_disc_repo_cmt; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_discussion
    ADD CONSTRAINT uq_sta_cmt_disc_repo_cmt UNIQUE (repository_id, commit_id);


--
-- Name: uq_sta_deleted_group_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_deleted_group
    ADD CONSTRAINT uq_sta_deleted_group_name UNIQUE (name);


--
-- Name: uq_sta_personal_project_owner; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_personal_project
    ADD CONSTRAINT uq_sta_personal_project_owner UNIQUE (owner_id);


--
-- Name: uq_sta_pr_participant_pr_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_participant
    ADD CONSTRAINT uq_sta_pr_participant_pr_user UNIQUE (pr_id, user_id);


--
-- Name: uq_sta_pull_request_scoped_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pull_request
    ADD CONSTRAINT uq_sta_pull_request_scoped_id UNIQUE (to_repository_id, scoped_id);


--
-- Name: uq_sta_repo_hook_repo_hook_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_hook
    ADD CONSTRAINT uq_sta_repo_hook_repo_hook_key UNIQUE (repository_id, hook_key);


--
-- Name: uq_sta_service_slug; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_service_user
    ADD CONSTRAINT uq_sta_service_slug UNIQUE (slug);


--
-- Name: uq_sta_service_user_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_service_user
    ADD CONSTRAINT uq_sta_service_user_name UNIQUE (name);


--
-- Name: uq_sta_watcher; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_watcher
    ADD CONSTRAINT uq_sta_watcher UNIQUE (watchable_id, watchable_type, user_id);


--
-- Name: weighted_permission_perm_weight_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_permission_type
    ADD CONSTRAINT weighted_permission_perm_weight_key UNIQUE (perm_weight);


--
-- Name: idx_app_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_app_active ON cwd_application USING btree (is_active);


--
-- Name: idx_app_dir_group_group_dir; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_app_dir_group_group_dir ON cwd_app_dir_group_mapping USING btree (directory_id, group_name);


--
-- Name: idx_app_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_app_type ON cwd_application USING btree (application_type);


--
-- Name: idx_attribute_to_cs; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_attribute_to_cs ON cs_attribute USING btree (att_name, att_value);


--
-- Name: idx_bb_clusteredjob_jrk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_bb_clusteredjob_jrk ON bb_clusteredjob USING btree (job_runner_key);


--
-- Name: idx_bb_clusteredjob_next_run; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_bb_clusteredjob_next_run ON bb_clusteredjob USING btree (next_run);


--
-- Name: idx_cs_repo_membership_repo_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_cs_repo_membership_repo_id ON cs_repo_membership USING btree (repository_id);


--
-- Name: idx_cs_to_attribute; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_cs_to_attribute ON cs_attribute USING btree (cs_id, att_name);


--
-- Name: idx_dir_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dir_active ON cwd_directory USING btree (is_active);


--
-- Name: idx_dir_l_impl_class; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dir_l_impl_class ON cwd_directory USING btree (lower_impl_class);


--
-- Name: idx_dir_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dir_type ON cwd_directory USING btree (directory_type);


--
-- Name: idx_global_permission_group; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_global_permission_group ON sta_global_permission USING btree (group_name);


--
-- Name: idx_global_permission_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_global_permission_user ON sta_global_permission USING btree (user_id);


--
-- Name: idx_group_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_active ON cwd_group USING btree (is_active, directory_id);


--
-- Name: idx_group_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_attr_dir_name_lval ON cwd_group_attribute USING btree (directory_id, attribute_name, attribute_lower_value);


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
-- Name: idx_project_permission_group; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_project_permission_group ON sta_project_permission USING btree (group_name);


--
-- Name: idx_project_permission_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_project_permission_user ON sta_project_permission USING btree (user_id);


--
-- Name: idx_project_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_project_type ON project USING btree (project_type);


--
-- Name: idx_repo_permission_group; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_repo_permission_group ON sta_repo_permission USING btree (group_name);


--
-- Name: idx_repo_permission_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_repo_permission_user ON sta_repo_permission USING btree (user_id);


--
-- Name: idx_repository_access_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_repository_access_user_id ON repository_access USING btree (user_id);


--
-- Name: idx_repository_hierarchy_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_repository_hierarchy_id ON repository USING btree (hierarchy_id);


--
-- Name: idx_repository_project_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_repository_project_id ON repository USING btree (project_id);


--
-- Name: idx_repository_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_repository_state ON repository USING btree (state);


--
-- Name: idx_st_pr_com_act_anchor; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_st_pr_com_act_anchor ON sta_pr_comment_activity USING btree (anchor_id);


--
-- Name: idx_st_pr_com_act_comment; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_st_pr_com_act_comment ON sta_pr_comment_activity USING btree (comment_id);


--
-- Name: idx_sta_activity_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_activity_type ON sta_activity USING btree (activity_type);


--
-- Name: idx_sta_activity_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_activity_user ON sta_activity USING btree (user_id);


--
-- Name: idx_sta_cmt_com_anc_disc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_cmt_com_anc_disc ON sta_cmt_disc_comment_anchor USING btree (discussion_id);


--
-- Name: idx_sta_cmt_com_anc_pr; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_cmt_com_anc_pr ON sta_cmt_disc_comment_anchor USING btree (pr_id);


--
-- Name: idx_sta_cmt_disc_act_disc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_cmt_disc_act_disc ON sta_cmt_disc_activity USING btree (discussion_id);


--
-- Name: idx_sta_cmt_disc_cmt; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_cmt_disc_cmt ON sta_cmt_discussion USING btree (commit_id);


--
-- Name: idx_sta_cmt_disc_com_act_anc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_cmt_disc_com_act_anc ON sta_cmt_disc_comment_activity USING btree (anchor_id);


--
-- Name: idx_sta_cmt_disc_com_act_com; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_cmt_disc_com_act_com ON sta_cmt_disc_comment_activity USING btree (comment_id);


--
-- Name: idx_sta_cmt_disc_part_disc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_cmt_disc_part_disc ON sta_cmt_disc_participant USING btree (discussion_id);


--
-- Name: idx_sta_cmt_disc_part_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_cmt_disc_part_user ON sta_cmt_disc_participant USING btree (user_id);


--
-- Name: idx_sta_cmt_disc_repo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_cmt_disc_repo ON sta_cmt_discussion USING btree (repository_id);


--
-- Name: idx_sta_comment_author; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_comment_author ON sta_comment USING btree (author_id);


--
-- Name: idx_sta_comment_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_comment_parent ON sta_comment USING btree (parent_id);


--
-- Name: idx_sta_comment_root; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_comment_root ON sta_comment USING btree (root_id);


--
-- Name: idx_sta_deleted_group_ts; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_deleted_group_ts ON sta_deleted_group USING btree (deleted_timestamp);


--
-- Name: idx_sta_diff_comment_comment; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_diff_comment_comment ON sta_diff_comment_anchor USING btree (comment_id);


--
-- Name: idx_sta_diff_comment_from_hash; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_diff_comment_from_hash ON sta_diff_comment_anchor USING btree (from_hash);


--
-- Name: idx_sta_diff_comment_to_hash; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_diff_comment_to_hash ON sta_diff_comment_anchor USING btree (to_hash);


--
-- Name: idx_sta_diff_comment_to_path; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_diff_comment_to_path ON sta_diff_comment_anchor USING btree (to_path);


--
-- Name: idx_sta_pr_activity; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_pr_activity ON sta_pr_activity USING btree (pr_id, pr_action);


--
-- Name: idx_sta_pr_diff_com_anc_pr; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_pr_diff_com_anc_pr ON sta_pr_diff_comment_anchor USING btree (pr_id, is_orphaned);


--
-- Name: idx_sta_pr_from_repo_update; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_pr_from_repo_update ON sta_pull_request USING btree (from_repository_id, updated_timestamp);


--
-- Name: idx_sta_pr_participant_pr; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_pr_participant_pr ON sta_pr_participant USING btree (pr_id);


--
-- Name: idx_sta_pr_participant_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_pr_participant_user ON sta_pr_participant USING btree (user_id);


--
-- Name: idx_sta_pr_rescope_cmmt_act; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_pr_rescope_cmmt_act ON sta_pr_rescope_commit USING btree (activity_id);


--
-- Name: idx_sta_pr_rescope_req_repo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_pr_rescope_req_repo ON sta_pr_rescope_request USING btree (repo_id);


--
-- Name: idx_sta_pr_to_repo_update; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_pr_to_repo_update ON sta_pull_request USING btree (to_repository_id, updated_timestamp);


--
-- Name: idx_sta_pr_update_ts; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_pr_update_ts ON sta_pull_request USING btree (updated_timestamp);


--
-- Name: idx_sta_pull_request_from; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_pull_request_from ON sta_pull_request USING btree (from_repository_id, from_branch_fqn);


--
-- Name: idx_sta_pull_request_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_pull_request_state ON sta_pull_request USING btree (pr_state);


--
-- Name: idx_sta_pull_request_to; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_pull_request_to ON sta_pull_request USING btree (to_repository_id, to_branch_fqn);


--
-- Name: idx_sta_repo_activity_repo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_repo_activity_repo ON sta_repo_activity USING btree (repository_id);


--
-- Name: idx_sta_repo_hook_hook_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_repo_hook_hook_key ON sta_repo_hook USING btree (hook_key);


--
-- Name: idx_sta_repo_hook_lob_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_repo_hook_lob_id ON sta_repo_hook USING btree (lob_id);


--
-- Name: idx_sta_repo_hook_repo_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_repo_hook_repo_id ON sta_repo_hook USING btree (repository_id);


--
-- Name: idx_sta_repo_origin_origin_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_repo_origin_origin_id ON sta_repo_origin USING btree (origin_id);


--
-- Name: idx_sta_repo_push_ref_activity; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_repo_push_ref_activity ON sta_repo_push_ref USING btree (activity_id);


--
-- Name: idx_sta_task_anchor; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_task_anchor ON sta_task USING btree (anchor_type, anchor_id);


--
-- Name: idx_sta_task_context; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sta_task_context ON sta_task USING btree (context_type, context_id);


--
-- Name: idx_user_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_active ON cwd_user USING btree (is_active, directory_id);


--
-- Name: idx_user_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_attr_dir_name_lval ON cwd_user_attribute USING btree (directory_id, attribute_name, attribute_lower_value);


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
-- Name: index_ao_02a6c0_rej1887153917; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_02a6c0_rej1887153917 ON "AO_02A6C0_REJECTED_REF" USING btree ("REF_ID");


--
-- Name: index_ao_02a6c0_rej2030165690; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_02a6c0_rej2030165690 ON "AO_02A6C0_REJECTED_REF" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_38321b_cus1828044926; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_38321b_cus1828044926 ON "AO_38321B_CUSTOM_CONTENT_LINK" USING btree ("CONTENT_KEY");


--
-- Name: index_ao_38f373_com1776971882; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_38f373_com1776971882 ON "AO_38F373_COMMENT_LIKE" USING btree ("COMMENT_ID");


--
-- Name: index_ao_58e6ce_hip864255049; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_58e6ce_hip864255049 ON "AO_58E6CE_HIPCHAT_NOTIFICATION" USING btree ("NOTIFICATION_TYPE");


--
-- Name: index_ao_58e6ce_hip879444465; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_58e6ce_hip879444465 ON "AO_58E6CE_HIPCHAT_NOTIFICATION" USING btree ("REPO_ID");


--
-- Name: index_ao_5fb9d7_aoh1981563178; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_5fb9d7_aoh1981563178 ON "AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("USER_KEY");


--
-- Name: index_ao_5fb9d7_aoh49772492; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_5fb9d7_aoh49772492 ON "AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("HIP_CHAT_LINK_ID");


--
-- Name: index_ao_616d7b_bra995100348; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_616d7b_bra995100348 ON "AO_616D7B_BRANCH_TYPE" USING btree ("FK_BM_ID");


--
-- Name: index_ao_6978bb_per1013425949; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_6978bb_per1013425949 ON "AO_6978BB_PERMITTED_ENTITY" USING btree ("FK_RESTRICTED_ID");


--
-- Name: index_ao_6978bb_res2050912801; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_6978bb_res2050912801 ON "AO_6978BB_RESTRICTED_REF" USING btree ("REF_TYPE");


--
-- Name: index_ao_6978bb_res250715305; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_6978bb_res250715305 ON "AO_6978BB_RESTRICTED_REF" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_6978bb_res847341420; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_6978bb_res847341420 ON "AO_6978BB_RESTRICTED_REF" USING btree ("REF_VALUE");


--
-- Name: index_ao_777666_jir1125550666; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_777666_jir1125550666 ON "AO_777666_JIRA_INDEX" USING btree ("PR_ID");


--
-- Name: index_ao_777666_jir1131965929; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_777666_jir1131965929 ON "AO_777666_JIRA_INDEX" USING btree ("ISSUE");


--
-- Name: index_ao_777666_jir1850935500; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_777666_jir1850935500 ON "AO_777666_JIRA_INDEX" USING btree ("REPOSITORY");


--
-- Name: index_ao_8e6075_mir347013871; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_8e6075_mir347013871 ON "AO_8E6075_MIRRORING_REQUEST" USING btree ("STATE");


--
-- Name: index_ao_8e6075_mir555689735; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_8e6075_mir555689735 ON "AO_8E6075_MIRRORING_REQUEST" USING btree ("MIRROR_ID");


--
-- Name: index_ao_bd73c3_pro578890136; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_bd73c3_pro578890136 ON "AO_BD73C3_PROJECT_AUDIT" USING btree ("PROJECT_ID");


--
-- Name: index_ao_bd73c3_rep1781875940; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_bd73c3_rep1781875940 ON "AO_BD73C3_REPOSITORY_AUDIT" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_cfe8fa_bui803074819; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_cfe8fa_bui803074819 ON "AO_CFE8FA_BUILD_STATUS" USING btree ("CSID");


--
-- Name: index_ao_f4ed3a_add50909668; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_f4ed3a_add50909668 ON "AO_F4ED3A_ADD_ON_PROPERTY_AO" USING btree ("PLUGIN_KEY");


--
-- Name: index_ao_fb71b4_ssh1382560526; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_fb71b4_ssh1382560526 ON "AO_FB71B4_SSH_PUBLIC_KEY" USING btree ("KEY_MD5");


--
-- Name: index_ao_fb71b4_ssh714567837; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_fb71b4_ssh714567837 ON "AO_FB71B4_SSH_PUBLIC_KEY" USING btree ("USER_ID");


--
-- Name: sys_idx_sys_ct_10070_10072; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sys_idx_sys_ct_10070_10072 ON cwd_app_dir_group_mapping USING btree (app_dir_mapping_id, group_name);


--
-- Name: sys_idx_sys_ct_10078_10080; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sys_idx_sys_ct_10078_10080 ON cwd_app_dir_mapping USING btree (application_id, directory_id);


--
-- Name: sys_idx_sys_ct_10094_10096; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sys_idx_sys_ct_10094_10096 ON cwd_application USING btree (lower_application_name);


--
-- Name: sys_idx_sys_ct_10109_10112; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sys_idx_sys_ct_10109_10112 ON cwd_application_alias USING btree (application_id, lower_user_name);


--
-- Name: sys_idx_sys_ct_10110_10113; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sys_idx_sys_ct_10110_10113 ON cwd_application_alias USING btree (application_id, lower_alias_name);


--
-- Name: sys_idx_sys_ct_10128_10130; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sys_idx_sys_ct_10128_10130 ON cwd_directory USING btree (lower_directory_name);


--
-- Name: sys_idx_sys_ct_10149_10151; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sys_idx_sys_ct_10149_10151 ON cwd_group USING btree (lower_group_name, directory_id);


--
-- Name: sys_idx_sys_ct_10157_10159; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sys_idx_sys_ct_10157_10159 ON cwd_group_attribute USING btree (group_id, attribute_name, attribute_lower_value);


--
-- Name: sys_idx_sys_ct_10168_10170; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sys_idx_sys_ct_10168_10170 ON cwd_membership USING btree (parent_id, child_id, membership_type);


--
-- Name: sys_idx_sys_ct_10195_10197; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sys_idx_sys_ct_10195_10197 ON cwd_user USING btree (lower_user_name, directory_id);


--
-- Name: sys_idx_sys_ct_10203_10205; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sys_idx_sys_ct_10203_10205 ON cwd_user_attribute USING btree (user_id, attribute_name, attribute_lower_value);


--
-- Name: fk_alias_app_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application_alias
    ADD CONSTRAINT fk_alias_app_id FOREIGN KEY (application_id) REFERENCES cwd_application(id);


--
-- Name: fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_USER"
    ADD CONSTRAINT fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id FOREIGN KEY ("HIP_CHAT_LINK_ID") REFERENCES "AO_5FB9D7_AOHIP_CHAT_LINK"("ID");


--
-- Name: fk_ao_616d7b_branch_type_fk_bm_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_616D7B_BRANCH_TYPE"
    ADD CONSTRAINT fk_ao_616d7b_branch_type_fk_bm_id FOREIGN KEY ("FK_BM_ID") REFERENCES "AO_616D7B_BRANCH_MODEL"("REPOSITORY_ID");


--
-- Name: fk_ao_6978bb_permitted_entity_fk_restricted_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_6978BB_PERMITTED_ENTITY"
    ADD CONSTRAINT fk_ao_6978bb_permitted_entity_fk_restricted_id FOREIGN KEY ("FK_RESTRICTED_ID") REFERENCES "AO_6978BB_RESTRICTED_REF"("REF_ID");


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
-- Name: fk_bb_pr_reviewer_act_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bb_pr_reviewer_upd_activity
    ADD CONSTRAINT fk_bb_pr_reviewer_act_id FOREIGN KEY (activity_id) REFERENCES sta_pr_activity(activity_id) ON DELETE CASCADE;


--
-- Name: fk_bb_pr_reviewer_added_act; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bb_pr_reviewer_added
    ADD CONSTRAINT fk_bb_pr_reviewer_added_act FOREIGN KEY (activity_id) REFERENCES bb_pr_reviewer_upd_activity(activity_id) ON DELETE CASCADE;


--
-- Name: fk_bb_pr_reviewer_added_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bb_pr_reviewer_added
    ADD CONSTRAINT fk_bb_pr_reviewer_added_user FOREIGN KEY (user_id) REFERENCES stash_user(id);


--
-- Name: fk_bb_pr_reviewer_removed_act; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bb_pr_reviewer_removed
    ADD CONSTRAINT fk_bb_pr_reviewer_removed_act FOREIGN KEY (activity_id) REFERENCES bb_pr_reviewer_upd_activity(activity_id) ON DELETE CASCADE;


--
-- Name: fk_bb_pr_reviewer_removed_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bb_pr_reviewer_removed
    ADD CONSTRAINT fk_bb_pr_reviewer_removed_user FOREIGN KEY (user_id) REFERENCES stash_user(id);


--
-- Name: fk_cs_attribute_changeset; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cs_attribute
    ADD CONSTRAINT fk_cs_attribute_changeset FOREIGN KEY (cs_id) REFERENCES changeset(id);


--
-- Name: fk_cs_indexer_state_repository; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cs_indexer_state
    ADD CONSTRAINT fk_cs_indexer_state_repository FOREIGN KEY (repository_id) REFERENCES repository(id) ON DELETE CASCADE;


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
-- Name: fk_global_permission_type; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_global_permission
    ADD CONSTRAINT fk_global_permission_type FOREIGN KEY (perm_id) REFERENCES sta_permission_type(perm_id);


--
-- Name: fk_global_permission_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_global_permission
    ADD CONSTRAINT fk_global_permission_user FOREIGN KEY (user_id) REFERENCES stash_user(id);


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
-- Name: fk_project_permission_project; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_project_permission
    ADD CONSTRAINT fk_project_permission_project FOREIGN KEY (project_id) REFERENCES project(id) ON DELETE CASCADE;


--
-- Name: fk_project_permission_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_project_permission
    ADD CONSTRAINT fk_project_permission_user FOREIGN KEY (user_id) REFERENCES stash_user(id);


--
-- Name: fk_project_permission_weight; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_project_permission
    ADD CONSTRAINT fk_project_permission_weight FOREIGN KEY (perm_id) REFERENCES sta_permission_type(perm_id);


--
-- Name: fk_remember_me_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_remember_me_token
    ADD CONSTRAINT fk_remember_me_user_id FOREIGN KEY (user_id) REFERENCES stash_user(id) ON DELETE CASCADE;


--
-- Name: fk_repo_membership_changeset; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cs_repo_membership
    ADD CONSTRAINT fk_repo_membership_changeset FOREIGN KEY (cs_id) REFERENCES changeset(id);


--
-- Name: fk_repo_membership_repo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cs_repo_membership
    ADD CONSTRAINT fk_repo_membership_repo FOREIGN KEY (repository_id) REFERENCES repository(id) ON DELETE CASCADE;


--
-- Name: fk_repo_permission_repo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_permission
    ADD CONSTRAINT fk_repo_permission_repo FOREIGN KEY (repo_id) REFERENCES repository(id) ON DELETE CASCADE;


--
-- Name: fk_repo_permission_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_permission
    ADD CONSTRAINT fk_repo_permission_user FOREIGN KEY (user_id) REFERENCES stash_user(id);


--
-- Name: fk_repo_permission_weight; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_permission
    ADD CONSTRAINT fk_repo_permission_weight FOREIGN KEY (perm_id) REFERENCES sta_permission_type(perm_id);


--
-- Name: fk_repository_access_repo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY repository_access
    ADD CONSTRAINT fk_repository_access_repo FOREIGN KEY (repository_id) REFERENCES repository(id);


--
-- Name: fk_repository_access_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY repository_access
    ADD CONSTRAINT fk_repository_access_user FOREIGN KEY (user_id) REFERENCES stash_user(id);


--
-- Name: fk_repository_project; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY repository
    ADD CONSTRAINT fk_repository_project FOREIGN KEY (project_id) REFERENCES project(id);


--
-- Name: fk_sta_activity_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_activity
    ADD CONSTRAINT fk_sta_activity_user FOREIGN KEY (user_id) REFERENCES stash_user(id);


--
-- Name: fk_sta_cmt_disc_act_disc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_activity
    ADD CONSTRAINT fk_sta_cmt_disc_act_disc FOREIGN KEY (discussion_id) REFERENCES sta_cmt_discussion(id);


--
-- Name: fk_sta_cmt_disc_act_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_activity
    ADD CONSTRAINT fk_sta_cmt_disc_act_id FOREIGN KEY (activity_id) REFERENCES sta_repo_activity(activity_id) ON DELETE CASCADE;


--
-- Name: fk_sta_cmt_disc_com_act_anc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_comment_activity
    ADD CONSTRAINT fk_sta_cmt_disc_com_act_anc FOREIGN KEY (anchor_id) REFERENCES sta_diff_comment_anchor(id);


--
-- Name: fk_sta_cmt_disc_com_act_com; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_comment_activity
    ADD CONSTRAINT fk_sta_cmt_disc_com_act_com FOREIGN KEY (comment_id) REFERENCES sta_comment(id);


--
-- Name: fk_sta_cmt_disc_com_act_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_comment_activity
    ADD CONSTRAINT fk_sta_cmt_disc_com_act_id FOREIGN KEY (activity_id) REFERENCES sta_cmt_disc_activity(activity_id) ON DELETE CASCADE;


--
-- Name: fk_sta_cmt_disc_com_anc_disc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_comment_anchor
    ADD CONSTRAINT fk_sta_cmt_disc_com_anc_disc FOREIGN KEY (discussion_id) REFERENCES sta_cmt_discussion(id);


--
-- Name: fk_sta_cmt_disc_com_anc_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_comment_anchor
    ADD CONSTRAINT fk_sta_cmt_disc_com_anc_id FOREIGN KEY (anchor_id) REFERENCES sta_diff_comment_anchor(id) ON DELETE CASCADE;


--
-- Name: fk_sta_cmt_disc_part_disc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_participant
    ADD CONSTRAINT fk_sta_cmt_disc_part_disc FOREIGN KEY (discussion_id) REFERENCES sta_cmt_discussion(id) ON DELETE CASCADE;


--
-- Name: fk_sta_cmt_disc_part_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_participant
    ADD CONSTRAINT fk_sta_cmt_disc_part_user FOREIGN KEY (user_id) REFERENCES stash_user(id);


--
-- Name: fk_sta_cmt_disc_repo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_discussion
    ADD CONSTRAINT fk_sta_cmt_disc_repo FOREIGN KEY (repository_id) REFERENCES repository(id) ON DELETE CASCADE;


--
-- Name: fk_sta_comment_author; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_comment
    ADD CONSTRAINT fk_sta_comment_author FOREIGN KEY (author_id) REFERENCES stash_user(id);


--
-- Name: fk_sta_comment_parent; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_comment
    ADD CONSTRAINT fk_sta_comment_parent FOREIGN KEY (parent_id) REFERENCES sta_comment(id) ON DELETE CASCADE;


--
-- Name: fk_sta_comment_root; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_comment
    ADD CONSTRAINT fk_sta_comment_root FOREIGN KEY (root_id) REFERENCES sta_comment(id) ON DELETE CASCADE;


--
-- Name: fk_sta_diff_comment_comment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_diff_comment_anchor
    ADD CONSTRAINT fk_sta_diff_comment_comment FOREIGN KEY (comment_id) REFERENCES sta_comment(id) ON DELETE CASCADE;


--
-- Name: fk_sta_drift_request_pr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_drift_request
    ADD CONSTRAINT fk_sta_drift_request_pr FOREIGN KEY (pr_id) REFERENCES sta_pull_request(id) ON DELETE CASCADE;


--
-- Name: fk_sta_normal_project_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_normal_project
    ADD CONSTRAINT fk_sta_normal_project_id FOREIGN KEY (project_id) REFERENCES project(id) ON DELETE CASCADE;


--
-- Name: fk_sta_normal_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_normal_user
    ADD CONSTRAINT fk_sta_normal_user_id FOREIGN KEY (user_id) REFERENCES stash_user(id) ON DELETE CASCADE;


--
-- Name: fk_sta_personal_project_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_personal_project
    ADD CONSTRAINT fk_sta_personal_project_id FOREIGN KEY (project_id) REFERENCES project(id) ON DELETE CASCADE;


--
-- Name: fk_sta_personal_project_owner; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_personal_project
    ADD CONSTRAINT fk_sta_personal_project_owner FOREIGN KEY (owner_id) REFERENCES stash_user(id);


--
-- Name: fk_sta_pr_activity_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_activity
    ADD CONSTRAINT fk_sta_pr_activity_id FOREIGN KEY (activity_id) REFERENCES sta_activity(id) ON DELETE CASCADE;


--
-- Name: fk_sta_pr_activity_pr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_activity
    ADD CONSTRAINT fk_sta_pr_activity_pr FOREIGN KEY (pr_id) REFERENCES sta_pull_request(id);


--
-- Name: fk_sta_pr_com_act_anchor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_comment_activity
    ADD CONSTRAINT fk_sta_pr_com_act_anchor FOREIGN KEY (anchor_id) REFERENCES sta_diff_comment_anchor(id);


--
-- Name: fk_sta_pr_com_act_comment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_comment_activity
    ADD CONSTRAINT fk_sta_pr_com_act_comment FOREIGN KEY (comment_id) REFERENCES sta_comment(id);


--
-- Name: fk_sta_pr_com_act_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_comment_activity
    ADD CONSTRAINT fk_sta_pr_com_act_id FOREIGN KEY (activity_id) REFERENCES sta_pr_activity(activity_id) ON DELETE CASCADE;


--
-- Name: fk_sta_pr_com_anc_disc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_cmt_disc_comment_anchor
    ADD CONSTRAINT fk_sta_pr_com_anc_disc FOREIGN KEY (pr_id) REFERENCES sta_pull_request(id);


--
-- Name: fk_sta_pr_diff_com_anc_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_diff_comment_anchor
    ADD CONSTRAINT fk_sta_pr_diff_com_anc_id FOREIGN KEY (anchor_id) REFERENCES sta_diff_comment_anchor(id) ON DELETE CASCADE;


--
-- Name: fk_sta_pr_diff_com_anc_pr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_diff_comment_anchor
    ADD CONSTRAINT fk_sta_pr_diff_com_anc_pr FOREIGN KEY (pr_id) REFERENCES sta_pull_request(id);


--
-- Name: fk_sta_pr_mrg_act_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_merge_activity
    ADD CONSTRAINT fk_sta_pr_mrg_act_id FOREIGN KEY (activity_id) REFERENCES sta_pr_activity(activity_id) ON DELETE CASCADE;


--
-- Name: fk_sta_pr_participant_pr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_participant
    ADD CONSTRAINT fk_sta_pr_participant_pr FOREIGN KEY (pr_id) REFERENCES sta_pull_request(id) ON DELETE CASCADE;


--
-- Name: fk_sta_pr_participant_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_participant
    ADD CONSTRAINT fk_sta_pr_participant_user FOREIGN KEY (user_id) REFERENCES stash_user(id);


--
-- Name: fk_sta_pr_rescope_act_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_rescope_activity
    ADD CONSTRAINT fk_sta_pr_rescope_act_id FOREIGN KEY (activity_id) REFERENCES sta_pr_activity(activity_id);


--
-- Name: fk_sta_pr_rescope_ch_req_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_rescope_request_change
    ADD CONSTRAINT fk_sta_pr_rescope_ch_req_id FOREIGN KEY (request_id) REFERENCES sta_pr_rescope_request(id) ON DELETE CASCADE;


--
-- Name: fk_sta_pr_rescope_cmmt_act; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_rescope_commit
    ADD CONSTRAINT fk_sta_pr_rescope_cmmt_act FOREIGN KEY (activity_id) REFERENCES sta_pr_rescope_activity(activity_id) ON DELETE CASCADE;


--
-- Name: fk_sta_pr_rescope_req_repo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_rescope_request
    ADD CONSTRAINT fk_sta_pr_rescope_req_repo FOREIGN KEY (repo_id) REFERENCES repository(id) ON DELETE CASCADE;


--
-- Name: fk_sta_pr_rescope_req_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pr_rescope_request
    ADD CONSTRAINT fk_sta_pr_rescope_req_user FOREIGN KEY (user_id) REFERENCES stash_user(id) ON DELETE CASCADE;


--
-- Name: fk_sta_pull_request_from_repo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pull_request
    ADD CONSTRAINT fk_sta_pull_request_from_repo FOREIGN KEY (from_repository_id) REFERENCES repository(id);


--
-- Name: fk_sta_pull_request_to_repo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_pull_request
    ADD CONSTRAINT fk_sta_pull_request_to_repo FOREIGN KEY (to_repository_id) REFERENCES repository(id) ON DELETE CASCADE;


--
-- Name: fk_sta_repo_activity_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_activity
    ADD CONSTRAINT fk_sta_repo_activity_id FOREIGN KEY (activity_id) REFERENCES sta_activity(id) ON DELETE CASCADE;


--
-- Name: fk_sta_repo_activity_repo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_activity
    ADD CONSTRAINT fk_sta_repo_activity_repo FOREIGN KEY (repository_id) REFERENCES repository(id);


--
-- Name: fk_sta_repo_hook_lob; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_hook
    ADD CONSTRAINT fk_sta_repo_hook_lob FOREIGN KEY (lob_id) REFERENCES sta_shared_lob(id);


--
-- Name: fk_sta_repo_hook_repo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_hook
    ADD CONSTRAINT fk_sta_repo_hook_repo FOREIGN KEY (repository_id) REFERENCES repository(id) ON DELETE CASCADE;


--
-- Name: fk_sta_repo_origin_origin_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_origin
    ADD CONSTRAINT fk_sta_repo_origin_origin_id FOREIGN KEY (origin_id) REFERENCES repository(id);


--
-- Name: fk_sta_repo_origin_repo_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_origin
    ADD CONSTRAINT fk_sta_repo_origin_repo_id FOREIGN KEY (repository_id) REFERENCES repository(id) ON DELETE CASCADE;


--
-- Name: fk_sta_repo_push_activity_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_push_activity
    ADD CONSTRAINT fk_sta_repo_push_activity_id FOREIGN KEY (activity_id) REFERENCES sta_repo_activity(activity_id) ON DELETE CASCADE;


--
-- Name: fk_sta_repo_push_ref_act_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repo_push_ref
    ADD CONSTRAINT fk_sta_repo_push_ref_act_id FOREIGN KEY (activity_id) REFERENCES sta_repo_push_activity(activity_id) ON DELETE CASCADE;


--
-- Name: fk_sta_repo_scoped_id_repo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_repository_scoped_id
    ADD CONSTRAINT fk_sta_repo_scoped_id_repo FOREIGN KEY (repository_id) REFERENCES repository(id) ON DELETE CASCADE;


--
-- Name: fk_sta_service_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_service_user
    ADD CONSTRAINT fk_sta_service_user_id FOREIGN KEY (user_id) REFERENCES stash_user(id) ON DELETE CASCADE;


--
-- Name: fk_sta_user_settings_lob; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_user_settings
    ADD CONSTRAINT fk_sta_user_settings_lob FOREIGN KEY (lob_id) REFERENCES sta_shared_lob(id);


--
-- Name: fk_sta_user_settings_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_user_settings
    ADD CONSTRAINT fk_sta_user_settings_user FOREIGN KEY (id) REFERENCES stash_user(id);


--
-- Name: fk_sta_watcher_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sta_watcher
    ADD CONSTRAINT fk_sta_watcher_user FOREIGN KEY (user_id) REFERENCES stash_user(id);


--
-- Name: fk_trusted_app; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY trusted_app_restriction
    ADD CONSTRAINT fk_trusted_app FOREIGN KEY (trusted_app_id) REFERENCES trusted_app(id) ON DELETE CASCADE;


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
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


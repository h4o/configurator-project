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
-- Name: AO_21D670_WHITELIST_RULES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_21D670_WHITELIST_RULES" (
    "ALLOWINBOUND" boolean,
    "EXPRESSION" text NOT NULL,
    "ID" integer NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE "AO_21D670_WHITELIST_RULES" OWNER TO {{postgresUser}};

--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_21D670_WHITELIST_RULES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_21D670_WHITELIST_RULES_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_21D670_WHITELIST_RULES_ID_seq" OWNED BY "AO_21D670_WHITELIST_RULES"."ID";


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
-- Name: AO_3B1893_LOOP_DETECTION; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_3B1893_LOOP_DETECTION" (
    "COUNTER" integer DEFAULT 0 NOT NULL,
    "EXPIRES_AT" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "SENDER_EMAIL" text NOT NULL
);


ALTER TABLE "AO_3B1893_LOOP_DETECTION" OWNER TO {{postgresUser}};

--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_3B1893_LOOP_DETECTION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_3B1893_LOOP_DETECTION_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_3B1893_LOOP_DETECTION_ID_seq" OWNED BY "AO_3B1893_LOOP_DETECTION"."ID";


--
-- Name: AO_4AEACD_WEBHOOK_DAO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_4AEACD_WEBHOOK_DAO" (
    "ENABLED" boolean,
    "ENCODED_EVENTS" text,
    "FILTER" text,
    "ID" integer NOT NULL,
    "JQL" character varying(255),
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "LAST_UPDATED_USER" character varying(255) NOT NULL,
    "NAME" text NOT NULL,
    "REGISTRATION_METHOD" character varying(255) NOT NULL,
    "URL" text NOT NULL,
    "EXCLUDE_ISSUE_DETAILS" boolean,
    "PARAMETERS" text
);


ALTER TABLE "AO_4AEACD_WEBHOOK_DAO" OWNER TO {{postgresUser}};

--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_4AEACD_WEBHOOK_DAO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_4AEACD_WEBHOOK_DAO_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_4AEACD_WEBHOOK_DAO_ID_seq" OWNED BY "AO_4AEACD_WEBHOOK_DAO"."ID";


--
-- Name: AO_550953_SHORTCUT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_550953_SHORTCUT" (
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "PROJECT_ID" bigint,
    "SHORTCUT_URL" text,
    "URL" character varying(255),
    "ICON" character varying(255)
);


ALTER TABLE "AO_550953_SHORTCUT" OWNER TO {{postgresUser}};

--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_550953_SHORTCUT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_550953_SHORTCUT_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_550953_SHORTCUT_ID_seq" OWNED BY "AO_550953_SHORTCUT"."ID";


--
-- Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_563AEE_ACTIVITY_ENTITY" (
    "ACTIVITY_ID" bigint NOT NULL,
    "ACTOR_ID" integer,
    "CONTENT" text,
    "GENERATOR_DISPLAY_NAME" character varying(255),
    "GENERATOR_ID" character varying(450),
    "ICON_ID" integer,
    "ID" character varying(450),
    "ISSUE_KEY" character varying(255),
    "OBJECT_ID" integer,
    "POSTER" character varying(255),
    "PROJECT_KEY" character varying(255),
    "PUBLISHED" timestamp without time zone,
    "TARGET_ID" integer,
    "TITLE" character varying(255),
    "URL" character varying(450),
    "USERNAME" character varying(255),
    "VERB" character varying(450)
);


ALTER TABLE "AO_563AEE_ACTIVITY_ENTITY" OWNER TO {{postgresUser}};

--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNED BY "AO_563AEE_ACTIVITY_ENTITY"."ACTIVITY_ID";


--
-- Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_563AEE_ACTOR_ENTITY" (
    "FULL_NAME" character varying(255),
    "ID" integer NOT NULL,
    "PROFILE_PAGE_URI" character varying(450),
    "PROFILE_PICTURE_URI" character varying(450),
    "USERNAME" character varying(255)
);


ALTER TABLE "AO_563AEE_ACTOR_ENTITY" OWNER TO {{postgresUser}};

--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_563AEE_ACTOR_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_ACTOR_ENTITY_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_563AEE_ACTOR_ENTITY_ID_seq" OWNED BY "AO_563AEE_ACTOR_ENTITY"."ID";


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_563AEE_MEDIA_LINK_ENTITY" (
    "DURATION" integer,
    "HEIGHT" integer,
    "ID" integer NOT NULL,
    "URL" character varying(450),
    "WIDTH" integer
);


ALTER TABLE "AO_563AEE_MEDIA_LINK_ENTITY" OWNER TO {{postgresUser}};

--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNED BY "AO_563AEE_MEDIA_LINK_ENTITY"."ID";


--
-- Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_563AEE_OBJECT_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
);


ALTER TABLE "AO_563AEE_OBJECT_ENTITY" OWNER TO {{postgresUser}};

--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_563AEE_OBJECT_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_OBJECT_ENTITY_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_563AEE_OBJECT_ENTITY_ID_seq" OWNED BY "AO_563AEE_OBJECT_ENTITY"."ID";


--
-- Name: AO_563AEE_TARGET_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_563AEE_TARGET_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
);


ALTER TABLE "AO_563AEE_TARGET_ENTITY" OWNER TO {{postgresUser}};

--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_563AEE_TARGET_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_TARGET_ENTITY_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_563AEE_TARGET_ENTITY_ID_seq" OWNED BY "AO_563AEE_TARGET_ENTITY"."ID";


--
-- Name: AO_575BF5_PROCESSED_COMMITS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_575BF5_PROCESSED_COMMITS" (
    "COMMIT_HASH" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "METADATA_HASH" character varying(255)
);


ALTER TABLE "AO_575BF5_PROCESSED_COMMITS" OWNER TO {{postgresUser}};

--
-- Name: AO_575BF5_PROCESSED_COMMITS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_575BF5_PROCESSED_COMMITS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_575BF5_PROCESSED_COMMITS_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_575BF5_PROCESSED_COMMITS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_575BF5_PROCESSED_COMMITS_ID_seq" OWNED BY "AO_575BF5_PROCESSED_COMMITS"."ID";


--
-- Name: AO_575BF5_PROVIDER_ISSUE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_575BF5_PROVIDER_ISSUE" (
    "ID" integer NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0 NOT NULL,
    "PROVIDER_SOURCE_ID" character varying(255) NOT NULL,
    "STALE_AFTER" bigint
);


ALTER TABLE "AO_575BF5_PROVIDER_ISSUE" OWNER TO {{postgresUser}};

--
-- Name: AO_575BF5_PROVIDER_ISSUE_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_575BF5_PROVIDER_ISSUE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_575BF5_PROVIDER_ISSUE_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_575BF5_PROVIDER_ISSUE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_575BF5_PROVIDER_ISSUE_ID_seq" OWNED BY "AO_575BF5_PROVIDER_ISSUE"."ID";


--
-- Name: AO_587B34_PROJECT_CONFIG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_587B34_PROJECT_CONFIG" (
    "CONFIGURATION_GROUP_ID" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "NAME_UNIQUE_CONSTRAINT" character varying(255) NOT NULL,
    "PROJECT_ID" bigint DEFAULT 0 NOT NULL,
    "ROOM_ID" bigint DEFAULT 0 NOT NULL,
    "VALUE" character varying(255)
);


ALTER TABLE "AO_587B34_PROJECT_CONFIG" OWNER TO {{postgresUser}};

--
-- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_587B34_PROJECT_CONFIG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_587B34_PROJECT_CONFIG_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_587B34_PROJECT_CONFIG_ID_seq" OWNED BY "AO_587B34_PROJECT_CONFIG"."ID";


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
-- Name: AO_60DB71_AUDITENTRY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_AUDITENTRY" (
    "CATEGORY" character varying(255) NOT NULL,
    "DATA" text NOT NULL,
    "ENTITY_CLASS" character varying(255) NOT NULL,
    "ENTITY_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "TIME" bigint,
    "USER" character varying(255)
);


ALTER TABLE "AO_60DB71_AUDITENTRY" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_AUDITENTRY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_AUDITENTRY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_AUDITENTRY_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_AUDITENTRY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_AUDITENTRY_ID_seq" OWNED BY "AO_60DB71_AUDITENTRY"."ID";


--
-- Name: AO_60DB71_BOARDADMINS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_BOARDADMINS" (
    "ID" bigint NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE "AO_60DB71_BOARDADMINS" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_BOARDADMINS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_BOARDADMINS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_BOARDADMINS_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_BOARDADMINS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_BOARDADMINS_ID_seq" OWNED BY "AO_60DB71_BOARDADMINS"."ID";


--
-- Name: AO_60DB71_CARDCOLOR; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_CARDCOLOR" (
    "COLOR" character varying(255),
    "ID" bigint NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "STRATEGY" character varying(255),
    "VAL" character varying(255)
);


ALTER TABLE "AO_60DB71_CARDCOLOR" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_CARDCOLOR_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_CARDCOLOR_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_CARDCOLOR_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_CARDCOLOR_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_CARDCOLOR_ID_seq" OWNED BY "AO_60DB71_CARDCOLOR"."ID";


--
-- Name: AO_60DB71_CARDLAYOUT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_CARDLAYOUT" (
    "FIELD_ID" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "MODE_NAME" character varying(255) NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_CARDLAYOUT" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_CARDLAYOUT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_CARDLAYOUT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_CARDLAYOUT_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_CARDLAYOUT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_CARDLAYOUT_ID_seq" OWNED BY "AO_60DB71_CARDLAYOUT"."ID";


--
-- Name: AO_60DB71_COLUMN; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_COLUMN" (
    "ID" bigint NOT NULL,
    "MAXIM" double precision,
    "MINIM" double precision,
    "NAME" character varying(255),
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_COLUMN" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_COLUMNSTATUS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_COLUMNSTATUS" (
    "COLUMN_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "STATUS_ID" character varying(255)
);


ALTER TABLE "AO_60DB71_COLUMNSTATUS" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_COLUMNSTATUS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_COLUMNSTATUS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_COLUMNSTATUS_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_COLUMNSTATUS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_COLUMNSTATUS_ID_seq" OWNED BY "AO_60DB71_COLUMNSTATUS"."ID";


--
-- Name: AO_60DB71_COLUMN_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_COLUMN_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_COLUMN_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_COLUMN_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_COLUMN_ID_seq" OWNED BY "AO_60DB71_COLUMN"."ID";


--
-- Name: AO_60DB71_DETAILVIEWFIELD; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_DETAILVIEWFIELD" (
    "FIELD_ID" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_DETAILVIEWFIELD" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_DETAILVIEWFIELD_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_DETAILVIEWFIELD_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_DETAILVIEWFIELD_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_DETAILVIEWFIELD_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_DETAILVIEWFIELD_ID_seq" OWNED BY "AO_60DB71_DETAILVIEWFIELD"."ID";


--
-- Name: AO_60DB71_ESTIMATESTATISTIC; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_ESTIMATESTATISTIC" (
    "FIELD_ID" character varying(255),
    "ID" bigint NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE_ID" character varying(255) NOT NULL
);


ALTER TABLE "AO_60DB71_ESTIMATESTATISTIC" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_ESTIMATESTATISTIC_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_ESTIMATESTATISTIC_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_ESTIMATESTATISTIC_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_ESTIMATESTATISTIC_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_ESTIMATESTATISTIC_ID_seq" OWNED BY "AO_60DB71_ESTIMATESTATISTIC"."ID";


--
-- Name: AO_60DB71_ISSUERANKING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_ISSUERANKING" (
    "CUSTOM_FIELD_ID" bigint DEFAULT 0 NOT NULL,
    "ID" bigint NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0 NOT NULL,
    "NEXT_ID" bigint
);


ALTER TABLE "AO_60DB71_ISSUERANKING" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_ISSUERANKINGLOG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_ISSUERANKINGLOG" (
    "CUSTOM_FIELD_ID" bigint,
    "ID" bigint NOT NULL,
    "ISSUE_ID" bigint,
    "LOG_TYPE" character varying(255),
    "NEW_NEXT_ID" bigint,
    "NEW_PREVIOUS_ID" bigint,
    "OLD_NEXT_ID" bigint,
    "OLD_PREVIOUS_ID" bigint,
    "SANITY_CHECKED" character varying(255)
);


ALTER TABLE "AO_60DB71_ISSUERANKINGLOG" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_ISSUERANKINGLOG_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_ISSUERANKINGLOG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_ISSUERANKINGLOG_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_ISSUERANKINGLOG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_ISSUERANKINGLOG_ID_seq" OWNED BY "AO_60DB71_ISSUERANKINGLOG"."ID";


--
-- Name: AO_60DB71_ISSUERANKING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_ISSUERANKING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_ISSUERANKING_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_ISSUERANKING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_ISSUERANKING_ID_seq" OWNED BY "AO_60DB71_ISSUERANKING"."ID";


--
-- Name: AO_60DB71_LEXORANK; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_LEXORANK" (
    "FIELD_ID" bigint DEFAULT 0 NOT NULL,
    "ID" bigint NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0 NOT NULL,
    "LOCK_HASH" character varying(255),
    "LOCK_TIME" bigint,
    "RANK" character varying(255) NOT NULL,
    "TYPE" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "AO_60DB71_LEXORANK" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_LEXORANKBALANCER; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_LEXORANKBALANCER" (
    "DISABLE_RANK_OPERATIONS" boolean NOT NULL,
    "FIELD_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "REBALANCE_TIME" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_LEXORANKBALANCER" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_LEXORANKBALANCER_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_LEXORANKBALANCER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_LEXORANKBALANCER_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_LEXORANKBALANCER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_LEXORANKBALANCER_ID_seq" OWNED BY "AO_60DB71_LEXORANKBALANCER"."ID";


--
-- Name: AO_60DB71_LEXORANK_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_LEXORANK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_LEXORANK_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_LEXORANK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_LEXORANK_ID_seq" OWNED BY "AO_60DB71_LEXORANK"."ID";


--
-- Name: AO_60DB71_NONWORKINGDAY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_NONWORKINGDAY" (
    "ID" bigint NOT NULL,
    "ISO8601_DATE" character varying(255) NOT NULL,
    "WORKING_DAYS_ID" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_NONWORKINGDAY" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_NONWORKINGDAY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_NONWORKINGDAY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_NONWORKINGDAY_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_NONWORKINGDAY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_NONWORKINGDAY_ID_seq" OWNED BY "AO_60DB71_NONWORKINGDAY"."ID";


--
-- Name: AO_60DB71_QUICKFILTER; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_QUICKFILTER" (
    "DESCRIPTION" character varying(255),
    "ID" bigint NOT NULL,
    "LONG_QUERY" text,
    "NAME" character varying(255) NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "QUERY" character varying(255),
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_QUICKFILTER" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_QUICKFILTER_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_QUICKFILTER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_QUICKFILTER_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_QUICKFILTER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_QUICKFILTER_ID_seq" OWNED BY "AO_60DB71_QUICKFILTER"."ID";


--
-- Name: AO_60DB71_RANKABLEOBJECT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_RANKABLEOBJECT" (
    "ID" bigint NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE "AO_60DB71_RANKABLEOBJECT" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_RANKABLEOBJECT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_RANKABLEOBJECT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_RANKABLEOBJECT_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_RANKABLEOBJECT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_RANKABLEOBJECT_ID_seq" OWNED BY "AO_60DB71_RANKABLEOBJECT"."ID";


--
-- Name: AO_60DB71_RAPIDVIEW; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_RAPIDVIEW" (
    "CARD_COLOR_STRATEGY" character varying(255),
    "ID" bigint NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "OWNER_USER_NAME" character varying(255) NOT NULL,
    "SAVED_FILTER_ID" bigint NOT NULL,
    "SHOW_DAYS_IN_COLUMN" boolean,
    "SPRINTS_ENABLED" boolean,
    "SWIMLANE_STRATEGY" character varying(255)
);


ALTER TABLE "AO_60DB71_RAPIDVIEW" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_RAPIDVIEW_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_RAPIDVIEW_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_RAPIDVIEW_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_RAPIDVIEW_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_RAPIDVIEW_ID_seq" OWNED BY "AO_60DB71_RAPIDVIEW"."ID";


--
-- Name: AO_60DB71_SPRINT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_SPRINT" (
    "CLOSED" boolean NOT NULL,
    "COMPLETE_DATE" bigint,
    "END_DATE" bigint,
    "ID" bigint NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "RAPID_VIEW_ID" bigint,
    "SEQUENCE" bigint,
    "STARTED" boolean,
    "START_DATE" bigint
);


ALTER TABLE "AO_60DB71_SPRINT" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_SPRINT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_SPRINT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_SPRINT_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_SPRINT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_SPRINT_ID_seq" OWNED BY "AO_60DB71_SPRINT"."ID";


--
-- Name: AO_60DB71_STATSFIELD; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_STATSFIELD" (
    "ID" bigint NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE_ID" character varying(255) NOT NULL
);


ALTER TABLE "AO_60DB71_STATSFIELD" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_STATSFIELD_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_STATSFIELD_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_STATSFIELD_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_STATSFIELD_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_STATSFIELD_ID_seq" OWNED BY "AO_60DB71_STATSFIELD"."ID";


--
-- Name: AO_60DB71_SUBQUERY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_SUBQUERY" (
    "ID" bigint NOT NULL,
    "LONG_QUERY" text,
    "QUERY" character varying(255),
    "RAPID_VIEW_ID" bigint,
    "SECTION" character varying(255) NOT NULL
);


ALTER TABLE "AO_60DB71_SUBQUERY" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_SUBQUERY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_SUBQUERY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_SUBQUERY_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_SUBQUERY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_SUBQUERY_ID_seq" OWNED BY "AO_60DB71_SUBQUERY"."ID";


--
-- Name: AO_60DB71_SWIMLANE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_SWIMLANE" (
    "DEFAULT_LANE" boolean NOT NULL,
    "DESCRIPTION" character varying(255),
    "ID" bigint NOT NULL,
    "LONG_QUERY" text,
    "NAME" character varying(255) NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "QUERY" character varying(255),
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_SWIMLANE" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_SWIMLANE_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_SWIMLANE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_SWIMLANE_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_SWIMLANE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_SWIMLANE_ID_seq" OWNED BY "AO_60DB71_SWIMLANE"."ID";


--
-- Name: AO_60DB71_TRACKINGSTATISTIC; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_TRACKINGSTATISTIC" (
    "FIELD_ID" character varying(255),
    "ID" bigint NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE_ID" character varying(255) NOT NULL
);


ALTER TABLE "AO_60DB71_TRACKINGSTATISTIC" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_TRACKINGSTATISTIC_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_TRACKINGSTATISTIC_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_TRACKINGSTATISTIC_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_TRACKINGSTATISTIC_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_TRACKINGSTATISTIC_ID_seq" OWNED BY "AO_60DB71_TRACKINGSTATISTIC"."ID";


--
-- Name: AO_60DB71_VERSION; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_VERSION" (
    "ID" bigint NOT NULL,
    "START_DATE" bigint,
    "VERSION_ID" bigint NOT NULL
);


ALTER TABLE "AO_60DB71_VERSION" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_VERSION_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_VERSION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_VERSION_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_VERSION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_VERSION_ID_seq" OWNED BY "AO_60DB71_VERSION"."ID";


--
-- Name: AO_60DB71_WORKINGDAYS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_60DB71_WORKINGDAYS" (
    "FRIDAY" boolean NOT NULL,
    "ID" bigint NOT NULL,
    "MONDAY" boolean NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "SATURDAY" boolean NOT NULL,
    "SUNDAY" boolean NOT NULL,
    "THURSDAY" boolean NOT NULL,
    "TIMEZONE" character varying(255) NOT NULL,
    "TUESDAY" boolean NOT NULL,
    "WEDNESDAY" boolean NOT NULL
);


ALTER TABLE "AO_60DB71_WORKINGDAYS" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_WORKINGDAYS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_60DB71_WORKINGDAYS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_60DB71_WORKINGDAYS_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_60DB71_WORKINGDAYS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_60DB71_WORKINGDAYS_ID_seq" OWNED BY "AO_60DB71_WORKINGDAYS"."ID";


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_88263F_HEALTH_CHECK_STATUS" (
    "APPLICATION_NAME" character varying(255),
    "COMPLETE_KEY" character varying(255),
    "DESCRIPTION" character varying(255),
    "FAILED_DATE" timestamp without time zone,
    "FAILURE_REASON" character varying(450),
    "ID" integer NOT NULL,
    "IS_HEALTHY" boolean,
    "IS_RESOLVED" boolean,
    "RESOLVED_DATE" timestamp without time zone,
    "SEVERITY" character varying(255),
    "STATUS_NAME" character varying(255) NOT NULL
);


ALTER TABLE "AO_88263F_HEALTH_CHECK_STATUS" OWNER TO {{postgresUser}};

--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_88263F_HEALTH_CHECK_STATUS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_88263F_HEALTH_CHECK_STATUS_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_88263F_HEALTH_CHECK_STATUS_ID_seq" OWNED BY "AO_88263F_HEALTH_CHECK_STATUS"."ID";


--
-- Name: AO_88263F_PROPERTIES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_88263F_PROPERTIES" (
    "ID" integer NOT NULL,
    "PROPERTY_NAME" character varying(255) NOT NULL,
    "PROPERTY_VALUE" character varying(255) NOT NULL
);


ALTER TABLE "AO_88263F_PROPERTIES" OWNER TO {{postgresUser}};

--
-- Name: AO_88263F_PROPERTIES_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_88263F_PROPERTIES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_88263F_PROPERTIES_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_88263F_PROPERTIES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_88263F_PROPERTIES_ID_seq" OWNED BY "AO_88263F_PROPERTIES"."ID";


--
-- Name: AO_88263F_READ_NOTIFICATIONS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_88263F_READ_NOTIFICATIONS" (
    "ID" integer NOT NULL,
    "IS_SNOOZED" boolean,
    "NOTIFICATION_ID" integer NOT NULL,
    "SNOOZE_COUNT" integer,
    "SNOOZE_DATE" timestamp without time zone,
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE "AO_88263F_READ_NOTIFICATIONS" OWNER TO {{postgresUser}};

--
-- Name: AO_88263F_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_88263F_READ_NOTIFICATIONS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_88263F_READ_NOTIFICATIONS_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_88263F_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_88263F_READ_NOTIFICATIONS_ID_seq" OWNED BY "AO_88263F_READ_NOTIFICATIONS"."ID";


--
-- Name: AO_97EDAB_USERINVITATION; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_97EDAB_USERINVITATION" (
    "APPLICATION_KEYS" character varying(255),
    "EMAIL_ADDRESS" character varying(255),
    "EXPIRY" timestamp without time zone,
    "ID" integer NOT NULL,
    "REDEEMED" boolean,
    "SENDER_USERNAME" character varying(255),
    "TOKEN" character varying(255)
);


ALTER TABLE "AO_97EDAB_USERINVITATION" OWNER TO {{postgresUser}};

--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_97EDAB_USERINVITATION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_97EDAB_USERINVITATION_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_97EDAB_USERINVITATION_ID_seq" OWNED BY "AO_97EDAB_USERINVITATION"."ID";


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
-- Name: AO_A44657_HEALTH_CHECK_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_A44657_HEALTH_CHECK_ENTITY" (
    "ID" integer NOT NULL
);


ALTER TABLE "AO_A44657_HEALTH_CHECK_ENTITY" OWNER TO {{postgresUser}};

--
-- Name: AO_A44657_HEALTH_CHECK_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_A44657_HEALTH_CHECK_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_A44657_HEALTH_CHECK_ENTITY_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_A44657_HEALTH_CHECK_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_A44657_HEALTH_CHECK_ENTITY_ID_seq" OWNED BY "AO_A44657_HEALTH_CHECK_ENTITY"."ID";


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_B9A0F0_APPLIED_TEMPLATE" (
    "ID" integer NOT NULL,
    "PROJECT_ID" bigint DEFAULT 0,
    "PROJECT_TEMPLATE_MODULE_KEY" character varying(255),
    "PROJECT_TEMPLATE_WEB_ITEM_KEY" character varying(255)
);


ALTER TABLE "AO_B9A0F0_APPLIED_TEMPLATE" OWNER TO {{postgresUser}};

--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_B9A0F0_APPLIED_TEMPLATE_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_B9A0F0_APPLIED_TEMPLATE_ID_seq" OWNED BY "AO_B9A0F0_APPLIED_TEMPLATE"."ID";


--
-- Name: AO_CFF990_AOTRANSITION_FAILURE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_CFF990_AOTRANSITION_FAILURE" (
    "ERROR_MESSAGES" text,
    "FAILURE_TIME" timestamp without time zone,
    "ID" integer NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0,
    "LOG_REFERRAL_HASH" character varying(255),
    "TRANSITION_ID" bigint DEFAULT 0,
    "TRIGGER_ID" bigint DEFAULT 0,
    "USER_KEY" character varying(255),
    "WORKFLOW_ID" character varying(255)
);


ALTER TABLE "AO_CFF990_AOTRANSITION_FAILURE" OWNER TO {{postgresUser}};

--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_CFF990_AOTRANSITION_FAILURE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_CFF990_AOTRANSITION_FAILURE_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_CFF990_AOTRANSITION_FAILURE_ID_seq" OWNED BY "AO_CFF990_AOTRANSITION_FAILURE"."ID";


--
-- Name: AO_E8B6CC_BRANCH; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_BRANCH" (
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "REPOSITORY_ID" integer
);


ALTER TABLE "AO_E8B6CC_BRANCH" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_BRANCH_HEAD_MAPPING" (
    "BRANCH_NAME" character varying(255),
    "HEAD" character varying(255),
    "ID" integer NOT NULL,
    "REPOSITORY_ID" integer
);


ALTER TABLE "AO_E8B6CC_BRANCH_HEAD_MAPPING" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq" OWNED BY "AO_E8B6CC_BRANCH_HEAD_MAPPING"."ID";


--
-- Name: AO_E8B6CC_BRANCH_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_BRANCH_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_BRANCH_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_BRANCH_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_BRANCH_ID_seq" OWNED BY "AO_E8B6CC_BRANCH"."ID";


--
-- Name: AO_E8B6CC_CHANGESET_MAPPING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_CHANGESET_MAPPING" (
    "AUTHOR" character varying(255),
    "AUTHOR_EMAIL" character varying(255),
    "BRANCH" character varying(255),
    "DATE" timestamp without time zone,
    "FILES_DATA" text,
    "FILE_COUNT" integer DEFAULT 0,
    "FILE_DETAILS_JSON" text,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255),
    "MESSAGE" text,
    "NODE" character varying(255),
    "PARENTS_DATA" character varying(255),
    "PROJECT_KEY" character varying(255),
    "RAW_AUTHOR" character varying(255),
    "RAW_NODE" character varying(255),
    "REPOSITORY_ID" integer DEFAULT 0,
    "SMARTCOMMIT_AVAILABLE" boolean,
    "VERSION" integer
);


ALTER TABLE "AO_E8B6CC_CHANGESET_MAPPING" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_CHANGESET_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_CHANGESET_MAPPING_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_CHANGESET_MAPPING_ID_seq" OWNED BY "AO_E8B6CC_CHANGESET_MAPPING"."ID";


--
-- Name: AO_E8B6CC_COMMIT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_COMMIT" (
    "AUTHOR" character varying(255),
    "AUTHOR_AVATAR_URL" character varying(255),
    "DATE" timestamp without time zone NOT NULL,
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "MERGE" boolean,
    "MESSAGE" text,
    "NODE" character varying(255),
    "RAW_AUTHOR" character varying(255)
);


ALTER TABLE "AO_E8B6CC_COMMIT" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_COMMIT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_COMMIT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_COMMIT_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_COMMIT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_COMMIT_ID_seq" OWNED BY "AO_E8B6CC_COMMIT"."ID";


--
-- Name: AO_E8B6CC_GIT_HUB_EVENT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_GIT_HUB_EVENT" (
    "CREATED_AT" timestamp without time zone NOT NULL,
    "GIT_HUB_ID" character varying(255) DEFAULT '0'::character varying NOT NULL,
    "ID" integer NOT NULL,
    "REPOSITORY_ID" integer NOT NULL,
    "SAVE_POINT" boolean
);


ALTER TABLE "AO_E8B6CC_GIT_HUB_EVENT" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_GIT_HUB_EVENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_GIT_HUB_EVENT_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_GIT_HUB_EVENT_ID_seq" OWNED BY "AO_E8B6CC_GIT_HUB_EVENT"."ID";


--
-- Name: AO_E8B6CC_ISSUE_MAPPING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_ISSUE_MAPPING" (
    "ID" integer NOT NULL,
    "ISSUE_ID" character varying(255),
    "NODE" character varying(255),
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_URI" character varying(255)
);


ALTER TABLE "AO_E8B6CC_ISSUE_MAPPING" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_ISSUE_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_ISSUE_MAPPING_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_ISSUE_MAPPING_ID_seq" OWNED BY "AO_E8B6CC_ISSUE_MAPPING"."ID";


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_ISSUE_MAPPING_V2" (
    "AUTHOR" character varying(255),
    "BRANCH" character varying(255),
    "DATE" timestamp without time zone,
    "FILES_DATA" text,
    "ID" integer NOT NULL,
    "ISSUE_ID" character varying(255),
    "MESSAGE" text,
    "NODE" character varying(255),
    "PARENTS_DATA" character varying(255),
    "RAW_AUTHOR" character varying(255),
    "RAW_NODE" character varying(255),
    "REPOSITORY_ID" integer DEFAULT 0,
    "VERSION" integer
);


ALTER TABLE "AO_E8B6CC_ISSUE_MAPPING_V2" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq" OWNED BY "AO_E8B6CC_ISSUE_MAPPING_V2"."ID";


--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_ISSUE_TO_BRANCH" (
    "BRANCH_ID" integer,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255)
);


ALTER TABLE "AO_E8B6CC_ISSUE_TO_BRANCH" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq" OWNED BY "AO_E8B6CC_ISSUE_TO_BRANCH"."ID";


--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_ISSUE_TO_CHANGESET" (
    "CHANGESET_ID" integer,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255),
    "PROJECT_KEY" character varying(255)
);


ALTER TABLE "AO_E8B6CC_ISSUE_TO_CHANGESET" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq" OWNED BY "AO_E8B6CC_ISSUE_TO_CHANGESET"."ID";


--
-- Name: AO_E8B6CC_MESSAGE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_MESSAGE" (
    "ADDRESS" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "PAYLOAD" text NOT NULL,
    "PAYLOAD_TYPE" character varying(255) NOT NULL,
    "PRIORITY" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "AO_E8B6CC_MESSAGE" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_MESSAGE_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_MESSAGE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_MESSAGE_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_MESSAGE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_MESSAGE_ID_seq" OWNED BY "AO_E8B6CC_MESSAGE"."ID";


--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_MESSAGE_QUEUE_ITEM" (
    "ID" integer NOT NULL,
    "LAST_FAILED" timestamp without time zone,
    "MESSAGE_ID" integer NOT NULL,
    "QUEUE" character varying(255) NOT NULL,
    "RETRIES_COUNT" integer DEFAULT 0 NOT NULL,
    "STATE" character varying(255) NOT NULL,
    "STATE_INFO" character varying(255)
);


ALTER TABLE "AO_E8B6CC_MESSAGE_QUEUE_ITEM" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq" OWNED BY "AO_E8B6CC_MESSAGE_QUEUE_ITEM"."ID";


--
-- Name: AO_E8B6CC_MESSAGE_TAG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_MESSAGE_TAG" (
    "ID" integer NOT NULL,
    "MESSAGE_ID" integer,
    "TAG" character varying(255)
);


ALTER TABLE "AO_E8B6CC_MESSAGE_TAG" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_MESSAGE_TAG_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_MESSAGE_TAG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_MESSAGE_TAG_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_MESSAGE_TAG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_MESSAGE_TAG_ID_seq" OWNED BY "AO_E8B6CC_MESSAGE_TAG"."ID";


--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_ORGANIZATION_MAPPING" (
    "ACCESS_TOKEN" character varying(255),
    "ADMIN_PASSWORD" character varying(255),
    "ADMIN_USERNAME" character varying(255),
    "APPROVAL_STATE" character varying(255),
    "AUTOLINK_NEW_REPOS" boolean,
    "DEFAULT_GROUPS_SLUGS" character varying(255),
    "DVCS_TYPE" character varying(255),
    "HOST_URL" character varying(255),
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "OAUTH_KEY" character varying(255),
    "OAUTH_SECRET" character varying(255),
    "PRINCIPAL_ID" character varying(255),
    "SMARTCOMMITS_FOR_NEW_REPOS" boolean
);


ALTER TABLE "AO_E8B6CC_ORGANIZATION_MAPPING" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq" OWNED BY "AO_E8B6CC_ORGANIZATION_MAPPING"."ID";


--
-- Name: AO_E8B6CC_PROJECT_MAPPING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_PROJECT_MAPPING" (
    "ID" integer NOT NULL,
    "PASSWORD" character varying(255),
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_URI" character varying(255),
    "USERNAME" character varying(255)
);


ALTER TABLE "AO_E8B6CC_PROJECT_MAPPING" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_PROJECT_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_PROJECT_MAPPING_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_PROJECT_MAPPING_ID_seq" OWNED BY "AO_E8B6CC_PROJECT_MAPPING"."ID";


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_PROJECT_MAPPING_V2" (
    "ACCESS_TOKEN" character varying(255),
    "ADMIN_PASSWORD" character varying(255),
    "ADMIN_USERNAME" character varying(255),
    "ID" integer NOT NULL,
    "LAST_COMMIT_DATE" timestamp without time zone,
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_NAME" character varying(255),
    "REPOSITORY_TYPE" character varying(255),
    "REPOSITORY_URL" character varying(255)
);


ALTER TABLE "AO_E8B6CC_PROJECT_MAPPING_V2" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq" OWNED BY "AO_E8B6CC_PROJECT_MAPPING_V2"."ID";


--
-- Name: AO_E8B6CC_PR_ISSUE_KEY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_PR_ISSUE_KEY" (
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255),
    "PULL_REQUEST_ID" integer DEFAULT 0
);


ALTER TABLE "AO_E8B6CC_PR_ISSUE_KEY" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_PR_ISSUE_KEY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_PR_ISSUE_KEY_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_PR_ISSUE_KEY_ID_seq" OWNED BY "AO_E8B6CC_PR_ISSUE_KEY"."ID";


--
-- Name: AO_E8B6CC_PR_PARTICIPANT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_PR_PARTICIPANT" (
    "APPROVED" boolean,
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "PULL_REQUEST_ID" integer,
    "ROLE" character varying(255),
    "USERNAME" character varying(255)
);


ALTER TABLE "AO_E8B6CC_PR_PARTICIPANT" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_PR_PARTICIPANT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_PR_PARTICIPANT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_PR_PARTICIPANT_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_PR_PARTICIPANT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_PR_PARTICIPANT_ID_seq" OWNED BY "AO_E8B6CC_PR_PARTICIPANT"."ID";


--
-- Name: AO_E8B6CC_PR_TO_COMMIT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_PR_TO_COMMIT" (
    "COMMIT_ID" integer NOT NULL,
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "REQUEST_ID" integer NOT NULL
);


ALTER TABLE "AO_E8B6CC_PR_TO_COMMIT" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_PR_TO_COMMIT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_PR_TO_COMMIT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_PR_TO_COMMIT_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_PR_TO_COMMIT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_PR_TO_COMMIT_ID_seq" OWNED BY "AO_E8B6CC_PR_TO_COMMIT"."ID";


--
-- Name: AO_E8B6CC_PULL_REQUEST; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_PULL_REQUEST" (
    "AUTHOR" character varying(255),
    "COMMENT_COUNT" integer DEFAULT 0,
    "CREATED_ON" timestamp without time zone,
    "DESTINATION_BRANCH" character varying(255),
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "EXECUTED_BY" character varying(255),
    "ID" integer NOT NULL,
    "LAST_STATUS" character varying(255),
    "NAME" character varying(255),
    "REMOTE_ID" bigint,
    "SOURCE_BRANCH" character varying(255),
    "SOURCE_REPO" character varying(255),
    "TO_REPOSITORY_ID" integer DEFAULT 0,
    "UPDATED_ON" timestamp without time zone,
    "URL" character varying(255)
);


ALTER TABLE "AO_E8B6CC_PULL_REQUEST" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_PULL_REQUEST_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_PULL_REQUEST_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_PULL_REQUEST_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_PULL_REQUEST_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_PULL_REQUEST_ID_seq" OWNED BY "AO_E8B6CC_PULL_REQUEST"."ID";


--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_REPOSITORY_MAPPING" (
    "ACTIVITY_LAST_SYNC" timestamp without time zone,
    "DELETED" boolean,
    "FORK" boolean,
    "FORK_OF_NAME" character varying(255),
    "FORK_OF_OWNER" character varying(255),
    "FORK_OF_SLUG" character varying(255),
    "ID" integer NOT NULL,
    "LAST_CHANGESET_NODE" character varying(255),
    "LAST_COMMIT_DATE" timestamp without time zone,
    "LINKED" boolean,
    "LOGO" text,
    "NAME" character varying(255),
    "ORGANIZATION_ID" integer DEFAULT 0,
    "SLUG" character varying(255),
    "SMARTCOMMITS_ENABLED" boolean,
    "UPDATE_LINK_AUTHORISED" boolean
);


ALTER TABLE "AO_E8B6CC_REPOSITORY_MAPPING" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_REPOSITORY_MAPPING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_REPOSITORY_MAPPING_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_REPOSITORY_MAPPING_ID_seq" OWNED BY "AO_E8B6CC_REPOSITORY_MAPPING"."ID";


--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_REPO_TO_CHANGESET" (
    "CHANGESET_ID" integer,
    "ID" integer NOT NULL,
    "REPOSITORY_ID" integer
);


ALTER TABLE "AO_E8B6CC_REPO_TO_CHANGESET" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_REPO_TO_CHANGESET_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_REPO_TO_CHANGESET_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_REPO_TO_CHANGESET_ID_seq" OWNED BY "AO_E8B6CC_REPO_TO_CHANGESET"."ID";


--
-- Name: AO_E8B6CC_REPO_TO_PROJECT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_REPO_TO_PROJECT" (
    "ID" integer NOT NULL,
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_ID" integer
);


ALTER TABLE "AO_E8B6CC_REPO_TO_PROJECT" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_REPO_TO_PROJECT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_REPO_TO_PROJECT_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_REPO_TO_PROJECT_ID_seq" OWNED BY "AO_E8B6CC_REPO_TO_PROJECT"."ID";


--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_SYNC_AUDIT_LOG" (
    "END_DATE" timestamp without time zone,
    "EXC_TRACE" text,
    "FIRST_REQUEST_DATE" timestamp without time zone,
    "FLIGHT_TIME_MS" integer DEFAULT 0,
    "ID" integer NOT NULL,
    "NUM_REQUESTS" integer DEFAULT 0,
    "REPO_ID" integer DEFAULT 0,
    "START_DATE" timestamp without time zone,
    "SYNC_STATUS" character varying(255),
    "SYNC_TYPE" character varying(255),
    "TOTAL_ERRORS" integer DEFAULT 0
);


ALTER TABLE "AO_E8B6CC_SYNC_AUDIT_LOG" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq" OWNED BY "AO_E8B6CC_SYNC_AUDIT_LOG"."ID";


--
-- Name: AO_E8B6CC_SYNC_EVENT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "AO_E8B6CC_SYNC_EVENT" (
    "EVENT_CLASS" text NOT NULL,
    "EVENT_DATE" timestamp without time zone NOT NULL,
    "EVENT_JSON" text NOT NULL,
    "ID" integer NOT NULL,
    "REPO_ID" integer DEFAULT 0 NOT NULL,
    "SCHEDULED_SYNC" boolean
);


ALTER TABLE "AO_E8B6CC_SYNC_EVENT" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_SYNC_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "AO_E8B6CC_SYNC_EVENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_E8B6CC_SYNC_EVENT_ID_seq" OWNER TO {{postgresUser}};

--
-- Name: AO_E8B6CC_SYNC_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "AO_E8B6CC_SYNC_EVENT_ID_seq" OWNED BY "AO_E8B6CC_SYNC_EVENT"."ID";


--
-- Name: app_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE app_user (
    id numeric(18,0) NOT NULL,
    user_key character varying(255),
    lower_user_name character varying(255)
);


ALTER TABLE app_user OWNER TO {{postgresUser}};

--
-- Name: audit_changed_value; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE audit_changed_value (
    id numeric(18,0) NOT NULL,
    log_id numeric(18,0),
    name character varying(255),
    delta_from text,
    delta_to text
);


ALTER TABLE audit_changed_value OWNER TO {{postgresUser}};

--
-- Name: audit_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE audit_item (
    id numeric(18,0) NOT NULL,
    log_id numeric(18,0),
    object_type character varying(60),
    object_id character varying(255),
    object_name character varying(255),
    object_parent_id character varying(255),
    object_parent_name character varying(255)
);


ALTER TABLE audit_item OWNER TO {{postgresUser}};

--
-- Name: audit_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE audit_log (
    id numeric(18,0) NOT NULL,
    remote_address character varying(60),
    created timestamp with time zone,
    author_key character varying(255),
    summary character varying(255),
    category character varying(255),
    object_type character varying(60),
    object_id character varying(255),
    object_name character varying(255),
    object_parent_id character varying(255),
    object_parent_name character varying(255),
    author_type numeric(9,0),
    event_source_name character varying(255),
    description character varying(255),
    long_description text,
    search_field text
);


ALTER TABLE audit_log OWNER TO {{postgresUser}};

--
-- Name: avatar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE avatar (
    id numeric(18,0) NOT NULL,
    filename character varying(255),
    contenttype character varying(255),
    avatartype character varying(60),
    owner character varying(255),
    systemavatar numeric(9,0)
);


ALTER TABLE avatar OWNER TO {{postgresUser}};

--
-- Name: board; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE board (
    id numeric(18,0) NOT NULL,
    jql text
);


ALTER TABLE board OWNER TO {{postgresUser}};

--
-- Name: boardproject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE boardproject (
    board_id numeric(18,0) NOT NULL,
    project_id numeric(18,0) NOT NULL
);


ALTER TABLE boardproject OWNER TO {{postgresUser}};

--
-- Name: changegroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE changegroup (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    created timestamp with time zone
);


ALTER TABLE changegroup OWNER TO {{postgresUser}};

--
-- Name: changeitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE changeitem (
    id numeric(18,0) NOT NULL,
    groupid numeric(18,0),
    fieldtype character varying(255),
    field character varying(255),
    oldvalue text,
    oldstring text,
    newvalue text,
    newstring text
);


ALTER TABLE changeitem OWNER TO {{postgresUser}};

--
-- Name: clusteredjob; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE clusteredjob (
    id numeric(18,0) NOT NULL,
    job_id character varying(255),
    job_runner_key character varying(255),
    sched_type character(1),
    interval_millis numeric(18,0),
    first_run numeric(18,0),
    cron_expression character varying(255),
    time_zone character varying(60),
    next_run numeric(18,0),
    version numeric(18,0),
    parameters bytea
);


ALTER TABLE clusteredjob OWNER TO {{postgresUser}};

--
-- Name: clusterlockstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE clusterlockstatus (
    id numeric(18,0) NOT NULL,
    lock_name character varying(255),
    locked_by_node character varying(60),
    update_time numeric(18,0)
);


ALTER TABLE clusterlockstatus OWNER TO {{postgresUser}};

--
-- Name: clustermessage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE clustermessage (
    id numeric(18,0) NOT NULL,
    source_node character varying(60),
    destination_node character varying(60),
    claimed_by_node character varying(60),
    message character varying(255),
    message_time timestamp with time zone
);


ALTER TABLE clustermessage OWNER TO {{postgresUser}};

--
-- Name: clusternode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE clusternode (
    node_id character varying(60) NOT NULL,
    node_state character varying(60),
    "timestamp" numeric(18,0),
    ip character varying(60),
    cache_listener_port numeric(18,0)
);


ALTER TABLE clusternode OWNER TO {{postgresUser}};

--
-- Name: clusternodeheartbeat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE clusternodeheartbeat (
    node_id character varying(60) NOT NULL,
    heartbeat_time numeric(18,0),
    database_time numeric(18,0)
);


ALTER TABLE clusternodeheartbeat OWNER TO {{postgresUser}};

--
-- Name: columnlayout; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE columnlayout (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    searchrequest numeric(18,0)
);


ALTER TABLE columnlayout OWNER TO {{postgresUser}};

--
-- Name: columnlayoutitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE columnlayoutitem (
    id numeric(18,0) NOT NULL,
    columnlayout numeric(18,0),
    fieldidentifier character varying(255),
    horizontalposition numeric(18,0)
);


ALTER TABLE columnlayoutitem OWNER TO {{postgresUser}};

--
-- Name: component; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE component (
    id numeric(18,0) NOT NULL,
    project numeric(18,0),
    cname character varying(255),
    description text,
    url character varying(255),
    lead character varying(255),
    assigneetype numeric(18,0)
);


ALTER TABLE component OWNER TO {{postgresUser}};

--
-- Name: configurationcontext; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE configurationcontext (
    id numeric(18,0) NOT NULL,
    projectcategory numeric(18,0),
    project numeric(18,0),
    customfield character varying(255),
    fieldconfigscheme numeric(18,0)
);


ALTER TABLE configurationcontext OWNER TO {{postgresUser}};

--
-- Name: customfield; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE customfield (
    id numeric(18,0) NOT NULL,
    cfkey character varying(255),
    customfieldtypekey character varying(255),
    customfieldsearcherkey character varying(255),
    cfname character varying(255),
    description text,
    defaultvalue character varying(255),
    fieldtype numeric(18,0),
    project numeric(18,0),
    issuetype character varying(255)
);


ALTER TABLE customfield OWNER TO {{postgresUser}};

--
-- Name: customfieldoption; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE customfieldoption (
    id numeric(18,0) NOT NULL,
    customfield numeric(18,0),
    customfieldconfig numeric(18,0),
    parentoptionid numeric(18,0),
    sequence numeric(18,0),
    customvalue character varying(255),
    optiontype character varying(60),
    disabled character varying(60)
);


ALTER TABLE customfieldoption OWNER TO {{postgresUser}};

--
-- Name: customfieldvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE customfieldvalue (
    id numeric(18,0) NOT NULL,
    issue numeric(18,0),
    customfield numeric(18,0),
    parentkey character varying(255),
    stringvalue character varying(255),
    numbervalue double precision,
    textvalue text,
    datevalue timestamp with time zone,
    valuetype character varying(255)
);


ALTER TABLE customfieldvalue OWNER TO {{postgresUser}};

--
-- Name: cwd_application; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_application (
    id numeric(18,0) NOT NULL,
    application_name character varying(255),
    lower_application_name character varying(255),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    active numeric(9,0),
    description character varying(255),
    application_type character varying(255),
    credential character varying(255)
);


ALTER TABLE cwd_application OWNER TO {{postgresUser}};

--
-- Name: cwd_application_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_application_address (
    application_id numeric(18,0) NOT NULL,
    remote_address character varying(255) NOT NULL,
    encoded_address_binary character varying(255),
    remote_address_mask numeric(9,0)
);


ALTER TABLE cwd_application_address OWNER TO {{postgresUser}};

--
-- Name: cwd_directory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_directory (
    id numeric(18,0) NOT NULL,
    directory_name character varying(255),
    lower_directory_name character varying(255),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    active numeric(9,0),
    description character varying(255),
    impl_class character varying(255),
    lower_impl_class character varying(255),
    directory_type character varying(60),
    directory_position numeric(18,0)
);


ALTER TABLE cwd_directory OWNER TO {{postgresUser}};

--
-- Name: cwd_directory_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_directory_attribute (
    directory_id numeric(18,0) NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(255)
);


ALTER TABLE cwd_directory_attribute OWNER TO {{postgresUser}};

--
-- Name: cwd_directory_operation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_directory_operation (
    directory_id numeric(18,0) NOT NULL,
    operation_type character varying(60) NOT NULL
);


ALTER TABLE cwd_directory_operation OWNER TO {{postgresUser}};

--
-- Name: cwd_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_group (
    id numeric(18,0) NOT NULL,
    group_name character varying(255),
    lower_group_name character varying(255),
    active numeric(9,0),
    local numeric(9,0),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    description character varying(255),
    lower_description character varying(255),
    group_type character varying(60),
    directory_id numeric(18,0)
);


ALTER TABLE cwd_group OWNER TO {{postgresUser}};

--
-- Name: cwd_group_attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_group_attributes (
    id numeric(18,0) NOT NULL,
    group_id numeric(18,0),
    directory_id numeric(18,0),
    attribute_name character varying(255),
    attribute_value character varying(255),
    lower_attribute_value character varying(255)
);


ALTER TABLE cwd_group_attributes OWNER TO {{postgresUser}};

--
-- Name: cwd_membership; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_membership (
    id numeric(18,0) NOT NULL,
    parent_id numeric(18,0),
    child_id numeric(18,0),
    membership_type character varying(60),
    group_type character varying(60),
    parent_name character varying(255),
    lower_parent_name character varying(255),
    child_name character varying(255),
    lower_child_name character varying(255),
    directory_id numeric(18,0)
);


ALTER TABLE cwd_membership OWNER TO {{postgresUser}};

--
-- Name: cwd_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_user (
    id numeric(18,0) NOT NULL,
    directory_id numeric(18,0),
    user_name character varying(255),
    lower_user_name character varying(255),
    active numeric(9,0),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    first_name character varying(255),
    lower_first_name character varying(255),
    last_name character varying(255),
    lower_last_name character varying(255),
    display_name character varying(255),
    lower_display_name character varying(255),
    email_address character varying(255),
    lower_email_address character varying(255),
    credential character varying(255),
    deleted_externally numeric(9,0),
    external_id character varying(255)
);


ALTER TABLE cwd_user OWNER TO {{postgresUser}};

--
-- Name: cwd_user_attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cwd_user_attributes (
    id numeric(18,0) NOT NULL,
    user_id numeric(18,0),
    directory_id numeric(18,0),
    attribute_name character varying(255),
    attribute_value character varying(255),
    lower_attribute_value character varying(255)
);


ALTER TABLE cwd_user_attributes OWNER TO {{postgresUser}};

--
-- Name: deadletter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE deadletter (
    id numeric(18,0) NOT NULL,
    message_id character varying(255),
    last_seen numeric(18,0),
    mail_server_id numeric(18,0),
    folder_name character varying(255)
);


ALTER TABLE deadletter OWNER TO {{postgresUser}};

--
-- Name: draftworkflowscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE draftworkflowscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    workflow_scheme_id numeric(18,0),
    last_modified_date timestamp with time zone,
    last_modified_user character varying(255)
);


ALTER TABLE draftworkflowscheme OWNER TO {{postgresUser}};

--
-- Name: draftworkflowschemeentity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE draftworkflowschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    workflow character varying(255),
    issuetype character varying(255)
);


ALTER TABLE draftworkflowschemeentity OWNER TO {{postgresUser}};

--
-- Name: entity_property; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE entity_property (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    property_key character varying(255),
    created timestamp with time zone,
    updated timestamp with time zone,
    json_value text
);


ALTER TABLE entity_property OWNER TO {{postgresUser}};

--
-- Name: entity_property_index_document; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE entity_property_index_document (
    id numeric(18,0) NOT NULL,
    plugin_key character varying(255),
    module_key character varying(255),
    entity_key character varying(255),
    updated timestamp with time zone,
    document text
);


ALTER TABLE entity_property_index_document OWNER TO {{postgresUser}};

--
-- Name: entity_translation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE entity_translation (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    locale character varying(60),
    trans_name character varying(255),
    trans_desc character varying(255)
);


ALTER TABLE entity_translation OWNER TO {{postgresUser}};

--
-- Name: external_entities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE external_entities (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    entitytype character varying(255)
);


ALTER TABLE external_entities OWNER TO {{postgresUser}};

--
-- Name: externalgadget; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE externalgadget (
    id numeric(18,0) NOT NULL,
    gadget_xml text
);


ALTER TABLE externalgadget OWNER TO {{postgresUser}};

--
-- Name: favouriteassociations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE favouriteassociations (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    entitytype character varying(60),
    entityid numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE favouriteassociations OWNER TO {{postgresUser}};

--
-- Name: feature; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE feature (
    id numeric(18,0) NOT NULL,
    feature_name character varying(255),
    feature_type character varying(10),
    user_key character varying(255)
);


ALTER TABLE feature OWNER TO {{postgresUser}};

--
-- Name: fieldconfigscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fieldconfigscheme (
    id numeric(18,0) NOT NULL,
    configname character varying(255),
    description text,
    fieldid character varying(60),
    customfield numeric(18,0)
);


ALTER TABLE fieldconfigscheme OWNER TO {{postgresUser}};

--
-- Name: fieldconfigschemeissuetype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fieldconfigschemeissuetype (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    fieldconfigscheme numeric(18,0),
    fieldconfiguration numeric(18,0)
);


ALTER TABLE fieldconfigschemeissuetype OWNER TO {{postgresUser}};

--
-- Name: fieldconfiguration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fieldconfiguration (
    id numeric(18,0) NOT NULL,
    configname character varying(255),
    description text,
    fieldid character varying(60),
    customfield numeric(18,0)
);


ALTER TABLE fieldconfiguration OWNER TO {{postgresUser}};

--
-- Name: fieldlayout; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fieldlayout (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255),
    layout_type character varying(255),
    layoutscheme numeric(18,0)
);


ALTER TABLE fieldlayout OWNER TO {{postgresUser}};

--
-- Name: fieldlayoutitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fieldlayoutitem (
    id numeric(18,0) NOT NULL,
    fieldlayout numeric(18,0),
    fieldidentifier character varying(255),
    description text,
    verticalposition numeric(18,0),
    ishidden character varying(60),
    isrequired character varying(60),
    renderertype character varying(255)
);


ALTER TABLE fieldlayoutitem OWNER TO {{postgresUser}};

--
-- Name: fieldlayoutscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fieldlayoutscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE fieldlayoutscheme OWNER TO {{postgresUser}};

--
-- Name: fieldlayoutschemeassociation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fieldlayoutschemeassociation (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    project numeric(18,0),
    fieldlayoutscheme numeric(18,0)
);


ALTER TABLE fieldlayoutschemeassociation OWNER TO {{postgresUser}};

--
-- Name: fieldlayoutschemeentity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fieldlayoutschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    issuetype character varying(255),
    fieldlayout numeric(18,0)
);


ALTER TABLE fieldlayoutschemeentity OWNER TO {{postgresUser}};

--
-- Name: fieldscreen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fieldscreen (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE fieldscreen OWNER TO {{postgresUser}};

--
-- Name: fieldscreenlayoutitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fieldscreenlayoutitem (
    id numeric(18,0) NOT NULL,
    fieldidentifier character varying(255),
    sequence numeric(18,0),
    fieldscreentab numeric(18,0)
);


ALTER TABLE fieldscreenlayoutitem OWNER TO {{postgresUser}};

--
-- Name: fieldscreenscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fieldscreenscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE fieldscreenscheme OWNER TO {{postgresUser}};

--
-- Name: fieldscreenschemeitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fieldscreenschemeitem (
    id numeric(18,0) NOT NULL,
    operation numeric(18,0),
    fieldscreen numeric(18,0),
    fieldscreenscheme numeric(18,0)
);


ALTER TABLE fieldscreenschemeitem OWNER TO {{postgresUser}};

--
-- Name: fieldscreentab; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fieldscreentab (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255),
    sequence numeric(18,0),
    fieldscreen numeric(18,0)
);


ALTER TABLE fieldscreentab OWNER TO {{postgresUser}};

--
-- Name: fileattachment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fileattachment (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    mimetype character varying(255),
    filename character varying(255),
    created timestamp with time zone,
    filesize numeric(18,0),
    author character varying(255),
    zip numeric(9,0),
    thumbnailable numeric(9,0)
);


ALTER TABLE fileattachment OWNER TO {{postgresUser}};

--
-- Name: filtersubscription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE filtersubscription (
    id numeric(18,0) NOT NULL,
    filter_i_d numeric(18,0),
    username character varying(60),
    groupname character varying(60),
    last_run timestamp with time zone,
    email_on_empty character varying(10)
);


ALTER TABLE filtersubscription OWNER TO {{postgresUser}};

--
-- Name: gadgetuserpreference; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE gadgetuserpreference (
    id numeric(18,0) NOT NULL,
    portletconfiguration numeric(18,0),
    userprefkey character varying(255),
    userprefvalue text
);


ALTER TABLE gadgetuserpreference OWNER TO {{postgresUser}};

--
-- Name: genericconfiguration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE genericconfiguration (
    id numeric(18,0) NOT NULL,
    datatype character varying(60),
    datakey character varying(60),
    xmlvalue text
);


ALTER TABLE genericconfiguration OWNER TO {{postgresUser}};

--
-- Name: globalpermissionentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE globalpermissionentry (
    id numeric(18,0) NOT NULL,
    permission character varying(255),
    group_id character varying(255)
);


ALTER TABLE globalpermissionentry OWNER TO {{postgresUser}};

--
-- Name: groupbase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE groupbase (
    id numeric(18,0) NOT NULL,
    groupname character varying(255)
);


ALTER TABLE groupbase OWNER TO {{postgresUser}};

--
-- Name: issuelink; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE issuelink (
    id numeric(18,0) NOT NULL,
    linktype numeric(18,0),
    source numeric(18,0),
    destination numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE issuelink OWNER TO {{postgresUser}};

--
-- Name: issuelinktype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE issuelinktype (
    id numeric(18,0) NOT NULL,
    linkname character varying(255),
    inward character varying(255),
    outward character varying(255),
    pstyle character varying(60)
);


ALTER TABLE issuelinktype OWNER TO {{postgresUser}};

--
-- Name: issuesecurityscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE issuesecurityscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    defaultlevel numeric(18,0)
);


ALTER TABLE issuesecurityscheme OWNER TO {{postgresUser}};

--
-- Name: issuestatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE issuestatus (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255),
    statuscategory numeric(18,0)
);


ALTER TABLE issuestatus OWNER TO {{postgresUser}};

--
-- Name: issuetype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE issuetype (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    pstyle character varying(60),
    description text,
    iconurl character varying(255),
    avatar numeric(18,0)
);


ALTER TABLE issuetype OWNER TO {{postgresUser}};

--
-- Name: issuetypescreenscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE issuetypescreenscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE issuetypescreenscheme OWNER TO {{postgresUser}};

--
-- Name: issuetypescreenschemeentity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE issuetypescreenschemeentity (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    scheme numeric(18,0),
    fieldscreenscheme numeric(18,0)
);


ALTER TABLE issuetypescreenschemeentity OWNER TO {{postgresUser}};

--
-- Name: jiraaction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jiraaction (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    actiontype character varying(255),
    actionlevel character varying(255),
    rolelevel numeric(18,0),
    actionbody text,
    created timestamp with time zone,
    updateauthor character varying(255),
    updated timestamp with time zone,
    actionnum numeric(18,0)
);


ALTER TABLE jiraaction OWNER TO {{postgresUser}};

--
-- Name: jiradraftworkflows; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jiradraftworkflows (
    id numeric(18,0) NOT NULL,
    parentname character varying(255),
    descriptor text
);


ALTER TABLE jiradraftworkflows OWNER TO {{postgresUser}};

--
-- Name: jiraeventtype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jiraeventtype (
    id numeric(18,0) NOT NULL,
    template_id numeric(18,0),
    name character varying(255),
    description text,
    event_type character varying(60)
);


ALTER TABLE jiraeventtype OWNER TO {{postgresUser}};

--
-- Name: jiraissue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jiraissue (
    id numeric(18,0) NOT NULL,
    pkey character varying(255),
    issuenum numeric(18,0),
    project numeric(18,0),
    reporter character varying(255),
    assignee character varying(255),
    creator character varying(255),
    issuetype character varying(255),
    summary character varying(255),
    description text,
    environment text,
    priority character varying(255),
    resolution character varying(255),
    issuestatus character varying(255),
    created timestamp with time zone,
    updated timestamp with time zone,
    duedate timestamp with time zone,
    resolutiondate timestamp with time zone,
    votes numeric(18,0),
    watches numeric(18,0),
    timeoriginalestimate numeric(18,0),
    timeestimate numeric(18,0),
    timespent numeric(18,0),
    workflow_id numeric(18,0),
    security numeric(18,0),
    fixfor numeric(18,0),
    component numeric(18,0)
);


ALTER TABLE jiraissue OWNER TO {{postgresUser}};

--
-- Name: jiraperms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jiraperms (
    id numeric(18,0) NOT NULL,
    permtype numeric(18,0),
    projectid numeric(18,0),
    groupname character varying(255)
);


ALTER TABLE jiraperms OWNER TO {{postgresUser}};

--
-- Name: jiraworkflows; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jiraworkflows (
    id numeric(18,0) NOT NULL,
    workflowname character varying(255),
    creatorname character varying(255),
    descriptor text,
    islocked character varying(60)
);


ALTER TABLE jiraworkflows OWNER TO {{postgresUser}};

--
-- Name: jiraworkflowstatuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jiraworkflowstatuses (
    id numeric(18,0) NOT NULL,
    status character varying(255),
    parentname character varying(255)
);


ALTER TABLE jiraworkflowstatuses OWNER TO {{postgresUser}};

--
-- Name: jquartz_blob_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jquartz_blob_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    blob_data bytea
);


ALTER TABLE jquartz_blob_triggers OWNER TO {{postgresUser}};

--
-- Name: jquartz_calendars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jquartz_calendars (
    sched_name character varying(120),
    calendar_name character varying(200) NOT NULL,
    calendar bytea
);


ALTER TABLE jquartz_calendars OWNER TO {{postgresUser}};

--
-- Name: jquartz_cron_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jquartz_cron_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    cron_expression character varying(120),
    time_zone_id character varying(80)
);


ALTER TABLE jquartz_cron_triggers OWNER TO {{postgresUser}};

--
-- Name: jquartz_fired_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jquartz_fired_triggers (
    sched_name character varying(120),
    entry_id character varying(95) NOT NULL,
    trigger_name character varying(200),
    trigger_group character varying(200),
    is_volatile boolean,
    instance_name character varying(200),
    fired_time numeric(18,0),
    sched_time numeric(18,0),
    priority numeric(9,0),
    state character varying(16),
    job_name character varying(200),
    job_group character varying(200),
    is_stateful boolean,
    is_nonconcurrent boolean,
    is_update_data boolean,
    requests_recovery boolean
);


ALTER TABLE jquartz_fired_triggers OWNER TO {{postgresUser}};

--
-- Name: jquartz_job_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jquartz_job_details (
    sched_name character varying(120),
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    description character varying(250),
    job_class_name character varying(250),
    is_durable boolean,
    is_volatile boolean,
    is_stateful boolean,
    is_nonconcurrent boolean,
    is_update_data boolean,
    requests_recovery boolean,
    job_data bytea
);


ALTER TABLE jquartz_job_details OWNER TO {{postgresUser}};

--
-- Name: jquartz_job_listeners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jquartz_job_listeners (
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    job_listener character varying(200) NOT NULL
);


ALTER TABLE jquartz_job_listeners OWNER TO {{postgresUser}};

--
-- Name: jquartz_locks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jquartz_locks (
    sched_name character varying(120),
    lock_name character varying(40) NOT NULL
);


ALTER TABLE jquartz_locks OWNER TO {{postgresUser}};

--
-- Name: jquartz_paused_trigger_grps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jquartz_paused_trigger_grps (
    sched_name character varying(120),
    trigger_group character varying(200) NOT NULL
);


ALTER TABLE jquartz_paused_trigger_grps OWNER TO {{postgresUser}};

--
-- Name: jquartz_scheduler_state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jquartz_scheduler_state (
    sched_name character varying(120),
    instance_name character varying(200) NOT NULL,
    last_checkin_time numeric(18,0),
    checkin_interval numeric(18,0)
);


ALTER TABLE jquartz_scheduler_state OWNER TO {{postgresUser}};

--
-- Name: jquartz_simple_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jquartz_simple_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    repeat_count numeric(18,0),
    repeat_interval numeric(18,0),
    times_triggered numeric(18,0)
);


ALTER TABLE jquartz_simple_triggers OWNER TO {{postgresUser}};

--
-- Name: jquartz_simprop_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jquartz_simprop_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    str_prop_1 character varying(512),
    str_prop_2 character varying(512),
    str_prop_3 character varying(512),
    int_prop_1 numeric(9,0),
    int_prop_2 numeric(9,0),
    long_prop_1 numeric(18,0),
    long_prop_2 numeric(18,0),
    dec_prop_1 numeric(13,4),
    dec_prop_2 numeric(13,4),
    bool_prop_1 boolean,
    bool_prop_2 boolean
);


ALTER TABLE jquartz_simprop_triggers OWNER TO {{postgresUser}};

--
-- Name: jquartz_trigger_listeners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jquartz_trigger_listeners (
    trigger_name character varying(200),
    trigger_group character varying(200) NOT NULL,
    trigger_listener character varying(200) NOT NULL
);


ALTER TABLE jquartz_trigger_listeners OWNER TO {{postgresUser}};

--
-- Name: jquartz_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jquartz_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    job_name character varying(200),
    job_group character varying(200),
    is_volatile boolean,
    description character varying(250),
    next_fire_time numeric(18,0),
    prev_fire_time numeric(18,0),
    priority numeric(9,0),
    trigger_state character varying(16),
    trigger_type character varying(8),
    start_time numeric(18,0),
    end_time numeric(18,0),
    calendar_name character varying(200),
    misfire_instr numeric(4,0),
    job_data bytea
);


ALTER TABLE jquartz_triggers OWNER TO {{postgresUser}};

--
-- Name: label; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE label (
    id numeric(18,0) NOT NULL,
    fieldid numeric(18,0),
    issue numeric(18,0),
    label character varying(255)
);


ALTER TABLE label OWNER TO {{postgresUser}};

--
-- Name: licenserolesdefault; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE licenserolesdefault (
    id numeric(18,0) NOT NULL,
    license_role_name character varying(255)
);


ALTER TABLE licenserolesdefault OWNER TO {{postgresUser}};

--
-- Name: licenserolesgroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE licenserolesgroup (
    id numeric(18,0) NOT NULL,
    license_role_name character varying(255),
    group_id character varying(255),
    primary_group character(1)
);


ALTER TABLE licenserolesgroup OWNER TO {{postgresUser}};

--
-- Name: listenerconfig; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE listenerconfig (
    id numeric(18,0) NOT NULL,
    clazz character varying(255),
    listenername character varying(255)
);


ALTER TABLE listenerconfig OWNER TO {{postgresUser}};

--
-- Name: mailserver; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE mailserver (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    mailfrom character varying(255),
    prefix character varying(60),
    smtp_port character varying(60),
    protocol character varying(60),
    server_type character varying(60),
    servername character varying(255),
    jndilocation character varying(255),
    mailusername character varying(255),
    mailpassword character varying(255),
    istlsrequired character varying(60),
    timeout numeric(18,0),
    socks_port character varying(60),
    socks_host character varying(60)
);


ALTER TABLE mailserver OWNER TO {{postgresUser}};

--
-- Name: managedconfigurationitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE managedconfigurationitem (
    id numeric(18,0) NOT NULL,
    item_id character varying(255),
    item_type character varying(255),
    managed character varying(10),
    access_level character varying(255),
    source character varying(255),
    description_key character varying(255)
);


ALTER TABLE managedconfigurationitem OWNER TO {{postgresUser}};

--
-- Name: membershipbase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE membershipbase (
    id numeric(18,0) NOT NULL,
    user_name character varying(255),
    group_name character varying(255)
);


ALTER TABLE membershipbase OWNER TO {{postgresUser}};

--
-- Name: moved_issue_key; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE moved_issue_key (
    id numeric(18,0) NOT NULL,
    old_issue_key character varying(255),
    issue_id numeric(18,0)
);


ALTER TABLE moved_issue_key OWNER TO {{postgresUser}};

--
-- Name: nodeassociation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE nodeassociation (
    source_node_id numeric(18,0) NOT NULL,
    source_node_entity character varying(60) NOT NULL,
    sink_node_id numeric(18,0) NOT NULL,
    sink_node_entity character varying(60) NOT NULL,
    association_type character varying(60) NOT NULL,
    sequence numeric(9,0)
);


ALTER TABLE nodeassociation OWNER TO {{postgresUser}};

--
-- Name: nodeindexcounter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE nodeindexcounter (
    id numeric(18,0) NOT NULL,
    node_id character varying(60),
    sending_node_id character varying(60),
    index_operation_id numeric(18,0)
);


ALTER TABLE nodeindexcounter OWNER TO {{postgresUser}};

--
-- Name: notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE notification (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    event character varying(60),
    event_type_id numeric(18,0),
    template_id numeric(18,0),
    notif_type character varying(60),
    notif_parameter character varying(60)
);


ALTER TABLE notification OWNER TO {{postgresUser}};

--
-- Name: notificationinstance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE notificationinstance (
    id numeric(18,0) NOT NULL,
    notificationtype character varying(60),
    source numeric(18,0),
    emailaddress character varying(255),
    messageid character varying(255)
);


ALTER TABLE notificationinstance OWNER TO {{postgresUser}};

--
-- Name: notificationscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE notificationscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE notificationscheme OWNER TO {{postgresUser}};

--
-- Name: oauthconsumer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE oauthconsumer (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    consumername character varying(255),
    consumer_key character varying(255),
    consumerservice character varying(255),
    public_key text,
    private_key text,
    description text,
    callback text,
    signature_method character varying(60),
    shared_secret text
);


ALTER TABLE oauthconsumer OWNER TO {{postgresUser}};

--
-- Name: oauthconsumertoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE oauthconsumertoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token_key character varying(255),
    token character varying(255),
    token_secret character varying(255),
    token_type character varying(60),
    consumer_key character varying(255)
);


ALTER TABLE oauthconsumertoken OWNER TO {{postgresUser}};

--
-- Name: oauthspconsumer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE oauthspconsumer (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    consumer_key character varying(255),
    consumername character varying(255),
    public_key text,
    description text,
    callback text,
    two_l_o_allowed character varying(60),
    executing_two_l_o_user character varying(255),
    two_l_o_impersonation_allowed character varying(60),
    three_l_o_allowed character varying(60)
);


ALTER TABLE oauthspconsumer OWNER TO {{postgresUser}};

--
-- Name: oauthsptoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE oauthsptoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token character varying(255),
    token_secret character varying(255),
    token_type character varying(60),
    consumer_key character varying(255),
    username character varying(255),
    ttl numeric(18,0),
    spauth character varying(60),
    callback text,
    spverifier character varying(255),
    spversion character varying(60),
    session_handle character varying(255),
    session_creation_time timestamp with time zone,
    session_last_renewal_time timestamp with time zone,
    session_time_to_live timestamp with time zone
);


ALTER TABLE oauthsptoken OWNER TO {{postgresUser}};

--
-- Name: optionconfiguration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE optionconfiguration (
    id numeric(18,0) NOT NULL,
    fieldid character varying(60),
    optionid character varying(60),
    fieldconfig numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE optionconfiguration OWNER TO {{postgresUser}};

--
-- Name: os_currentstep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE os_currentstep (
    id numeric(18,0) NOT NULL,
    entry_id numeric(18,0),
    step_id numeric(9,0),
    action_id numeric(9,0),
    owner character varying(60),
    start_date timestamp with time zone,
    due_date timestamp with time zone,
    finish_date timestamp with time zone,
    status character varying(60),
    caller character varying(60)
);


ALTER TABLE os_currentstep OWNER TO {{postgresUser}};

--
-- Name: os_currentstep_prev; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE os_currentstep_prev (
    id numeric(18,0) NOT NULL,
    previous_id numeric(18,0) NOT NULL
);


ALTER TABLE os_currentstep_prev OWNER TO {{postgresUser}};

--
-- Name: os_historystep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE os_historystep (
    id numeric(18,0) NOT NULL,
    entry_id numeric(18,0),
    step_id numeric(9,0),
    action_id numeric(9,0),
    owner character varying(60),
    start_date timestamp with time zone,
    due_date timestamp with time zone,
    finish_date timestamp with time zone,
    status character varying(60),
    caller character varying(60)
);


ALTER TABLE os_historystep OWNER TO {{postgresUser}};

--
-- Name: os_historystep_prev; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE os_historystep_prev (
    id numeric(18,0) NOT NULL,
    previous_id numeric(18,0) NOT NULL
);


ALTER TABLE os_historystep_prev OWNER TO {{postgresUser}};

--
-- Name: os_wfentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE os_wfentry (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    initialized numeric(9,0),
    state numeric(9,0)
);


ALTER TABLE os_wfentry OWNER TO {{postgresUser}};

--
-- Name: permissionscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE permissionscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE permissionscheme OWNER TO {{postgresUser}};

--
-- Name: pluginstate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pluginstate (
    pluginkey character varying(255) NOT NULL,
    pluginenabled character varying(60)
);


ALTER TABLE pluginstate OWNER TO {{postgresUser}};

--
-- Name: pluginversion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pluginversion (
    id numeric(18,0) NOT NULL,
    pluginname character varying(255),
    pluginkey character varying(255),
    pluginversion character varying(255),
    created timestamp with time zone
);


ALTER TABLE pluginversion OWNER TO {{postgresUser}};

--
-- Name: portalpage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE portalpage (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    pagename character varying(255),
    description character varying(255),
    sequence numeric(18,0),
    fav_count numeric(18,0),
    layout character varying(255),
    ppversion numeric(18,0)
);


ALTER TABLE portalpage OWNER TO {{postgresUser}};

--
-- Name: portletconfiguration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE portletconfiguration (
    id numeric(18,0) NOT NULL,
    portalpage numeric(18,0),
    portlet_id character varying(255),
    column_number numeric(9,0),
    positionseq numeric(9,0),
    gadget_xml text,
    color character varying(255),
    dashboard_module_complete_key text
);


ALTER TABLE portletconfiguration OWNER TO {{postgresUser}};

--
-- Name: priority; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE priority (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255),
    status_color character varying(60)
);


ALTER TABLE priority OWNER TO {{postgresUser}};

--
-- Name: productlicense; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE productlicense (
    id numeric(18,0) NOT NULL,
    license text
);


ALTER TABLE productlicense OWNER TO {{postgresUser}};

--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE project (
    id numeric(18,0) NOT NULL,
    pname character varying(255),
    url character varying(255),
    lead character varying(255),
    description text,
    pkey character varying(255),
    pcounter numeric(18,0),
    assigneetype numeric(18,0),
    avatar numeric(18,0),
    originalkey character varying(255),
    projecttype character varying(255)
);


ALTER TABLE project OWNER TO {{postgresUser}};

--
-- Name: project_key; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE project_key (
    id numeric(18,0) NOT NULL,
    project_id numeric(18,0),
    project_key character varying(255)
);


ALTER TABLE project_key OWNER TO {{postgresUser}};

--
-- Name: projectcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE projectcategory (
    id numeric(18,0) NOT NULL,
    cname character varying(255),
    description text
);


ALTER TABLE projectcategory OWNER TO {{postgresUser}};

--
-- Name: projectchangedtime; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE projectchangedtime (
    project_id numeric(18,0) NOT NULL,
    issue_changed_time timestamp with time zone
);


ALTER TABLE projectchangedtime OWNER TO {{postgresUser}};

--
-- Name: projectrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE projectrole (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE projectrole OWNER TO {{postgresUser}};

--
-- Name: projectroleactor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE projectroleactor (
    id numeric(18,0) NOT NULL,
    pid numeric(18,0),
    projectroleid numeric(18,0),
    roletype character varying(255),
    roletypeparameter character varying(255)
);


ALTER TABLE projectroleactor OWNER TO {{postgresUser}};

--
-- Name: projectversion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE projectversion (
    id numeric(18,0) NOT NULL,
    project numeric(18,0),
    vname character varying(255),
    description text,
    sequence numeric(18,0),
    released character varying(10),
    archived character varying(10),
    url character varying(255),
    startdate timestamp with time zone,
    releasedate timestamp with time zone
);


ALTER TABLE projectversion OWNER TO {{postgresUser}};

--
-- Name: propertydata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE propertydata (
    id numeric(18,0) NOT NULL,
    propertyvalue oid
);


ALTER TABLE propertydata OWNER TO {{postgresUser}};

--
-- Name: propertydate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE propertydate (
    id numeric(18,0) NOT NULL,
    propertyvalue timestamp with time zone
);


ALTER TABLE propertydate OWNER TO {{postgresUser}};

--
-- Name: propertydecimal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE propertydecimal (
    id numeric(18,0) NOT NULL,
    propertyvalue double precision
);


ALTER TABLE propertydecimal OWNER TO {{postgresUser}};

--
-- Name: propertyentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE propertyentry (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    property_key character varying(255),
    propertytype numeric(9,0)
);


ALTER TABLE propertyentry OWNER TO {{postgresUser}};

--
-- Name: propertynumber; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE propertynumber (
    id numeric(18,0) NOT NULL,
    propertyvalue numeric(18,0)
);


ALTER TABLE propertynumber OWNER TO {{postgresUser}};

--
-- Name: propertystring; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE propertystring (
    id numeric(18,0) NOT NULL,
    propertyvalue text
);


ALTER TABLE propertystring OWNER TO {{postgresUser}};

--
-- Name: propertytext; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE propertytext (
    id numeric(18,0) NOT NULL,
    propertyvalue text
);


ALTER TABLE propertytext OWNER TO {{postgresUser}};

--
-- Name: qrtz_calendars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE qrtz_calendars (
    id numeric(18,0),
    calendar_name character varying(255) NOT NULL,
    calendar text
);


ALTER TABLE qrtz_calendars OWNER TO {{postgresUser}};

--
-- Name: qrtz_cron_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE qrtz_cron_triggers (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    cronexperssion character varying(255)
);


ALTER TABLE qrtz_cron_triggers OWNER TO {{postgresUser}};

--
-- Name: qrtz_fired_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE qrtz_fired_triggers (
    id numeric(18,0),
    entry_id character varying(255) NOT NULL,
    trigger_id numeric(18,0),
    trigger_listener character varying(255),
    fired_time timestamp with time zone,
    trigger_state character varying(255)
);


ALTER TABLE qrtz_fired_triggers OWNER TO {{postgresUser}};

--
-- Name: qrtz_job_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE qrtz_job_details (
    id numeric(18,0) NOT NULL,
    job_name character varying(255),
    job_group character varying(255),
    class_name character varying(255),
    is_durable character varying(60),
    is_stateful character varying(60),
    requests_recovery character varying(60),
    job_data character varying(255)
);


ALTER TABLE qrtz_job_details OWNER TO {{postgresUser}};

--
-- Name: qrtz_job_listeners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE qrtz_job_listeners (
    id numeric(18,0) NOT NULL,
    job numeric(18,0),
    job_listener character varying(255)
);


ALTER TABLE qrtz_job_listeners OWNER TO {{postgresUser}};

--
-- Name: qrtz_simple_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE qrtz_simple_triggers (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    repeat_count numeric(9,0),
    repeat_interval numeric(18,0),
    times_triggered numeric(9,0)
);


ALTER TABLE qrtz_simple_triggers OWNER TO {{postgresUser}};

--
-- Name: qrtz_trigger_listeners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE qrtz_trigger_listeners (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    trigger_listener character varying(255)
);


ALTER TABLE qrtz_trigger_listeners OWNER TO {{postgresUser}};

--
-- Name: qrtz_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE qrtz_triggers (
    id numeric(18,0) NOT NULL,
    trigger_name character varying(255),
    trigger_group character varying(255),
    job numeric(18,0),
    next_fire timestamp with time zone,
    trigger_state character varying(255),
    trigger_type character varying(60),
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    calendar_name character varying(255),
    misfire_instr numeric(9,0)
);


ALTER TABLE qrtz_triggers OWNER TO {{postgresUser}};

--
-- Name: reindex_component; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reindex_component (
    id numeric(18,0) NOT NULL,
    request_id numeric(18,0),
    affected_index character varying(60),
    entity_type character varying(60)
);


ALTER TABLE reindex_component OWNER TO {{postgresUser}};

--
-- Name: reindex_request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reindex_request (
    id numeric(18,0) NOT NULL,
    type character varying(60),
    request_time timestamp with time zone,
    start_time timestamp with time zone,
    completion_time timestamp with time zone,
    status character varying(60),
    execution_node_id character varying(60),
    query text
);


ALTER TABLE reindex_request OWNER TO {{postgresUser}};

--
-- Name: remembermetoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE remembermetoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token character varying(255),
    username character varying(255)
);


ALTER TABLE remembermetoken OWNER TO {{postgresUser}};

--
-- Name: remotelink; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE remotelink (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    globalid character varying(255),
    title character varying(255),
    summary text,
    url text,
    iconurl text,
    icontitle text,
    relationship character varying(255),
    resolved character(1),
    statusname character varying(255),
    statusdescription text,
    statusiconurl text,
    statusicontitle text,
    statusiconlink text,
    statuscategorykey character varying(255),
    statuscategorycolorname character varying(255),
    applicationtype character varying(255),
    applicationname character varying(255)
);


ALTER TABLE remotelink OWNER TO {{postgresUser}};

--
-- Name: replicatedindexoperation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE replicatedindexoperation (
    id numeric(18,0) NOT NULL,
    index_time timestamp with time zone,
    node_id character varying(60),
    affected_index character varying(60),
    entity_type character varying(60),
    affected_ids text,
    operation character varying(60),
    filename character varying(255)
);


ALTER TABLE replicatedindexoperation OWNER TO {{postgresUser}};

--
-- Name: resolution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE resolution (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255)
);


ALTER TABLE resolution OWNER TO {{postgresUser}};

--
-- Name: rundetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE rundetails (
    id numeric(18,0) NOT NULL,
    job_id character varying(255),
    start_time timestamp with time zone,
    run_duration numeric(18,0),
    run_outcome character(1),
    info_message character varying(255)
);


ALTER TABLE rundetails OWNER TO {{postgresUser}};

--
-- Name: schemeissuesecurities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE schemeissuesecurities (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    security numeric(18,0),
    sec_type character varying(255),
    sec_parameter character varying(255)
);


ALTER TABLE schemeissuesecurities OWNER TO {{postgresUser}};

--
-- Name: schemeissuesecuritylevels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE schemeissuesecuritylevels (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    scheme numeric(18,0)
);


ALTER TABLE schemeissuesecuritylevels OWNER TO {{postgresUser}};

--
-- Name: schemepermissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE schemepermissions (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    permission numeric(18,0),
    perm_type character varying(255),
    perm_parameter character varying(255),
    permission_key character varying(255)
);


ALTER TABLE schemepermissions OWNER TO {{postgresUser}};

--
-- Name: searchrequest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE searchrequest (
    id numeric(18,0) NOT NULL,
    filtername character varying(255),
    authorname character varying(255),
    description text,
    username character varying(255),
    groupname character varying(255),
    projectid numeric(18,0),
    reqcontent text,
    fav_count numeric(18,0),
    filtername_lower character varying(255)
);


ALTER TABLE searchrequest OWNER TO {{postgresUser}};

--
-- Name: sequence_value_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sequence_value_item (
    seq_name character varying(60) NOT NULL,
    seq_id numeric(18,0)
);


ALTER TABLE sequence_value_item OWNER TO {{postgresUser}};

--
-- Name: serviceconfig; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE serviceconfig (
    id numeric(18,0) NOT NULL,
    delaytime numeric(18,0),
    clazz character varying(255),
    servicename character varying(255),
    cron_expression character varying(255)
);


ALTER TABLE serviceconfig OWNER TO {{postgresUser}};

--
-- Name: sharepermissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sharepermissions (
    id numeric(18,0) NOT NULL,
    entityid numeric(18,0),
    entitytype character varying(60),
    sharetype character varying(10),
    param1 character varying(255),
    param2 character varying(60)
);


ALTER TABLE sharepermissions OWNER TO {{postgresUser}};

--
-- Name: tempattachmentsmonitor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tempattachmentsmonitor (
    temporary_attachment_id character varying(255) NOT NULL,
    form_token character varying(255),
    file_name character varying(255),
    content_type character varying(255),
    file_size numeric(18,0),
    created_time numeric(18,0)
);


ALTER TABLE tempattachmentsmonitor OWNER TO {{postgresUser}};

--
-- Name: trackback_ping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE trackback_ping (
    id numeric(18,0) NOT NULL,
    issue numeric(18,0),
    url character varying(255),
    title character varying(255),
    blogname character varying(255),
    excerpt character varying(255),
    created timestamp with time zone
);


ALTER TABLE trackback_ping OWNER TO {{postgresUser}};

--
-- Name: trustedapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE trustedapp (
    id numeric(18,0) NOT NULL,
    application_id character varying(255),
    name character varying(255),
    public_key text,
    ip_match text,
    url_match text,
    timeout numeric(18,0),
    created timestamp with time zone,
    created_by character varying(255),
    updated timestamp with time zone,
    updated_by character varying(255)
);


ALTER TABLE trustedapp OWNER TO {{postgresUser}};

--
-- Name: upgradehistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE upgradehistory (
    id numeric(18,0),
    upgradeclass character varying(255) NOT NULL,
    targetbuild character varying(255),
    status character varying(255),
    downgradetaskrequired character(1)
);


ALTER TABLE upgradehistory OWNER TO {{postgresUser}};

--
-- Name: upgradeversionhistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE upgradeversionhistory (
    id numeric(18,0),
    timeperformed timestamp with time zone,
    targetbuild character varying(255) NOT NULL,
    targetversion character varying(255)
);


ALTER TABLE upgradeversionhistory OWNER TO {{postgresUser}};

--
-- Name: userassociation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE userassociation (
    source_name character varying(60) NOT NULL,
    sink_node_id numeric(18,0) NOT NULL,
    sink_node_entity character varying(60) NOT NULL,
    association_type character varying(60) NOT NULL,
    sequence numeric(9,0),
    created timestamp with time zone
);


ALTER TABLE userassociation OWNER TO {{postgresUser}};

--
-- Name: userbase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE userbase (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    password_hash character varying(255)
);


ALTER TABLE userbase OWNER TO {{postgresUser}};

--
-- Name: userhistoryitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE userhistoryitem (
    id numeric(18,0) NOT NULL,
    entitytype character varying(10),
    entityid character varying(60),
    username character varying(255),
    lastviewed numeric(18,0),
    data text
);


ALTER TABLE userhistoryitem OWNER TO {{postgresUser}};

--
-- Name: userpickerfilter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE userpickerfilter (
    id numeric(18,0) NOT NULL,
    customfield numeric(18,0),
    customfieldconfig numeric(18,0),
    enabled character varying(60)
);


ALTER TABLE userpickerfilter OWNER TO {{postgresUser}};

--
-- Name: userpickerfiltergroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE userpickerfiltergroup (
    id numeric(18,0) NOT NULL,
    userpickerfilter numeric(18,0),
    groupname character varying(255)
);


ALTER TABLE userpickerfiltergroup OWNER TO {{postgresUser}};

--
-- Name: userpickerfilterrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE userpickerfilterrole (
    id numeric(18,0) NOT NULL,
    userpickerfilter numeric(18,0),
    projectroleid numeric(18,0)
);


ALTER TABLE userpickerfilterrole OWNER TO {{postgresUser}};

--
-- Name: versioncontrol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE versioncontrol (
    id numeric(18,0) NOT NULL,
    vcsname character varying(255),
    vcsdescription character varying(255),
    vcstype character varying(255)
);


ALTER TABLE versioncontrol OWNER TO {{postgresUser}};

--
-- Name: votehistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE votehistory (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    votes numeric(18,0),
    "timestamp" timestamp with time zone
);


ALTER TABLE votehistory OWNER TO {{postgresUser}};

--
-- Name: workflowscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE workflowscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE workflowscheme OWNER TO {{postgresUser}};

--
-- Name: workflowschemeentity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE workflowschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    workflow character varying(255),
    issuetype character varying(255)
);


ALTER TABLE workflowschemeentity OWNER TO {{postgresUser}};

--
-- Name: worklog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE worklog (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    grouplevel character varying(255),
    rolelevel numeric(18,0),
    worklogbody text,
    created timestamp with time zone,
    updateauthor character varying(255),
    updated timestamp with time zone,
    startdate timestamp with time zone,
    timeworked numeric(18,0)
);


ALTER TABLE worklog OWNER TO {{postgresUser}};

--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_21D670_WHITELIST_RULES" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_21D670_WHITELIST_RULES_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_38321B_CUSTOM_CONTENT_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_3B1893_LOOP_DETECTION" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_3B1893_LOOP_DETECTION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_4AEACD_WEBHOOK_DAO" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_4AEACD_WEBHOOK_DAO_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_550953_SHORTCUT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_550953_SHORTCUT_ID_seq"'::regclass);


--
-- Name: ACTIVITY_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY" ALTER COLUMN "ACTIVITY_ID" SET DEFAULT nextval('"AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_ACTOR_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_563AEE_ACTOR_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_MEDIA_LINK_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_OBJECT_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_563AEE_OBJECT_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_TARGET_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_563AEE_TARGET_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_575BF5_PROCESSED_COMMITS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_575BF5_PROCESSED_COMMITS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_575BF5_PROVIDER_ISSUE" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_575BF5_PROVIDER_ISSUE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_587B34_PROJECT_CONFIG" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_587B34_PROJECT_CONFIG_ID_seq"'::regclass);


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

ALTER TABLE ONLY "AO_60DB71_AUDITENTRY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_AUDITENTRY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_BOARDADMINS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_BOARDADMINS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_CARDCOLOR" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_CARDCOLOR_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_CARDLAYOUT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_CARDLAYOUT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_COLUMN" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_COLUMN_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_COLUMNSTATUS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_COLUMNSTATUS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_DETAILVIEWFIELD" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_DETAILVIEWFIELD_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_ESTIMATESTATISTIC" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_ESTIMATESTATISTIC_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_ISSUERANKING" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_ISSUERANKING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_ISSUERANKINGLOG" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_ISSUERANKINGLOG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_LEXORANK" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_LEXORANK_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_LEXORANKBALANCER" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_LEXORANKBALANCER_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_NONWORKINGDAY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_NONWORKINGDAY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_QUICKFILTER" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_QUICKFILTER_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_RANKABLEOBJECT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_RANKABLEOBJECT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_RAPIDVIEW" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_RAPIDVIEW_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_SPRINT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_SPRINT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_STATSFIELD" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_STATSFIELD_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_SUBQUERY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_SUBQUERY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_SWIMLANE" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_SWIMLANE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_TRACKINGSTATISTIC" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_TRACKINGSTATISTIC_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_VERSION" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_VERSION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_WORKINGDAYS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_60DB71_WORKINGDAYS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_88263F_HEALTH_CHECK_STATUS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_88263F_HEALTH_CHECK_STATUS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_88263F_PROPERTIES" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_88263F_PROPERTIES_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_88263F_READ_NOTIFICATIONS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_88263F_READ_NOTIFICATIONS_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_97EDAB_USERINVITATION" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_97EDAB_USERINVITATION_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_A0B856_WEB_HOOK_LISTENER_AO" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_A44657_HEALTH_CHECK_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_A44657_HEALTH_CHECK_ENTITY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_B9A0F0_APPLIED_TEMPLATE" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_CFF990_AOTRANSITION_FAILURE" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_CFF990_AOTRANSITION_FAILURE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_BRANCH" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_BRANCH_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_BRANCH_HEAD_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_CHANGESET_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_CHANGESET_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_COMMIT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_COMMIT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_GIT_HUB_EVENT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_GIT_HUB_EVENT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_ISSUE_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_MAPPING_V2" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_TO_BRANCH" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_TO_CHANGESET" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_MESSAGE_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE_QUEUE_ITEM" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE_TAG" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_MESSAGE_TAG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_ORGANIZATION_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PROJECT_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_PROJECT_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PROJECT_MAPPING_V2" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PR_ISSUE_KEY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_PR_ISSUE_KEY_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PR_PARTICIPANT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_PR_PARTICIPANT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PR_TO_COMMIT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_PR_TO_COMMIT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PULL_REQUEST" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_PULL_REQUEST_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_REPOSITORY_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_REPOSITORY_MAPPING_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_REPO_TO_CHANGESET" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_REPO_TO_CHANGESET_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_REPO_TO_PROJECT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_REPO_TO_PROJECT_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_SYNC_AUDIT_LOG" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq"'::regclass);


--
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_SYNC_EVENT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_E8B6CC_SYNC_EVENT_ID_seq"'::regclass);


--
-- Data for Name: AO_21D670_WHITELIST_RULES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_21D670_WHITELIST_RULES" ("ALLOWINBOUND", "EXPRESSION", "ID", "TYPE") FROM stdin;
f	http://www.atlassian.com/*	1	WILDCARD_EXPRESSION
f	00668a2a-a381-3e0f-9b83-65011fdbc0c7	2	APPLICATION_LINK
\.


--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_21D670_WHITELIST_RULES_ID_seq"', 2, true);


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
-- Data for Name: AO_3B1893_LOOP_DETECTION; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_3B1893_LOOP_DETECTION" ("COUNTER", "EXPIRES_AT", "ID", "SENDER_EMAIL") FROM stdin;
\.


--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_3B1893_LOOP_DETECTION_ID_seq"', 1, false);


--
-- Data for Name: AO_4AEACD_WEBHOOK_DAO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_4AEACD_WEBHOOK_DAO" ("ENABLED", "ENCODED_EVENTS", "FILTER", "ID", "JQL", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "REGISTRATION_METHOD", "URL", "EXCLUDE_ISSUE_DETAILS", "PARAMETERS") FROM stdin;
\.


--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_4AEACD_WEBHOOK_DAO_ID_seq"', 1, false);


--
-- Data for Name: AO_550953_SHORTCUT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_550953_SHORTCUT" ("ID", "NAME", "PROJECT_ID", "SHORTCUT_URL", "URL", "ICON") FROM stdin;
\.


--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_550953_SHORTCUT_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_563AEE_ACTIVITY_ENTITY" ("ACTIVITY_ID", "ACTOR_ID", "CONTENT", "GENERATOR_DISPLAY_NAME", "GENERATOR_ID", "ICON_ID", "ID", "ISSUE_KEY", "OBJECT_ID", "POSTER", "PROJECT_KEY", "PUBLISHED", "TARGET_ID", "TITLE", "URL", "USERNAME", "VERB") FROM stdin;
\.


--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_563AEE_ACTOR_ENTITY" ("FULL_NAME", "ID", "PROFILE_PAGE_URI", "PROFILE_PICTURE_URI", "USERNAME") FROM stdin;
\.


--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_563AEE_ACTOR_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_563AEE_MEDIA_LINK_ENTITY" ("DURATION", "HEIGHT", "ID", "URL", "WIDTH") FROM stdin;
\.


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_563AEE_OBJECT_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
\.


--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_563AEE_OBJECT_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_TARGET_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_563AEE_TARGET_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
\.


--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_563AEE_TARGET_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_575BF5_PROCESSED_COMMITS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_575BF5_PROCESSED_COMMITS" ("COMMIT_HASH", "ID", "METADATA_HASH") FROM stdin;
\.


--
-- Name: AO_575BF5_PROCESSED_COMMITS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_575BF5_PROCESSED_COMMITS_ID_seq"', 1, false);


--
-- Data for Name: AO_575BF5_PROVIDER_ISSUE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_575BF5_PROVIDER_ISSUE" ("ID", "ISSUE_ID", "PROVIDER_SOURCE_ID", "STALE_AFTER") FROM stdin;
\.


--
-- Name: AO_575BF5_PROVIDER_ISSUE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_575BF5_PROVIDER_ISSUE_ID_seq"', 1, false);


--
-- Data for Name: AO_587B34_PROJECT_CONFIG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_587B34_PROJECT_CONFIG" ("CONFIGURATION_GROUP_ID", "ID", "NAME", "NAME_UNIQUE_CONSTRAINT", "PROJECT_ID", "ROOM_ID", "VALUE") FROM stdin;
\.


--
-- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_587B34_PROJECT_CONFIG_ID_seq"', 1, false);


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
-- Data for Name: AO_60DB71_AUDITENTRY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_AUDITENTRY" ("CATEGORY", "DATA", "ENTITY_CLASS", "ENTITY_ID", "ID", "TIME", "USER") FROM stdin;
\.


--
-- Name: AO_60DB71_AUDITENTRY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_AUDITENTRY_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_BOARDADMINS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_BOARDADMINS" ("ID", "KEY", "RAPID_VIEW_ID", "TYPE") FROM stdin;
\.


--
-- Name: AO_60DB71_BOARDADMINS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_BOARDADMINS_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_CARDCOLOR; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_CARDCOLOR" ("COLOR", "ID", "POS", "RAPID_VIEW_ID", "STRATEGY", "VAL") FROM stdin;
\.


--
-- Name: AO_60DB71_CARDCOLOR_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_CARDCOLOR_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_CARDLAYOUT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_CARDLAYOUT" ("FIELD_ID", "ID", "MODE_NAME", "POS", "RAPID_VIEW_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_CARDLAYOUT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_CARDLAYOUT_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_COLUMN; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_COLUMN" ("ID", "MAXIM", "MINIM", "NAME", "POS", "RAPID_VIEW_ID") FROM stdin;
\.


--
-- Data for Name: AO_60DB71_COLUMNSTATUS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_COLUMNSTATUS" ("COLUMN_ID", "ID", "POS", "STATUS_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_COLUMNSTATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_COLUMNSTATUS_ID_seq"', 1, false);


--
-- Name: AO_60DB71_COLUMN_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_COLUMN_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_DETAILVIEWFIELD; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_DETAILVIEWFIELD" ("FIELD_ID", "ID", "POS", "RAPID_VIEW_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_DETAILVIEWFIELD_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_DETAILVIEWFIELD_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_ESTIMATESTATISTIC; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_ESTIMATESTATISTIC" ("FIELD_ID", "ID", "RAPID_VIEW_ID", "TYPE_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_ESTIMATESTATISTIC_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_ESTIMATESTATISTIC_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_ISSUERANKING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_ISSUERANKING" ("CUSTOM_FIELD_ID", "ID", "ISSUE_ID", "NEXT_ID") FROM stdin;
\.


--
-- Data for Name: AO_60DB71_ISSUERANKINGLOG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_ISSUERANKINGLOG" ("CUSTOM_FIELD_ID", "ID", "ISSUE_ID", "LOG_TYPE", "NEW_NEXT_ID", "NEW_PREVIOUS_ID", "OLD_NEXT_ID", "OLD_PREVIOUS_ID", "SANITY_CHECKED") FROM stdin;
\.


--
-- Name: AO_60DB71_ISSUERANKINGLOG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_ISSUERANKINGLOG_ID_seq"', 1, false);


--
-- Name: AO_60DB71_ISSUERANKING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_ISSUERANKING_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_LEXORANK; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_LEXORANK" ("FIELD_ID", "ID", "ISSUE_ID", "LOCK_HASH", "LOCK_TIME", "RANK", "TYPE") FROM stdin;
10005	7	-9223372036854775808	\N	\N	0|000000:	0
10005	8	9223372036854775807	\N	\N	0|zzzzzz:	2
\.


--
-- Data for Name: AO_60DB71_LEXORANKBALANCER; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_LEXORANKBALANCER" ("DISABLE_RANK_OPERATIONS", "FIELD_ID", "ID", "REBALANCE_TIME") FROM stdin;
\.


--
-- Name: AO_60DB71_LEXORANKBALANCER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_LEXORANKBALANCER_ID_seq"', 1, false);


--
-- Name: AO_60DB71_LEXORANK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_LEXORANK_ID_seq"', 8, true);


--
-- Data for Name: AO_60DB71_NONWORKINGDAY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_NONWORKINGDAY" ("ID", "ISO8601_DATE", "WORKING_DAYS_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_NONWORKINGDAY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_NONWORKINGDAY_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_QUICKFILTER; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_QUICKFILTER" ("DESCRIPTION", "ID", "LONG_QUERY", "NAME", "POS", "QUERY", "RAPID_VIEW_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_QUICKFILTER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_QUICKFILTER_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_RANKABLEOBJECT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_RANKABLEOBJECT" ("ID", "TYPE") FROM stdin;
\.


--
-- Name: AO_60DB71_RANKABLEOBJECT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_RANKABLEOBJECT_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_RAPIDVIEW; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_RAPIDVIEW" ("CARD_COLOR_STRATEGY", "ID", "NAME", "OWNER_USER_NAME", "SAVED_FILTER_ID", "SHOW_DAYS_IN_COLUMN", "SPRINTS_ENABLED", "SWIMLANE_STRATEGY") FROM stdin;
\.


--
-- Name: AO_60DB71_RAPIDVIEW_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_RAPIDVIEW_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_SPRINT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_SPRINT" ("CLOSED", "COMPLETE_DATE", "END_DATE", "ID", "NAME", "RAPID_VIEW_ID", "SEQUENCE", "STARTED", "START_DATE") FROM stdin;
\.


--
-- Name: AO_60DB71_SPRINT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_SPRINT_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_STATSFIELD; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_STATSFIELD" ("ID", "RAPID_VIEW_ID", "TYPE_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_STATSFIELD_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_STATSFIELD_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_SUBQUERY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_SUBQUERY" ("ID", "LONG_QUERY", "QUERY", "RAPID_VIEW_ID", "SECTION") FROM stdin;
\.


--
-- Name: AO_60DB71_SUBQUERY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_SUBQUERY_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_SWIMLANE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_SWIMLANE" ("DEFAULT_LANE", "DESCRIPTION", "ID", "LONG_QUERY", "NAME", "POS", "QUERY", "RAPID_VIEW_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_SWIMLANE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_SWIMLANE_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_TRACKINGSTATISTIC; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_TRACKINGSTATISTIC" ("FIELD_ID", "ID", "RAPID_VIEW_ID", "TYPE_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_TRACKINGSTATISTIC_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_TRACKINGSTATISTIC_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_VERSION; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_VERSION" ("ID", "START_DATE", "VERSION_ID") FROM stdin;
\.


--
-- Name: AO_60DB71_VERSION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_VERSION_ID_seq"', 1, false);


--
-- Data for Name: AO_60DB71_WORKINGDAYS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_60DB71_WORKINGDAYS" ("FRIDAY", "ID", "MONDAY", "RAPID_VIEW_ID", "SATURDAY", "SUNDAY", "THURSDAY", "TIMEZONE", "TUESDAY", "WEDNESDAY") FROM stdin;
\.


--
-- Name: AO_60DB71_WORKINGDAYS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_60DB71_WORKINGDAYS_ID_seq"', 1, false);


--
-- Data for Name: AO_88263F_HEALTH_CHECK_STATUS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_88263F_HEALTH_CHECK_STATUS" ("APPLICATION_NAME", "COMPLETE_KEY", "DESCRIPTION", "FAILED_DATE", "FAILURE_REASON", "ID", "IS_HEALTHY", "IS_RESOLVED", "RESOLVED_DATE", "SEVERITY", "STATUS_NAME") FROM stdin;
\.


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_88263F_HEALTH_CHECK_STATUS_ID_seq"', 1, false);


--
-- Data for Name: AO_88263F_PROPERTIES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_88263F_PROPERTIES" ("ID", "PROPERTY_NAME", "PROPERTY_VALUE") FROM stdin;
1	last-run	1468249549387
\.


--
-- Name: AO_88263F_PROPERTIES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_88263F_PROPERTIES_ID_seq"', 1, true);


--
-- Data for Name: AO_88263F_READ_NOTIFICATIONS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_88263F_READ_NOTIFICATIONS" ("ID", "IS_SNOOZED", "NOTIFICATION_ID", "SNOOZE_COUNT", "SNOOZE_DATE", "USER_KEY") FROM stdin;
\.


--
-- Name: AO_88263F_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_88263F_READ_NOTIFICATIONS_ID_seq"', 1, false);


--
-- Data for Name: AO_97EDAB_USERINVITATION; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_97EDAB_USERINVITATION" ("APPLICATION_KEYS", "EMAIL_ADDRESS", "EXPIRY", "ID", "REDEEMED", "SENDER_USERNAME", "TOKEN") FROM stdin;
\.


--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_97EDAB_USERINVITATION_ID_seq"', 1, false);


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
-- Data for Name: AO_A44657_HEALTH_CHECK_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_A44657_HEALTH_CHECK_ENTITY" ("ID") FROM stdin;
\.


--
-- Name: AO_A44657_HEALTH_CHECK_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_A44657_HEALTH_CHECK_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_B9A0F0_APPLIED_TEMPLATE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_B9A0F0_APPLIED_TEMPLATE" ("ID", "PROJECT_ID", "PROJECT_TEMPLATE_MODULE_KEY", "PROJECT_TEMPLATE_WEB_ITEM_KEY") FROM stdin;
\.


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"', 1, false);


--
-- Data for Name: AO_CFF990_AOTRANSITION_FAILURE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_CFF990_AOTRANSITION_FAILURE" ("ERROR_MESSAGES", "FAILURE_TIME", "ID", "ISSUE_ID", "LOG_REFERRAL_HASH", "TRANSITION_ID", "TRIGGER_ID", "USER_KEY", "WORKFLOW_ID") FROM stdin;
\.


--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_CFF990_AOTRANSITION_FAILURE_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_BRANCH; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_BRANCH" ("ID", "NAME", "REPOSITORY_ID") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_BRANCH_HEAD_MAPPING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_BRANCH_HEAD_MAPPING" ("BRANCH_NAME", "HEAD", "ID", "REPOSITORY_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_BRANCH_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_BRANCH_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_CHANGESET_MAPPING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_CHANGESET_MAPPING" ("AUTHOR", "AUTHOR_EMAIL", "BRANCH", "DATE", "FILES_DATA", "FILE_COUNT", "FILE_DETAILS_JSON", "ID", "ISSUE_KEY", "MESSAGE", "NODE", "PARENTS_DATA", "PROJECT_KEY", "RAW_AUTHOR", "RAW_NODE", "REPOSITORY_ID", "SMARTCOMMIT_AVAILABLE", "VERSION") FROM stdin;
\.


--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_CHANGESET_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_COMMIT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_COMMIT" ("AUTHOR", "AUTHOR_AVATAR_URL", "DATE", "DOMAIN_ID", "ID", "MERGE", "MESSAGE", "NODE", "RAW_AUTHOR") FROM stdin;
\.


--
-- Name: AO_E8B6CC_COMMIT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_COMMIT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_GIT_HUB_EVENT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_GIT_HUB_EVENT" ("CREATED_AT", "GIT_HUB_ID", "ID", "REPOSITORY_ID", "SAVE_POINT") FROM stdin;
\.


--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_GIT_HUB_EVENT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ISSUE_MAPPING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_ISSUE_MAPPING" ("ID", "ISSUE_ID", "NODE", "PROJECT_KEY", "REPOSITORY_URI") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_ISSUE_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ISSUE_MAPPING_V2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_ISSUE_MAPPING_V2" ("AUTHOR", "BRANCH", "DATE", "FILES_DATA", "ID", "ISSUE_ID", "MESSAGE", "NODE", "PARENTS_DATA", "RAW_AUTHOR", "RAW_NODE", "REPOSITORY_ID", "VERSION") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ISSUE_TO_BRANCH; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_ISSUE_TO_BRANCH" ("BRANCH_ID", "ID", "ISSUE_KEY") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ISSUE_TO_CHANGESET; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_ISSUE_TO_CHANGESET" ("CHANGESET_ID", "ID", "ISSUE_KEY", "PROJECT_KEY") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_MESSAGE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_MESSAGE" ("ADDRESS", "ID", "PAYLOAD", "PAYLOAD_TYPE", "PRIORITY") FROM stdin;
\.


--
-- Name: AO_E8B6CC_MESSAGE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_MESSAGE_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_MESSAGE_QUEUE_ITEM" ("ID", "LAST_FAILED", "MESSAGE_ID", "QUEUE", "RETRIES_COUNT", "STATE", "STATE_INFO") FROM stdin;
\.


--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_MESSAGE_TAG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_MESSAGE_TAG" ("ID", "MESSAGE_ID", "TAG") FROM stdin;
\.


--
-- Name: AO_E8B6CC_MESSAGE_TAG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_MESSAGE_TAG_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_ORGANIZATION_MAPPING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_ORGANIZATION_MAPPING" ("ACCESS_TOKEN", "ADMIN_PASSWORD", "ADMIN_USERNAME", "APPROVAL_STATE", "AUTOLINK_NEW_REPOS", "DEFAULT_GROUPS_SLUGS", "DVCS_TYPE", "HOST_URL", "ID", "NAME", "OAUTH_KEY", "OAUTH_SECRET", "PRINCIPAL_ID", "SMARTCOMMITS_FOR_NEW_REPOS") FROM stdin;
\.


--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PROJECT_MAPPING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_PROJECT_MAPPING" ("ID", "PASSWORD", "PROJECT_KEY", "REPOSITORY_URI", "USERNAME") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_PROJECT_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PROJECT_MAPPING_V2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_PROJECT_MAPPING_V2" ("ACCESS_TOKEN", "ADMIN_PASSWORD", "ADMIN_USERNAME", "ID", "LAST_COMMIT_DATE", "PROJECT_KEY", "REPOSITORY_NAME", "REPOSITORY_TYPE", "REPOSITORY_URL") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PR_ISSUE_KEY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_PR_ISSUE_KEY" ("DOMAIN_ID", "ID", "ISSUE_KEY", "PULL_REQUEST_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_PR_ISSUE_KEY_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PR_PARTICIPANT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_PR_PARTICIPANT" ("APPROVED", "DOMAIN_ID", "ID", "PULL_REQUEST_ID", "ROLE", "USERNAME") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PR_PARTICIPANT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_PR_PARTICIPANT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PR_TO_COMMIT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_PR_TO_COMMIT" ("COMMIT_ID", "DOMAIN_ID", "ID", "REQUEST_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PR_TO_COMMIT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_PR_TO_COMMIT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_PULL_REQUEST; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_PULL_REQUEST" ("AUTHOR", "COMMENT_COUNT", "CREATED_ON", "DESTINATION_BRANCH", "DOMAIN_ID", "EXECUTED_BY", "ID", "LAST_STATUS", "NAME", "REMOTE_ID", "SOURCE_BRANCH", "SOURCE_REPO", "TO_REPOSITORY_ID", "UPDATED_ON", "URL") FROM stdin;
\.


--
-- Name: AO_E8B6CC_PULL_REQUEST_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_PULL_REQUEST_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_REPOSITORY_MAPPING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_REPOSITORY_MAPPING" ("ACTIVITY_LAST_SYNC", "DELETED", "FORK", "FORK_OF_NAME", "FORK_OF_OWNER", "FORK_OF_SLUG", "ID", "LAST_CHANGESET_NODE", "LAST_COMMIT_DATE", "LINKED", "LOGO", "NAME", "ORGANIZATION_ID", "SLUG", "SMARTCOMMITS_ENABLED", "UPDATE_LINK_AUTHORISED") FROM stdin;
\.


--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_REPOSITORY_MAPPING_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_REPO_TO_CHANGESET; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_REPO_TO_CHANGESET" ("CHANGESET_ID", "ID", "REPOSITORY_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_REPO_TO_CHANGESET_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_REPO_TO_PROJECT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_REPO_TO_PROJECT" ("ID", "PROJECT_KEY", "REPOSITORY_ID") FROM stdin;
\.


--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_REPO_TO_PROJECT_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_SYNC_AUDIT_LOG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_SYNC_AUDIT_LOG" ("END_DATE", "EXC_TRACE", "FIRST_REQUEST_DATE", "FLIGHT_TIME_MS", "ID", "NUM_REQUESTS", "REPO_ID", "START_DATE", "SYNC_STATUS", "SYNC_TYPE", "TOTAL_ERRORS") FROM stdin;
\.


--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq"', 1, false);


--
-- Data for Name: AO_E8B6CC_SYNC_EVENT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "AO_E8B6CC_SYNC_EVENT" ("EVENT_CLASS", "EVENT_DATE", "EVENT_JSON", "ID", "REPO_ID", "SCHEDULED_SYNC") FROM stdin;
\.


--
-- Name: AO_E8B6CC_SYNC_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"AO_E8B6CC_SYNC_EVENT_ID_seq"', 1, false);


--
-- Data for Name: app_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY app_user (id, user_key, lower_user_name) FROM stdin;
10000	admin	admin
10100	mosser	mosser
\.


--
-- Data for Name: audit_changed_value; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY audit_changed_value (id, log_id, name, delta_from, delta_to) FROM stdin;
10000	10001	Permission		Bulk Change
10001	10001	Group		jira-software-users
10002	10002	Permission		Browse Users
10003	10002	Group		jira-software-users
10004	10003	Permission		Manage Group Filter Subscriptions
10005	10003	Group		jira-software-users
10006	10004	Permission		Create Shared Objects
10007	10004	Group		jira-software-users
10008	10005	Organisation	\N	Polytech'Nice Sophia Antipolis School of Engineering
10009	10005	Date Purchased	\N	24/Nov/15
10010	10005	License Type	\N	JIRA Software (Server) Unlimited Users: Community License
10011	10005	Server ID	\N	BIWI-Y40C-U8J3-I7YV
10012	10005	Support Entitlement Number (SEN)	\N	SEN-2428339
10013	10005	User Limit	\N	Unlimited
10014	10005	jira-software	\N	-1
10015	10006	Username	\N	admin
10016	10006	Full name	\N	Sebby momo
10017	10006	Email	\N	test@test.fr
10018	10006	Active / Inactive	\N	Active
10019	10008	Permission		Browse Users
10020	10008	Group		jira-administrators
10021	10009	Permission		Bulk Change
10022	10009	Group		jira-administrators
10023	10010	Permission		Create Shared Objects
10024	10010	Group		jira-administrators
10025	10011	Permission		Manage Group Filter Subscriptions
10026	10011	Group		jira-administrators
10027	10013	Name	\N	Sprint
10028	10013	Description	\N	JIRA Software sprint field
10029	10013	Type	\N	JIRA Sprint Field
10030	10014	Name	\N	Epic Link
10031	10014	Description	\N	Choose an epic to assign this issue to.
10032	10014	Type	\N	Epic Link Relationship
10033	10015	Name	\N	Epic Status
10034	10015	Description	\N	Epic Status field for JIRA Software use only.
10035	10015	Type	\N	Status of Epic
10036	10016	Name	\N	Epic Name
10037	10016	Description	\N	Provide a short name to identify this epic.
10038	10016	Type	\N	Name of Epic
10039	10017	Name	\N	Epic Color
10040	10017	Description	\N	Epic Color field for JIRA Software use only.
10041	10017	Type	\N	Color of Epic
10042	10018	Name	\N	Rank
10043	10018	Description	\N	Global rank field for JIRA Software use only.
10044	10018	Type	\N	Global Rank
10045	10019	Name	\N	Story Points
10046	10019	Description	\N	Measurement of complexity and/or size of a requirement.
10047	10019	Type	\N	Number Field
10048	10020	Permission		Manage Sprints
10049	10020	Type		Project Role
10050	10020	Value		Administrators
10051	10021	Permission	Manage Sprints	
10052	10021	Type	Project Role	
10053	10021	Value	Administrators	
10054	10022	Permission		Manage Sprints
10055	10022	Type		Project Role
10056	10022	Value		Administrators
10100	10100	Username	\N	mosser
10101	10100	Full name	\N	Sebastien Mosser
10102	10100	Email	\N	mosser@polytech.unice.fr
10103	10100	Active / Inactive	\N	Active
\.


--
-- Data for Name: audit_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY audit_item (id, log_id, object_type, object_id, object_name, object_parent_id, object_parent_name) FROM stdin;
10000	10007	USER	admin	admin	1	JIRA Internal Directory
10001	10012	USER	admin	admin	1	JIRA Internal Directory
10100	10105	USER	mosser	mosser	10000	Crowd server
10101	10106	USER	mosser	mosser	10000	Crowd server
10102	10107	USER	mosser	mosser	10000	Crowd server
10103	10108	USER	mosser	mosser	10000	Crowd server
\.


--
-- Data for Name: audit_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY audit_log (id, remote_address, created, author_key, summary, category, object_type, object_id, object_name, object_parent_id, object_parent_name, author_type, event_source_name, description, long_description, search_field) FROM stdin;
10000	172.17.0.1	2016-07-06 12:41:02.46+00	\N	Group created	group management	GROUP	\N	jira-software-users	1	JIRA Internal Directory	0		\N		172.17.0.1 group created management jira-software-users jira internal directory
10001	172.17.0.1	2016-07-06 12:41:02.546+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions bulk change jira-software-users
10002	172.17.0.1	2016-07-06 12:41:02.558+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions browse users jira-software-users
10003	172.17.0.1	2016-07-06 12:41:02.565+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions manage group filter subscriptions jira-software-users
10004	172.17.0.1	2016-07-06 12:41:02.572+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions create shared objects jira-software-users
10005	172.17.0.1	2016-07-06 12:41:02.612+00	\N	New license added	system	LICENSE	0	SEN-2428339	0	License SEN	0		\N		172.17.0.1 new license added system sen-2428339 sen polytech'nice sophia antipolis school of engineering 24/nov/15 jira software (server) unlimited users: community biwi-y40c-u8j3-i7yv -1
10006	172.17.0.1	2016-07-06 12:42:45.695+00	\N	User created	user management	USER	admin	admin	1	JIRA Internal Directory	0		\N		172.17.0.1 user created management admin jira internal directory sebby momo test@test.fr active
10007	172.17.0.1	2016-07-06 12:42:45.78+00	\N	User added to group	group management	GROUP	\N	jira-administrators	1	JIRA Internal Directory	0		\N		172.17.0.1 user added to group management jira-administrators jira internal directory admin
10008	172.17.0.1	2016-07-06 12:42:45.812+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions browse users jira-administrators
10009	172.17.0.1	2016-07-06 12:42:45.839+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions bulk change jira-administrators
10010	172.17.0.1	2016-07-06 12:42:45.846+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions create shared objects jira-administrators
10011	172.17.0.1	2016-07-06 12:42:45.853+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		172.17.0.1 global permission added permissions manage group filter subscriptions jira-administrators
10012	172.17.0.1	2016-07-06 12:42:45.878+00	\N	User added to group	group management	GROUP	\N	jira-software-users	1	JIRA Internal Directory	0		\N		172.17.0.1 user added to group management jira-software-users jira internal directory admin
10013	172.17.0.1	2016-07-06 12:42:53.47+00	\N	Custom field created	fields	CUSTOM_FIELD	customfield_10000	Sprint	\N	\N	0		\N		172.17.0.1 custom field created fields sprint jira software
10014	172.17.0.1	2016-07-06 12:42:53.651+00	\N	Custom field created	fields	CUSTOM_FIELD	customfield_10001	Epic Link	\N	\N	0		\N		172.17.0.1 custom field created fields epic link choose an to assign this issue to. relationship
10015	172.17.0.1	2016-07-06 12:42:53.748+00	\N	Custom field created	fields	CUSTOM_FIELD	customfield_10002	Epic Status	\N	\N	0		\N		172.17.0.1 custom field created fields epic status for jira software use only. of
10016	172.17.0.1	2016-07-06 12:42:53.803+00	\N	Custom field created	fields	CUSTOM_FIELD	customfield_10003	Epic Name	\N	\N	0		\N		172.17.0.1 custom field created fields epic name provide a short to identify this epic. of
10017	172.17.0.1	2016-07-06 12:42:53.942+00	\N	Custom field created	fields	CUSTOM_FIELD	customfield_10004	Epic Color	\N	\N	0		\N		172.17.0.1 custom field created fields epic color for jira software use only. of
10018	172.17.0.1	2016-07-06 12:42:54.053+00	\N	Custom field created	fields	CUSTOM_FIELD	customfield_10005	Rank	\N	\N	0		\N		172.17.0.1 custom field created fields rank global for jira software use only.
10019	172.17.0.1	2016-07-06 12:42:56.994+00	\N	Custom field created	fields	CUSTOM_FIELD	customfield_10006	Story Points	\N	\N	0		\N		172.17.0.1 custom field created fields story points measurement of complexity and/or size a requirement. number
10020	172.17.0.1	2016-07-06 12:42:57.989+00	\N	Permission scheme updated	permissions	SCHEME	0	Default Permission Scheme	\N	\N	0		\N		172.17.0.1 permission scheme updated permissions default manage sprints project role administrators
10021	172.17.0.1	2016-07-06 12:42:58.065+00	\N	Permission scheme updated	permissions	SCHEME	0	Default Permission Scheme	\N	\N	0		\N		172.17.0.1 permission scheme updated permissions default manage sprints project role administrators
10022	172.17.0.1	2016-07-06 12:42:58.082+00	\N	Permission scheme updated	permissions	SCHEME	0	Default Permission Scheme	\N	\N	0		\N		172.17.0.1 permission scheme updated permissions default manage sprints project role administrators
10100	\N	2016-07-11 15:21:48.751+00	\N	User created	user management	USER	mosser	mosser	10000	Crowd server	0		\N		user created management mosser crowd server sebastien mosser@polytech.unice.fr active
10101	\N	2016-07-11 15:21:49.082+00	\N	Group created	group management	GROUP	\N	jira-developers	10000	Crowd server	0		\N		group created management jira-developers crowd server
10102	\N	2016-07-11 15:21:49.134+00	\N	Group created	group management	GROUP	\N	jira-users	10000	Crowd server	0		\N		group created management jira-users crowd server
10103	\N	2016-07-11 15:21:49.157+00	\N	Group created	group management	GROUP	\N	crowd-administrators	10000	Crowd server	0		\N		group created management crowd-administrators crowd server
10104	\N	2016-07-11 15:21:49.188+00	\N	Group created	group management	GROUP	\N	jira-administrators	10000	Crowd server	0		\N		group created management jira-administrators crowd server
10105	\N	2016-07-11 15:21:49.644+00	\N	User added to group	group management	GROUP	\N	crowd-administrators	10000	Crowd server	0		\N		user added to group management crowd-administrators crowd server mosser
10106	\N	2016-07-11 15:21:49.701+00	\N	User added to group	group management	GROUP	\N	jira-administrators	10000	Crowd server	0		\N		user added to group management jira-administrators crowd server mosser
10107	\N	2016-07-11 15:21:49.734+00	\N	User added to group	group management	GROUP	\N	jira-developers	10000	Crowd server	0		\N		user added to group management jira-developers crowd server mosser
10108	\N	2016-07-11 15:21:49.768+00	\N	User added to group	group management	GROUP	\N	jira-users	10000	Crowd server	0		\N		user added to group management jira-users crowd server mosser
\.


--
-- Data for Name: avatar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY avatar (id, filename, contenttype, avatartype, owner, systemavatar) FROM stdin;
10000	codegeist.png	image/png	project	\N	1
10001	bird.svg	image/svg+xml	project	\N	1
10002	jm_black.png	image/png	project	\N	1
10003	jm_brown.png	image/png	project	\N	1
10004	jm_orange.png	image/png	project	\N	1
10005	jm_red.png	image/png	project	\N	1
10006	jm_white.png	image/png	project	\N	1
10007	jm_yellow.png	image/png	project	\N	1
10008	monster.png	image/png	project	\N	1
10009	nature.svg	image/svg+xml	project	\N	1
10010	koala.svg	image/svg+xml	project	\N	1
10011	rocket.svg	image/svg+xml	project	\N	1
10100	Avatar-1.png	image/png	user	\N	1
10101	Avatar-2.png	image/png	user	\N	1
10102	Avatar-3.png	image/png	user	\N	1
10103	Avatar-4.png	image/png	user	\N	1
10104	Avatar-5.png	image/png	user	\N	1
10105	Avatar-6.png	image/png	user	\N	1
10106	Avatar-7.png	image/png	user	\N	1
10107	Avatar-8.png	image/png	user	\N	1
10108	Avatar-9.png	image/png	user	\N	1
10109	Avatar-10.png	image/png	user	\N	1
10110	Avatar-11.png	image/png	user	\N	1
10111	Avatar-12.png	image/png	user	\N	1
10321	development_task.svg	image/svg+xml	issuetype	\N	1
10112	Avatar-13.png	image/png	user	\N	1
10113	Avatar-14.png	image/png	user	\N	1
10114	Avatar-15.png	image/png	user	\N	1
10115	Avatar-16.png	image/png	user	\N	1
10116	Avatar-17.png	image/png	user	\N	1
10117	Avatar-18.png	image/png	user	\N	1
10322	feedback.svg	image/svg+xml	issuetype	\N	1
10118	Avatar-19.png	image/png	user	\N	1
10323	request_access.svg	image/svg+xml	issuetype	\N	1
10324	default.svg	image/svg+xml	project	\N	1
10119	Avatar-20.png	image/png	user	\N	1
10325	code.svg	image/svg+xml	project	\N	1
10120	Avatar-21.png	image/png	user	\N	1
10326	coffee.svg	image/svg+xml	project	\N	1
10121	Avatar-22.png	image/png	user	\N	1
10327	design.svg	image/svg+xml	project	\N	1
10122	Avatar-default.svg	image/svg+xml	user	\N	1
10328	drill.svg	image/svg+xml	project	\N	1
10123	Avatar-unknown.png	image/png	user	\N	1
10329	food.svg	image/svg+xml	project	\N	1
10200	cloud.svg	image/svg+xml	project	\N	1
10201	spanner.svg	image/svg+xml	project	\N	1
10202	cd.svg	image/svg+xml	project	\N	1
10203	money.svg	image/svg+xml	project	\N	1
10204	mouse-hand.svg	image/svg+xml	project	\N	1
10205	yeti.svg	image/svg+xml	project	\N	1
10330	notes.svg	image/svg+xml	project	\N	1
10206	power.svg	image/svg+xml	project	\N	1
10207	refresh.svg	image/svg+xml	project	\N	1
10208	phone.svg	image/svg+xml	project	\N	1
10209	settings.svg	image/svg+xml	project	\N	1
10210	storm.svg	image/svg+xml	project	\N	1
10211	plane.svg	image/svg+xml	project	\N	1
10300	genericissue.svg	image/svg+xml	issuetype	\N	1
10303	bug.svg	image/svg+xml	issuetype	\N	1
10304	defect.svg	image/svg+xml	issuetype	\N	1
10331	red-flag.svg	image/svg+xml	project	\N	1
10306	documentation.svg	image/svg+xml	issuetype	\N	1
10332	science.svg	image/svg+xml	project	\N	1
10307	epic.svg	image/svg+xml	issuetype	\N	1
10333	support.svg	image/svg+xml	project	\N	1
10308	exclamation.svg	image/svg+xml	issuetype	\N	1
10334	bull.svg	image/svg+xml	user	\N	1
10309	design_task.svg	image/svg+xml	issuetype	\N	1
10335	cat.svg	image/svg+xml	user	\N	1
10310	improvement.svg	image/svg+xml	issuetype	\N	1
10336	dog.svg	image/svg+xml	user	\N	1
10311	newfeature.svg	image/svg+xml	issuetype	\N	1
10312	remove_feature.svg	image/svg+xml	issuetype	\N	1
10313	requirement.svg	image/svg+xml	issuetype	\N	1
10314	sales.svg	image/svg+xml	issuetype	\N	1
10315	story.svg	image/svg+xml	issuetype	\N	1
10316	subtask.svg	image/svg+xml	issuetype	\N	1
10318	task.svg	image/svg+xml	issuetype	\N	1
10320	question.svg	image/svg+xml	issuetype	\N	1
10337	female_1.svg	image/svg+xml	user	\N	1
10338	female_2.svg	image/svg+xml	user	\N	1
10339	female_3.svg	image/svg+xml	user	\N	1
10340	female_4.svg	image/svg+xml	user	\N	1
10341	ghost.svg	image/svg+xml	user	\N	1
10342	male_1.svg	image/svg+xml	user	\N	1
10343	male_2.svg	image/svg+xml	user	\N	1
10344	male_3.svg	image/svg+xml	user	\N	1
10345	male_4.svg	image/svg+xml	user	\N	1
10346	male_5.svg	image/svg+xml	user	\N	1
10347	male_6.svg	image/svg+xml	user	\N	1
10348	male_8.svg	image/svg+xml	user	\N	1
10349	owl.svg	image/svg+xml	user	\N	1
10350	pirate.svg	image/svg+xml	user	\N	1
10351	robot.svg	image/svg+xml	user	\N	1
10352	vampire.svg	image/svg+xml	user	\N	1
\.


--
-- Data for Name: board; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY board (id, jql) FROM stdin;
\.


--
-- Data for Name: boardproject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY boardproject (board_id, project_id) FROM stdin;
\.


--
-- Data for Name: changegroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY changegroup (id, issueid, author, created) FROM stdin;
\.


--
-- Data for Name: changeitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY changeitem (id, groupid, fieldtype, field, oldvalue, oldstring, newvalue, newstring) FROM stdin;
\.


--
-- Data for Name: clusteredjob; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY clusteredjob (id, job_id, job_runner_key, sched_type, interval_millis, first_run, cron_expression, time_zone, next_run, version, parameters) FROM stdin;
10108	CompatibilityPluginScheduler.JobId.LEXO_RANK_SCHEDULER_JOB	CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.greenhopper.service.lexorank.balance.LexoRankBalancePluginJob	I	60000	1467808976458	\N	\N	1468251528671	36	\N
10111	80f4dd25-2f61-40a6-ac26-138bc87e54d6	com.atlassian.jira.plugin.ext.bamboo.service.PlanStatusUpdateJob	I	60000	1467808977468	\N	\N	1468251528759	36	\N
10303	d17acbe2-ec2f-430f-a988-85bb4a05afe7	com.atlassian.jira.plugin.ext.bamboo.service.PlanStatusUpdateJob	I	60000	1468249482537	\N	\N	1468251529191	35	\N
10301	CompatibilityPluginScheduler.JobId.Service Provider Session Remover	CompatibilityPluginScheduler.JobRunnerKey.Service Provider Session Remover	I	28800000	1468278281386	\N	\N	1468278281386	1	\N
10304	com.atlassian.jira.crowd.embedded.JiraDirectoryPollerManager.10000	com.atlassian.jira.crowd.embedded.JiraDirectoryPollerManager	I	3600000	1468250560853	\N	\N	1468254160853	2	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c02000078700000000174000c4449524543544f52595f49447571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000002710
10109	com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler:job	com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler	I	3600000	1467811758204	\N	\N	1468253088773	2	\N
10105	CompatibilityPluginScheduler.JobId.PluginRequestCheckJob-job	CompatibilityPluginScheduler.JobRunnerKey.PluginRequestCheckJob-job-handler	I	3600000	1467808971840	\N	\N	1468253088773	3	\N
10001	com.atlassian.jira.service.JiraService:10002	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 0 0 * * ?	\N	1468281600000	2	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000002712
10102	com.atlassian.jira.service.JiraService:10001	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 40 0/12 * * ?	\N	1468284000000	2	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000002711
10106	CompatibilityPluginScheduler.JobId.PluginUpdateCheckJob-job	CompatibilityPluginScheduler.JobRunnerKey.PluginUpdateCheckJob-job-handler	I	86400000	1467856213146	\N	\N	1468335888970	2	\N
10107	CompatibilityPluginScheduler.JobId.InstanceTopologyJob-job	CompatibilityPluginScheduler.JobRunnerKey.InstanceTopologyJob-job-handler	I	86400000	1467863372493	\N	\N	1468335888973	2	\N
10104	CompatibilityPluginScheduler.JobId.LocalPluginLicenseNotificationJob-job	CompatibilityPluginScheduler.JobRunnerKey.LocalPluginLicenseNotificationJob-job-handler	I	86400000	1467808971831	\N	\N	1468335889022	3	\N
10200	data-provider-cleanup	com.atlassian.jira.plugin.devstatus.provider.DataProviderCleanupJob	I	1800000	1468249456477	\N	\N	1468253088602	3	\N
\.


--
-- Data for Name: clusterlockstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY clusterlockstatus (id, lock_name, locked_by_node, update_time) FROM stdin;
\.


--
-- Data for Name: clustermessage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY clustermessage (id, source_node, destination_node, claimed_by_node, message, message_time) FROM stdin;
\.


--
-- Data for Name: clusternode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY clusternode (node_id, node_state, "timestamp", ip, cache_listener_port) FROM stdin;
\.


--
-- Data for Name: clusternodeheartbeat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY clusternodeheartbeat (node_id, heartbeat_time, database_time) FROM stdin;
\.


--
-- Data for Name: columnlayout; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY columnlayout (id, username, searchrequest) FROM stdin;
\.


--
-- Data for Name: columnlayoutitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY columnlayoutitem (id, columnlayout, fieldidentifier, horizontalposition) FROM stdin;
\.


--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY component (id, project, cname, description, url, lead, assigneetype) FROM stdin;
\.


--
-- Data for Name: configurationcontext; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY configurationcontext (id, projectcategory, project, customfield, fieldconfigscheme) FROM stdin;
10000	\N	\N	issuetype	10000
10100	\N	\N	customfield_10000	10100
10101	\N	\N	customfield_10001	10101
10102	\N	\N	customfield_10005	10102
10103	\N	\N	customfield_10003	10103
10104	\N	\N	customfield_10002	10104
10105	\N	\N	customfield_10004	10105
10106	\N	\N	customfield_10006	10106
\.


--
-- Data for Name: customfield; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customfield (id, cfkey, customfieldtypekey, customfieldsearcherkey, cfname, description, defaultvalue, fieldtype, project, issuetype) FROM stdin;
10000	\N	com.pyxis.greenhopper.jira:gh-sprint	com.pyxis.greenhopper.jira:gh-sprint-searcher	Sprint	JIRA Software sprint field	\N	\N	\N	\N
10001	\N	com.pyxis.greenhopper.jira:gh-epic-link	com.pyxis.greenhopper.jira:gh-epic-link-searcher	Epic Link	Choose an epic to assign this issue to.	\N	\N	\N	\N
10002	\N	com.pyxis.greenhopper.jira:gh-epic-status	com.pyxis.greenhopper.jira:gh-epic-status-searcher	Epic Status	Epic Status field for JIRA Software use only.	\N	\N	\N	\N
10003	\N	com.pyxis.greenhopper.jira:gh-epic-label	com.pyxis.greenhopper.jira:gh-epic-label-searcher	Epic Name	Provide a short name to identify this epic.	\N	\N	\N	\N
10004	\N	com.pyxis.greenhopper.jira:gh-epic-color	com.pyxis.greenhopper.jira:gh-epic-color-searcher	Epic Color	Epic Color field for JIRA Software use only.	\N	\N	\N	\N
10005	\N	com.pyxis.greenhopper.jira:gh-lexo-rank	com.pyxis.greenhopper.jira:gh-lexo-rank-searcher	Rank	Global rank field for JIRA Software use only.	\N	\N	\N	\N
10006	\N	com.atlassian.jira.plugin.system.customfieldtypes:float	com.atlassian.jira.plugin.system.customfieldtypes:exactnumber	Story Points	Measurement of complexity and/or size of a requirement.	\N	\N	\N	\N
\.


--
-- Data for Name: customfieldoption; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customfieldoption (id, customfield, customfieldconfig, parentoptionid, sequence, customvalue, optiontype, disabled) FROM stdin;
10000	10002	10104	\N	0	To Do	\N	N
10001	10002	10104	\N	1	In Progress	\N	N
10002	10002	10104	\N	2	Done	\N	N
\.


--
-- Data for Name: customfieldvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customfieldvalue (id, issue, customfield, parentkey, stringvalue, numbervalue, textvalue, datevalue, valuetype) FROM stdin;
\.


--
-- Data for Name: cwd_application; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_application (id, application_name, lower_application_name, created_date, updated_date, active, description, application_type, credential) FROM stdin;
{%if crowd %}1	crowd-embedded	crowd-embedded	2013-02-28 11:57:51.302+00	2013-02-28 11:57:51.302+00	1		CROWD	X
{% endif %}\.


--
-- Data for Name: cwd_application_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_application_address (application_id, remote_address, encoded_address_binary, remote_address_mask) FROM stdin;
\.


--
-- Data for Name: cwd_directory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_directory (id, directory_name, lower_directory_name, created_date, updated_date, active, description, impl_class, lower_impl_class, directory_type, directory_position) FROM stdin;
1	JIRA Internal Directory	jira internal directory	2013-02-28 11:57:51.308+00	2013-02-28 11:57:51.308+00	1	JIRA default internal directory	com.atlassian.crowd.directory.InternalDirectory	com.atlassian.crowd.directory.internaldirectory	INTERNAL	0{% if crowd %}
10000	Crowd server	crowd server	2016-07-11 15:21:40.318+00	2016-07-11 15:22:41.272+00	1	\N	com.atlassian.crowd.directory.RemoteCrowdDirectory	com.atlassian.crowd.directory.remotecrowddirectory	CROWD	1
{% endif %}\.


--
-- Data for Name: cwd_directory_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_directory_attribute (directory_id, attribute_name, attribute_value) FROM stdin;
1	user_encryption_method	atlassian-security
{%if crowd %}10000	crowd.sync.incremental.enabled	true
10000	application.password	admin
10000	crowd.server.url	http://{{crowd.ip}}:8095/{{crowd.subdirectory}}
10000	com.atlassian.crowd.directory.sync.currentstartsynctime	\N
10000	com.atlassian.crowd.directory.sync.laststartsynctime	1468250560870
10000	directory.cache.synchronise.interval	3600
10000	com.atlassian.crowd.directory.sync.lastdurationms	399
10000	useNestedGroups	true
10000	com.atlassian.crowd.directory.sync.issynchronising	false
10000	application.name	jira
{% endif %}\.


--
-- Data for Name: cwd_directory_operation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_directory_operation (directory_id, operation_type) FROM stdin;
1	CREATE_GROUP
1	CREATE_ROLE
1	CREATE_USER
1	DELETE_GROUP
1	DELETE_ROLE
1	DELETE_USER
1	UPDATE_GROUP
1	UPDATE_GROUP_ATTRIBUTE
1	UPDATE_ROLE
1	UPDATE_ROLE_ATTRIBUTE
1	UPDATE_USER
1	UPDATE_USER_ATTRIBUTE
{% if crowd %}10000	UPDATE_GROUP_ATTRIBUTE
10000	UPDATE_USER_ATTRIBUTE
{% endif %}\.


--
-- Data for Name: cwd_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_group (id, group_name, lower_group_name, active, local, created_date, updated_date, description, lower_description, group_type, directory_id) FROM stdin;
10000	jira-administrators	jira-administrators	1	0	2013-02-28 11:57:51.326+00	2013-02-28 11:57:51.326+00		\N	GROUP	1
10010	jira-software-users	jira-software-users	1	0	2016-07-06 12:41:02.431+00	2016-07-06 12:41:02.431+00	\N	\N	GROUP	1
{% if crowd %}10110	jira-developers	jira-developers	1	0	2016-07-11 15:21:48.97+00	2016-07-11 15:21:48.97+00			GROUP	10000
10111	jira-users	jira-users	1	0	2016-07-11 15:21:48.998+00	2016-07-11 15:21:48.998+00			GROUP	10000
10112	crowd-administrators	crowd-administrators	1	0	2016-07-11 15:21:49.024+00	2016-07-11 15:21:49.024+00	\N	\N	GROUP	10000
10113	jira-administrators	jira-administrators	1	0	2016-07-11 15:21:49.049+00	2016-07-11 15:21:49.049+00			GROUP	10000
{% endif %}\.


--
-- Data for Name: cwd_group_attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_group_attributes (id, group_id, directory_id, attribute_name, attribute_value, lower_attribute_value) FROM stdin;
\.


--
-- Data for Name: cwd_membership; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_membership (id, parent_id, child_id, membership_type, group_type, parent_name, lower_parent_name, child_name, lower_child_name, directory_id) FROM stdin;
10000	10000	10000	GROUP_USER	\N	jira-administrators	jira-administrators	admin	admin	1
10001	10010	10000	GROUP_USER	\N	jira-software-users	jira-software-users	admin	admin	1
{% if crowd %}10100	10112	10100	GROUP_USER	\N	crowd-administrators	crowd-administrators	mosser	mosser	10000
10101	10113	10100	GROUP_USER	\N	jira-administrators	jira-administrators	mosser	mosser	10000
10102	10110	10100	GROUP_USER	\N	jira-developers	jira-developers	mosser	mosser	10000
10103	10111	10100	GROUP_USER	\N	jira-users	jira-users	mosser	mosser	10000
{% endif %}\.


--
-- Data for Name: cwd_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_user (id, directory_id, user_name, lower_user_name, active, created_date, updated_date, first_name, lower_first_name, last_name, lower_last_name, display_name, lower_display_name, email_address, lower_email_address, credential, deleted_externally, external_id) FROM stdin;
10000	1	admin	admin	1	2016-07-06 12:42:45.445+00	2016-07-06 12:42:45.445+00	{{jira.first_name}}	{{jira.l_first_name}}	{{jira.last_name}}	{{jira.l_last_name}}	{{jira.first_name}} {{jira.last_name}}	{{jira.l_first_name}} {{jira.l_last_name}}	{{jira.mail}}	{{jira.mail}}	{{jira.password}}	\N	a8119957-8bc9-4989-a3e9-a5f0c6a8d700
{% if crowd %}10100	10000	mosser	mosser	1	2016-07-11 15:21:48.675+00	2016-07-11 15:21:48.675+00	Sebastien	sebastien	Mosser	mosser	Sebastien Mosser	sebastien mosser	mosser@polytech.unice.fr	mosser@polytech.unice.fr	nopass	\N	32769:3758d6eb-3142-4912-a10f-7ee680464c0a
{% endif %}\.


--
-- Data for Name: cwd_user_attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cwd_user_attributes (id, user_id, directory_id, attribute_name, attribute_value, lower_attribute_value) FROM stdin;
10000	10000	1	passwordLastChanged	1467808965458	1467808965458
10001	10000	1	requiresPasswordChange	false	false
10002	10000	1	invalidPasswordAttempts	0	0
10003	10000	1	password.reset.request.expiry	1467895365743	1467895365743
10004	10000	1	password.reset.request.token	cedc95f6d653848c839875363917e9e083758ead	cedc95f6d653848c839875363917e9e083758ead
10005	10000	1	login.currentFailedCount	0	0
10100	10000	1	lastAuthenticated	1468250023062	1468250023062
10006	10000	1	login.lastLoginMillis	1468250023101	1468250023101
10101	10000	1	login.previousLoginMillis	1468249552285	1468249552285
10007	10000	1	login.count	7	7
\.


--
-- Data for Name: deadletter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY deadletter (id, message_id, last_seen, mail_server_id, folder_name) FROM stdin;
\.


--
-- Data for Name: draftworkflowscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY draftworkflowscheme (id, name, description, workflow_scheme_id, last_modified_date, last_modified_user) FROM stdin;
\.


--
-- Data for Name: draftworkflowschemeentity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY draftworkflowschemeentity (id, scheme, workflow, issuetype) FROM stdin;
\.


--
-- Data for Name: entity_property; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY entity_property (id, entity_name, entity_id, property_key, created, updated, json_value) FROM stdin;
\.


--
-- Data for Name: entity_property_index_document; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY entity_property_index_document (id, plugin_key, module_key, entity_key, updated, document) FROM stdin;
10000	com.atlassian.jira.plugins.jira-development-integration-plugin	jira-issue-fusion-jql	IssueProperty	2016-07-06 12:39:57.963+00	<?xml version="1.0" encoding="UTF-8"?>\n<index-document-configuration entity-key="IssueProperty"><key property-key="development"><extract path="failingbuilds" type="NUMBER"/><extract path="openprs" type="NUMBER"/><extract path="prs" type="NUMBER"/><extract path="reviews" type="NUMBER"/><extract path="openreviews" type="NUMBER"/><extract path="commits" type="NUMBER"/></key></index-document-configuration>
\.


--
-- Data for Name: entity_translation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY entity_translation (id, entity_name, entity_id, locale, trans_name, trans_desc) FROM stdin;
\.


--
-- Data for Name: external_entities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY external_entities (id, name, entitytype) FROM stdin;
\.


--
-- Data for Name: externalgadget; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY externalgadget (id, gadget_xml) FROM stdin;
\.


--
-- Data for Name: favouriteassociations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY favouriteassociations (id, username, entitytype, entityid, sequence) FROM stdin;
\.


--
-- Data for Name: feature; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY feature (id, feature_name, feature_type, user_key) FROM stdin;
10001	com.atlassian.jira.projects.issuenavigator	site	
10000	com.atlassian.jira.projects.ProjectCentricNavigation.Switch	site	
\.


--
-- Data for Name: fieldconfigscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fieldconfigscheme (id, configname, description, fieldid, customfield) FROM stdin;
10100	Default Configuration Scheme for Sprint	Default configuration scheme generated by JIRA	customfield_10000	\N
10101	Default Configuration Scheme for Epic Link	Default configuration scheme generated by JIRA	customfield_10001	\N
10102	Default Configuration Scheme for Rank	Default configuration scheme generated by JIRA	customfield_10005	\N
10103	Default Configuration Scheme for Epic Name	Default configuration scheme generated by JIRA	customfield_10003	\N
10104	Default Configuration Scheme for Epic Status	Default configuration scheme generated by JIRA	customfield_10002	\N
10105	Default Configuration Scheme for Epic Color	Default configuration scheme generated by JIRA	customfield_10004	\N
10000	Default Issue Type Scheme	Default issue type scheme is the list of global issue types. All newly created issue types will automatically be added to this scheme.	issuetype	\N
10106	Default Configuration Scheme for Story Points	Default configuration scheme generated by JIRA	customfield_10006	\N
\.


--
-- Data for Name: fieldconfigschemeissuetype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fieldconfigschemeissuetype (id, issuetype, fieldconfigscheme, fieldconfiguration) FROM stdin;
10200	\N	10100	10100
10201	\N	10101	10101
10202	\N	10102	10102
10204	10000	10103	10103
10205	10000	10104	10104
10206	10000	10105	10105
10207	\N	10000	10000
10208	10000	10106	10106
10209	10001	10106	10106
\.


--
-- Data for Name: fieldconfiguration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fieldconfiguration (id, configname, description, fieldid, customfield) FROM stdin;
10000	Default Configuration for Issue Type	Default configuration generated by JIRA	issuetype	\N
10100	Default Configuration for Sprint	Default configuration generated by JIRA	customfield_10000	\N
10101	Default Configuration for Epic Link	Default configuration generated by JIRA	customfield_10001	\N
10102	Default Configuration for Rank	Default configuration generated by JIRA	customfield_10005	\N
10103	Default Configuration for Epic Name	Default configuration generated by JIRA	customfield_10003	\N
10104	Default Configuration for Epic Status	Default configuration generated by JIRA	customfield_10002	\N
10105	Default Configuration for Epic Color	Default configuration generated by JIRA	customfield_10004	\N
10106	Default Configuration for Story Points	Default configuration generated by JIRA	customfield_10006	\N
\.


--
-- Data for Name: fieldlayout; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fieldlayout (id, name, description, layout_type, layoutscheme) FROM stdin;
10000	Default Field Configuration	The default field configuration	default	\N
\.


--
-- Data for Name: fieldlayoutitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fieldlayoutitem (id, fieldlayout, fieldidentifier, description, verticalposition, ishidden, isrequired, renderertype) FROM stdin;
10119	10000	summary	\N	\N	false	true	jira-text-renderer
10120	10000	issuetype	\N	\N	false	true	jira-text-renderer
10121	10000	security	\N	\N	false	false	jira-text-renderer
10122	10000	priority	\N	\N	false	false	jira-text-renderer
10123	10000	duedate	\N	\N	false	false	jira-text-renderer
10124	10000	components	\N	\N	false	false	frother-control-renderer
10125	10000	versions	\N	\N	false	false	frother-control-renderer
10126	10000	fixVersions	\N	\N	false	false	frother-control-renderer
10127	10000	assignee	\N	\N	false	false	jira-text-renderer
10128	10000	reporter	\N	\N	false	true	jira-text-renderer
10129	10000	environment	For example operating system, software platform and/or hardware specifications (include as appropriate for the issue).	\N	false	false	atlassian-wiki-renderer
10130	10000	description	\N	\N	false	false	atlassian-wiki-renderer
10131	10000	timetracking	An estimate of how much work remains until this issue will be resolved.<br>The format of this is ' *w *d *h *m ' (representing weeks, days, hours and minutes - where * can be any number)<br>Examples: 4d, 5h 30m, 60m and 3w.<br>	\N	false	false	jira-text-renderer
10132	10000	resolution	\N	\N	false	false	jira-text-renderer
10133	10000	attachment	\N	\N	false	false	jira-text-renderer
10134	10000	comment	\N	\N	false	false	atlassian-wiki-renderer
10135	10000	labels	\N	\N	false	false	jira-text-renderer
10136	10000	worklog	Allows work to be logged whilst creating, editing or transitioning issues.	\N	false	false	atlassian-wiki-renderer
10137	10000	issuelinks	\N	\N	false	false	jira-text-renderer
10138	10000	customfield_10000	JIRA Software sprint field	\N	false	false	jira-text-renderer
10139	10000	customfield_10001	Choose an epic to assign this issue to.	\N	false	false	jira-text-renderer
10140	10000	customfield_10002	Epic Status field for JIRA Software use only.	\N	false	false	jira-text-renderer
10141	10000	customfield_10003	Provide a short name to identify this epic.	\N	false	true	jira-text-renderer
\.


--
-- Data for Name: fieldlayoutscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fieldlayoutscheme (id, name, description) FROM stdin;
\.


--
-- Data for Name: fieldlayoutschemeassociation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fieldlayoutschemeassociation (id, issuetype, project, fieldlayoutscheme) FROM stdin;
\.


--
-- Data for Name: fieldlayoutschemeentity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fieldlayoutschemeentity (id, scheme, issuetype, fieldlayout) FROM stdin;
\.


--
-- Data for Name: fieldscreen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fieldscreen (id, name, description) FROM stdin;
1	Default Screen	Allows to update all system fields.
2	Workflow Screen	This screen is used in the workflow and enables you to assign issues
3	Resolve Issue Screen	Allows to set resolution, change fix versions and assign an issue.
\.


--
-- Data for Name: fieldscreenlayoutitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fieldscreenlayoutitem (id, fieldidentifier, sequence, fieldscreentab) FROM stdin;
10000	summary	0	10000
10001	issuetype	1	10000
10002	security	2	10000
10003	priority	3	10000
10004	duedate	4	10000
10005	components	5	10000
10006	versions	6	10000
10007	fixVersions	7	10000
10008	assignee	8	10000
10009	reporter	9	10000
10010	environment	10	10000
10011	description	11	10000
10012	timetracking	12	10000
10013	attachment	13	10000
10014	assignee	0	10001
10015	resolution	0	10002
10016	fixVersions	1	10002
10017	assignee	2	10002
10018	worklog	3	10002
10100	labels	14	10000
\.


--
-- Data for Name: fieldscreenscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fieldscreenscheme (id, name, description) FROM stdin;
1	Default Screen Scheme	Default Screen Scheme
\.


--
-- Data for Name: fieldscreenschemeitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fieldscreenschemeitem (id, operation, fieldscreen, fieldscreenscheme) FROM stdin;
10000	\N	1	1
\.


--
-- Data for Name: fieldscreentab; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fieldscreentab (id, name, description, sequence, fieldscreen) FROM stdin;
10000	Field Tab	\N	0	1
10001	Field Tab	\N	0	2
10002	Field Tab	\N	0	3
\.


--
-- Data for Name: fileattachment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fileattachment (id, issueid, mimetype, filename, created, filesize, author, zip, thumbnailable) FROM stdin;
\.


--
-- Data for Name: filtersubscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY filtersubscription (id, filter_i_d, username, groupname, last_run, email_on_empty) FROM stdin;
\.


--
-- Data for Name: gadgetuserpreference; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gadgetuserpreference (id, portletconfiguration, userprefkey, userprefvalue) FROM stdin;
10000	10002	isConfigured	true
10001	10003	keys	__all_projects__
10002	10003	isConfigured	true
10003	10003	title	Your Company JIRA
10004	10003	numofentries	5
\.


--
-- Data for Name: genericconfiguration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY genericconfiguration (id, datatype, datakey, xmlvalue) FROM stdin;
10000	DefaultValue	10000	<string>1</string>
10100	DefaultValue	10104	<long>10000</long>
\.


--
-- Data for Name: globalpermissionentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY globalpermissionentry (id, permission, group_id) FROM stdin;
10000	ADMINISTER	jira-administrators
10006	SYSTEM_ADMIN	jira-administrators
10100	BULK_CHANGE	jira-software-users
10101	USER_PICKER	jira-software-users
10102	MANAGE_GROUP_FILTER_SUBSCRIPTIONS	jira-software-users
10103	CREATE_SHARED_OBJECTS	jira-software-users
10104	USER_PICKER	jira-administrators
10105	BULK_CHANGE	jira-administrators
10106	CREATE_SHARED_OBJECTS	jira-administrators
10107	MANAGE_GROUP_FILTER_SUBSCRIPTIONS	jira-administrators
\.


--
-- Data for Name: groupbase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY groupbase (id, groupname) FROM stdin;
\.


--
-- Data for Name: issuelink; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY issuelink (id, linktype, source, destination, sequence) FROM stdin;
\.


--
-- Data for Name: issuelinktype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY issuelinktype (id, linkname, inward, outward, pstyle) FROM stdin;
10100	jira_subtask_link	jira_subtask_inward	jira_subtask_outward	jira_subtask
10000	Blocks	is blocked by	blocks	\N
10001	Cloners	is cloned by	clones	\N
10002	Duplicate	is duplicated by	duplicates	\N
10003	Relates	relates to	relates to	\N
10200	Epic-Story Link	has Epic	is Epic of	jira_gh_epic_story
\.


--
-- Data for Name: issuesecurityscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY issuesecurityscheme (id, name, description, defaultlevel) FROM stdin;
\.


--
-- Data for Name: issuestatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY issuestatus (id, sequence, pname, description, iconurl, statuscategory) FROM stdin;
1	1	Open	The issue is open and ready for the assignee to start work on it.	/images/icons/statuses/open.png	2
3	3	In Progress	This issue is being actively worked on at the moment by the assignee.	/images/icons/statuses/inprogress.png	4
4	4	Reopened	This issue was once resolved, but the resolution was deemed incorrect. From here issues are either marked assigned or resolved.	/images/icons/statuses/reopened.png	2
5	5	Resolved	A resolution has been taken, and it is awaiting verification by reporter. From here issues are either reopened, or are closed.	/images/icons/statuses/resolved.png	3
6	6	Closed	The issue is considered finished, the resolution is correct. Issues which are closed can be reopened.	/images/icons/statuses/closed.png	3
\.


--
-- Data for Name: issuetype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY issuetype (id, sequence, pname, pstyle, description, iconurl, avatar) FROM stdin;
10000	\N	Epic	\N	gh.issue.epic.desc	/images/icons/issuetypes/epic.svg	\N
10001	\N	Story	\N	gh.issue.story.desc	/images/icons/issuetypes/story.svg	\N
\.


--
-- Data for Name: issuetypescreenscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY issuetypescreenscheme (id, name, description) FROM stdin;
1	Default Issue Type Screen Scheme	The default issue type screen scheme
\.


--
-- Data for Name: issuetypescreenschemeentity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY issuetypescreenschemeentity (id, issuetype, scheme, fieldscreenscheme) FROM stdin;
10000	\N	1	1
\.


--
-- Data for Name: jiraaction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jiraaction (id, issueid, author, actiontype, actionlevel, rolelevel, actionbody, created, updateauthor, updated, actionnum) FROM stdin;
\.


--
-- Data for Name: jiradraftworkflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jiradraftworkflows (id, parentname, descriptor) FROM stdin;
\.


--
-- Data for Name: jiraeventtype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jiraeventtype (id, template_id, name, description, event_type) FROM stdin;
1	\N	Issue Created	This is the 'issue created' event.	jira.system.event.type
2	\N	Issue Updated	This is the 'issue updated' event.	jira.system.event.type
3	\N	Issue Assigned	This is the 'issue assigned' event.	jira.system.event.type
4	\N	Issue Resolved	This is the 'issue resolved' event.	jira.system.event.type
5	\N	Issue Closed	This is the 'issue closed' event.	jira.system.event.type
6	\N	Issue Commented	This is the 'issue commented' event.	jira.system.event.type
7	\N	Issue Reopened	This is the 'issue reopened' event.	jira.system.event.type
8	\N	Issue Deleted	This is the 'issue deleted' event.	jira.system.event.type
9	\N	Issue Moved	This is the 'issue moved' event.	jira.system.event.type
10	\N	Work Logged On Issue	This is the 'work logged on issue' event.	jira.system.event.type
11	\N	Work Started On Issue	This is the 'work started on issue' event.	jira.system.event.type
12	\N	Work Stopped On Issue	This is the 'work stopped on issue' event.	jira.system.event.type
13	\N	Generic Event	This is the 'generic event' event.	jira.system.event.type
14	\N	Issue Comment Edited	This is the 'issue comment edited' event.	jira.system.event.type
15	\N	Issue Worklog Updated	This is the 'issue worklog updated' event.	jira.system.event.type
16	\N	Issue Worklog Deleted	This is the 'issue worklog deleted' event.	jira.system.event.type
17	\N	Issue Comment Deleted	This is the 'issue comment deleted' event.	jira.system.event.type
\.


--
-- Data for Name: jiraissue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jiraissue (id, pkey, issuenum, project, reporter, assignee, creator, issuetype, summary, description, environment, priority, resolution, issuestatus, created, updated, duedate, resolutiondate, votes, watches, timeoriginalestimate, timeestimate, timespent, workflow_id, security, fixfor, component) FROM stdin;
\.


--
-- Data for Name: jiraperms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jiraperms (id, permtype, projectid, groupname) FROM stdin;
\.


--
-- Data for Name: jiraworkflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jiraworkflows (id, workflowname, creatorname, descriptor, islocked) FROM stdin;
10000	classic default workflow	\N	<?xml version="1.0" encoding="UTF-8"?>\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\n<workflow>\n  <meta name="jira.description">The classic JIRA default workflow</meta>\n  <initial-actions>\n    <action id="1" name="Create Issue">\n      <meta name="opsbar-sequence">0</meta>\n      <meta name="jira.i18n.title">common.forms.create</meta>\n      <validators>\n        <validator name="" type="class">\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n          <arg name="permission">Create Issue</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status="Finished" status="Open" step="1">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">1</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <common-actions>\n    <action id="2" name="Close Issue" view="resolveissue">\n      <meta name="opsbar-sequence">60</meta>\n      <meta name="jira.i18n.submit">closeissue.close</meta>\n      <meta name="jira.i18n.description">closeissue.desc</meta>\n      <meta name="jira.i18n.title">closeissue.title</meta>\n      <restrict-to>\n        <conditions type="AND">\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Close Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Closed" step="6">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">5</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="3" name="Reopen Issue" view="commentassign">\n      <meta name="opsbar-sequence">80</meta>\n      <meta name="jira.i18n.submit">issue.operations.reopen.issue</meta>\n      <meta name="jira.i18n.description">issue.operations.reopen.description</meta>\n      <meta name="jira.i18n.title">issue.operations.reopen.issue</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Reopened" step="5">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name="field.value"></arg>\n              <arg name="field.name">resolution</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">7</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="4" name="Start Progress">\n      <meta name="opsbar-sequence">20</meta>\n      <meta name="jira.i18n.title">startprogress.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Underway" step="3">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name="field.value"></arg>\n              <arg name="field.name">resolution</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">11</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="5" name="Resolve Issue" view="resolveissue">\n      <meta name="opsbar-sequence">40</meta>\n      <meta name="jira.i18n.submit">resolveissue.resolve</meta>\n      <meta name="jira.i18n.description">resolveissue.desc.line1</meta>\n      <meta name="jira.i18n.title">resolveissue.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Resolved" step="4">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">4</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </common-actions>\n  <steps>\n    <step id="1" name="Open">\n      <meta name="jira.status.id">1</meta>\n      <actions>\n<common-action id="4" />\n<common-action id="5" />\n<common-action id="2" />\n      </actions>\n    </step>\n    <step id="3" name="In Progress">\n      <meta name="jira.status.id">3</meta>\n      <actions>\n<common-action id="5" />\n<common-action id="2" />\n        <action id="301" name="Stop Progress">\n          <meta name="opsbar-sequence">20</meta>\n          <meta name="jira.i18n.title">stopprogress.title</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="class.name">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Finished" status="Assigned" step="1">\n              <post-functions>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                  <arg name="field.value"></arg>\n                  <arg name="field.name">resolution</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name="eventTypeId">12</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="4" name="Resolved">\n      <meta name="jira.status.id">5</meta>\n      <actions>\n<common-action id="3" />\n        <action id="701" name="Close Issue" view="commentassign">\n          <meta name="opsbar-sequence">60</meta>\n          <meta name="jira.i18n.submit">closeissue.close</meta>\n          <meta name="jira.i18n.description">closeissue.desc</meta>\n          <meta name="jira.i18n.title">closeissue.title</meta>\n          <meta name="jira.description">Closing an issue indicates there is no more work to be done on it, and it has been verified as complete.</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n                <arg name="permission">Close Issue</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Finished" status="Closed" step="6">\n              <post-functions>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name="eventTypeId">5</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="5" name="Reopened">\n      <meta name="jira.status.id">4</meta>\n      <actions>\n<common-action id="5" />\n<common-action id="2" />\n<common-action id="4" />\n      </actions>\n    </step>\n    <step id="6" name="Closed">\n      <meta name="jira.status.id">6</meta>\n      <meta name="jira.issue.editable">false</meta>\n      <actions>\n<common-action id="3" />\n      </actions>\n    </step>\n  </steps>\n</workflow>\n	\N
\.


--
-- Data for Name: jiraworkflowstatuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jiraworkflowstatuses (id, status, parentname) FROM stdin;
\.


--
-- Data for Name: jquartz_blob_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jquartz_blob_triggers (sched_name, trigger_name, trigger_group, blob_data) FROM stdin;
\.


--
-- Data for Name: jquartz_calendars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jquartz_calendars (sched_name, calendar_name, calendar) FROM stdin;
\.


--
-- Data for Name: jquartz_cron_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jquartz_cron_triggers (sched_name, trigger_name, trigger_group, cron_expression, time_zone_id) FROM stdin;
\.


--
-- Data for Name: jquartz_fired_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jquartz_fired_triggers (sched_name, entry_id, trigger_name, trigger_group, is_volatile, instance_name, fired_time, sched_time, priority, state, job_name, job_group, is_stateful, is_nonconcurrent, is_update_data, requests_recovery) FROM stdin;
\.


--
-- Data for Name: jquartz_job_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jquartz_job_details (sched_name, job_name, job_group, description, job_class_name, is_durable, is_volatile, is_stateful, is_nonconcurrent, is_update_data, requests_recovery, job_data) FROM stdin;
\.


--
-- Data for Name: jquartz_job_listeners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jquartz_job_listeners (job_name, job_group, job_listener) FROM stdin;
\.


--
-- Data for Name: jquartz_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jquartz_locks (sched_name, lock_name) FROM stdin;
\N	TRIGGER_ACCESS
\N	JOB_ACCESS
\N	CALENDAR_ACCESS
\N	STATE_ACCESS
\N	MISFIRE_ACCESS
\.


--
-- Data for Name: jquartz_paused_trigger_grps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jquartz_paused_trigger_grps (sched_name, trigger_group) FROM stdin;
\.


--
-- Data for Name: jquartz_scheduler_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jquartz_scheduler_state (sched_name, instance_name, last_checkin_time, checkin_interval) FROM stdin;
\.


--
-- Data for Name: jquartz_simple_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jquartz_simple_triggers (sched_name, trigger_name, trigger_group, repeat_count, repeat_interval, times_triggered) FROM stdin;
\.


--
-- Data for Name: jquartz_simprop_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jquartz_simprop_triggers (sched_name, trigger_name, trigger_group, str_prop_1, str_prop_2, str_prop_3, int_prop_1, int_prop_2, long_prop_1, long_prop_2, dec_prop_1, dec_prop_2, bool_prop_1, bool_prop_2) FROM stdin;
\.


--
-- Data for Name: jquartz_trigger_listeners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jquartz_trigger_listeners (trigger_name, trigger_group, trigger_listener) FROM stdin;
\.


--
-- Data for Name: jquartz_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jquartz_triggers (sched_name, trigger_name, trigger_group, job_name, job_group, is_volatile, description, next_fire_time, prev_fire_time, priority, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr, job_data) FROM stdin;
\.


--
-- Data for Name: label; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY label (id, fieldid, issue, label) FROM stdin;
\.


--
-- Data for Name: licenserolesdefault; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY licenserolesdefault (id, license_role_name) FROM stdin;
10000	jira-software
\.


--
-- Data for Name: licenserolesgroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY licenserolesgroup (id, license_role_name, group_id, primary_group) FROM stdin;
10000	jira-software	jira-software-users	Y
10001	jira-software	jira-administrators	N
\.


--
-- Data for Name: listenerconfig; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY listenerconfig (id, clazz, listenername) FROM stdin;
10000	com.atlassian.jira.event.listeners.mail.MailListener	Mail Listener
10001	com.atlassian.jira.event.listeners.history.IssueAssignHistoryListener	Issue Assignment Listener
10002	com.atlassian.jira.event.listeners.search.IssueIndexListener	Issue Index Listener
\.


--
-- Data for Name: mailserver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mailserver (id, name, description, mailfrom, prefix, smtp_port, protocol, server_type, servername, jndilocation, mailusername, mailpassword, istlsrequired, timeout, socks_port, socks_host) FROM stdin;
\.


--
-- Data for Name: managedconfigurationitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY managedconfigurationitem (id, item_id, item_type, managed, access_level, source, description_key) FROM stdin;
10000	customfield_10000	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10001	customfield_10001	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10002	customfield_10002	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10003	customfield_10003	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10004	customfield_10004	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10005	customfield_10005	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
\.


--
-- Data for Name: membershipbase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY membershipbase (id, user_name, group_name) FROM stdin;
\.


--
-- Data for Name: moved_issue_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY moved_issue_key (id, old_issue_key, issue_id) FROM stdin;
\.


--
-- Data for Name: nodeassociation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY nodeassociation (source_node_id, source_node_entity, sink_node_id, sink_node_entity, association_type, sequence) FROM stdin;
\.


--
-- Data for Name: nodeindexcounter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY nodeindexcounter (id, node_id, sending_node_id, index_operation_id) FROM stdin;
\.


--
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY notification (id, scheme, event, event_type_id, template_id, notif_type, notif_parameter) FROM stdin;
10000	10000	\N	1	\N	Current_Assignee	\N
10001	10000	\N	1	\N	Current_Reporter	\N
10002	10000	\N	1	\N	All_Watchers	\N
10003	10000	\N	2	\N	Current_Assignee	\N
10004	10000	\N	2	\N	Current_Reporter	\N
10005	10000	\N	2	\N	All_Watchers	\N
10006	10000	\N	3	\N	Current_Assignee	\N
10007	10000	\N	3	\N	Current_Reporter	\N
10008	10000	\N	3	\N	All_Watchers	\N
10009	10000	\N	4	\N	Current_Assignee	\N
10010	10000	\N	4	\N	Current_Reporter	\N
10011	10000	\N	4	\N	All_Watchers	\N
10012	10000	\N	5	\N	Current_Assignee	\N
10013	10000	\N	5	\N	Current_Reporter	\N
10014	10000	\N	5	\N	All_Watchers	\N
10015	10000	\N	6	\N	Current_Assignee	\N
10016	10000	\N	6	\N	Current_Reporter	\N
10017	10000	\N	6	\N	All_Watchers	\N
10018	10000	\N	7	\N	Current_Assignee	\N
10019	10000	\N	7	\N	Current_Reporter	\N
10020	10000	\N	7	\N	All_Watchers	\N
10021	10000	\N	8	\N	Current_Assignee	\N
10022	10000	\N	8	\N	Current_Reporter	\N
10023	10000	\N	8	\N	All_Watchers	\N
10024	10000	\N	9	\N	Current_Assignee	\N
10025	10000	\N	9	\N	Current_Reporter	\N
10026	10000	\N	9	\N	All_Watchers	\N
10027	10000	\N	10	\N	Current_Assignee	\N
10028	10000	\N	10	\N	Current_Reporter	\N
10029	10000	\N	10	\N	All_Watchers	\N
10030	10000	\N	11	\N	Current_Assignee	\N
10031	10000	\N	11	\N	Current_Reporter	\N
10032	10000	\N	11	\N	All_Watchers	\N
10033	10000	\N	12	\N	Current_Assignee	\N
10034	10000	\N	12	\N	Current_Reporter	\N
10035	10000	\N	12	\N	All_Watchers	\N
10036	10000	\N	13	\N	Current_Assignee	\N
10037	10000	\N	13	\N	Current_Reporter	\N
10038	10000	\N	13	\N	All_Watchers	\N
10100	10000	\N	14	\N	Current_Assignee	\N
10101	10000	\N	14	\N	Current_Reporter	\N
10102	10000	\N	14	\N	All_Watchers	\N
10103	10000	\N	15	\N	Current_Assignee	\N
10104	10000	\N	15	\N	Current_Reporter	\N
10105	10000	\N	15	\N	All_Watchers	\N
10106	10000	\N	16	\N	Current_Assignee	\N
10107	10000	\N	16	\N	Current_Reporter	\N
10108	10000	\N	16	\N	All_Watchers	\N
\.


--
-- Data for Name: notificationinstance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY notificationinstance (id, notificationtype, source, emailaddress, messageid) FROM stdin;
\.


--
-- Data for Name: notificationscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY notificationscheme (id, name, description) FROM stdin;
10000	Default Notification Scheme	\N
\.


--
-- Data for Name: oauthconsumer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY oauthconsumer (id, created, consumername, consumer_key, consumerservice, public_key, private_key, description, callback, signature_method, shared_secret) FROM stdin;
10100	2016-07-11 15:05:53.028+00	Polytech JIRA	jira:0b744a74-9c0e-4bb8-8fbf-32f64c8eaabe	__HOST_SERVICE__	MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDSdZDwz/qvofee4LrAMJDOGe6Igg6dqCQ6WJL5U5lWfqIYnnnIFQarydQU/imbeiTZ/fKUZjQHxfCKfyhXk/gyIfMnHpt2S973kj/pgwzUA5wp0fIDPA/zbsKpee/ZcWZbGiLu9sCnAfnJVgYYWk20eElxLleFiItOnhaQIwLaNwIDAQAB	MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBANJ1kPDP+q+h957gusAwkM4Z7oiCDp2oJDpYkvlTmVZ+ohieecgVBqvJ1BT+KZt6JNn98pRmNAfF8Ip/KFeT+DIh8ycem3ZL3veSP+mDDNQDnCnR8gM8D/Nuwql579lxZlsaIu72wKcB+clWBhhaTbR4SXEuV4WIi06eFpAjAto3AgMBAAECgYBsZpnNL5LTu/0rHF2UeG9deQXf0f1tPxnJ461wNpsYbglX3OilIg9ZlI9kcLVFm9g3YBH+VdYe2tlWvMAuu8xuNstRiHoQUpc77qRROPdcVwxg97xh4/kwYJzDfWzEe4EdG03GwHAe62qqJktBN7rweo7uHuqQIKVcup0bs0MwIQJBAO97d9nyXryC9/JY7GxamJ0EoLnSKoujEpvdVXQ8E5Zi0kSsSymazOUnADlwCz/fhB6DhvwSBqQcQikhdgSxKl0CQQDg+aOHrKKcvZk6hQls56SGWPvh3+MfL8e5CpwNWERaE5PIH9W3b7Fvt8Z3GJ5D/RjcGSZeIZX7x9wxidGVdFWjAkBZmn/Qez/5FqPA+IaVUBxz+4xLmpgyoPRQfzL/B49ooFb+PNzuly38u2f5FbQP1QixBhNWc0Qq2SvkCdIHlWY9AkEAnPw1qz/AvMTkflxE5nSBbqn7IXNcBfAOWsXXfMxh7cUJczUbqYPL+dvwJjzMez7KMRNvnXGsOeQNd5fm4nYqJwJBAIr9M4TFFZgBGqLcOwf/+soMSYjHJrII8Wr/kLU8cD8iNUCs72f4lLK6IsEQrt8X+LZDpXtTKsDpaiIO4Yjb2K8=	Atlassian JIRA at http://localhost/jira	\N	RSA_SHA1	\N
\.


--
-- Data for Name: oauthconsumertoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY oauthconsumertoken (id, created, token_key, token, token_secret, token_type, consumer_key) FROM stdin;
\.


--
-- Data for Name: oauthspconsumer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY oauthspconsumer (id, created, consumer_key, consumername, public_key, description, callback, two_l_o_allowed, executing_two_l_o_user, two_l_o_impersonation_allowed, three_l_o_allowed) FROM stdin;
10000	2016-07-11 15:05:52.638+00	Bitbucket:0900407872	Bitbucket	MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCBeYbgM260e+exnKVj6kmP+CVV/X3QbP28RQCRStGEDluQF7NWeiU22dqxp0vG5F1dbXc+Rijqrn9i0hf1WCqeETzlApijK4ERdEbe9EADY1V4dym6ceMtRYYQ5QgVZKIE61ouVFSWAcxe7LQixVJlKk08uhX6GjcKpSK6AAw6MQIDAQAB	Atlassian Bitbucket at http://134.59.130.155/bitbucket 	\N	Y	\N	N	Y
\.


--
-- Data for Name: oauthsptoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY oauthsptoken (id, created, token, token_secret, token_type, consumer_key, username, ttl, spauth, callback, spverifier, spversion, session_handle, session_creation_time, session_last_renewal_time, session_time_to_live) FROM stdin;
\.


--
-- Data for Name: optionconfiguration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY optionconfiguration (id, fieldid, optionid, fieldconfig, sequence) FROM stdin;
10201	issuetype	10000	10000	0
10202	issuetype	10001	10000	1
\.


--
-- Data for Name: os_currentstep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY os_currentstep (id, entry_id, step_id, action_id, owner, start_date, due_date, finish_date, status, caller) FROM stdin;
\.


--
-- Data for Name: os_currentstep_prev; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY os_currentstep_prev (id, previous_id) FROM stdin;
\.


--
-- Data for Name: os_historystep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY os_historystep (id, entry_id, step_id, action_id, owner, start_date, due_date, finish_date, status, caller) FROM stdin;
\.


--
-- Data for Name: os_historystep_prev; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY os_historystep_prev (id, previous_id) FROM stdin;
\.


--
-- Data for Name: os_wfentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY os_wfentry (id, name, initialized, state) FROM stdin;
\.


--
-- Data for Name: permissionscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY permissionscheme (id, name, description) FROM stdin;
0	Default Permission Scheme	This is the default Permission Scheme. Any new projects that are created will be assigned this scheme.
\.


--
-- Data for Name: pluginstate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pluginstate (pluginkey, pluginenabled) FROM stdin;
\.


--
-- Data for Name: pluginversion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pluginversion (id, pluginname, pluginkey, pluginversion, created) FROM stdin;
10000	JIRA Projects Plugin	com.atlassian.jira.jira-projects-plugin	4.0.8	2016-07-06 12:42:03.789+00
10002	Atlassian OAuth Consumer Plugin	com.atlassian.oauth.consumer	2.0.2	2016-07-06 12:42:03.811+00
10004	Project Creation Plugin SPI for JIRA	com.atlassian.plugins.jira-project-creation	2.0.8	2016-07-06 12:42:03.817+00
10005	Atlassian Embedded Crowd - Administration Plugin	com.atlassian.crowd.embedded.admin	2.0.0-m4	2016-07-06 12:42:03.822+00
10006	Analytics Client Plugin	com.atlassian.analytics.analytics-client	5.0.10	2016-07-06 12:42:03.827+00
10007	jira-help-tips	com.atlassian.plugins.helptips.jira-help-tips	1.0.5	2016-07-06 12:42:03.83+00
10008	Atlassian Navigation Links Plugin	com.atlassian.plugins.atlassian-nav-links-plugin	4.2.4	2016-07-06 12:42:03.836+00
10009	Apache HttpCore OSGi bundle	org.apache.httpcomponents.httpcore-4.2.4	4.2.4	2016-07-06 12:42:03.839+00
10011	Atlassian Hipchat Integration Plugin Core	com.atlassian.plugins.base-hipchat-integration-plugin-api	7.3.5	2016-07-06 12:42:03.844+00
10012	Project Role Actors Plugin	com.atlassian.jira.plugin.system.projectroleactors	1.0	2016-07-06 12:42:03.848+00
10014	Apache HttpClient OSGi bundle	org.apache.httpcomponents.httpclient-4.2.5	4.2.5	2016-07-06 12:42:03.854+00
10015	Keyboard Shortcuts Plugin	jira.keyboard.shortcuts	1.0	2016-07-06 12:42:03.862+00
10016	Bitbucket Importer Plugin for JIM	com.atlassian.jira.plugins.jira-importers-bitbucket-plugin	1.0.15	2016-07-06 12:42:03.865+00
10017	Atlassian Remote Event Common Plugin	com.atlassian.plugins.atlassian-remote-event-common-plugin	1.0.9-D20151109T070900	2016-07-06 12:42:03.868+00
10018	JIRA GitHub Issue Importer	com.atlassian.jira.plugins.jira-importers-github-plugin	2.0.11	2016-07-06 12:42:03.871+00
10019	JIRA Password Policy Plugin	com.atlassian.jira.plugins.jira-password-policy-plugin	2.0.2	2016-07-06 12:42:03.874+00
10020	ROME: RSS/Atom syndication and publishing tools	com.springsource.com.sun.syndication-0.9.0	0.9.0	2016-07-06 12:42:03.877+00
10021	JIRA iCalendar Plugin	com.atlassian.jira.extra.jira-ical-feed	1.4.5	2016-07-06 12:42:03.88+00
10022	JIRA Drag and Drop Attachment Plugin	com.atlassian.jira.plugins.jira-dnd-attachment-plugin	4.2.15	2016-07-06 12:42:03.883+00
10024	Streams Inline Actions Plugin	com.atlassian.streams.actions	6.0.9	2016-07-06 12:42:03.892+00
10025	Comment Panel Plugin	com.atlassian.jira.plugin.system.comment-panel	1.0	2016-07-06 12:42:03.898+00
10027	Atlassian Remote Event Consumer Plugin	com.atlassian.plugins.atlassian-remote-event-consumer-plugin	1.0.9-D20151109T070900	2016-07-06 12:42:03.904+00
10028	scala-2.11-provider-plugin	com.atlassian.scala.plugins.scala-2.11-provider-plugin	0.10	2016-07-06 12:42:03.909+00
10029	JIRA Workflow Transition Tabs	com.atlassian.jira.plugin.system.workfloweditor.transition.tabs	1.0	2016-07-06 12:42:03.913+00
10030	Renderer Plugin	com.atlassian.jira.plugin.system.jirarenderers	1.0	2016-07-06 12:42:03.916+00
10031	Atlassian Gadgets OAuth Service Provider Plugin	com.atlassian.gadgets.oauth.serviceprovider	4.2.0	2016-07-06 12:42:03.919+00
10032	JIRA Core Japanese (Japan) Language Pack	tac.jira core.languages.ja_JP	7.1.0-m01-v2r325-2016-02-03	2016-07-06 12:42:03.926+00
10033	JIRA for Software Plugin	com.atlassian.jira.plugins.jira-software-plugin	2.0.6-D20160321T004121	2016-07-06 12:42:03.929+00
10035	JIRA Core German (Germany) Language Pack	tac.jira core.languages.de_DE	7.1.0-m01-v2r71-2016-02-04	2016-07-06 12:42:03.935+00
10036	Atlassian Plugins - Web Resources - Implementation Plugin	com.atlassian.plugins.atlassian-plugins-webresource-plugin	3.5.9	2016-07-06 12:42:03.938+00
10037	Preset Filters Sections	jira.webfragments.preset.filters	1.0	2016-07-06 12:42:03.942+00
10038	JIRA Project Config Plugin	com.atlassian.jira.jira-project-config-plugin	8.2.10	2016-07-06 12:42:03.945+00
10039	Crowd System Password Encoders	crowd.system.passwordencoders	1.0	2016-07-06 12:42:03.948+00
10040	Atlassian UI Plugin	com.atlassian.auiplugin	5.7.46	2016-07-06 12:42:03.951+00
10043	Remote Link Aggregator Plugin	com.atlassian.plugins.remote-link-aggregator-plugin	2.0.14	2016-07-06 12:42:03.966+00
10044	Atlassian HealthCheck Common Module	com.atlassian.healthcheck.atlassian-healthcheck	3.0.1	2016-07-06 12:42:03.971+00
10045	Workbox - Common Plugin	com.atlassian.mywork.mywork-common-plugin	3.0.4	2016-07-06 12:42:03.974+00
10046	JIRA Workflow Sharing Plugin	com.atlassian.jira.plugins.workflow.sharing.jira-workflow-sharing-plugin	2.0.3	2016-07-06 12:42:03.978+00
10047	Entity property conditions	system.entity.property.conditions	1.0	2016-07-06 12:42:03.981+00
10048	JQL Functions	jira.jql.function	1.0	2016-07-06 12:42:03.984+00
10049	Atlassian Soy - Plugin	com.atlassian.soy.soy-template-plugin	4.3.0	2016-07-06 12:42:03.987+00
10050	atlassian-failure-cache-plugin	com.atlassian.atlassian-failure-cache-plugin	0.15	2016-07-06 12:42:03.99+00
10052	JIRA Footer	jira.footer	1.0	2016-07-06 12:42:03.995+00
10054	Applinks - Plugin - Core	com.atlassian.applinks.applinks-plugin	5.0.7	2016-07-06 12:42:04+00
10055	Analytics Whitelist Plugin	com.atlassian.analytics.analytics-whitelist	3.37	2016-07-06 12:42:04.003+00
10056	Atlassian JIRA - Plugins - Invite User	com.atlassian.jira.jira-invite-user-plugin	2.0.13	2016-07-06 12:42:04.007+00
10057	Applinks - Plugin - Basic Authentication	com.atlassian.applinks.applinks-basicauth-plugin	5.0.7	2016-07-06 12:42:04.01+00
10058	User Profile Links	jira.webfragments.user.profile.links	1.0	2016-07-06 12:42:04.013+00
10059	Admin Menu Sections	jira.webfragments.admin	1.0	2016-07-06 12:42:04.016+00
10060	wiki-editor	com.atlassian.jira.plugins.jira-wiki-editor	1.9.9	2016-07-06 12:42:04.019+00
10061	Support Tools Plugin	com.atlassian.support.stp	3.7.22	2016-07-06 12:42:04.023+00
10003	Atlassian JIRA - Plugins - My JIRA Home	com.atlassian.jira.jira-my-home-plugin	7.1.9	2016-07-11 15:04:33.835+00
10010	Atlassian JIRA - Plugins - Issue Web Link	com.atlassian.jira.jira-issue-link-web-plugin	7.1.9	2016-07-11 15:04:33.869+00
10013	Atlassian JIRA - Plugins - OAuth Service Provider SPI	com.atlassian.jira.oauth.serviceprovider	7.1.9	2016-07-11 15:04:33.885+00
10023	Atlassian JIRA - Plugins - Post setup announcements plugin	com.atlassian.jira.jira-postsetup-announcements-plugin	7.1.9	2016-07-11 15:04:33.899+00
10026	Atlassian JIRA - Plugins - Development Integration Plugin	com.atlassian.jira.plugins.jira-development-integration-plugin	3.3.26	2016-07-11 15:04:33.916+00
10034	Atlassian JIRA - Plugins - Admin Navigation Component	com.atlassian.jira.jira-admin-navigation-plugin	7.1.9	2016-07-11 15:04:33.935+00
10041	Atlassian JIRA - Plugins - Share Content Component	com.atlassian.jira.jira-share-plugin	7.1.9	2016-07-11 15:04:33.952+00
10042	Atlassian JIRA - Plugins - Remote JIRA Link	com.atlassian.jira.jira-issue-link-remote-jira-plugin	7.1.9	2016-07-11 15:04:34.069+00
10051	Atlassian JIRA - Plugins - View Issue Panels	com.atlassian.jira.jira-view-issue-plugin	7.1.9	2016-07-11 15:04:34.085+00
10053	Atlassian JIRA - Plugins - Avatar Plugin	com.atlassian.jira.jira-avatar-plugin	7.1.9	2016-07-11 15:04:34.107+00
10062	Atlassian OAuth Service Provider SPI	com.atlassian.oauth.atlassian-oauth-service-provider-spi	2.0.2	2016-07-06 12:42:04.026+00
10063	Atlassian Whitelist API Plugin	com.atlassian.plugins.atlassian-whitelist-api-plugin	1.18	2016-07-06 12:42:04.058+00
10064	Top Navigation Bar	jira.top.navigation.bar	1.0	2016-07-06 12:42:04.06+00
10065	Applinks - Plugin - Trusted Apps	com.atlassian.applinks.applinks-trustedapps-plugin	5.0.7	2016-07-06 12:42:04.063+00
10066	Wiki Renderer Macros Plugin	com.atlassian.jira.plugin.system.renderers.wiki.macros	1.0	2016-07-06 12:42:04.066+00
10067	Issue Views Plugin	jira.issueviews	1.0	2016-07-06 12:42:04.069+00
10068	Streams SPI	com.atlassian.streams.streams-spi	6.0.9	2016-07-06 12:42:04.074+00
10070	Applinks - Plugin - CORS	com.atlassian.applinks.applinks-cors-plugin	5.0.7	2016-07-06 12:42:04.079+00
10071	Streams Third Party Provider Plugin	com.atlassian.streams.streams-thirdparty-plugin	6.0.9	2016-07-06 12:42:04.082+00
10072	Atlassian OAuth Service Provider Plugin	com.atlassian.oauth.serviceprovider	2.0.2	2016-07-06 12:42:04.085+00
10074	Web Resources Plugin	jira.webresources	1.0	2016-07-06 12:42:04.093+00
10075	Embedded Gadgets Plugin	com.atlassian.gadgets.embedded	4.2.0	2016-07-06 12:42:04.096+00
10076	Streams Plugin	com.atlassian.streams	6.0.9	2016-07-06 12:42:04.099+00
10077	Browse Project Operations Sections	jira.webfragments.browse.project.links	1.0	2016-07-06 12:42:04.101+00
10078	JIRA Issue Collector Plugin	com.atlassian.jira.collector.plugin.jira-issue-collector-plugin	2.0.14	2016-07-06 12:42:04.104+00
10079	ICU4J	com.atlassian.bundles.icu4j-3.8.0.1	3.8.0.1	2016-07-06 12:42:04.109+00
10080	Streams Core Plugin	com.atlassian.streams.core	6.0.9	2016-07-06 12:42:04.112+00
10082	Issue Operations Plugin	com.atlassian.jira.plugin.system.issueoperations	1.0	2016-07-06 12:42:04.119+00
10083	Gadget Directory Plugin	com.atlassian.gadgets.directory	4.2.0	2016-07-06 12:42:04.122+00
10084	Attach Image for JIRA	com.atlassian.plugins.jira-html5-attach-images	4.0.0	2016-07-06 12:42:04.126+00
10085	JIRA Monitoring Plugin	com.atlassian.jira.jira-monitoring-plugin	05.7.0	2016-07-06 12:42:04.129+00
10086	Atlassian Hipchat Integration Plugin	com.atlassian.plugins.base-hipchat-integration-plugin	7.3.5	2016-07-06 12:42:04.132+00
10087	Atlassian JIRA - Plugins - Project Centric Issue Navigator	com.atlassian.jira.jira-projects-issue-navigator	8.0.13	2016-07-06 12:42:04.134+00
10088	jira-importers-plugin	com.atlassian.jira.plugins.jira-importers-plugin	7.1.18	2016-07-06 12:42:04.137+00
10089	Atlassian Plugins - JavaScript libraries	com.atlassian.plugin.jslibs	0.7.0	2016-07-06 12:42:04.14+00
10090	Atlassian Plugins - Avatar Plugin	com.atlassian.plugins.avatar	1.3.2	2016-07-06 12:42:04.143+00
10091	JIRA Time Zone Detection plugin	com.atlassian.jira.jira-tzdetect-plugin	2.3.1	2016-07-06 12:42:04.146+00
10092	HipChat for JIRA	com.atlassian.labs.hipchat.hipchat-for-jira-plugin	7.3.5	2016-07-06 12:42:04.15+00
10093	JSON Library	com.atlassian.bundles.json-20070829.0.0.1	20070829.0.0.1	2016-07-06 12:42:04.155+00
10094	JDOM DOM Processor	com.springsource.org.jdom-1.0.0	1.0.0	2016-07-06 12:42:04.161+00
10095	ActiveObjects Plugin - OSGi Bundle	com.atlassian.activeobjects.activeobjects-plugin	1.1.5	2016-07-06 12:42:04.164+00
10097	Issue Tab Panels Plugin	com.atlassian.jira.plugin.system.issuetabpanels	1.0	2016-07-06 12:42:04.17+00
10098	JIRA Feature Keys	jira.feature.keys	1.0	2016-07-06 12:42:04.216+00
10099	JIRA Streams Inline Actions Plugin	com.atlassian.streams.jira.inlineactions	6.0.9	2016-07-06 12:42:04.219+00
10103	jira-inline-issue-create-plugin	com.atlassian.jira.plugins.inline-create.jira-inline-issue-create-plugin	1.3.3	2016-07-06 12:42:04.236+00
10104	Workbox - JIRA Provider Plugin	com.atlassian.mywork.mywork-jira-provider-plugin	3.0.4	2016-07-06 12:42:04.238+00
10105	Reports Plugin	com.atlassian.jira.plugin.system.reports	1.0	2016-07-06 12:42:04.244+00
10106	Content Link Resolvers Plugin	com.atlassian.jira.plugin.wiki.contentlinkresolvers	1.0	2016-07-06 12:42:04.247+00
10107	Atlassian Application Manager plugin	com.atlassian.upm.upm-application-plugin	2.20.6	2016-07-06 12:42:04.251+00
10108	JIRA Core Spanish (Spain) Language Pack	tac.jira core.languages.es_ES	7.1.0-m01-v2r50-2016-02-03	2016-07-06 12:42:04.254+00
10109	JIRA Mobile	com.atlassian.jira.mobile	3.0.6	2016-07-06 12:42:04.257+00
10111	FishEye Plugin	com.atlassian.jirafisheyeplugin	7.0.13-D20151002T052328	2016-07-06 12:42:04.263+00
10112	Atlassian JIRA - Admin Helper Plugin	com.atlassian.jira.plugins.jira-admin-helper-plugin	4.0.8	2016-07-06 12:42:04.268+00
10113	Atlassian browser metrics plugin	com.atlassian.plugins.browser.metrics.browser-metrics-plugin	4.2.0	2016-07-06 12:42:04.271+00
10114	Atlassian JIRA - Plugins - Global Issue Navigator	com.atlassian.jira.jira-issue-nav-plugin	8.0.13	2016-07-06 12:42:04.275+00
10115	User Navigation Bar Sections	jira.webfragments.user.navigation.bar	1.0	2016-07-06 12:42:04.279+00
10116	Atlassian JIRA - Plugins - Instance Health Plugin	com.atlassian.jira.plugins.jira-healthcheck-plugin	2.1.10	2016-07-06 12:42:04.282+00
10117	Neko HTML	com.atlassian.bundles.nekohtml-1.9.12.1	1.9.12.1	2016-07-06 12:42:04.285+00
10119	JIRA Global Permissions	jira.system.global.permissions	1.0	2016-07-06 12:42:04.292+00
10120	Atlassian Template Renderer API	com.atlassian.templaterenderer.api	2.0.0	2016-07-06 12:42:04.295+00
10122	Atlassian Pretty URLs Plugin	com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2.0.0	2016-07-06 12:42:04.303+00
10123	JIRA Attachment Archive File Processors	jira.system.attachment.processors	1.0	2016-07-06 12:42:04.31+00
10124	Atlassian Universal Plugin Manager Plugin	com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2.20.6	2016-07-06 12:42:04.317+00
10125	Atlassian Whitelist UI Plugin	com.atlassian.plugins.atlassian-whitelist-ui-plugin	1.18	2016-07-06 12:42:04.322+00
10073	Atlassian JIRA - Plugins - Common AppLinks Based Issue Link Plugin	com.atlassian.jira.jira-issue-link-applinks-common-plugin	7.1.9	2016-07-11 15:04:34.24+00
10081	Atlassian JIRA - Plugins - WebHooks Plugin	com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin	7.1.9	2016-07-11 15:04:34.257+00
10096	Atlassian JIRA - Plugins - Header Plugin	com.atlassian.jira.jira-header-plugin	7.1.9	2016-07-11 15:04:34.369+00
10100	Atlassian JIRA - Plugins - Application Properties	com.atlassian.jira.jira-application-properties-plugin	7.1.9	2016-07-11 15:04:34.377+00
10101	Atlassian JIRA - Plugins - Gadgets Plugin	com.atlassian.jira.gadgets	7.1.9	2016-07-11 15:04:34.385+00
10102	Atlassian JIRA - Plugins - Analytics whitelist	com.atlassian.jira.jira-analytics-whitelist-plugin	7.1.9	2016-07-11 15:04:34.393+00
10110	Atlassian JIRA - Plugins - Onboarding	com.atlassian.jira.jira-onboarding-assets-plugin	7.1.9	2016-07-11 15:04:34.401+00
10118	Atlassian JIRA - Plugins - JIRA Board Plugin	com.atlassian.jira.jira-board-plugin	7.1.9	2016-07-11 15:04:34.41+00
10121	Atlassian JIRA - Plugins - File viewer plugin	com.atlassian.jira.jira-fileviewer-plugin	7.1.9	2016-07-11 15:04:34.418+00
10126	Redmine Importers Plugin for JIM	com.atlassian.jira.plugins.jira-importers-redmine-plugin	2.1.5	2016-07-06 12:42:04.332+00
10128	Soy Function Plugin	com.atlassian.jira.plugin.system.soyfunction	1.0	2016-07-06 12:42:04.355+00
10129	Universal Plugin Manager - Role-Based Licensing Implementation Plugin	com.atlassian.upm.role-based-licensing-plugin	2.20.6	2016-07-06 12:42:04.361+00
10130	JIRA Core Project Templates Plugin	com.atlassian.jira-core-project-templates	6.1.2	2016-07-06 12:42:04.376+00
10131	Atlassian OAuth Admin Plugin	com.atlassian.oauth.admin	2.0.2	2016-07-06 12:42:04.387+00
10132	Atlassian REST - Module Types	com.atlassian.plugins.rest.atlassian-rest-module	3.2.2	2016-07-06 12:42:04.398+00
10133	Crowd REST API	crowd-rest-application-management	1.0	2016-07-06 12:42:04.405+00
10134	jira-issue-nav-components	com.atlassian.jira.jira-issue-nav-components	8.0.13	2016-07-06 12:42:04.415+00
10135	jquery	com.atlassian.plugins.jquery	1.7.2.1	2016-07-06 12:42:04.425+00
10137	JIRA Remote Link Aggregator Plugin	com.atlassian.plugins.jira-remote-link-aggregator-plugin	2.0.14	2016-07-06 12:42:04.431+00
10138	Streams API	com.atlassian.streams.streams-api	6.0.9	2016-07-06 12:42:04.434+00
10139	Atlassian HTTP Client, Apache HTTP components impl	com.atlassian.httpclient.atlassian-httpclient-plugin	0.22.3	2016-07-06 12:42:04.436+00
10140	JIRA DVCS Connector Plugin	com.atlassian.jira.plugins.jira-bitbucket-connector-plugin	3.3.30	2016-07-06 12:42:04.44+00
10141	Asana Importers Plugin for JIM	com.atlassian.jira.plugins.jira-importers-asana-plugin	1.0.4	2016-07-06 12:42:04.442+00
10142	Atlassian Awareness Capability	com.atlassian.plugins.atlassian-awareness-capability	0.0.6	2016-07-06 12:42:04.445+00
10143	Atlassian Plugins - Web Resources REST	com.atlassian.plugins.atlassian-plugins-webresource-rest	3.5.9	2016-07-06 12:42:04.454+00
10144	Custom Field Types & Searchers	com.atlassian.jira.plugin.system.customfieldtypes	1.0	2016-07-06 12:42:04.457+00
10145	Project Creation Capability Product REST Plugin	com.atlassian.plugins.atlassian-project-creation-plugin	2.0.8	2016-07-06 12:42:04.459+00
10147	Opensocial Plugin	com.atlassian.gadgets.opensocial	4.2.0	2016-07-06 12:42:04.466+00
10149	Atlassian Net Promoter Score	com.atlassian.plugins.atlassian-nps-plugin	3.1.15	2016-07-06 12:42:04.471+00
10150	ROME, RSS and atOM utilitiEs for Java	rome.rome-1.0	1.0	2016-07-06 12:42:04.474+00
10151	User Format	jira.user.format	1.0	2016-07-06 12:42:04.477+00
10152	View Project Operations Sections	jira.webfragments.view.project.operations	1.0	2016-07-06 12:42:04.48+00
10153	atlassian-servlet-plugin	com.atlassian.web.atlassian-servlet-plugin	3.0.0	2016-07-06 12:42:04.484+00
10154	Crowd REST API	crowd-rest-plugin	1.0	2016-07-06 12:42:04.487+00
10155	Atlassian OAuth Consumer SPI	com.atlassian.oauth.atlassian-oauth-consumer-spi	2.0.2	2016-07-06 12:42:04.49+00
10156	jackson-module-scala-2.10-provider	com.atlassian.scala.plugins.jackson-module-scala-2.10-provider-plugin	0.5	2016-07-06 12:42:04.493+00
10157	Workflow Plugin	com.atlassian.jira.plugin.system.workflow	1.0	2016-07-06 12:42:04.495+00
10159	jira-importers-trello-plugin	com.atlassian.jira.plugins.jira-importers-trello-plugin	1.5.1	2016-07-06 12:42:04.5+00
10160	Icon Types Plugin	jira.icontypes	1.0	2016-07-06 12:42:04.503+00
10161	Atlassian WebHooks Plugin	com.atlassian.webhooks.atlassian-webhooks-plugin	3.1.5	2016-07-06 12:42:04.506+00
10162	Help Paths Plugin	jira.help.paths	1.0	2016-07-06 12:42:04.509+00
10163	JIRA Base URL Plugin	com.atlassian.jira.jira-baseurl-plugin	2.0	2016-07-06 12:42:04.512+00
10165	Issue Status Plugin	com.atlassian.plugins.issue-status-plugin	1.1.7	2016-07-06 12:42:04.517+00
10166	Gadget Spec Publisher Plugin	com.atlassian.gadgets.publisher	4.2.0	2016-07-06 12:42:04.52+00
10169	JIRA Core French (France) Language Pack	tac.jira core.languages.fr_FR	7.1.0-m01-v2r75-2016-02-03	2016-07-06 12:42:04.528+00
10170	Renderer Component Factories Plugin	com.atlassian.jira.plugin.wiki.renderercomponentfactories	1.0	2016-07-06 12:42:04.53+00
10171	Atlassian LESS Transformer Plugin	com.atlassian.plugins.less-transformer-plugin	3.0.1	2016-07-06 12:42:04.533+00
10172	Pocketknife Feature Flags Plugin	com.atlassian.pocketknife.featureflags-plugin	0.5.4	2016-07-06 12:42:04.535+00
10173	JIRA Bamboo Plugin	com.atlassian.jira.plugin.ext.bamboo	7.3.35-D20151104T000101	2016-07-06 12:42:04.54+00
10174	Atlassian JIRA - Plugins - Transition Trigger Plugin	com.atlassian.jira.plugins.jira-transition-triggers-plugin	3.1.8-D20151110T000849	2016-07-06 12:42:04.542+00
10175	Atlassian Bot Session Killer	com.atlassian.labs.atlassian-bot-killer	1.7.9	2016-07-06 12:42:04.552+00
10176	User Profile Panels	jira.user.profile.panels	1.0	2016-07-06 12:42:04.555+00
10177	scala-2.10-provider-plugin	com.atlassian.scala.plugins.scala-2.10-provider-plugin	0.9	2016-07-06 12:42:04.558+00
10179	JIRA Project Permissions	jira.system.project.permissions	1.0	2016-07-06 12:42:04.563+00
10180	Wallboard Plugin	com.atlassian.jirawallboard.atlassian-wallboard-plugin	2.1.5	2016-07-06 12:42:04.571+00
10181	Atlassian JIRA - Plugins - User Profile Plugin	com.atlassian.jira.jira-user-profile-plugin	3.0.5	2016-07-06 12:42:04.574+00
10182	Project Templates Plugin	com.atlassian.jira.project-templates-plugin	6.1.2	2016-07-06 12:42:04.577+00
10183	Filter Deletion Warning Plugin	jira.filter.deletion.warning	1.0	2016-07-06 12:42:04.58+00
10184	JIRA Software Monitor Plugin	com.atlassian.jira.plugins.jira-software-monitor-plugin	0.1.0-D20150923T085539	2016-07-06 12:42:04.585+00
10188	Atlassian Template Renderer Velocity 1.6 Plugin	com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	2.0.0	2016-07-06 12:42:04.596+00
10189	Atlassian JIRA - Plugins - Mail Plugin	com.atlassian.jira.jira-mail-plugin	9.0.3	2016-07-06 12:42:04.599+00
10136	JIRA Auditing Plugin	com.atlassian.jira.plugins.jira-auditing-plugin	1.7.8	2016-07-11 15:04:34.435+00
10146	Atlassian JIRA - Plugins - REST Plugin	com.atlassian.jira.rest	7.1.9	2016-07-11 15:04:34.443+00
10148	Atlassian JIRA - Plugins - Confluence Link	com.atlassian.jira.jira-issue-link-confluence-plugin	7.1.9	2016-07-11 15:04:34.451+00
10158	Support Healthcheck Plugin	com.atlassian.support.healthcheck.support-healthcheck-plugin	2.0.9	2016-07-11 15:04:34.46+00
10164	Atlassian JIRA - Plugins - Look And Feel Logo Upload Plugin	com.atlassian.jira.lookandfeel	7.1.9	2016-07-11 15:04:34.468+00
10167	Atlassian JIRA - Plugins - OAuth Consumer SPI	com.atlassian.jira.oauth.consumer	7.1.9	2016-07-11 15:04:34.477+00
10168	JIRA Agile	com.pyxis.greenhopper.jira	7.1.23-DAILY20160627065553	2016-07-11 15:04:34.486+00
10178	Atlassian JIRA - Plugins - ActiveObjects SPI	com.atlassian.jira.jira-activeobjects-spi-plugin	7.1.9	2016-07-11 15:04:34.493+00
10185	English (United States) Language Pack	com.atlassian.jira.jira-languages.en_US	7.1.9	2016-07-11 15:04:34.502+00
10186	Atlassian JIRA - Plugins - LESS integration	com.atlassian.jira.jira-less-integration	7.1.9	2016-07-11 15:04:34.51+00
10187	Atlassian JIRA - Plugins - SAL Plugin	com.atlassian.sal.jira	7.1.9	2016-07-11 15:04:34.518+00
10191	JIRA Workflow Designer Plugin	com.atlassian.jira.plugins.jira-workflow-designer	7.1.4	2016-07-06 12:42:04.604+00
10192	Gadget Dashboard Plugin	com.atlassian.gadgets.dashboard	4.2.0	2016-07-06 12:42:04.606+00
10193	Atlassian - Administration - Quick Search - JIRA	com.atlassian.administration.atlassian-admin-quicksearch-jira	2.3.3	2016-07-06 12:42:04.608+00
10194	Web Panel Plugin	jira.webpanels	1.0	2016-07-06 12:42:04.611+00
10195	Applinks - Plugin - OAuth	com.atlassian.applinks.applinks-oauth-plugin	5.0.7	2016-07-06 12:42:04.614+00
10196	JIRA browser metrics integration plugin	com.atlassian.jira.plugins.jira-browser-metrics	2.0.1	2016-07-06 12:42:04.616+00
10197	JIRA Activity Stream Plugin	com.atlassian.streams.streams-jira-plugin	6.0.9	2016-07-06 12:42:04.619+00
10199	JIRA Usage Hints	jira.usage.hints	1.0	2016-07-06 12:42:04.623+00
10001	JIRA Software Application	com.atlassian.jira.jira-software-application	7.1.9	2016-07-11 15:04:33.805+00
10069	Atlassian JIRA - Plugins - Pluggable Avatar Support	com.atlassian.jira.jira-pluggable-avatar-support	7.1.9	2016-07-11 15:04:34.224+00
10127	Atlassian JIRA - Plugins - Quick Edit Plugin	com.atlassian.jira.jira-quick-edit-plugin	3.1.13	2016-07-11 15:04:34.426+00
10190	Atlassian JIRA - Plugins - Closure Template Renderer	com.atlassian.jira.jira-soy-plugin	7.1.9	2016-07-11 15:04:34.526+00
10198	English (United Kingdom) Language Pack	com.atlassian.jira.jira-languages.en_UK	7.1.9	2016-07-11 15:04:34.535+00
\.


--
-- Data for Name: portalpage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY portalpage (id, username, pagename, description, sequence, fav_count, layout, ppversion) FROM stdin;
10000	\N	System Dashboard	\N	0	0	AA	0
\.


--
-- Data for Name: portletconfiguration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY portletconfiguration (id, portalpage, portlet_id, column_number, positionseq, gadget_xml, color, dashboard_module_complete_key) FROM stdin;
10000	10000	\N	0	0	\N	\N	com.atlassian.jira.gadgets:introduction-dashboard-item
10002	10000	\N	1	0	rest/gadgets/1.0/g/com.atlassian.jira.gadgets:assigned-to-me-gadget/gadgets/assigned-to-me-gadget.xml	\N	\N
10003	10000	\N	1	1	rest/gadgets/1.0/g/com.atlassian.streams.streams-jira-plugin:activitystream-gadget/gadgets/activitystream-gadget.xml	\N	\N
\.


--
-- Data for Name: priority; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY priority (id, sequence, pname, description, iconurl, status_color) FROM stdin;
1	1	Highest	This problem will block progress.	/images/icons/priorities/highest.png	#d04437
2	2	High	Serious problem that could block progress.	/images/icons/priorities/high.png	#f15C75
3	3	Medium	Has the potential to affect progress.	/images/icons/priorities/medium.png	#f79232
4	4	Low	Minor problem or easily worked around.	/images/icons/priorities/low.png	#707070
5	5	Lowest	Trivial problem with little or no impact on progress.	/images/icons/priorities/lowest.png	#999999
\.


--
-- Data for Name: productlicense; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY productlicense (id, license) FROM stdin;
10000	{{jira.license}}
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY project (id, pname, url, lead, description, pkey, pcounter, assigneetype, avatar, originalkey, projecttype) FROM stdin;
\.


--
-- Data for Name: project_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY project_key (id, project_id, project_key) FROM stdin;
\.


--
-- Data for Name: projectcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY projectcategory (id, cname, description) FROM stdin;
\.


--
-- Data for Name: projectchangedtime; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY projectchangedtime (project_id, issue_changed_time) FROM stdin;
\.


--
-- Data for Name: projectrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY projectrole (id, name, description) FROM stdin;
10002	Administrators	A project role that represents administrators in a project
\.


--
-- Data for Name: projectroleactor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY projectroleactor (id, pid, projectroleid, roletype, roletypeparameter) FROM stdin;
10002	\N	10002	atlassian-group-role-actor	jira-administrators
\.


--
-- Data for Name: projectversion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY projectversion (id, project, vname, description, sequence, released, archived, url, startdate, releasedate) FROM stdin;
\.


--
-- Data for Name: propertydata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY propertydata (id, propertyvalue) FROM stdin;
\.


--
-- Data for Name: propertydate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY propertydate (id, propertyvalue) FROM stdin;
10250	2016-07-06 12:42:57.025+00
\.


--
-- Data for Name: propertydecimal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY propertydecimal (id, propertyvalue) FROM stdin;
\.


--
-- Data for Name: propertyentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY propertyentry (id, entity_name, entity_id, property_key, propertytype) FROM stdin;
6	jira.properties	1	jira.avatar.user.anonymous.id	5
7	jira.properties	1	jira.scheme.default.issue.type	5
9	jira.properties	1	jira.whitelist.disabled	1
10	jira.properties	1	jira.whitelist.rules	6
11	jira.properties	1	jira.option.timetracking	1
12	jira.properties	1	jira.timetracking.estimates.legacy.behaviour	1
13	jira.properties	1	jira.version	5
14	jira.properties	1	jira.downgrade.minimum.version	5
15	jira.properties	1	jira.option.allowunassigned	1
16	jira.properties	1	jira.path.index.use.default.directory	1
21	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.layout:8a6044147cf2c19c02d099279cfbfd47	6
22	jira.properties	1	jira.onboarding.app_user.id.threshold	5
23	jira.properties	1	post.migration.page.displayed	1
1	jira.properties	1	jira.version.patched	5
2	jira.properties	1	jira.avatar.issuetype.subtask.default.id	5
3	jira.properties	1	jira.avatar.default.id	5
4	jira.properties	1	jira.avatar.issuetype.default.id	5
5	jira.properties	1	jira.avatar.user.default.id	5
10100	jira.properties	1	AO_550953_#	5
10101	jira.properties	1	jira.webresource.superbatch.flushcounter	5
10102	jira.properties	1	jira.i18n.language.index	5
10103	jira.properties	1	jira.sid.key	5
10200	jira.properties	1	jira.webresource.flushcounter	5
10201	jira.properties	1	jira.mail.send.disabled	1
10202	jira.properties	1	mailsetting.jira.mail.send.disabled.modifiedBy	5
10203	jira.properties	1	mailsetting.jira.mail.send.disabled.modifiedDate	5
10205	jira.properties	1	webwork.i18n.encoding	5
10206	jira.properties	1	jira.title	5
10212	jira.properties	1	dvcs.connector.bitbucket.url	5
10213	jira.properties	1	dvcs.connector.github.url	5
10218	jira.properties	1	AO_E8B6CC_#	5
10219	jira.properties	1	AO_4AEACD_#	5
10220	jira.properties	1	jira.baseurl	5
10221	jira.properties	1	jira.mode	5
10222	jira.properties	1	jira.path.attachments	5
10223	jira.properties	1	jira.path.attachments.use.default.directory	1
10224	jira.properties	1	jira.option.allowattachments	1
10225	ServiceConfig	10001	USE_DEFAULT_DIRECTORY	5
10226	jira.properties	1	jira.path.backup	5
10227	jira.properties	1	org.apache.shindig.common.crypto.BlobCrypter:key	5
10228	BambooServerProperties	1	bamboo.config.version	2
10229	GreenHopper.Run.History	1	lastRunVersion	6
10230	GreenHopper.Run.History	2	2016-07-06T12:41:57.656Z	6
10231	jira.properties	1	com.atlassian.jira.util.index.IndexingCounterManagerImpl.counterValue	3
10232	jira.properties	1	jira.setup	5
10233	jira.properties	1	jira.option.user.externalmanagement	1
10234	jira.properties	1	jira.option.voting	1
10235	jira.properties	1	jira.option.watching	1
10236	jira.properties	1	jira.option.issuelinking	1
10237	jira.properties	1	jira.option.emailvisible	5
10238	jira.properties	1	jira.option.allowsubtasks	1
10239	fisheye-jira-plugin.properties	1	FISH-375-fixed	5
10240	fisheye-jira-plugin.properties	1	fisheye.ual.migration.complete	5
10241	fisheye-jira-plugin.properties	1	fisheye.ual.crucible.enabled.property.fix.complete	5
10248	GreenHopper.properties	1	GreenHopper.Sprint.Default.customfield.id	3
10249	admin.message.manager	1	user	5
10250	admin.message.manager	1	time	7
10251	com.atlassian.jira.user.flag.FlagDismissalServiceImpl	1	com.atlassian.jira.flag.resets	6
10252	admin.message.manager	1	task	5
10253	GreenHopper.properties	1	GreenHopper.Sprint.Index.Check.Necessary	5
10254	GreenHopper.properties	1	GreenHopper.EpicLink.Default.customfield.id	3
10255	GreenHopper.properties	1	GreenHopper.EpicStatus.Default.customfield.id	3
10256	GreenHopper.properties	1	GreenHopper.EpicLabel.Default.customfield.id	3
10257	GreenHopper.properties	1	GreenHopper.EpicColor.Default.customfield.id	3
10258	GreenHopper.properties	1	GreenHopper.LexoRank.Default.customfield.id	3
10259	GreenHopper.properties	1	GreenHopper.JIRA60.Version.Migration	1
10260	GreenHopper.properties	1	JIRA.Software.Simplified.Workflow.Upgraded	1
10261	GreenHopper.properties	1	GreenHopper.Epic.Default.issuetype.id	5
10262	GreenHopper.properties	1	GreenHopper.Story.Default.issuetype.id	5
10264	GreenHopper.properties	1	GreenHopper.StoryPoints.Default.customfield.id	3
10265	GreenHopper.properties	1	GreenHopper.Epic.Default.linktype.id	3
10267	jira.properties	1	com.atlassian.streams.InlineActivityStream:loaded.from.jira.projects	5
10268	jira.properties	1	jira-header-plugin.studio-tab-migration-complete	5
10348	jira.properties	1	com.atlassian.nps.plugin.status.nps_enabled	5
10349	ApplicationUser	10000	com.atlassian.jira.flag.dismissals	6
10269	jira.properties	1	com.atlassian.analytics.client.configuration..analytics_enabled	5
10271	jira.properties	1	com.atlassian.sal.jira:build	5
10273	jira.properties	1	com.atlassian.plugins.atlassian-whitelist-api-plugin:whitelist.enabled	5
10274	jira.properties	1	com.atlassian.plugins.atlassian-whitelist-api-plugin:build	5
10275	jira.properties	1	com.atlassian.jira.gadgets:build	5
10276	jira.properties	1	com.atlassian.jira.plugins.jira-bitbucket-connector-plugin:build	5
10277	GreenHopper.UpgradeHistory	1	2016-07-06T12:42:57.748Z	6
10278	GreenHopper.UpgradeHistory	2	2016-07-06T12:42:57.762Z	6
10279	GreenHopper.properties	1	GreenHopper.Upgrade.Latest.Upgraded.Version	3
10281	GreenHopper.UpgradeHistory	1	2016-07-06T12:42:57.786Z	6
10282	GreenHopper.UpgradeHistory	2	2016-07-06T12:42:57.824Z	6
10284	GreenHopper.UpgradeHistory	1	2016-07-06T12:42:57.847Z	6
10285	GreenHopper.UpgradeHistory	2	2016-07-06T12:42:57.861Z	6
10287	GreenHopper.UpgradeHistory	1	2016-07-06T12:42:57.891Z	6
10288	GreenHopper.UpgradeHistory	2	2016-07-06T12:42:58.001Z	6
10290	GreenHopper.UpgradeHistory	1	2016-07-06T12:42:58.025Z	6
10291	GreenHopper.UpgradeHistory	2	2016-07-06T12:42:58.086Z	6
10293	GreenHopper.UpgradeHistory	1	2016-07-06T12:42:58.113Z	6
10294	GreenHopper.UpgradeHistory	2	2016-07-06T12:42:58.125Z	6
10295	jira.properties	1	com.pyxis.greenhopper.jira:build	5
10297	jira.properties	1	com.atlassian.crowd.embedded.admin:build	5
10298	jira.properties	1	com.atlassian.labs.hipchat.hipchat-for-jira-plugin:build	5
10299	jira.properties	1	com.atlassian.jira.plugin.ext.bamboo:build	5
10301	jira.properties	1	com.atlassian.jira.jira-mail-plugin:build	5
10302	jira.properties	1	com.atlassian.jira.plugins.jira-workflow-designer:build	5
10303	jira.properties	1	com.atlassian.plugins.custom_apps.hasCustomOrder	5
10304	jira.properties	1	com.atlassian.plugins.atlassian-nav-links-plugin:build	5
10307	jira.properties	1	com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin:build	5
10308	jira.properties	1	com.atlassian.jira.lookandfeel:isDefaultFavicon	5
10309	jira.properties	1	com.atlassian.jira.lookandfeel:usingCustomFavicon	5
10310	jira.properties	1	com.atlassian.jira.lookandfeel:customDefaultFaviconURL	5
10311	jira.properties	1	com.atlassian.jira.lookandfeel:customDefaultFaviconHiresURL	5
10312	jira.properties	1	com.atlassian.jira.lookandfeel:faviconWidth	5
10313	jira.properties	1	com.atlassian.jira.lookandfeel:faviconHeight	5
10314	jira.properties	1	jira.lf.favicon.url	5
10315	jira.properties	1	jira.lf.favicon.hires.url	5
10316	jira.properties	1	com.atlassian.jira.lookandfeel:build	5
10320	jira.properties	1	com.atlassian.upm:notifications:dismissal-plugin.request	5
10321	jira.properties	1	com.atlassian.upm:notifications:dismissal-update:com.atlassian.jira.721f5dded6a99d3cd2d3d2490fca01fb	5
10322	jira.properties	1	com.atlassian.upm:notifications:dismissal-update:com.atlassian.support.stp	5
10323	jira.properties	1	com.atlassian.upm:notifications:dismissal-update	5
10324	jira.properties	1	com.atlassian.upm:notifications:dismissal-evaluation.expired	5
10326	jira.properties	1	com.atlassian.upm:notifications:dismissal-edition.mismatch	5
10327	jira.properties	1	com.atlassian.upm:notifications:dismissal-maintenance.expired	5
10329	jira.properties	1	com.atlassian.upm:notifications:dismissal-auto.updated.plugin	5
10330	jira.properties	1	com.atlassian.upm:notifications:dismissal-auto.updated.upm	5
10331	jira.properties	1	com.atlassian.upm.request.PluginSettingsPluginRequestStore:requests:requests_v2	5
10335	jira.properties	1	com.atlassian.upm.atlassian-universal-plugin-manager-plugin:build	5
10336	jira.properties	1	com.atlassian.jirawallboard.atlassian-wallboard-plugin:build	5
10337	jira.properties	1	com.atlassian.support.stp:build	5
10338	jira.properties	1	com.atlassian.jira.project-templates-plugin:build	5
10340	ApplicationUser	10000	jira.onboarding.first.use.flow.started	5
10341	jira.properties	1	com.atlassian.jira.onboarding.postsetup.AppPropertiesPostSetupAnnouncementStore.all	6
10342	ApplicationUser	10000	jira.user.locale	5
10343	ApplicationUser	10000	jira.onboarding.first.use.flow.current.sequence	5
10344	ApplicationUser	10000	jira.onboarding.first.use.flow.completed	1
10345	ApplicationUser	10000	jira.onboarding.first.use.flow.resolved	1
10346	ApplicationUser	10000	newsletter.signup.first.view	3
10347	jira.properties	1	com.atlassian.nps.plugin.status.nps_acknowledged	5
10400	GreenHopper.Run.History	2	2016-07-11T15:04:21.289Z	6
10500	jira.properties	1	com.atlassian.analytics.client.configuration..policy_acknowledged	5
10502	jira.properties	1	com.atlassian.upm.log.PluginSettingsAuditLogService:log:upm_audit_log_v3	5
10503	jira.properties	1	com.atlassian.upm:notifications:notification-plugin.request	5
10504	jira.properties	1	com.atlassian.upm:notifications:notification-edition.mismatch	5
10505	jira.properties	1	com.atlassian.upm:notifications:notification-evaluation.expired	5
10506	jira.properties	1	com.atlassian.upm:notifications:notification-evaluation.nearlyexpired	5
10510	jira.properties	1	com.atlassian.analytics.client.configuration..logged_base_analytics_data	5
10507	jira.properties	1	com.atlassian.upm:notifications:notification-maintenance.expired	5
10508	jira.properties	1	com.atlassian.upm:notifications:notification-maintenance.nearlyexpired	5
10509	jira.properties	1	com.atlassian.upm:notifications:notification-update	5
{% if bitbucket %}10511	jira.properties	1	applinks.admin.00668a2a-a381-3e0f-9b83-65011fdbc0c7.type	5
10512	jira.properties	1	applinks.admin.00668a2a-a381-3e0f-9b83-65011fdbc0c7.name	5
10513	jira.properties	1	applinks.admin.00668a2a-a381-3e0f-9b83-65011fdbc0c7.display.url	5
10514	jira.properties	1	applinks.admin.00668a2a-a381-3e0f-9b83-65011fdbc0c7.rpc.url	5
10515	jira.properties	1	applinks.global.application.ids	5
10516	jira.properties	1	applinks.admin.00668a2a-a381-3e0f-9b83-65011fdbc0c7.primary	5
10517	jira.properties	1	applinks.application.00668a2a-a381-3e0f-9b83-65011fdbc0c7.oauth.incoming.consumerkey	5
10518	jira.properties	1	applinks.admin.00668a2a-a381-3e0f-9b83-65011fdbc0c7.propertyKeys	5
10519	jira.properties	1	applinks.admin.00668a2a-a381-3e0f-9b83-65011fdbc0c7.auth.52e4d6463f02700eeefbefc74233de4f	5
10521	jira.properties	1	applinks.admin.00668a2a-a381-3e0f-9b83-65011fdbc0c7.auth.4e751871359fc86ed973d2a58b40c2b7	5
10523	jira.properties	1	applinks.admin.00668a2a-a381-3e0f-9b83-65011fdbc0c7.providerKeys	5
10524	user.format.mapping	1	fullName	5
{% endif %}10525	ApplicationUser	10000	sal_applinks.featurediscovery.bitbucket_rebrand	1
10526	ApplicationUser	10000	jira.user.suppressedTips.add.new.users	1
\.


--
-- Data for Name: propertynumber; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY propertynumber (id, propertyvalue) FROM stdin;
9	0
11	1
12	0
15	1
23	1
10201	0
16	1
10223	1
10224	1
10228	22
10231	0
10233	0
10234	1
10235	1
10236	1
10238	1
10248	10000
10254	10001
10255	10002
10256	10003
10257	10004
10258	10005
10259	1
10260	1
10264	10006
10265	10200
10279	51
10344	1
10345	1
10346	1467809008003
10525	1
10526	1
\.


--
-- Data for Name: propertystring; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY propertystring (id, propertyvalue) FROM stdin;
2	10316
3	10011
4	10300
5	10122
6	10123
7	10000
22	0
10100	1
10102	english-moderate-stemming
10103	{{jira.serverId}}
10320	#java.util.List\n
10321	#java.util.List\n
10322	#java.util.List\n
10323	#java.util.List\n
10324	#java.util.List\n
10326	#java.util.List\n
10202	
10203	1467808797913
10205	UTF-8
10212	https://bitbucket.org
10213	https://github.com
10218	16
10219	1
10206	Polytech JIRA
10220	{{jira.baseUrl}}/{{jira.subdirectory}}
10221	private
10222	/var/atlassian/application-data/jira/data/attachments
10226	/var/atlassian/application-data/jira/export
10227	zWPLKneq6Mcpg9k/BjybtOSxHrWZ3U3HfPB9rX2sqOw=
10225	true
10101	3
10232	true
10237	show
10239	1
10240	1
10241	1
10253	true
10327	#java.util.List\n
10329	#java.util.List\n
10330	#java.util.List\n
10331	#java.util.List\n
10261	10000
10262	10001
10249	
10252	Story Points Field Creation
10268	migrated
10269	true
10271	2
10273	true
10274	4
10275	1
10276	2
10295	51
10297	3
10298	1
10299	1
10301	2
10302	1
10303	false
10304	1
10307	3
10308	false
10309	false
10310	/favicon.ico
10311	/images/64jira.png
10312	64
10313	64
10314	/favicon.ico
10335	5
10315	/images/64jira.png
10200	b6b48b2829824b869586ac216d119363
10316	1
10336	6086
10337	1
10338	2001
10340	agileFirstUseFlow
10342	fr_FR
10343	nextStep
10347	true
10348	true
13	7.1.9
14	7.0.10
10500	true
10267	true
10502	#java.util.List\n{"userKey":"JIRA","date":1468249488242,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}
10503	#java.util.List\n
10504	#java.util.List\n
10505	#java.util.List\n
10506	#java.util.List\n
10507	#java.util.List\n
10508	#java.util.List\n
10509	#java.util.List\ncom.atlassian.jira.plugins.jira-importers-asana-plugin\ncom.atlassian.support.stp
10510	true
1	71013
{% if bitbucket %}10511	stash
10512	Polytech Bitbucket
10513	{{bitbucket.baseUrl}}/{{bitbucket.subdirectory}}
10514	{{bitbucket.baseUrl}}/{{bitbucket.subdirectory}}
10515	#java.util.List\n00668a2a-a381-3e0f-9b83-65011fdbc0c7
10516	true
10517	Bitbucket:0900407872
10518	#java.util.List\noauth.incoming.consumerkey
10519	#java.util.Properties\n#Mon Jul 11 15:05:52 UTC 2016\n
10521	#java.util.Properties\n#Mon Jul 11 15:05:52 UTC 2016\n
10523	#java.util.List\ncom.atlassian.applinks.api.auth.types.OAuthAuthenticationProvider\ncom.atlassian.applinks.api.auth.types.TwoLeggedOAuthAuthenticationProvider
10524	jira.user.format:full-name-user-format
{% endif %}\.


--
-- Data for Name: propertytext; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY propertytext (id, propertyvalue) FROM stdin;
10	http://www.atlassian.com/*\n
21	{\n    "edgeMap": {\n        "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1806.5,\n                    "y": 434.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1801.0,\n                    "y": 115.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1801.0,\n                "y": 115.0\n            },\n            "endStepId": 4,\n            "id": "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1776.85,\n                "y": 355.25\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1806.5,\n                "y": 434.0\n            },\n            "startStepId": 5\n        },\n        "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1492.25,\n                "y": 154.25\n            },\n            "lineType": "straight",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "startStepId": 1\n        },\n        "483797F1-1BF4-5E0F-86C6-4D19CE6023A2": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "endStepId": 4,\n            "id": "483797F1-1BF4-5E0F-86C6-4D19CE6023A2",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1551.0,\n                "y": 104.0\n            },\n            "lineType": "straight",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "startStepId": 1\n        },\n        "517D7F32-20FB-309E-8639-4D19CE2ACB54": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1434.0,\n                    "y": 435.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1435.0,\n                    "y": 490.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1947.0,\n                    "y": 494.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1950.0,\n                    "y": 118.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1435.0,\n                    "y": 490.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1947.0,\n                    "y": 494.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1950.0,\n                    "y": 118.0\n                }\n            ],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "endStepId": 4,\n            "id": "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1631.25,\n                "y": 479.5\n            },\n            "lineType": "poly",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1434.0,\n                "y": 435.0\n            },\n            "startStepId": 3\n        },\n        "58BD4605-5FB9-84EA-6952-4D19CE7B454B": {\n            "actionId": 1,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1470.0,\n                    "y": 16.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "endStepId": 1,\n            "id": "58BD4605-5FB9-84EA-6952-4D19CE7B454B",\n            "label": "Create Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1475.5,\n                "y": 48.5\n            },\n            "lineType": "straight",\n            "startNodeId": "15174530-AE75-04E0-1D9D-4D19CD200835",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1470.0,\n                "y": 16.0\n            },\n            "startStepId": 1\n        },\n        "92D3DEFD-13AC-06A7-E5D8-4D19CE537791": {\n            "actionId": 4,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1439.5,\n                    "y": 116.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1393.0,\n                    "y": 116.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1390.0,\n                    "y": 434.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1393.0,\n                    "y": 116.0\n                }\n            ],\n            "endNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1390.0,\n                "y": 434.0\n            },\n            "endStepId": 3,\n            "id": "92D3DEFD-13AC-06A7-E5D8-4D19CE537791",\n            "label": "Start Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1323.65,\n                "y": 193.75\n            },\n            "lineType": "poly",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1439.5,\n                "y": 116.0\n            },\n            "startStepId": 1\n        },\n        "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F": {\n            "actionId": 3,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1677.0,\n                    "y": 227.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1767.05,\n                    "y": 230.05\n                },\n                {\n                    "positiveController": null,\n                    "x": 1773.5,\n                    "y": 425.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1767.05,\n                    "y": 230.05\n                }\n            ],\n            "endNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1773.5,\n                "y": 425.0\n            },\n            "endStepId": 5,\n            "id": "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F",\n            "label": "Reopen Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1703.85,\n                "y": 218.5\n            },\n            "lineType": "poly",\n            "startNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1677.0,\n                "y": 227.0\n            },\n            "startStepId": 6\n        },\n        "C9EA1792-2332-8B56-A04D-4D19CD725367": {\n            "actionId": 301,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1465.0,\n                    "y": 436.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "endStepId": 1,\n            "id": "C9EA1792-2332-8B56-A04D-4D19CD725367",\n            "label": "Stop Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1407.8,\n                "y": 308.5\n            },\n            "lineType": "straight",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1465.0,\n                "y": 436.0\n            },\n            "startStepId": 3\n        },\n        "CAF37138-6321-E03A-8E41-4D19CDD7DC78": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1764.5,\n                    "y": 430.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1677.65,\n                "y": 365.0\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1764.5,\n                "y": 430.0\n            },\n            "startStepId": 5\n        },\n        "E1F8462A-8B0A-87EA-4F70-4D19CE423C83": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1488.0,\n                    "y": 430.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "E1F8462A-8B0A-87EA-4F70-4D19CE423C83",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1492.0,\n                "y": 345.0\n            },\n            "lineType": "straight",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1488.0,\n                "y": 430.0\n            },\n            "startStepId": 3\n        },\n        "E27D8EB8-8E49-430B-8FCB-4D19CE127171": {\n            "actionId": 3,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1840.0,\n                    "y": 130.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1846.5,\n                    "y": 428.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1846.5,\n                "y": 428.0\n            },\n            "endStepId": 5,\n            "id": "E27D8EB8-8E49-430B-8FCB-4D19CE127171",\n            "label": "Reopen Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1814.05,\n                "y": 169.5\n            },\n            "lineType": "straight",\n            "startNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1840.0,\n                "y": 130.0\n            },\n            "startStepId": 4\n        },\n        "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C": {\n            "actionId": 4,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1806.5,\n                    "y": 434.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1434.0,\n                    "y": 435.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1434.0,\n                "y": 435.0\n            },\n            "endStepId": 3,\n            "id": "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C",\n            "label": "Start Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1607.25,\n                "y": 423.5\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1806.5,\n                "y": 434.0\n            },\n            "startStepId": 5\n        },\n        "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1": {\n            "actionId": 701,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1635.75,\n                "y": 152.25\n            },\n            "lineType": "straight",\n            "startNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "startStepId": 4\n        }\n    },\n    "nodeMap": {\n        "0740FFFA-2AA1-C90A-38ED-4D19CD61899B": {\n            "id": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "inLinkIds": [\n                "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C",\n                "92D3DEFD-13AC-06A7-E5D8-4D19CE537791"\n            ],\n            "isInitialAction": false,\n            "label": "In Progress",\n            "outLinkIds": [\n                "C9EA1792-2332-8B56-A04D-4D19CD725367",\n                "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n                "E1F8462A-8B0A-87EA-4F70-4D19CE423C83"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 146.0,\n                "x": 1373.0,\n                "y": 419.0\n            },\n            "stepId": 3\n        },\n        "15174530-AE75-04E0-1D9D-4D19CD200835": {\n            "id": "15174530-AE75-04E0-1D9D-4D19CD200835",\n            "inLinkIds": [],\n            "isInitialAction": true,\n            "label": "Create Issue",\n            "outLinkIds": [\n                "58BD4605-5FB9-84EA-6952-4D19CE7B454B"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 157.0,\n                "x": 1405.0,\n                "y": 0.0\n            },\n            "stepId": 1\n        },\n        "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34": {\n            "id": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "inLinkIds": [\n                "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n                "E1F8462A-8B0A-87EA-4F70-4D19CE423C83",\n                "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n                "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230"\n            ],\n            "isInitialAction": false,\n            "label": "Closed",\n            "outLinkIds": [\n                "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 120.0,\n                "x": 1569.0,\n                "y": 210.0\n            },\n            "stepId": 6\n        },\n        "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D": {\n            "id": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "inLinkIds": [\n                "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n                "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n                "483797F1-1BF4-5E0F-86C6-4D19CE6023A2"\n            ],\n            "isInitialAction": false,\n            "label": "Resolved",\n            "outLinkIds": [\n                "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n                "E27D8EB8-8E49-430B-8FCB-4D19CE127171"\n            ],\n            "rect": {\n                "height": 44.0,\n                "positiveController": null,\n                "width": 137.0,\n                "x": 1709.0,\n                "y": 97.0\n            },\n            "stepId": 4\n        },\n        "778534F4-7595-88B6-45E1-4D19CD518712": {\n            "id": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "inLinkIds": [\n                "C9EA1792-2332-8B56-A04D-4D19CD725367",\n                "58BD4605-5FB9-84EA-6952-4D19CE7B454B"\n            ],\n            "isInitialAction": false,\n            "label": "Open",\n            "outLinkIds": [\n                "92D3DEFD-13AC-06A7-E5D8-4D19CE537791",\n                "483797F1-1BF4-5E0F-86C6-4D19CE6023A2",\n                "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 106.0,\n                "x": 1429.5,\n                "y": 97.0\n            },\n            "stepId": 1\n        },\n        "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB": {\n            "id": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "inLinkIds": [\n                "E27D8EB8-8E49-430B-8FCB-4D19CE127171",\n                "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F"\n            ],\n            "isInitialAction": false,\n            "label": "Reopened",\n            "outLinkIds": [\n                "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n                "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n                "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 142.0,\n                "x": 1749.5,\n                "y": 418.0\n            },\n            "stepId": 5\n        }\n    },\n    "rootIds": [\n        "15174530-AE75-04E0-1D9D-4D19CD200835"\n    ],\n    "width": 1136\n}\n
10230	<map>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160523163518</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-06T12:41:57.643Z</string>\n  </entry>\n  <entry>\n    <string>buildDate</string>\n    <string>2016-05-23T16:41:48.490Z</string>\n  </entry>\n  <entry>\n    <string>latestUpgradeTaskRun</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fcc301784278573a</string>\n  </entry>\n</map>
10251	{"com.atlassian.jira.reindex.required":1467808977038}
10277	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160523163518</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-06T12:42:57.748Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>46</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fcc301784278573a</string>\n  </entry>\n</map>
10278	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>7</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160523163518</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-06T12:42:57.762Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>46</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fcc301784278573a</string>\n  </entry>\n</map>
10281	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160523163518</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-06T12:42:57.786Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>47</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fcc301784278573a</string>\n  </entry>\n</map>
10282	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>32</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160523163518</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-06T12:42:57.824Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>47</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fcc301784278573a</string>\n  </entry>\n</map>
10284	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160523163518</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-06T12:42:57.847Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>48</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fcc301784278573a</string>\n  </entry>\n</map>
10285	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>7</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160523163518</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-06T12:42:57.861Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>48</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fcc301784278573a</string>\n  </entry>\n</map>
10287	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160523163518</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-06T12:42:57.891Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>49</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fcc301784278573a</string>\n  </entry>\n</map>
10288	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>104</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160523163518</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-06T12:42:58.001Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>49</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fcc301784278573a</string>\n  </entry>\n</map>
10290	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160523163518</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-06T12:42:58.024Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>50</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fcc301784278573a</string>\n  </entry>\n</map>
10291	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>55</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160523163518</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-06T12:42:58.086Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>50</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fcc301784278573a</string>\n  </entry>\n</map>
10293	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160523163518</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-06T12:42:58.113Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>51</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fcc301784278573a</string>\n  </entry>\n</map>
10294	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>4</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160523163518</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-06T12:42:58.124Z</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>51</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>fcc301784278573a</string>\n  </entry>\n</map>
10229	<map>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160627065553</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-11T15:04:21.244Z</string>\n  </entry>\n  <entry>\n    <string>buildDate</string>\n    <string>2016-06-27T07:09:46.852Z</string>\n  </entry>\n  <entry>\n    <string>latestUpgradeTaskRun</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>5c85b488779c8354</string>\n  </entry>\n</map>
10349	{"com.atlassian.jira.tzdetect.3600000,7200000":1467809016990,"com.atlassian.jira.baseurl":1467809017972,"com.atlassian.jira.reindex.required":1468250035154}
10341	app.properties.setup=FULLFILLED;create.user.mail.properties.setup=ANNOUNCED;database.setup=FULLFILLED;mail.properties.setup=ANNOUNCED
10400	<map>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.1.23-DAILY20160627065553</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2016-07-11T15:04:21.244Z</string>\n  </entry>\n  <entry>\n    <string>buildDate</string>\n    <string>2016-06-27T07:09:46.852Z</string>\n  </entry>\n  <entry>\n    <string>latestUpgradeTaskRun</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>5c85b488779c8354</string>\n  </entry>\n</map>
\.


--
-- Data for Name: qrtz_calendars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY qrtz_calendars (id, calendar_name, calendar) FROM stdin;
\.


--
-- Data for Name: qrtz_cron_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY qrtz_cron_triggers (id, trigger_id, cronexperssion) FROM stdin;
\.


--
-- Data for Name: qrtz_fired_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY qrtz_fired_triggers (id, entry_id, trigger_id, trigger_listener, fired_time, trigger_state) FROM stdin;
\.


--
-- Data for Name: qrtz_job_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY qrtz_job_details (id, job_name, job_group, class_name, is_durable, is_stateful, requests_recovery, job_data) FROM stdin;
\.


--
-- Data for Name: qrtz_job_listeners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY qrtz_job_listeners (id, job, job_listener) FROM stdin;
\.


--
-- Data for Name: qrtz_simple_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY qrtz_simple_triggers (id, trigger_id, repeat_count, repeat_interval, times_triggered) FROM stdin;
\.


--
-- Data for Name: qrtz_trigger_listeners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY qrtz_trigger_listeners (id, trigger_id, trigger_listener) FROM stdin;
\.


--
-- Data for Name: qrtz_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY qrtz_triggers (id, trigger_name, trigger_group, job, next_fire, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr) FROM stdin;
\.


--
-- Data for Name: reindex_component; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reindex_component (id, request_id, affected_index, entity_type) FROM stdin;
\.


--
-- Data for Name: reindex_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reindex_request (id, type, request_time, start_time, completion_time, status, execution_node_id, query) FROM stdin;
\.


--
-- Data for Name: remembermetoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY remembermetoken (id, created, token, username) FROM stdin;
\.


--
-- Data for Name: remotelink; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY remotelink (id, issueid, globalid, title, summary, url, iconurl, icontitle, relationship, resolved, statusname, statusdescription, statusiconurl, statusicontitle, statusiconlink, statuscategorykey, statuscategorycolorname, applicationtype, applicationname) FROM stdin;
\.


--
-- Data for Name: replicatedindexoperation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY replicatedindexoperation (id, index_time, node_id, affected_index, entity_type, affected_ids, operation, filename) FROM stdin;
\.


--
-- Data for Name: resolution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY resolution (id, sequence, pname, description, iconurl) FROM stdin;
\.


--
-- Data for Name: rundetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY rundetails (id, job_id, start_time, run_duration, run_outcome, info_message) FROM stdin;
10282	CompatibilityPluginScheduler.JobId.LEXO_RANK_SCHEDULER_JOB	2016-07-11 15:37:48.671+00	23	S	
10283	80f4dd25-2f61-40a6-ac26-138bc87e54d6	2016-07-11 15:37:48.759+00	27	S	
10284	d17acbe2-ec2f-430f-a988-85bb4a05afe7	2016-07-11 15:37:49.191+00	17	S	
10285	JiraPluginScheduler:LEXO_RANK_STATS_COLLECTOR_JOB	2016-07-11 15:37:49.258+00	0	S	
10286	com.atlassian.jira.service.JiraService:10000	2016-07-11 15:38:00+00	1	S	
10100	com.atlassian.jira.user.UserHistoryDatabaseCompactor	2016-07-11 15:04:48.605+00	56	S	
10103	CompatibilityPluginScheduler.JobId.BundledUpdateCheckJob-job	2016-07-11 15:04:48.61+00	97	S	
10105	com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler:job	2016-07-11 15:04:48.773+00	59	S	
10106	com.atlassian.jira.service.JiraService:10002	2016-07-11 15:04:48.773+00	59	S	
10107	CompatibilityPluginScheduler.JobId.PluginRequestCheckJob-job	2016-07-11 15:04:48.773+00	198	S	
10108	CompatibilityPluginScheduler.JobId.InstanceTopologyJob-job	2016-07-11 15:04:48.973+00	187	S	
10111	CompatibilityPluginScheduler.JobId.LocalPluginLicenseNotificationJob-job	2016-07-11 15:04:49.022+00	492	S	
10112	CompatibilityPluginScheduler.JobId.PluginUpdateCheckJob-job	2016-07-11 15:04:48.97+00	3165	S	
10113	com.atlassian.jira.service.JiraService:10001	2016-07-11 15:04:48.953+00	5810	S	
10114	JiraPluginScheduler:com.atlassian.analytics.client.upload.RemoteFilterRead:job	2016-07-11 15:04:51.479+00	4188	S	
10116	com.atlassian.jira.plugins.software.monitor.ApplicationPluginsEnablerJobRunner	2016-07-11 15:05:28.374+00	38	S	
10117	com.atlassian.jira.upgrade.DelayedUpgradeJobRunner	2016-07-11 15:05:41.16+00	187	S	
10122	JiraPluginScheduler:com.atlassian.support.healthcheck.scheduler.HealthCheckRunnerImpl:job	2016-07-11 15:05:48.308+00	1134	S	
10203	64a75c43-a474-4fef-a578-90898b0796c7	2016-07-11 15:21:47.834+00	2201	S	Directory 'Crowd server' synchronised in 1890 milliseconds.
10205	com.atlassian.jira.crowd.embedded.JiraDirectoryPollerManager.10000	2016-07-11 15:22:40.853+00	641	S	Directory 'Crowd server' synchronised in 423 milliseconds.
10266	data-provider-cleanup	2016-07-11 15:34:48.602+00	28	S	
\.


--
-- Data for Name: schemeissuesecurities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schemeissuesecurities (id, scheme, security, sec_type, sec_parameter) FROM stdin;
\.


--
-- Data for Name: schemeissuesecuritylevels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schemeissuesecuritylevels (id, name, description, scheme) FROM stdin;
\.


--
-- Data for Name: schemepermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schemepermissions (id, scheme, permission, perm_type, perm_parameter, permission_key) FROM stdin;
10025	0	32	projectrole	10002	MANAGE_WATCHERS
10026	0	34	projectrole	10002	EDIT_ALL_COMMENTS
10027	0	35	applicationRole		EDIT_OWN_COMMENTS
10028	0	36	projectrole	10002	DELETE_ALL_COMMENTS
10029	0	37	applicationRole		DELETE_OWN_COMMENTS
10030	0	38	projectrole	10002	DELETE_ALL_ATTACHMENTS
10031	0	39	applicationRole		DELETE_OWN_ATTACHMENTS
10033	0	29	applicationRole		VIEW_DEV_TOOLS
10101	\N	44	group	jira-administrators	\N
10200	0	45	applicationRole		VIEW_READONLY_WORKFLOW
10300	0	46	applicationRole		TRANSITION_ISSUES
10000	\N	0	group	jira-administrators	\N
10004	0	23	projectrole	10002	ADMINISTER_PROJECTS
10005	0	10	applicationRole		BROWSE_PROJECTS
10006	0	11	applicationRole		CREATE_ISSUES
10007	0	15	applicationRole		ADD_COMMENTS
10008	0	19	applicationRole		CREATE_ATTACHMENTS
10009	0	13	applicationRole		ASSIGN_ISSUES
10010	0	17	applicationRole		ASSIGNABLE_USER
10011	0	14	applicationRole		RESOLVE_ISSUES
10012	0	21	applicationRole		LINK_ISSUES
10013	0	12	applicationRole		EDIT_ISSUES
10014	0	16	projectrole	10002	DELETE_ISSUES
10015	0	18	applicationRole		CLOSE_ISSUES
10016	0	25	applicationRole		MOVE_ISSUES
10017	0	28	applicationRole		SCHEDULE_ISSUES
10018	0	30	projectrole	10002	MODIFY_REPORTER
10019	0	20	applicationRole		WORK_ON_ISSUES
10020	0	43	projectrole	10002	DELETE_ALL_WORKLOGS
10021	0	42	applicationRole		DELETE_OWN_WORKLOGS
10022	0	41	projectrole	10002	EDIT_ALL_WORKLOGS
10023	0	40	applicationRole		EDIT_OWN_WORKLOGS
10024	0	31	applicationRole		VIEW_VOTERS_AND_WATCHERS
10401	0	\N	projectrole	10002	MANAGE_SPRINTS_PERMISSION
\.


--
-- Data for Name: searchrequest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY searchrequest (id, filtername, authorname, description, username, groupname, projectid, reqcontent, fav_count, filtername_lower) FROM stdin;
\.


--
-- Data for Name: sequence_value_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sequence_value_item (seq_name, seq_id) FROM stdin;
Avatar	10500
EventType	10000
Feature	10100
FieldLayout	10100
FieldScreen	10000
FieldScreenLayoutItem	10200
FieldScreenScheme	10000
FieldScreenSchemeItem	10100
FieldScreenTab	10100
GadgetUserPreference	10100
IssueTypeScreenSchemeEntity	10100
Notification	10200
NotificationScheme	10100
PortalPage	10100
PortletConfiguration	10100
Priority	10000
ProjectRole	10100
ProjectRoleActor	10100
Resolution	10000
ServiceConfig	10200
SharePermissions	10100
Status	10000
Workflow	10100
WorkflowScheme	10100
WorkflowSchemeEntity	10100
UpgradeHistory	10200
EntityPropertyIndexDocument	10100
ListenerConfig	10300
ProductLicense	10100
LicenseRoleGroup	10100
GlobalPermissionEntry	10200
PluginVersion	10200
LicenseRoleDefault	10100
FieldLayoutItem	10200
CustomField	10100
FieldConfiguration	10200
FieldConfigScheme	10200
FieldConfigSchemeIssueType	10300
ConfigurationContext	10200
ManagedConfigurationItem	10100
IssueType	10100
OptionConfiguration	10300
IssueLinkType	10300
SchemePermissions	10500
UserHistoryItem	10100
UpgradeVersionHistory	10200
ClusteredJob	10400
OSPropertyEntry	10600
CustomFieldOption	10100
GenericConfiguration	10200
UserAttribute	10200
OAuthServiceProviderConsumer	10100
OAuthConsumer	10200
Directory	10100
ApplicationUser	10200
User	10200
AuditLog	10200
AuditChangedValue	10200
RunDetails	10300
Group	10210
Membership	10200
AuditItem	10200
\.


--
-- Data for Name: serviceconfig; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY serviceconfig (id, delaytime, clazz, servicename, cron_expression) FROM stdin;
10000	60000	com.atlassian.jira.service.services.mail.MailQueueService	Mail Queue Service	0 * * * * ?
10002	86400000	com.atlassian.jira.service.services.auditing.AuditLogCleaningService	Audit log cleaning service	0 0 0 * * ?
10001	43200000	com.atlassian.jira.service.services.export.ExportService	Backup Service	0 40 0/12 * * ?
\.


--
-- Data for Name: sharepermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sharepermissions (id, entityid, entitytype, sharetype, param1, param2) FROM stdin;
10000	10000	PortalPage	global	\N	\N
\.


--
-- Data for Name: tempattachmentsmonitor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tempattachmentsmonitor (temporary_attachment_id, form_token, file_name, content_type, file_size, created_time) FROM stdin;
\.


--
-- Data for Name: trackback_ping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY trackback_ping (id, issue, url, title, blogname, excerpt, created) FROM stdin;
\.


--
-- Data for Name: trustedapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY trustedapp (id, application_id, name, public_key, ip_match, url_match, timeout, created, created_by, updated, updated_by) FROM stdin;
\.


--
-- Data for Name: upgradehistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY upgradehistory (id, upgradeclass, targetbuild, status, downgradetaskrequired) FROM stdin;
10000	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70100	70100	complete	Y
10100	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70101	70101	complete	N
10101	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70102	70102	complete	N
10102	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build71001	71001	complete	N
10103	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build71006	71006	complete	N
\.


--
-- Data for Name: upgradeversionhistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY upgradeversionhistory (id, timeperformed, targetbuild, targetversion) FROM stdin;
10000	2016-07-06 12:39:57.834+00	71012	7.1.8
10100	2016-07-11 15:04:41.096+00	71013	7.1.9
\.


--
-- Data for Name: userassociation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY userassociation (source_name, sink_node_id, sink_node_entity, association_type, sequence, created) FROM stdin;
\.


--
-- Data for Name: userbase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY userbase (id, username, password_hash) FROM stdin;
\.


--
-- Data for Name: userhistoryitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY userhistoryitem (id, entitytype, entityid, username, lastviewed, data) FROM stdin;
10000	Dashboard	10000	admin	1468249518583	\N
\.


--
-- Data for Name: userpickerfilter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY userpickerfilter (id, customfield, customfieldconfig, enabled) FROM stdin;
\.


--
-- Data for Name: userpickerfiltergroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY userpickerfiltergroup (id, userpickerfilter, groupname) FROM stdin;
\.


--
-- Data for Name: userpickerfilterrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY userpickerfilterrole (id, userpickerfilter, projectroleid) FROM stdin;
\.


--
-- Data for Name: versioncontrol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY versioncontrol (id, vcsname, vcsdescription, vcstype) FROM stdin;
\.


--
-- Data for Name: votehistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY votehistory (id, issueid, votes, "timestamp") FROM stdin;
\.


--
-- Data for Name: workflowscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY workflowscheme (id, name, description) FROM stdin;
10000	classic	classic
\.


--
-- Data for Name: workflowschemeentity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY workflowschemeentity (id, scheme, workflow, issuetype) FROM stdin;
10000	10000	classic default workflow	0
\.


--
-- Data for Name: worklog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY worklog (id, issueid, author, grouplevel, rolelevel, worklogbody, created, updateauthor, updated, startdate, timeworked) FROM stdin;
\.


--
-- Name: AO_21D670_WHITELIST_RULES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_21D670_WHITELIST_RULES"
    ADD CONSTRAINT "AO_21D670_WHITELIST_RULES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_38321B_CUSTOM_CONTENT_LINK"
    ADD CONSTRAINT "AO_38321B_CUSTOM_CONTENT_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_3B1893_LOOP_DETECTION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_3B1893_LOOP_DETECTION"
    ADD CONSTRAINT "AO_3B1893_LOOP_DETECTION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4AEACD_WEBHOOK_DAO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_4AEACD_WEBHOOK_DAO"
    ADD CONSTRAINT "AO_4AEACD_WEBHOOK_DAO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_550953_SHORTCUT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_550953_SHORTCUT"
    ADD CONSTRAINT "AO_550953_SHORTCUT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT "AO_563AEE_ACTIVITY_ENTITY_pkey" PRIMARY KEY ("ACTIVITY_ID");


--
-- Name: AO_563AEE_ACTOR_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_ACTOR_ENTITY"
    ADD CONSTRAINT "AO_563AEE_ACTOR_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_MEDIA_LINK_ENTITY"
    ADD CONSTRAINT "AO_563AEE_MEDIA_LINK_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_OBJECT_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_OBJECT_ENTITY"
    ADD CONSTRAINT "AO_563AEE_OBJECT_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_TARGET_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_TARGET_ENTITY"
    ADD CONSTRAINT "AO_563AEE_TARGET_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_575BF5_PROCESSED_COMMITS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_575BF5_PROCESSED_COMMITS"
    ADD CONSTRAINT "AO_575BF5_PROCESSED_COMMITS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_575BF5_PROVIDER_ISSUE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_575BF5_PROVIDER_ISSUE"
    ADD CONSTRAINT "AO_575BF5_PROVIDER_ISSUE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_587B34_PROJECT_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_587B34_PROJECT_CONFIG"
    ADD CONSTRAINT "AO_587B34_PROJECT_CONFIG_pkey" PRIMARY KEY ("ID");


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
-- Name: AO_60DB71_AUDITENTRY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_AUDITENTRY"
    ADD CONSTRAINT "AO_60DB71_AUDITENTRY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_BOARDADMINS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_BOARDADMINS"
    ADD CONSTRAINT "AO_60DB71_BOARDADMINS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_CARDCOLOR_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_CARDCOLOR"
    ADD CONSTRAINT "AO_60DB71_CARDCOLOR_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_CARDLAYOUT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_CARDLAYOUT"
    ADD CONSTRAINT "AO_60DB71_CARDLAYOUT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_COLUMNSTATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_COLUMNSTATUS"
    ADD CONSTRAINT "AO_60DB71_COLUMNSTATUS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_COLUMN_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_COLUMN"
    ADD CONSTRAINT "AO_60DB71_COLUMN_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_DETAILVIEWFIELD_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_DETAILVIEWFIELD"
    ADD CONSTRAINT "AO_60DB71_DETAILVIEWFIELD_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_ESTIMATESTATISTIC_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_ESTIMATESTATISTIC"
    ADD CONSTRAINT "AO_60DB71_ESTIMATESTATISTIC_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_ISSUERANKINGLOG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_ISSUERANKINGLOG"
    ADD CONSTRAINT "AO_60DB71_ISSUERANKINGLOG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_ISSUERANKING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_ISSUERANKING"
    ADD CONSTRAINT "AO_60DB71_ISSUERANKING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_LEXORANKBALANCER_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_LEXORANKBALANCER"
    ADD CONSTRAINT "AO_60DB71_LEXORANKBALANCER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_LEXORANK_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_LEXORANK"
    ADD CONSTRAINT "AO_60DB71_LEXORANK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_NONWORKINGDAY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_NONWORKINGDAY"
    ADD CONSTRAINT "AO_60DB71_NONWORKINGDAY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_QUICKFILTER_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_QUICKFILTER"
    ADD CONSTRAINT "AO_60DB71_QUICKFILTER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_RANKABLEOBJECT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_RANKABLEOBJECT"
    ADD CONSTRAINT "AO_60DB71_RANKABLEOBJECT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_RAPIDVIEW_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_RAPIDVIEW"
    ADD CONSTRAINT "AO_60DB71_RAPIDVIEW_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_SPRINT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_SPRINT"
    ADD CONSTRAINT "AO_60DB71_SPRINT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_STATSFIELD_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_STATSFIELD"
    ADD CONSTRAINT "AO_60DB71_STATSFIELD_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_SUBQUERY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_SUBQUERY"
    ADD CONSTRAINT "AO_60DB71_SUBQUERY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_SWIMLANE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_SWIMLANE"
    ADD CONSTRAINT "AO_60DB71_SWIMLANE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_TRACKINGSTATISTIC_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_TRACKINGSTATISTIC"
    ADD CONSTRAINT "AO_60DB71_TRACKINGSTATISTIC_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_VERSION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_VERSION"
    ADD CONSTRAINT "AO_60DB71_VERSION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_WORKINGDAYS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_WORKINGDAYS"
    ADD CONSTRAINT "AO_60DB71_WORKINGDAYS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_88263F_HEALTH_CHECK_STATUS"
    ADD CONSTRAINT "AO_88263F_HEALTH_CHECK_STATUS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_88263F_PROPERTIES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_88263F_PROPERTIES"
    ADD CONSTRAINT "AO_88263F_PROPERTIES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_88263F_READ_NOTIFICATIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_88263F_READ_NOTIFICATIONS"
    ADD CONSTRAINT "AO_88263F_READ_NOTIFICATIONS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_97EDAB_USERINVITATION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_97EDAB_USERINVITATION"
    ADD CONSTRAINT "AO_97EDAB_USERINVITATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_A0B856_WEB_HOOK_LISTENER_AO"
    ADD CONSTRAINT "AO_A0B856_WEB_HOOK_LISTENER_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A44657_HEALTH_CHECK_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_A44657_HEALTH_CHECK_ENTITY"
    ADD CONSTRAINT "AO_A44657_HEALTH_CHECK_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_B9A0F0_APPLIED_TEMPLATE"
    ADD CONSTRAINT "AO_B9A0F0_APPLIED_TEMPLATE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_CFF990_AOTRANSITION_FAILURE"
    ADD CONSTRAINT "AO_CFF990_AOTRANSITION_FAILURE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_BRANCH_HEAD_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_BRANCH_HEAD_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_BRANCH_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_BRANCH"
    ADD CONSTRAINT "AO_E8B6CC_BRANCH_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_CHANGESET_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_CHANGESET_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_COMMIT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_COMMIT"
    ADD CONSTRAINT "AO_E8B6CC_COMMIT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_GIT_HUB_EVENT"
    ADD CONSTRAINT "AO_E8B6CC_GIT_HUB_EVENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_MAPPING_V2"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_MAPPING_V2_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_TO_BRANCH"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_TO_BRANCH_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_TO_CHANGESET"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_TO_CHANGESET_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE_QUEUE_ITEM"
    ADD CONSTRAINT "AO_E8B6CC_MESSAGE_QUEUE_ITEM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_MESSAGE_TAG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE_TAG"
    ADD CONSTRAINT "AO_E8B6CC_MESSAGE_TAG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_MESSAGE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE"
    ADD CONSTRAINT "AO_E8B6CC_MESSAGE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_ORGANIZATION_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_ORGANIZATION_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PROJECT_MAPPING_V2"
    ADD CONSTRAINT "AO_E8B6CC_PROJECT_MAPPING_V2_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PROJECT_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_PROJECT_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PR_ISSUE_KEY"
    ADD CONSTRAINT "AO_E8B6CC_PR_ISSUE_KEY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PR_PARTICIPANT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PR_PARTICIPANT"
    ADD CONSTRAINT "AO_E8B6CC_PR_PARTICIPANT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PR_TO_COMMIT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PR_TO_COMMIT"
    ADD CONSTRAINT "AO_E8B6CC_PR_TO_COMMIT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PULL_REQUEST_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PULL_REQUEST"
    ADD CONSTRAINT "AO_E8B6CC_PULL_REQUEST_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_REPOSITORY_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_REPOSITORY_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_REPO_TO_CHANGESET"
    ADD CONSTRAINT "AO_E8B6CC_REPO_TO_CHANGESET_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_REPO_TO_PROJECT"
    ADD CONSTRAINT "AO_E8B6CC_REPO_TO_PROJECT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_SYNC_AUDIT_LOG"
    ADD CONSTRAINT "AO_E8B6CC_SYNC_AUDIT_LOG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_SYNC_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_SYNC_EVENT"
    ADD CONSTRAINT "AO_E8B6CC_SYNC_EVENT_pkey" PRIMARY KEY ("ID");


--
-- Name: pk_app_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_user
    ADD CONSTRAINT pk_app_user PRIMARY KEY (id);


--
-- Name: pk_audit_changed_value; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY audit_changed_value
    ADD CONSTRAINT pk_audit_changed_value PRIMARY KEY (id);


--
-- Name: pk_audit_item; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY audit_item
    ADD CONSTRAINT pk_audit_item PRIMARY KEY (id);


--
-- Name: pk_audit_log; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY audit_log
    ADD CONSTRAINT pk_audit_log PRIMARY KEY (id);


--
-- Name: pk_avatar; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY avatar
    ADD CONSTRAINT pk_avatar PRIMARY KEY (id);


--
-- Name: pk_board; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY board
    ADD CONSTRAINT pk_board PRIMARY KEY (id);


--
-- Name: pk_boardproject; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY boardproject
    ADD CONSTRAINT pk_boardproject PRIMARY KEY (board_id, project_id);


--
-- Name: pk_changegroup; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY changegroup
    ADD CONSTRAINT pk_changegroup PRIMARY KEY (id);


--
-- Name: pk_changeitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY changeitem
    ADD CONSTRAINT pk_changeitem PRIMARY KEY (id);


--
-- Name: pk_clusteredjob; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clusteredjob
    ADD CONSTRAINT pk_clusteredjob PRIMARY KEY (id);


--
-- Name: pk_clusterlockstatus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clusterlockstatus
    ADD CONSTRAINT pk_clusterlockstatus PRIMARY KEY (id);


--
-- Name: pk_clustermessage; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clustermessage
    ADD CONSTRAINT pk_clustermessage PRIMARY KEY (id);


--
-- Name: pk_clusternode; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clusternode
    ADD CONSTRAINT pk_clusternode PRIMARY KEY (node_id);


--
-- Name: pk_clusternodeheartbeat; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clusternodeheartbeat
    ADD CONSTRAINT pk_clusternodeheartbeat PRIMARY KEY (node_id);


--
-- Name: pk_columnlayout; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY columnlayout
    ADD CONSTRAINT pk_columnlayout PRIMARY KEY (id);


--
-- Name: pk_columnlayoutitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY columnlayoutitem
    ADD CONSTRAINT pk_columnlayoutitem PRIMARY KEY (id);


--
-- Name: pk_component; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY component
    ADD CONSTRAINT pk_component PRIMARY KEY (id);


--
-- Name: pk_configurationcontext; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY configurationcontext
    ADD CONSTRAINT pk_configurationcontext PRIMARY KEY (id);


--
-- Name: pk_customfield; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customfield
    ADD CONSTRAINT pk_customfield PRIMARY KEY (id);


--
-- Name: pk_customfieldoption; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customfieldoption
    ADD CONSTRAINT pk_customfieldoption PRIMARY KEY (id);


--
-- Name: pk_customfieldvalue; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customfieldvalue
    ADD CONSTRAINT pk_customfieldvalue PRIMARY KEY (id);


--
-- Name: pk_cwd_application; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application
    ADD CONSTRAINT pk_cwd_application PRIMARY KEY (id);


--
-- Name: pk_cwd_application_address; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_application_address
    ADD CONSTRAINT pk_cwd_application_address PRIMARY KEY (application_id, remote_address);


--
-- Name: pk_cwd_directory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_directory
    ADD CONSTRAINT pk_cwd_directory PRIMARY KEY (id);


--
-- Name: pk_cwd_directory_attribute; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_directory_attribute
    ADD CONSTRAINT pk_cwd_directory_attribute PRIMARY KEY (directory_id, attribute_name);


--
-- Name: pk_cwd_directory_operation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_directory_operation
    ADD CONSTRAINT pk_cwd_directory_operation PRIMARY KEY (directory_id, operation_type);


--
-- Name: pk_cwd_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_group
    ADD CONSTRAINT pk_cwd_group PRIMARY KEY (id);


--
-- Name: pk_cwd_group_attributes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_group_attributes
    ADD CONSTRAINT pk_cwd_group_attributes PRIMARY KEY (id);


--
-- Name: pk_cwd_membership; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_membership
    ADD CONSTRAINT pk_cwd_membership PRIMARY KEY (id);


--
-- Name: pk_cwd_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user
    ADD CONSTRAINT pk_cwd_user PRIMARY KEY (id);


--
-- Name: pk_cwd_user_attributes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cwd_user_attributes
    ADD CONSTRAINT pk_cwd_user_attributes PRIMARY KEY (id);


--
-- Name: pk_deadletter; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY deadletter
    ADD CONSTRAINT pk_deadletter PRIMARY KEY (id);


--
-- Name: pk_draftworkflowscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY draftworkflowscheme
    ADD CONSTRAINT pk_draftworkflowscheme PRIMARY KEY (id);


--
-- Name: pk_draftworkflowschemeentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY draftworkflowschemeentity
    ADD CONSTRAINT pk_draftworkflowschemeentity PRIMARY KEY (id);


--
-- Name: pk_entity_property; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY entity_property
    ADD CONSTRAINT pk_entity_property PRIMARY KEY (id);


--
-- Name: pk_entity_property_index_docum; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY entity_property_index_document
    ADD CONSTRAINT pk_entity_property_index_docum PRIMARY KEY (id);


--
-- Name: pk_entity_translation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY entity_translation
    ADD CONSTRAINT pk_entity_translation PRIMARY KEY (id);


--
-- Name: pk_external_entities; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY external_entities
    ADD CONSTRAINT pk_external_entities PRIMARY KEY (id);


--
-- Name: pk_externalgadget; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY externalgadget
    ADD CONSTRAINT pk_externalgadget PRIMARY KEY (id);


--
-- Name: pk_favouriteassociations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY favouriteassociations
    ADD CONSTRAINT pk_favouriteassociations PRIMARY KEY (id);


--
-- Name: pk_feature; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY feature
    ADD CONSTRAINT pk_feature PRIMARY KEY (id);


--
-- Name: pk_fieldconfigscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fieldconfigscheme
    ADD CONSTRAINT pk_fieldconfigscheme PRIMARY KEY (id);


--
-- Name: pk_fieldconfigschemeissuetype; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fieldconfigschemeissuetype
    ADD CONSTRAINT pk_fieldconfigschemeissuetype PRIMARY KEY (id);


--
-- Name: pk_fieldconfiguration; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fieldconfiguration
    ADD CONSTRAINT pk_fieldconfiguration PRIMARY KEY (id);


--
-- Name: pk_fieldlayout; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fieldlayout
    ADD CONSTRAINT pk_fieldlayout PRIMARY KEY (id);


--
-- Name: pk_fieldlayoutitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fieldlayoutitem
    ADD CONSTRAINT pk_fieldlayoutitem PRIMARY KEY (id);


--
-- Name: pk_fieldlayoutscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fieldlayoutscheme
    ADD CONSTRAINT pk_fieldlayoutscheme PRIMARY KEY (id);


--
-- Name: pk_fieldlayoutschemeassociatio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fieldlayoutschemeassociation
    ADD CONSTRAINT pk_fieldlayoutschemeassociatio PRIMARY KEY (id);


--
-- Name: pk_fieldlayoutschemeentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fieldlayoutschemeentity
    ADD CONSTRAINT pk_fieldlayoutschemeentity PRIMARY KEY (id);


--
-- Name: pk_fieldscreen; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fieldscreen
    ADD CONSTRAINT pk_fieldscreen PRIMARY KEY (id);


--
-- Name: pk_fieldscreenlayoutitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fieldscreenlayoutitem
    ADD CONSTRAINT pk_fieldscreenlayoutitem PRIMARY KEY (id);


--
-- Name: pk_fieldscreenscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fieldscreenscheme
    ADD CONSTRAINT pk_fieldscreenscheme PRIMARY KEY (id);


--
-- Name: pk_fieldscreenschemeitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fieldscreenschemeitem
    ADD CONSTRAINT pk_fieldscreenschemeitem PRIMARY KEY (id);


--
-- Name: pk_fieldscreentab; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fieldscreentab
    ADD CONSTRAINT pk_fieldscreentab PRIMARY KEY (id);


--
-- Name: pk_fileattachment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fileattachment
    ADD CONSTRAINT pk_fileattachment PRIMARY KEY (id);


--
-- Name: pk_filtersubscription; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY filtersubscription
    ADD CONSTRAINT pk_filtersubscription PRIMARY KEY (id);


--
-- Name: pk_gadgetuserpreference; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gadgetuserpreference
    ADD CONSTRAINT pk_gadgetuserpreference PRIMARY KEY (id);


--
-- Name: pk_genericconfiguration; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY genericconfiguration
    ADD CONSTRAINT pk_genericconfiguration PRIMARY KEY (id);


--
-- Name: pk_globalpermissionentry; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY globalpermissionentry
    ADD CONSTRAINT pk_globalpermissionentry PRIMARY KEY (id);


--
-- Name: pk_groupbase; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groupbase
    ADD CONSTRAINT pk_groupbase PRIMARY KEY (id);


--
-- Name: pk_issuelink; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY issuelink
    ADD CONSTRAINT pk_issuelink PRIMARY KEY (id);


--
-- Name: pk_issuelinktype; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY issuelinktype
    ADD CONSTRAINT pk_issuelinktype PRIMARY KEY (id);


--
-- Name: pk_issuesecurityscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY issuesecurityscheme
    ADD CONSTRAINT pk_issuesecurityscheme PRIMARY KEY (id);


--
-- Name: pk_issuestatus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY issuestatus
    ADD CONSTRAINT pk_issuestatus PRIMARY KEY (id);


--
-- Name: pk_issuetype; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY issuetype
    ADD CONSTRAINT pk_issuetype PRIMARY KEY (id);


--
-- Name: pk_issuetypescreenscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY issuetypescreenscheme
    ADD CONSTRAINT pk_issuetypescreenscheme PRIMARY KEY (id);


--
-- Name: pk_issuetypescreenschemeentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY issuetypescreenschemeentity
    ADD CONSTRAINT pk_issuetypescreenschemeentity PRIMARY KEY (id);


--
-- Name: pk_jiraaction; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jiraaction
    ADD CONSTRAINT pk_jiraaction PRIMARY KEY (id);


--
-- Name: pk_jiradraftworkflows; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jiradraftworkflows
    ADD CONSTRAINT pk_jiradraftworkflows PRIMARY KEY (id);


--
-- Name: pk_jiraeventtype; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jiraeventtype
    ADD CONSTRAINT pk_jiraeventtype PRIMARY KEY (id);


--
-- Name: pk_jiraissue; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jiraissue
    ADD CONSTRAINT pk_jiraissue PRIMARY KEY (id);


--
-- Name: pk_jiraperms; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jiraperms
    ADD CONSTRAINT pk_jiraperms PRIMARY KEY (id);


--
-- Name: pk_jiraworkflows; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jiraworkflows
    ADD CONSTRAINT pk_jiraworkflows PRIMARY KEY (id);


--
-- Name: pk_jiraworkflowstatuses; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jiraworkflowstatuses
    ADD CONSTRAINT pk_jiraworkflowstatuses PRIMARY KEY (id);


--
-- Name: pk_jquartz_blob_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jquartz_blob_triggers
    ADD CONSTRAINT pk_jquartz_blob_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_jquartz_calendars; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jquartz_calendars
    ADD CONSTRAINT pk_jquartz_calendars PRIMARY KEY (calendar_name);


--
-- Name: pk_jquartz_cron_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jquartz_cron_triggers
    ADD CONSTRAINT pk_jquartz_cron_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_jquartz_fired_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jquartz_fired_triggers
    ADD CONSTRAINT pk_jquartz_fired_triggers PRIMARY KEY (entry_id);


--
-- Name: pk_jquartz_job_details; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jquartz_job_details
    ADD CONSTRAINT pk_jquartz_job_details PRIMARY KEY (job_name, job_group);


--
-- Name: pk_jquartz_job_listeners; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jquartz_job_listeners
    ADD CONSTRAINT pk_jquartz_job_listeners PRIMARY KEY (job_name, job_group, job_listener);


--
-- Name: pk_jquartz_locks; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jquartz_locks
    ADD CONSTRAINT pk_jquartz_locks PRIMARY KEY (lock_name);


--
-- Name: pk_jquartz_paused_trigger_grps; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jquartz_paused_trigger_grps
    ADD CONSTRAINT pk_jquartz_paused_trigger_grps PRIMARY KEY (trigger_group);


--
-- Name: pk_jquartz_scheduler_state; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jquartz_scheduler_state
    ADD CONSTRAINT pk_jquartz_scheduler_state PRIMARY KEY (instance_name);


--
-- Name: pk_jquartz_simple_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jquartz_simple_triggers
    ADD CONSTRAINT pk_jquartz_simple_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_jquartz_simprop_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jquartz_simprop_triggers
    ADD CONSTRAINT pk_jquartz_simprop_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_jquartz_trigger_listeners; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jquartz_trigger_listeners
    ADD CONSTRAINT pk_jquartz_trigger_listeners PRIMARY KEY (trigger_group, trigger_listener);


--
-- Name: pk_jquartz_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jquartz_triggers
    ADD CONSTRAINT pk_jquartz_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: pk_label; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY label
    ADD CONSTRAINT pk_label PRIMARY KEY (id);


--
-- Name: pk_licenserolesdefault; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY licenserolesdefault
    ADD CONSTRAINT pk_licenserolesdefault PRIMARY KEY (id);


--
-- Name: pk_licenserolesgroup; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY licenserolesgroup
    ADD CONSTRAINT pk_licenserolesgroup PRIMARY KEY (id);


--
-- Name: pk_listenerconfig; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY listenerconfig
    ADD CONSTRAINT pk_listenerconfig PRIMARY KEY (id);


--
-- Name: pk_mailserver; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mailserver
    ADD CONSTRAINT pk_mailserver PRIMARY KEY (id);


--
-- Name: pk_managedconfigurationitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY managedconfigurationitem
    ADD CONSTRAINT pk_managedconfigurationitem PRIMARY KEY (id);


--
-- Name: pk_membershipbase; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY membershipbase
    ADD CONSTRAINT pk_membershipbase PRIMARY KEY (id);


--
-- Name: pk_moved_issue_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY moved_issue_key
    ADD CONSTRAINT pk_moved_issue_key PRIMARY KEY (id);


--
-- Name: pk_nodeassociation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY nodeassociation
    ADD CONSTRAINT pk_nodeassociation PRIMARY KEY (source_node_id, source_node_entity, sink_node_id, sink_node_entity, association_type);


--
-- Name: pk_nodeindexcounter; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY nodeindexcounter
    ADD CONSTRAINT pk_nodeindexcounter PRIMARY KEY (id);


--
-- Name: pk_notification; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY notification
    ADD CONSTRAINT pk_notification PRIMARY KEY (id);


--
-- Name: pk_notificationinstance; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY notificationinstance
    ADD CONSTRAINT pk_notificationinstance PRIMARY KEY (id);


--
-- Name: pk_notificationscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY notificationscheme
    ADD CONSTRAINT pk_notificationscheme PRIMARY KEY (id);


--
-- Name: pk_oauthconsumer; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauthconsumer
    ADD CONSTRAINT pk_oauthconsumer PRIMARY KEY (id);


--
-- Name: pk_oauthconsumertoken; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauthconsumertoken
    ADD CONSTRAINT pk_oauthconsumertoken PRIMARY KEY (id);


--
-- Name: pk_oauthspconsumer; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauthspconsumer
    ADD CONSTRAINT pk_oauthspconsumer PRIMARY KEY (id);


--
-- Name: pk_oauthsptoken; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY oauthsptoken
    ADD CONSTRAINT pk_oauthsptoken PRIMARY KEY (id);


--
-- Name: pk_optionconfiguration; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY optionconfiguration
    ADD CONSTRAINT pk_optionconfiguration PRIMARY KEY (id);


--
-- Name: pk_os_currentstep; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY os_currentstep
    ADD CONSTRAINT pk_os_currentstep PRIMARY KEY (id);


--
-- Name: pk_os_currentstep_prev; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY os_currentstep_prev
    ADD CONSTRAINT pk_os_currentstep_prev PRIMARY KEY (id, previous_id);


--
-- Name: pk_os_historystep; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY os_historystep
    ADD CONSTRAINT pk_os_historystep PRIMARY KEY (id);


--
-- Name: pk_os_historystep_prev; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY os_historystep_prev
    ADD CONSTRAINT pk_os_historystep_prev PRIMARY KEY (id, previous_id);


--
-- Name: pk_os_wfentry; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY os_wfentry
    ADD CONSTRAINT pk_os_wfentry PRIMARY KEY (id);


--
-- Name: pk_permissionscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permissionscheme
    ADD CONSTRAINT pk_permissionscheme PRIMARY KEY (id);


--
-- Name: pk_pluginstate; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pluginstate
    ADD CONSTRAINT pk_pluginstate PRIMARY KEY (pluginkey);


--
-- Name: pk_pluginversion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pluginversion
    ADD CONSTRAINT pk_pluginversion PRIMARY KEY (id);


--
-- Name: pk_portalpage; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY portalpage
    ADD CONSTRAINT pk_portalpage PRIMARY KEY (id);


--
-- Name: pk_portletconfiguration; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY portletconfiguration
    ADD CONSTRAINT pk_portletconfiguration PRIMARY KEY (id);


--
-- Name: pk_priority; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY priority
    ADD CONSTRAINT pk_priority PRIMARY KEY (id);


--
-- Name: pk_productlicense; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productlicense
    ADD CONSTRAINT pk_productlicense PRIMARY KEY (id);


--
-- Name: pk_project; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project
    ADD CONSTRAINT pk_project PRIMARY KEY (id);


--
-- Name: pk_project_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project_key
    ADD CONSTRAINT pk_project_key PRIMARY KEY (id);


--
-- Name: pk_projectcategory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY projectcategory
    ADD CONSTRAINT pk_projectcategory PRIMARY KEY (id);


--
-- Name: pk_projectchangedtime; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY projectchangedtime
    ADD CONSTRAINT pk_projectchangedtime PRIMARY KEY (project_id);


--
-- Name: pk_projectrole; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY projectrole
    ADD CONSTRAINT pk_projectrole PRIMARY KEY (id);


--
-- Name: pk_projectroleactor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY projectroleactor
    ADD CONSTRAINT pk_projectroleactor PRIMARY KEY (id);


--
-- Name: pk_projectversion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY projectversion
    ADD CONSTRAINT pk_projectversion PRIMARY KEY (id);


--
-- Name: pk_propertydata; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propertydata
    ADD CONSTRAINT pk_propertydata PRIMARY KEY (id);


--
-- Name: pk_propertydate; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propertydate
    ADD CONSTRAINT pk_propertydate PRIMARY KEY (id);


--
-- Name: pk_propertydecimal; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propertydecimal
    ADD CONSTRAINT pk_propertydecimal PRIMARY KEY (id);


--
-- Name: pk_propertyentry; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propertyentry
    ADD CONSTRAINT pk_propertyentry PRIMARY KEY (id);


--
-- Name: pk_propertynumber; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propertynumber
    ADD CONSTRAINT pk_propertynumber PRIMARY KEY (id);


--
-- Name: pk_propertystring; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propertystring
    ADD CONSTRAINT pk_propertystring PRIMARY KEY (id);


--
-- Name: pk_propertytext; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propertytext
    ADD CONSTRAINT pk_propertytext PRIMARY KEY (id);


--
-- Name: pk_qrtz_calendars; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY qrtz_calendars
    ADD CONSTRAINT pk_qrtz_calendars PRIMARY KEY (calendar_name);


--
-- Name: pk_qrtz_cron_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY qrtz_cron_triggers
    ADD CONSTRAINT pk_qrtz_cron_triggers PRIMARY KEY (id);


--
-- Name: pk_qrtz_fired_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY qrtz_fired_triggers
    ADD CONSTRAINT pk_qrtz_fired_triggers PRIMARY KEY (entry_id);


--
-- Name: pk_qrtz_job_details; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY qrtz_job_details
    ADD CONSTRAINT pk_qrtz_job_details PRIMARY KEY (id);


--
-- Name: pk_qrtz_job_listeners; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY qrtz_job_listeners
    ADD CONSTRAINT pk_qrtz_job_listeners PRIMARY KEY (id);


--
-- Name: pk_qrtz_simple_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY qrtz_simple_triggers
    ADD CONSTRAINT pk_qrtz_simple_triggers PRIMARY KEY (id);


--
-- Name: pk_qrtz_trigger_listeners; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY qrtz_trigger_listeners
    ADD CONSTRAINT pk_qrtz_trigger_listeners PRIMARY KEY (id);


--
-- Name: pk_qrtz_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY qrtz_triggers
    ADD CONSTRAINT pk_qrtz_triggers PRIMARY KEY (id);


--
-- Name: pk_reindex_component; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reindex_component
    ADD CONSTRAINT pk_reindex_component PRIMARY KEY (id);


--
-- Name: pk_reindex_request; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reindex_request
    ADD CONSTRAINT pk_reindex_request PRIMARY KEY (id);


--
-- Name: pk_remembermetoken; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY remembermetoken
    ADD CONSTRAINT pk_remembermetoken PRIMARY KEY (id);


--
-- Name: pk_remotelink; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY remotelink
    ADD CONSTRAINT pk_remotelink PRIMARY KEY (id);


--
-- Name: pk_replicatedindexoperation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY replicatedindexoperation
    ADD CONSTRAINT pk_replicatedindexoperation PRIMARY KEY (id);


--
-- Name: pk_resolution; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resolution
    ADD CONSTRAINT pk_resolution PRIMARY KEY (id);


--
-- Name: pk_rundetails; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rundetails
    ADD CONSTRAINT pk_rundetails PRIMARY KEY (id);


--
-- Name: pk_schemeissuesecurities; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY schemeissuesecurities
    ADD CONSTRAINT pk_schemeissuesecurities PRIMARY KEY (id);


--
-- Name: pk_schemeissuesecuritylevels; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY schemeissuesecuritylevels
    ADD CONSTRAINT pk_schemeissuesecuritylevels PRIMARY KEY (id);


--
-- Name: pk_schemepermissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY schemepermissions
    ADD CONSTRAINT pk_schemepermissions PRIMARY KEY (id);


--
-- Name: pk_searchrequest; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY searchrequest
    ADD CONSTRAINT pk_searchrequest PRIMARY KEY (id);


--
-- Name: pk_sequence_value_item; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sequence_value_item
    ADD CONSTRAINT pk_sequence_value_item PRIMARY KEY (seq_name);


--
-- Name: pk_serviceconfig; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY serviceconfig
    ADD CONSTRAINT pk_serviceconfig PRIMARY KEY (id);


--
-- Name: pk_sharepermissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sharepermissions
    ADD CONSTRAINT pk_sharepermissions PRIMARY KEY (id);


--
-- Name: pk_tempattachmentsmonitor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tempattachmentsmonitor
    ADD CONSTRAINT pk_tempattachmentsmonitor PRIMARY KEY (temporary_attachment_id);


--
-- Name: pk_trackback_ping; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY trackback_ping
    ADD CONSTRAINT pk_trackback_ping PRIMARY KEY (id);


--
-- Name: pk_trustedapp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY trustedapp
    ADD CONSTRAINT pk_trustedapp PRIMARY KEY (id);


--
-- Name: pk_upgradehistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY upgradehistory
    ADD CONSTRAINT pk_upgradehistory PRIMARY KEY (upgradeclass);


--
-- Name: pk_upgradeversionhistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY upgradeversionhistory
    ADD CONSTRAINT pk_upgradeversionhistory PRIMARY KEY (targetbuild);


--
-- Name: pk_userassociation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userassociation
    ADD CONSTRAINT pk_userassociation PRIMARY KEY (source_name, sink_node_id, sink_node_entity, association_type);


--
-- Name: pk_userbase; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userbase
    ADD CONSTRAINT pk_userbase PRIMARY KEY (id);


--
-- Name: pk_userhistoryitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userhistoryitem
    ADD CONSTRAINT pk_userhistoryitem PRIMARY KEY (id);


--
-- Name: pk_userpickerfilter; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userpickerfilter
    ADD CONSTRAINT pk_userpickerfilter PRIMARY KEY (id);


--
-- Name: pk_userpickerfiltergroup; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userpickerfiltergroup
    ADD CONSTRAINT pk_userpickerfiltergroup PRIMARY KEY (id);


--
-- Name: pk_userpickerfilterrole; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userpickerfilterrole
    ADD CONSTRAINT pk_userpickerfilterrole PRIMARY KEY (id);


--
-- Name: pk_versioncontrol; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY versioncontrol
    ADD CONSTRAINT pk_versioncontrol PRIMARY KEY (id);


--
-- Name: pk_votehistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY votehistory
    ADD CONSTRAINT pk_votehistory PRIMARY KEY (id);


--
-- Name: pk_workflowscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workflowscheme
    ADD CONSTRAINT pk_workflowscheme PRIMARY KEY (id);


--
-- Name: pk_workflowschemeentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY workflowschemeentity
    ADD CONSTRAINT pk_workflowschemeentity PRIMARY KEY (id);


--
-- Name: pk_worklog; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY worklog
    ADD CONSTRAINT pk_worklog PRIMARY KEY (id);


--
-- Name: u_ao_587b34_project2070954277; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_587B34_PROJECT_CONFIG"
    ADD CONSTRAINT u_ao_587b34_project2070954277 UNIQUE ("NAME_UNIQUE_CONSTRAINT");


--
-- Name: action_author_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX action_author_created ON jiraaction USING btree (author, created);


--
-- Name: action_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX action_issue ON jiraaction USING btree (issueid);


--
-- Name: attach_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX attach_issue ON fileattachment USING btree (issueid);


--
-- Name: avatar_filename_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX avatar_filename_index ON avatar USING btree (filename, avatartype, systemavatar);


--
-- Name: avatar_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX avatar_index ON avatar USING btree (avatartype, owner);


--
-- Name: cf_cfoption; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cf_cfoption ON customfieldoption USING btree (customfield);


--
-- Name: cf_userpickerfiltergroup; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cf_userpickerfiltergroup ON userpickerfiltergroup USING btree (userpickerfilter);


--
-- Name: cf_userpickerfilterrole; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cf_userpickerfilterrole ON userpickerfilterrole USING btree (userpickerfilter);


--
-- Name: cfvalue_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cfvalue_issue ON customfieldvalue USING btree (issue, customfield);


--
-- Name: chggroup_author_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chggroup_author_created ON changegroup USING btree (author, created);


--
-- Name: chggroup_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chggroup_issue ON changegroup USING btree (issueid);


--
-- Name: chgitem_chggrp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chgitem_chggrp ON changeitem USING btree (groupid);


--
-- Name: chgitem_field; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chgitem_field ON changeitem USING btree (field);


--
-- Name: cl_searchrequest; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cl_searchrequest ON columnlayout USING btree (searchrequest);


--
-- Name: cl_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cl_username ON columnlayout USING btree (username);


--
-- Name: cluster_lock_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX cluster_lock_name_idx ON clusterlockstatus USING btree (lock_name);


--
-- Name: clusteredjob_jobid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX clusteredjob_jobid_idx ON clusteredjob USING btree (job_id);


--
-- Name: clusteredjob_jrk_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX clusteredjob_jrk_idx ON clusteredjob USING btree (job_runner_key);


--
-- Name: clusteredjob_nextrun_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX clusteredjob_nextrun_idx ON clusteredjob USING btree (next_run);


--
-- Name: confcontext; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX confcontext ON configurationcontext USING btree (projectcategory, project, customfield);


--
-- Name: confcontextfieldconfigscheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX confcontextfieldconfigscheme ON configurationcontext USING btree (fieldconfigscheme);


--
-- Name: confcontextprojectkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX confcontextprojectkey ON configurationcontext USING btree (project, customfield);


--
-- Name: deadletter_lastseen; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX deadletter_lastseen ON deadletter USING btree (last_seen);


--
-- Name: deadletter_msg_server_folder; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX deadletter_msg_server_folder ON deadletter USING btree (message_id, mail_server_id, folder_name);


--
-- Name: draft_workflow_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX draft_workflow_scheme ON draftworkflowschemeentity USING btree (scheme);


--
-- Name: draft_workflow_scheme_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX draft_workflow_scheme_parent ON draftworkflowscheme USING btree (workflow_scheme_id);


--
-- Name: entityproperty_entity; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX entityproperty_entity ON entity_property USING btree (entity_name, entity_id);


--
-- Name: entityproperty_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX entityproperty_key ON entity_property USING btree (property_key);


--
-- Name: entitytranslation_locale; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX entitytranslation_locale ON entity_translation USING btree (locale);


--
-- Name: entpropindexdoc_module; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX entpropindexdoc_module ON entity_property_index_document USING btree (plugin_key, module_key);


--
-- Name: ext_entity_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ext_entity_name ON external_entities USING btree (name);


--
-- Name: favourite_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX favourite_index ON favouriteassociations USING btree (username, entitytype, entityid);


--
-- Name: fc_fieldid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fc_fieldid ON fieldconfiguration USING btree (fieldid);


--
-- Name: fcs_fieldid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fcs_fieldid ON fieldconfigscheme USING btree (fieldid);


--
-- Name: fcs_issuetype; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fcs_issuetype ON fieldconfigschemeissuetype USING btree (issuetype);


--
-- Name: fcs_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fcs_scheme ON fieldconfigschemeissuetype USING btree (fieldconfigscheme);


--
-- Name: feature_id_userkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX feature_id_userkey ON feature USING btree (id, user_key);


--
-- Name: fieldid_fieldconf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldid_fieldconf ON optionconfiguration USING btree (fieldid, fieldconfig);


--
-- Name: fieldid_optionid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldid_optionid ON optionconfiguration USING btree (fieldid, optionid);


--
-- Name: fieldlayout_layout; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldlayout_layout ON fieldlayoutschemeentity USING btree (fieldlayout);


--
-- Name: fieldlayout_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldlayout_scheme ON fieldlayoutschemeentity USING btree (scheme);


--
-- Name: fieldscitem_tab; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldscitem_tab ON fieldscreenlayoutitem USING btree (fieldscreentab);


--
-- Name: fieldscreen_field; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldscreen_field ON fieldscreenlayoutitem USING btree (fieldidentifier);


--
-- Name: fieldscreen_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldscreen_scheme ON issuetypescreenschemeentity USING btree (fieldscreenscheme);


--
-- Name: fieldscreen_tab; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldscreen_tab ON fieldscreentab USING btree (fieldscreen);


--
-- Name: fl_scheme_assoc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fl_scheme_assoc ON fieldlayoutschemeassociation USING btree (project, issuetype);


--
-- Name: historystep_entryid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX historystep_entryid ON os_historystep USING btree (entry_id);


--
-- Name: idx_all_project_ids; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_all_project_ids ON project_key USING btree (project_id);


--
-- Name: idx_all_project_keys; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_all_project_keys ON project_key USING btree (project_key);


--
-- Name: idx_audit_item_log_id2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_audit_item_log_id2 ON audit_item USING btree (log_id);


--
-- Name: idx_audit_log_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_audit_log_created ON audit_log USING btree (created);


--
-- Name: idx_board_board_ids; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_board_board_ids ON boardproject USING btree (board_id);


--
-- Name: idx_board_project_ids; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_board_project_ids ON boardproject USING btree (project_id);


--
-- Name: idx_changed_value_log_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_changed_value_log_id ON audit_changed_value USING btree (log_id);


--
-- Name: idx_cli_fieldidentifier; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_cli_fieldidentifier ON columnlayoutitem USING btree (fieldidentifier);


--
-- Name: idx_component_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_component_name ON component USING btree (cname);


--
-- Name: idx_component_project; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_component_project ON component USING btree (project);


--
-- Name: idx_directory_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_directory_active ON cwd_directory USING btree (active);


--
-- Name: idx_directory_impl; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_directory_impl ON cwd_directory USING btree (lower_impl_class);


--
-- Name: idx_directory_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_directory_type ON cwd_directory USING btree (directory_type);


--
-- Name: idx_display_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_display_name ON cwd_user USING btree (lower_display_name);


--
-- Name: idx_email_address; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_email_address ON cwd_user USING btree (lower_email_address);


--
-- Name: idx_first_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_first_name ON cwd_user USING btree (lower_first_name);


--
-- Name: idx_fli_fieldidentifier; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fli_fieldidentifier ON fieldlayoutitem USING btree (fieldidentifier);


--
-- Name: idx_group_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_active ON cwd_group USING btree (lower_group_name, active);


--
-- Name: idx_group_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_attr_dir_name_lval ON cwd_group_attributes USING btree (directory_id, attribute_name, lower_attribute_value);


--
-- Name: idx_group_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_dir_id ON cwd_group USING btree (directory_id);


--
-- Name: idx_last_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_last_name ON cwd_user USING btree (lower_last_name);


--
-- Name: idx_mem_dir_child; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_child ON cwd_membership USING btree (lower_child_name, membership_type, directory_id);


--
-- Name: idx_mem_dir_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_parent ON cwd_membership USING btree (lower_parent_name, membership_type, directory_id);


--
-- Name: idx_mem_dir_parent_child; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_parent_child ON cwd_membership USING btree (lower_parent_name, lower_child_name, membership_type, directory_id);


--
-- Name: idx_old_issue_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_old_issue_key ON moved_issue_key USING btree (old_issue_key);


--
-- Name: idx_parent_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_parent_name ON jiraworkflowstatuses USING btree (parentname);


--
-- Name: idx_project_category_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_project_category_name ON projectcategory USING btree (cname);


--
-- Name: idx_project_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_project_key ON project USING btree (pkey);


--
-- Name: idx_qrtz_ft_inst_job_req_rcvry; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_inst_job_req_rcvry ON jquartz_fired_triggers USING btree (sched_name, instance_name, requests_recovery);


--
-- Name: idx_qrtz_ft_j_g; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_j_g ON jquartz_fired_triggers USING btree (sched_name, job_name, job_group);


--
-- Name: idx_qrtz_ft_jg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_jg ON jquartz_fired_triggers USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_ft_t_g; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_t_g ON jquartz_fired_triggers USING btree (sched_name, trigger_name, trigger_group);


--
-- Name: idx_qrtz_ft_tg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_tg ON jquartz_fired_triggers USING btree (sched_name, trigger_group);


--
-- Name: idx_qrtz_ft_trig_inst_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_trig_inst_name ON jquartz_fired_triggers USING btree (sched_name, instance_name);


--
-- Name: idx_qrtz_j_g; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_j_g ON jquartz_triggers USING btree (sched_name, trigger_group);


--
-- Name: idx_qrtz_j_grp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_j_grp ON jquartz_job_details USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_j_req_recovery; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_j_req_recovery ON jquartz_job_details USING btree (sched_name, requests_recovery);


--
-- Name: idx_qrtz_j_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_j_state ON jquartz_triggers USING btree (sched_name, trigger_state);


--
-- Name: idx_qrtz_t_c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_c ON jquartz_triggers USING btree (sched_name, calendar_name);


--
-- Name: idx_qrtz_t_j; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_j ON jquartz_triggers USING btree (sched_name, job_name, job_group);


--
-- Name: idx_qrtz_t_jg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_jg ON jquartz_triggers USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_t_n_g_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_n_g_state ON jquartz_triggers USING btree (sched_name, trigger_group, trigger_state);


--
-- Name: idx_qrtz_t_n_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_n_state ON jquartz_triggers USING btree (sched_name, trigger_name, trigger_group, trigger_state);


--
-- Name: idx_qrtz_t_next_fire_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_next_fire_time ON jquartz_triggers USING btree (sched_name, next_fire_time);


--
-- Name: idx_qrtz_t_nft_misfire; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_misfire ON jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time);


--
-- Name: idx_qrtz_t_nft_st; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_st ON jquartz_triggers USING btree (sched_name, trigger_state, next_fire_time);


--
-- Name: idx_qrtz_t_nft_st_misfire; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_st_misfire ON jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_state);


--
-- Name: idx_qrtz_t_nft_st_misfire_grp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_st_misfire_grp ON jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_group, trigger_state);


--
-- Name: idx_reindex_component_req_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_reindex_component_req_id ON reindex_component USING btree (request_id);


--
-- Name: idx_tam_by_created_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tam_by_created_time ON tempattachmentsmonitor USING btree (created_time);


--
-- Name: idx_tam_by_form_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tam_by_form_token ON tempattachmentsmonitor USING btree (form_token);


--
-- Name: idx_user_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_attr_dir_name_lval ON cwd_user_attributes USING btree (directory_id, attribute_name, lower_attribute_value);


--
-- Name: idx_version_project; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_version_project ON projectversion USING btree (project);


--
-- Name: idx_version_sequence; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_version_sequence ON projectversion USING btree (sequence);


--
-- Name: index_ao_38321b_cus1828044926; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_38321b_cus1828044926 ON "AO_38321B_CUSTOM_CONTENT_LINK" USING btree ("CONTENT_KEY");


--
-- Name: index_ao_550953_sho1778115994; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_550953_sho1778115994 ON "AO_550953_SHORTCUT" USING btree ("PROJECT_ID");


--
-- Name: index_ao_563aee_act1642652291; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_act1642652291 ON "AO_563AEE_ACTIVITY_ENTITY" USING btree ("OBJECT_ID");


--
-- Name: index_ao_563aee_act1978295567; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_act1978295567 ON "AO_563AEE_ACTIVITY_ENTITY" USING btree ("TARGET_ID");


--
-- Name: index_ao_563aee_act972488439; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_act972488439 ON "AO_563AEE_ACTIVITY_ENTITY" USING btree ("ICON_ID");


--
-- Name: index_ao_563aee_act995325379; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_act995325379 ON "AO_563AEE_ACTIVITY_ENTITY" USING btree ("ACTOR_ID");


--
-- Name: index_ao_563aee_obj696886343; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_obj696886343 ON "AO_563AEE_OBJECT_ENTITY" USING btree ("IMAGE_ID");


--
-- Name: index_ao_563aee_tar521440921; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_tar521440921 ON "AO_563AEE_TARGET_ENTITY" USING btree ("IMAGE_ID");


--
-- Name: index_ao_575bf5_pro1117502689; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_575bf5_pro1117502689 ON "AO_575BF5_PROVIDER_ISSUE" USING btree ("STALE_AFTER");


--
-- Name: index_ao_575bf5_pro1348521624; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_575bf5_pro1348521624 ON "AO_575BF5_PROVIDER_ISSUE" USING btree ("PROVIDER_SOURCE_ID");


--
-- Name: index_ao_575bf5_pro1681808571; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_575bf5_pro1681808571 ON "AO_575BF5_PROCESSED_COMMITS" USING btree ("COMMIT_HASH");


--
-- Name: index_ao_575bf5_pro741170824; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_575bf5_pro741170824 ON "AO_575BF5_PROVIDER_ISSUE" USING btree ("ISSUE_ID");


--
-- Name: index_ao_575bf5_pro78019725; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_575bf5_pro78019725 ON "AO_575BF5_PROCESSED_COMMITS" USING btree ("METADATA_HASH");


--
-- Name: index_ao_587b34_pro1732672724; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_587b34_pro1732672724 ON "AO_587B34_PROJECT_CONFIG" USING btree ("ROOM_ID");


--
-- Name: index_ao_587b34_pro193829489; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_587b34_pro193829489 ON "AO_587B34_PROJECT_CONFIG" USING btree ("CONFIGURATION_GROUP_ID");


--
-- Name: index_ao_587b34_pro2093917684; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_587b34_pro2093917684 ON "AO_587B34_PROJECT_CONFIG" USING btree ("PROJECT_ID");


--
-- Name: index_ao_587b34_pro2115480362; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_587b34_pro2115480362 ON "AO_587B34_PROJECT_CONFIG" USING btree ("NAME");


--
-- Name: index_ao_5fb9d7_aoh1981563178; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_5fb9d7_aoh1981563178 ON "AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("USER_KEY");


--
-- Name: index_ao_5fb9d7_aoh49772492; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_5fb9d7_aoh49772492 ON "AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("HIP_CHAT_LINK_ID");


--
-- Name: index_ao_60db71_aud137736645; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_aud137736645 ON "AO_60DB71_AUDITENTRY" USING btree ("ENTITY_CLASS");


--
-- Name: index_ao_60db71_aud1756477597; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_aud1756477597 ON "AO_60DB71_AUDITENTRY" USING btree ("CATEGORY");


--
-- Name: index_ao_60db71_aud604788536; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_aud604788536 ON "AO_60DB71_AUDITENTRY" USING btree ("ENTITY_ID");


--
-- Name: index_ao_60db71_boa2110227660; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_boa2110227660 ON "AO_60DB71_BOARDADMINS" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_car149237770; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_car149237770 ON "AO_60DB71_CARDLAYOUT" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_car2031978979; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_car2031978979 ON "AO_60DB71_CARDCOLOR" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_col1856623434; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_col1856623434 ON "AO_60DB71_COLUMNSTATUS" USING btree ("COLUMN_ID");


--
-- Name: index_ao_60db71_col2098611346; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_col2098611346 ON "AO_60DB71_COLUMN" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_det878495474; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_det878495474 ON "AO_60DB71_DETAILVIEWFIELD" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_est1680565966; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_est1680565966 ON "AO_60DB71_ESTIMATESTATISTIC" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_iss1616896230; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_iss1616896230 ON "AO_60DB71_ISSUERANKING" USING btree ("ISSUE_ID");


--
-- Name: index_ao_60db71_iss1786461035; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_iss1786461035 ON "AO_60DB71_ISSUERANKING" USING btree ("CUSTOM_FIELD_ID");


--
-- Name: index_ao_60db71_lex1632828616; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_lex1632828616 ON "AO_60DB71_LEXORANK" USING btree ("LOCK_HASH");


--
-- Name: index_ao_60db71_lex604083109; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_lex604083109 ON "AO_60DB71_LEXORANK" USING btree ("ISSUE_ID");


--
-- Name: index_ao_60db71_lexorank_rank; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_lexorank_rank ON "AO_60DB71_LEXORANK" USING btree ("RANK");


--
-- Name: index_ao_60db71_non1145824037; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_non1145824037 ON "AO_60DB71_NONWORKINGDAY" USING btree ("WORKING_DAYS_ID");


--
-- Name: index_ao_60db71_qui432573905; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_qui432573905 ON "AO_60DB71_QUICKFILTER" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_spr1457658269; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_spr1457658269 ON "AO_60DB71_SPRINT" USING btree ("SEQUENCE");


--
-- Name: index_ao_60db71_sta1907922871; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_sta1907922871 ON "AO_60DB71_STATSFIELD" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_sub730851836; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_sub730851836 ON "AO_60DB71_SUBQUERY" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_swi1429284592; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_swi1429284592 ON "AO_60DB71_SWIMLANE" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_tra1711190333; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_tra1711190333 ON "AO_60DB71_TRACKINGSTATISTIC" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_wor1205491794; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_wor1205491794 ON "AO_60DB71_WORKINGDAYS" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_e8b6cc_bra1368852151; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_bra1368852151 ON "AO_E8B6CC_BRANCH_HEAD_MAPPING" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_bra405461593; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_bra405461593 ON "AO_E8B6CC_BRANCH" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_cha1086340152; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_cha1086340152 ON "AO_E8B6CC_CHANGESET_MAPPING" USING btree ("SMARTCOMMIT_AVAILABLE");


--
-- Name: index_ao_e8b6cc_cha1483243924; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_cha1483243924 ON "AO_E8B6CC_CHANGESET_MAPPING" USING btree ("NODE");


--
-- Name: index_ao_e8b6cc_cha509722037; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_cha509722037 ON "AO_E8B6CC_CHANGESET_MAPPING" USING btree ("RAW_NODE");


--
-- Name: index_ao_e8b6cc_cha897886051; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_cha897886051 ON "AO_E8B6CC_CHANGESET_MAPPING" USING btree ("AUTHOR");


--
-- Name: index_ao_e8b6cc_com1308336834; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_com1308336834 ON "AO_E8B6CC_COMMIT" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_commit_node; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_commit_node ON "AO_E8B6CC_COMMIT" USING btree ("NODE");


--
-- Name: index_ao_e8b6cc_git1120895454; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_git1120895454 ON "AO_E8B6CC_GIT_HUB_EVENT" USING btree ("GIT_HUB_ID");


--
-- Name: index_ao_e8b6cc_git1804640320; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_git1804640320 ON "AO_E8B6CC_GIT_HUB_EVENT" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_iss1229805759; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_iss1229805759 ON "AO_E8B6CC_ISSUE_TO_CHANGESET" USING btree ("CHANGESET_ID");


--
-- Name: index_ao_e8b6cc_iss1325927291; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_iss1325927291 ON "AO_E8B6CC_ISSUE_TO_BRANCH" USING btree ("BRANCH_ID");


--
-- Name: index_ao_e8b6cc_iss353204826; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_iss353204826 ON "AO_E8B6CC_ISSUE_TO_BRANCH" USING btree ("ISSUE_KEY");


--
-- Name: index_ao_e8b6cc_iss417950110; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_iss417950110 ON "AO_E8B6CC_ISSUE_TO_CHANGESET" USING btree ("ISSUE_KEY");


--
-- Name: index_ao_e8b6cc_iss648895902; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_iss648895902 ON "AO_E8B6CC_ISSUE_TO_CHANGESET" USING btree ("PROJECT_KEY");


--
-- Name: index_ao_e8b6cc_mes1247039512; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_mes1247039512 ON "AO_E8B6CC_MESSAGE" USING btree ("ADDRESS");


--
-- Name: index_ao_e8b6cc_mes1391090780; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_mes1391090780 ON "AO_E8B6CC_MESSAGE_TAG" USING btree ("MESSAGE_ID");


--
-- Name: index_ao_e8b6cc_mes1648007831; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_mes1648007831 ON "AO_E8B6CC_MESSAGE_TAG" USING btree ("TAG");


--
-- Name: index_ao_e8b6cc_mes344532677; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_mes344532677 ON "AO_E8B6CC_MESSAGE_QUEUE_ITEM" USING btree ("MESSAGE_ID");


--
-- Name: index_ao_e8b6cc_mes59146529; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_mes59146529 ON "AO_E8B6CC_MESSAGE_QUEUE_ITEM" USING btree ("STATE");


--
-- Name: index_ao_e8b6cc_mes60959905; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_mes60959905 ON "AO_E8B6CC_MESSAGE_QUEUE_ITEM" USING btree ("QUEUE");


--
-- Name: index_ao_e8b6cc_org1513110290; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_org1513110290 ON "AO_E8B6CC_ORGANIZATION_MAPPING" USING btree ("DVCS_TYPE");


--
-- Name: index_ao_e8b6cc_pr_1045528152; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_1045528152 ON "AO_E8B6CC_PR_TO_COMMIT" USING btree ("REQUEST_ID");


--
-- Name: index_ao_e8b6cc_pr_1105917040; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_1105917040 ON "AO_E8B6CC_PR_PARTICIPANT" USING btree ("PULL_REQUEST_ID");


--
-- Name: index_ao_e8b6cc_pr_1458633226; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_1458633226 ON "AO_E8B6CC_PR_TO_COMMIT" USING btree ("COMMIT_ID");


--
-- Name: index_ao_e8b6cc_pr_1639282617; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_1639282617 ON "AO_E8B6CC_PR_ISSUE_KEY" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pr_2106805302; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_2106805302 ON "AO_E8B6CC_PR_ISSUE_KEY" USING btree ("ISSUE_KEY");


--
-- Name: index_ao_e8b6cc_pr_281193494; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_281193494 ON "AO_E8B6CC_PR_ISSUE_KEY" USING btree ("PULL_REQUEST_ID");


--
-- Name: index_ao_e8b6cc_pr_685151049; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_685151049 ON "AO_E8B6CC_PR_TO_COMMIT" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pr_758084799; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_758084799 ON "AO_E8B6CC_PR_PARTICIPANT" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pul1230717024; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pul1230717024 ON "AO_E8B6CC_PULL_REQUEST" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pul1448445182; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pul1448445182 ON "AO_E8B6CC_PULL_REQUEST" USING btree ("TO_REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_pul602811170; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pul602811170 ON "AO_E8B6CC_PULL_REQUEST" USING btree ("REMOTE_ID");


--
-- Name: index_ao_e8b6cc_rep1082901832; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_rep1082901832 ON "AO_E8B6CC_REPO_TO_CHANGESET" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_rep1928770529; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_rep1928770529 ON "AO_E8B6CC_REPO_TO_PROJECT" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_rep702725269; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_rep702725269 ON "AO_E8B6CC_REPOSITORY_MAPPING" USING btree ("ORGANIZATION_ID");


--
-- Name: index_ao_e8b6cc_rep922992576; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_rep922992576 ON "AO_E8B6CC_REPO_TO_CHANGESET" USING btree ("CHANGESET_ID");


--
-- Name: index_ao_e8b6cc_rep93578901; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_rep93578901 ON "AO_E8B6CC_REPOSITORY_MAPPING" USING btree ("LINKED");


--
-- Name: index_ao_e8b6cc_syn203792807; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_syn203792807 ON "AO_E8B6CC_SYNC_AUDIT_LOG" USING btree ("REPO_ID");


--
-- Name: index_ao_e8b6cc_syn493078035; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_syn493078035 ON "AO_E8B6CC_SYNC_EVENT" USING btree ("REPO_ID");


--
-- Name: issue_assignee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_assignee ON jiraissue USING btree (assignee);


--
-- Name: issue_proj_num; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_proj_num ON jiraissue USING btree (issuenum, project);


--
-- Name: issue_proj_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_proj_status ON jiraissue USING btree (project, issuestatus);


--
-- Name: issue_reporter; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_reporter ON jiraissue USING btree (reporter);


--
-- Name: issue_updated; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_updated ON jiraissue USING btree (updated);


--
-- Name: issue_workflow; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_workflow ON jiraissue USING btree (workflow_id);


--
-- Name: issuelink_dest; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issuelink_dest ON issuelink USING btree (destination);


--
-- Name: issuelink_src; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issuelink_src ON issuelink USING btree (source);


--
-- Name: issuelink_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issuelink_type ON issuelink USING btree (linktype);


--
-- Name: label_fieldissue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX label_fieldissue ON label USING btree (issue, fieldid);


--
-- Name: label_fieldissuelabel; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX label_fieldissuelabel ON label USING btree (issue, fieldid, label);


--
-- Name: label_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX label_issue ON label USING btree (issue);


--
-- Name: label_label; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX label_label ON label USING btree (label);


--
-- Name: licenseroledefault_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX licenseroledefault_index ON licenserolesdefault USING btree (license_role_name);


--
-- Name: licenserolegroup_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX licenserolegroup_index ON licenserolesgroup USING btree (license_role_name, group_id);


--
-- Name: linktypename; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX linktypename ON issuelinktype USING btree (linkname);


--
-- Name: linktypestyle; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX linktypestyle ON issuelinktype USING btree (pstyle);


--
-- Name: managedconfigitem_id_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX managedconfigitem_id_type_idx ON managedconfigurationitem USING btree (item_id, item_type);


--
-- Name: mshipbase_group; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mshipbase_group ON membershipbase USING btree (group_name);


--
-- Name: mshipbase_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mshipbase_user ON membershipbase USING btree (user_name);


--
-- Name: node_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX node_id_idx ON nodeindexcounter USING btree (node_id, sending_node_id);


--
-- Name: node_operation_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX node_operation_idx ON replicatedindexoperation USING btree (node_id, affected_index, operation, index_time);


--
-- Name: node_sink; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX node_sink ON nodeassociation USING btree (sink_node_id, sink_node_entity);


--
-- Name: node_source; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX node_source ON nodeassociation USING btree (source_node_id, source_node_entity);


--
-- Name: notif_messageid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notif_messageid ON notificationinstance USING btree (messageid);


--
-- Name: notif_source; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notif_source ON notificationinstance USING btree (source);


--
-- Name: ntfctn_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ntfctn_scheme ON notification USING btree (scheme);


--
-- Name: oauth_consumer_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_consumer_index ON oauthconsumer USING btree (consumer_key);


--
-- Name: oauth_consumer_service_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_consumer_service_index ON oauthconsumer USING btree (consumerservice);


--
-- Name: oauth_consumer_token_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth_consumer_token_index ON oauthconsumertoken USING btree (token);


--
-- Name: oauth_consumer_token_key_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_consumer_token_key_index ON oauthconsumertoken USING btree (token_key);


--
-- Name: oauth_sp_consumer_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_sp_consumer_index ON oauthspconsumer USING btree (consumer_key);


--
-- Name: oauth_sp_consumer_key_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth_sp_consumer_key_index ON oauthsptoken USING btree (consumer_key);


--
-- Name: oauth_sp_token_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_sp_token_index ON oauthsptoken USING btree (token);


--
-- Name: osgroup_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX osgroup_name ON groupbase USING btree (groupname);


--
-- Name: osproperty_all; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX osproperty_all ON propertyentry USING btree (entity_id);


--
-- Name: osproperty_entityname; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX osproperty_entityname ON propertyentry USING btree (entity_name);


--
-- Name: osproperty_propertykey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX osproperty_propertykey ON propertyentry USING btree (property_key);


--
-- Name: osuser_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX osuser_name ON userbase USING btree (username);


--
-- Name: ppage_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ppage_username ON portalpage USING btree (username);


--
-- Name: prmssn_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX prmssn_scheme ON schemepermissions USING btree (scheme);


--
-- Name: remembermetoken_username_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX remembermetoken_username_index ON remembermetoken USING btree (username);


--
-- Name: remotelink_globalid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX remotelink_globalid ON remotelink USING btree (globalid);


--
-- Name: remotelink_issueid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX remotelink_issueid ON remotelink USING btree (issueid, globalid);


--
-- Name: role_player_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX role_player_idx ON projectroleactor USING btree (projectroleid, pid);


--
-- Name: rundetails_jobid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rundetails_jobid_idx ON rundetails USING btree (job_id);


--
-- Name: rundetails_starttime_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rundetails_starttime_idx ON rundetails USING btree (start_time);


--
-- Name: screenitem_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX screenitem_scheme ON fieldscreenschemeitem USING btree (fieldscreenscheme);


--
-- Name: searchrequest_filternamelower; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX searchrequest_filternamelower ON searchrequest USING btree (filtername_lower);


--
-- Name: sec_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sec_scheme ON schemeissuesecurities USING btree (scheme);


--
-- Name: sec_security; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sec_security ON schemeissuesecurities USING btree (security);


--
-- Name: share_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX share_index ON sharepermissions USING btree (entityid, entitytype);


--
-- Name: source_destination_node_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX source_destination_node_idx ON clustermessage USING btree (source_node, destination_node);


--
-- Name: sr_author; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sr_author ON searchrequest USING btree (authorname);


--
-- Name: subscrpt_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscrpt_user ON filtersubscription USING btree (filter_i_d, username);


--
-- Name: subscrptn_group; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscrptn_group ON filtersubscription USING btree (filter_i_d, groupname);


--
-- Name: trustedapp_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX trustedapp_id ON trustedapp USING btree (application_id);


--
-- Name: type_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX type_key ON genericconfiguration USING btree (datatype, datakey);


--
-- Name: uh_type_user_entity; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uh_type_user_entity ON userhistoryitem USING btree (entitytype, username, entityid);


--
-- Name: uk_application_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_application_name ON cwd_application USING btree (lower_application_name);


--
-- Name: uk_directory_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX uk_directory_name ON cwd_directory USING btree (lower_directory_name);


--
-- Name: uk_entitytranslation; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_entitytranslation ON entity_translation USING btree (entity_name, entity_id, locale);


--
-- Name: uk_group_attr_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_group_attr_name_lval ON cwd_group_attributes USING btree (group_id, attribute_name, lower_attribute_value);


--
-- Name: uk_group_name_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_group_name_dir_id ON cwd_group USING btree (lower_group_name, directory_id);


--
-- Name: uk_lower_user_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_lower_user_name ON app_user USING btree (lower_user_name);


--
-- Name: uk_mem_parent_child_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_mem_parent_child_type ON cwd_membership USING btree (parent_id, child_id, membership_type);


--
-- Name: uk_user_attr_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX uk_user_attr_name_lval ON cwd_user_attributes USING btree (user_id, attribute_name);


--
-- Name: uk_user_externalid_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX uk_user_externalid_dir_id ON cwd_user USING btree (external_id, directory_id);


--
-- Name: uk_user_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_user_key ON app_user USING btree (user_key);


--
-- Name: uk_user_name_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_user_name_dir_id ON cwd_user USING btree (lower_user_name, directory_id);


--
-- Name: upf_customfield; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upf_customfield ON userpickerfilter USING btree (customfield);


--
-- Name: upf_fieldconfigid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upf_fieldconfigid ON userpickerfilter USING btree (customfieldconfig);


--
-- Name: user_sink; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_sink ON userassociation USING btree (sink_node_id, sink_node_entity);


--
-- Name: user_source; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_source ON userassociation USING btree (source_name);


--
-- Name: userpref_portletconfiguration; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX userpref_portletconfiguration ON gadgetuserpreference USING btree (portletconfiguration);


--
-- Name: votehistory_issue_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX votehistory_issue_index ON votehistory USING btree (issueid);


--
-- Name: wf_entryid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wf_entryid ON os_currentstep USING btree (entry_id);


--
-- Name: workflow_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX workflow_scheme ON workflowschemeentity USING btree (scheme);


--
-- Name: worklog_author; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX worklog_author ON worklog USING btree (author);


--
-- Name: worklog_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX worklog_issue ON worklog USING btree (issueid);


--
-- Name: fk_ao_563aee_activity_entity_actor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_actor_id FOREIGN KEY ("ACTOR_ID") REFERENCES "AO_563AEE_ACTOR_ENTITY"("ID");


--
-- Name: fk_ao_563aee_activity_entity_icon_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_icon_id FOREIGN KEY ("ICON_ID") REFERENCES "AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: fk_ao_563aee_activity_entity_object_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_object_id FOREIGN KEY ("OBJECT_ID") REFERENCES "AO_563AEE_OBJECT_ENTITY"("ID");


--
-- Name: fk_ao_563aee_activity_entity_target_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_target_id FOREIGN KEY ("TARGET_ID") REFERENCES "AO_563AEE_TARGET_ENTITY"("ID");


--
-- Name: fk_ao_563aee_object_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_OBJECT_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_object_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES "AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: fk_ao_563aee_target_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_563AEE_TARGET_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_target_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES "AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_USER"
    ADD CONSTRAINT fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id FOREIGN KEY ("HIP_CHAT_LINK_ID") REFERENCES "AO_5FB9D7_AOHIP_CHAT_LINK"("ID");


--
-- Name: fk_ao_60db71_boardadmins_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_BOARDADMINS"
    ADD CONSTRAINT fk_ao_60db71_boardadmins_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_cardcolor_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_CARDCOLOR"
    ADD CONSTRAINT fk_ao_60db71_cardcolor_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_cardlayout_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_CARDLAYOUT"
    ADD CONSTRAINT fk_ao_60db71_cardlayout_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_column_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_COLUMN"
    ADD CONSTRAINT fk_ao_60db71_column_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_columnstatus_column_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_COLUMNSTATUS"
    ADD CONSTRAINT fk_ao_60db71_columnstatus_column_id FOREIGN KEY ("COLUMN_ID") REFERENCES "AO_60DB71_COLUMN"("ID");


--
-- Name: fk_ao_60db71_detailviewfield_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_DETAILVIEWFIELD"
    ADD CONSTRAINT fk_ao_60db71_detailviewfield_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_estimatestatistic_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_ESTIMATESTATISTIC"
    ADD CONSTRAINT fk_ao_60db71_estimatestatistic_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_nonworkingday_working_days_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_NONWORKINGDAY"
    ADD CONSTRAINT fk_ao_60db71_nonworkingday_working_days_id FOREIGN KEY ("WORKING_DAYS_ID") REFERENCES "AO_60DB71_WORKINGDAYS"("ID");


--
-- Name: fk_ao_60db71_quickfilter_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_QUICKFILTER"
    ADD CONSTRAINT fk_ao_60db71_quickfilter_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_statsfield_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_STATSFIELD"
    ADD CONSTRAINT fk_ao_60db71_statsfield_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_subquery_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_SUBQUERY"
    ADD CONSTRAINT fk_ao_60db71_subquery_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_swimlane_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_SWIMLANE"
    ADD CONSTRAINT fk_ao_60db71_swimlane_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_trackingstatistic_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_TRACKINGSTATISTIC"
    ADD CONSTRAINT fk_ao_60db71_trackingstatistic_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_60db71_workingdays_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_60DB71_WORKINGDAYS"
    ADD CONSTRAINT fk_ao_60db71_workingdays_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES "AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: fk_ao_e8b6cc_branch_repository_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_BRANCH"
    ADD CONSTRAINT fk_ao_e8b6cc_branch_repository_id FOREIGN KEY ("REPOSITORY_ID") REFERENCES "AO_E8B6CC_REPOSITORY_MAPPING"("ID");


--
-- Name: fk_ao_e8b6cc_git_hub_event_repository_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_GIT_HUB_EVENT"
    ADD CONSTRAINT fk_ao_e8b6cc_git_hub_event_repository_id FOREIGN KEY ("REPOSITORY_ID") REFERENCES "AO_E8B6CC_REPOSITORY_MAPPING"("ID");


--
-- Name: fk_ao_e8b6cc_issue_to_branch_branch_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_ISSUE_TO_BRANCH"
    ADD CONSTRAINT fk_ao_e8b6cc_issue_to_branch_branch_id FOREIGN KEY ("BRANCH_ID") REFERENCES "AO_E8B6CC_BRANCH"("ID");


--
-- Name: fk_ao_e8b6cc_message_queue_item_message_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE_QUEUE_ITEM"
    ADD CONSTRAINT fk_ao_e8b6cc_message_queue_item_message_id FOREIGN KEY ("MESSAGE_ID") REFERENCES "AO_E8B6CC_MESSAGE"("ID");


--
-- Name: fk_ao_e8b6cc_message_tag_message_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_MESSAGE_TAG"
    ADD CONSTRAINT fk_ao_e8b6cc_message_tag_message_id FOREIGN KEY ("MESSAGE_ID") REFERENCES "AO_E8B6CC_MESSAGE"("ID");


--
-- Name: fk_ao_e8b6cc_pr_participant_pull_request_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PR_PARTICIPANT"
    ADD CONSTRAINT fk_ao_e8b6cc_pr_participant_pull_request_id FOREIGN KEY ("PULL_REQUEST_ID") REFERENCES "AO_E8B6CC_PULL_REQUEST"("ID");


--
-- Name: fk_ao_e8b6cc_pr_to_commit_commit_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PR_TO_COMMIT"
    ADD CONSTRAINT fk_ao_e8b6cc_pr_to_commit_commit_id FOREIGN KEY ("COMMIT_ID") REFERENCES "AO_E8B6CC_COMMIT"("ID");


--
-- Name: fk_ao_e8b6cc_pr_to_commit_request_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_PR_TO_COMMIT"
    ADD CONSTRAINT fk_ao_e8b6cc_pr_to_commit_request_id FOREIGN KEY ("REQUEST_ID") REFERENCES "AO_E8B6CC_PULL_REQUEST"("ID");


--
-- Name: fk_ao_e8b6cc_repo_to_project_repository_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "AO_E8B6CC_REPO_TO_PROJECT"
    ADD CONSTRAINT fk_ao_e8b6cc_repo_to_project_repository_id FOREIGN KEY ("REPOSITORY_ID") REFERENCES "AO_E8B6CC_REPOSITORY_MAPPING"("ID");


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


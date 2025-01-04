--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+2)
-- Dumped by pg_dump version 16.6 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: accounts_student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts_student (
    id bigint NOT NULL,
    name text,
    phone_number text,
    created_at timestamp with time zone,
    telegram_id text,
    token_created_at timestamp with time zone,
    auth_token text
);


ALTER TABLE public.accounts_student OWNER TO postgres;

--
-- Name: accounts_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accounts_student_id_seq OWNER TO postgres;

--
-- Name: accounts_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_student_id_seq OWNED BY public.accounts_student.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id bigint NOT NULL,
    name text
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id bigint,
    permission_id bigint
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id bigint NOT NULL,
    content_type_id bigint,
    codename text,
    name text
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id bigint NOT NULL,
    password text,
    last_login timestamp with time zone,
    is_superuser boolean,
    username text,
    last_name text,
    email text,
    is_staff boolean,
    is_active boolean,
    date_joined timestamp with time zone,
    first_name text
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id bigint,
    group_id bigint
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint,
    permission_id bigint
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authtoken_token (
    key text NOT NULL,
    created timestamp with time zone,
    user_id bigint
);


ALTER TABLE public.authtoken_token OWNER TO postgres;

--
-- Name: courses_course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses_course (
    id bigint NOT NULL,
    title text,
    description text,
    mentor_id bigint,
    created_at timestamp with time zone,
    price numeric
);


ALTER TABLE public.courses_course OWNER TO postgres;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_course_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.courses_course_id_seq OWNER TO postgres;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses_course.id;


--
-- Name: courses_lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses_lesson (
    id bigint NOT NULL,
    title text,
    content text,
    is_free boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    course_id bigint,
    telegram_video_id text
);


ALTER TABLE public.courses_lesson OWNER TO postgres;

--
-- Name: courses_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_lesson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.courses_lesson_id_seq OWNER TO postgres;

--
-- Name: courses_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_lesson_id_seq OWNED BY public.courses_lesson.id;


--
-- Name: courses_quiz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses_quiz (
    id bigint NOT NULL,
    questions text,
    answers text,
    lesson_id bigint
);


ALTER TABLE public.courses_quiz OWNER TO postgres;

--
-- Name: courses_quiz_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_quiz_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.courses_quiz_id_seq OWNER TO postgres;

--
-- Name: courses_quiz_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_quiz_id_seq OWNED BY public.courses_quiz.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id bigint NOT NULL,
    object_id text,
    object_repr text,
    action_flag smallint,
    change_message text,
    content_type_id bigint,
    user_id bigint,
    action_time timestamp with time zone
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id bigint NOT NULL,
    app_label text,
    model text
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app text,
    name text,
    applied timestamp with time zone
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key text NOT NULL,
    session_data text,
    expire_date timestamp with time zone
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: mentors_mentor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mentors_mentor (
    id bigint NOT NULL,
    name text,
    bio text,
    profile_picture_id text
);


ALTER TABLE public.mentors_mentor OWNER TO postgres;

--
-- Name: mentors_mentor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mentors_mentor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mentors_mentor_id_seq OWNER TO postgres;

--
-- Name: mentors_mentor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mentors_mentor_id_seq OWNED BY public.mentors_mentor.id;


--
-- Name: mentors_mentoravailability; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mentors_mentoravailability (
    id bigint NOT NULL,
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    is_available boolean,
    mentor_id bigint,
    created_at timestamp with time zone
);


ALTER TABLE public.mentors_mentoravailability OWNER TO postgres;

--
-- Name: mentors_mentoravailability_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mentors_mentoravailability_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mentors_mentoravailability_id_seq OWNER TO postgres;

--
-- Name: mentors_mentoravailability_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mentors_mentoravailability_id_seq OWNED BY public.mentors_mentoravailability.id;


--
-- Name: payment_payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_payment (
    id bigint NOT NULL,
    amount numeric,
    status text,
    created_at timestamp with time zone,
    confirmed_at timestamp with time zone,
    course_id bigint,
    student_id bigint,
    screenshot_file_id text
);


ALTER TABLE public.payment_payment OWNER TO postgres;

--
-- Name: payment_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payment_payment_id_seq OWNER TO postgres;

--
-- Name: payment_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_payment_id_seq OWNED BY public.payment_payment.id;


--
-- Name: progress_studentprogress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.progress_studentprogress (
    id bigint NOT NULL,
    quiz_score bigint,
    completed_at timestamp with time zone,
    lesson_id bigint,
    student_id bigint
);


ALTER TABLE public.progress_studentprogress OWNER TO postgres;

--
-- Name: progress_studentprogress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.progress_studentprogress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.progress_studentprogress_id_seq OWNER TO postgres;

--
-- Name: progress_studentprogress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.progress_studentprogress_id_seq OWNED BY public.progress_studentprogress.id;


--
-- Name: webinar_webinar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.webinar_webinar (
    id bigint NOT NULL,
    title text,
    description text,
    video_telegram_id text,
    duration integer,
    status text,
    created_at timestamp with time zone,
    mentor_id bigint
);


ALTER TABLE public.webinar_webinar OWNER TO postgres;

--
-- Name: webinar_webinar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.webinar_webinar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.webinar_webinar_id_seq OWNER TO postgres;

--
-- Name: webinar_webinar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.webinar_webinar_id_seq OWNED BY public.webinar_webinar.id;


--
-- Name: accounts_student id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_student ALTER COLUMN id SET DEFAULT nextval('public.accounts_student_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: courses_course id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course ALTER COLUMN id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: courses_lesson id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_lesson ALTER COLUMN id SET DEFAULT nextval('public.courses_lesson_id_seq'::regclass);


--
-- Name: courses_quiz id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_quiz ALTER COLUMN id SET DEFAULT nextval('public.courses_quiz_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: mentors_mentor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mentors_mentor ALTER COLUMN id SET DEFAULT nextval('public.mentors_mentor_id_seq'::regclass);


--
-- Name: mentors_mentoravailability id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mentors_mentoravailability ALTER COLUMN id SET DEFAULT nextval('public.mentors_mentoravailability_id_seq'::regclass);


--
-- Name: payment_payment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_payment ALTER COLUMN id SET DEFAULT nextval('public.payment_payment_id_seq'::regclass);


--
-- Name: progress_studentprogress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.progress_studentprogress ALTER COLUMN id SET DEFAULT nextval('public.progress_studentprogress_id_seq'::regclass);


--
-- Name: webinar_webinar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webinar_webinar ALTER COLUMN id SET DEFAULT nextval('public.webinar_webinar_id_seq'::regclass);


--
-- Data for Name: accounts_student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts_student (id, name, phone_number, created_at, telegram_id, token_created_at, auth_token) FROM stdin;
12	Olloyor m	+998917359223	2024-12-29 16:29:51.941729+00	7781265700	2024-12-29 16:48:56.564218+00	f97b929a2850593873da7d03a3acbc9cc305f7afba8b8216288056c163288b74
68	Dilafruz	+973703505	2025-01-02 13:15:29.103504+00	5382427540	2025-01-02 13:15:29.506998+00	1eed416f4cbe30b50006fee9f7299a4831023c8dfbd6b0de23ea34dbc0838cfb
18	frf	+998909001234	2024-12-29 17:18:12.76284+00	6566321922	2024-12-29 17:18:12.765296+00	947aa127a19dbca24ec72b56e636f09636d0ca9d3b3df7659a374e4d75389d17
22	Orzugul	+19086529554	2024-12-29 19:59:03.122527+00	717428675	2024-12-29 19:59:03.125073+00	d510e0d6411f6d4189ad11d51e59987b059673c771a2f0bc99005316d1a3240b
23	Abdul	+998901232982	2024-12-29 19:59:55.372312+00	50117395	2024-12-29 19:59:55.374209+00	3553338d2cfe659e1d15998b639c3d784fbd5f1281ed13c628b89dc0a1eceeb2
14	dilshoda	\N	2024-12-29 17:09:38.384709+00	5454776673	2024-12-31 05:36:04.722434+00	3108ff0f667e8dae1f2b1274660a0327fbf3a9fb88c63e3ff193bb0ab662e6c9
24	Furqatjon	+998911131778	2024-12-31 05:38:38.845402+00	615323063	2024-12-31 05:38:39.254408+00	cbfdc47401a8eed4333cf95b242e4c97ef3b164594d9e402f5d8ab9c9088ca28
25	𝑺𝒉.	\N	2024-12-31 08:20:13.946684+00	1132876621	2024-12-31 08:20:14.349582+00	af18da0ed38f2eb2d7e17d29e537b321ae27b0760b2d554af4e89e9c45acf9ef
19	Mardonbek	+998900331314	2024-12-29 18:00:14.219086+00	1604017807	2024-12-31 11:52:49.879211+00	31c06db380840e150ddb3cfc28dad1c0b6cd1a058a0e06a8a13280bed367e08d
15	guldasta	\N	2024-12-29 17:10:39.357421+00	6255189392	2025-01-03 12:26:07.237992+00	7cd85cac66f33de21899b060711af9217ab9caf55f0a61740d0f5717bb74fac7
53	Dilnoz	+998936405565	2025-01-01 16:36:43.359664+00	762271854	2025-01-03 04:39:38.632895+00	46a98320a6a5d5d8edf494f0154d8367f0a3b2ecb0284cf0927bc68129dd6b67
28	Mukambar Karimova	\N	2025-01-01 12:35:09.560825+00	1307152	2025-01-01 12:35:09.958041+00	b6c7d5583445a6c06afe5c193626fa948748294d7f83c436d9b2813bb5d87cbe
29	Robiya	+998886893343	2025-01-01 12:36:26.674464+00	6662050382	2025-01-01 12:36:27.079268+00	5faf75236a5bfad7a4c29077cc36da245bc193db2f664287e39c238f6c9de4c1
102	✨	\N	2025-01-03 05:27:41.895275+00	6568675122	2025-01-03 05:27:42.3158+00	2fe4f9ca14a06e785a4b993e16b0c236952ed6b82bbf8b7f440b24fafd5cc9ad
30	Feruza Eshdavlatova	+998946872756	2025-01-01 12:37:47.39875+00	991070605	2025-01-01 12:37:47.823233+00	b9b2bf896d17cce04446c2d919f0dd11ef9f4e0f40f06292951325ea1b938a00
31	Aziza	+998948572737	2025-01-01 13:02:57.901362+00	5636401557	2025-01-01 13:02:58.327317+00	23054a7c2812b868e89ded6c5505550a9b5f41e0d90fcfbf9056a376cd153db3
32	Shahzoda	+998936561606	2025-01-01 13:10:39.758361+00	5994622901	2025-01-01 13:10:40.174789+00	335bb72c414fd110d068e656b74d4069fac58a6d01c0225a35b8ad4159b28031
33	Odinaxon	+998902305209	2025-01-01 13:22:40.927268+00	6489597658	2025-01-01 13:22:41.333654+00	4c7f9abd2e3d8739db0dc22e4635f57e3f04ed906e6cd99b8c2edcc23d6bc963
34	𝓡	\N	2025-01-01 13:25:40.321356+00	5609981070	2025-01-01 13:25:40.717297+00	fae073948d23b8211a159b4921c4ec6156558707c68587b00e221f1d11d24f5b
35	Hayotxon	+998903305578	2025-01-01 13:31:03.572082+00	6045868890	2025-01-01 13:31:03.972701+00	aafeb6856238e15e0d018d8552823bc515e508e8114530d490c2095761f40a90
26	Gulzoda	+998937491207	2025-01-01 12:31:42.505719+00	5798174514	2025-01-03 12:21:46.303187+00	950a341793802095cb53b00fdf71f062b184d29c02f6e69920e0dbb9589814ba
50	Aziza	+998888309292	2025-01-01 16:16:58.852013+00	5363856195	2025-01-03 16:34:29.185454+00	68ec63507568666b7094ee5159a86400fd72e4e20e051d3a2ced08c5ae882096
37	Soatova Sarvinozbonu	+998995364802	2025-01-01 13:37:20.689926+00	1793037266	2025-01-01 13:37:21.124484+00	dff677776f5a9bcdca28d6addaa691d2913fc33cd2633629de0cdbb7b52925ee
21	Orzugul Umarovna	\N	2024-12-29 19:55:24.304219+00	6072405089	2025-01-03 17:28:57.831654+00	b047656993aa3e507e164c3b1418c6783556fc48d733fcf244e8b2dd62b6a334
38	Maftuna	+998904441631	2025-01-01 13:39:12.632313+00	6995925441	2025-01-01 13:39:13.024849+00	41a631b61e191a3d365d59f8d4c22570a804dbce629e63c8da9e74d5f5e38bbd
11	Olloyor Maxammadnabiyev	\N	2024-12-29 16:18:50.808885+00	1917035033	2025-01-03 19:26:28.003319+00	3205876cb8368c1b5fe9bdd221ee5f974378ded320f50da2396f2646fe054b9d
39	Oyroza	+998944641211	2025-01-01 13:40:05.860998+00	5449158888	2025-01-01 13:40:06.256374+00	1ea7bb31ba4fbfc78c4dc1e3166dc4711a8c38fd863f04cc1024ae46f6199dde
40	Xulkar	+998910872301	2025-01-01 13:46:39.64638+00	1646522680	2025-01-01 13:46:40.041775+00	200ce11a001d67fa6cbcc2eccca921aced1b67b1f72dcb1a7237f42510c12169
41	Dilbarxon	+998911214526	2025-01-01 13:47:11.342679+00	6690933066	2025-01-01 13:47:11.739763+00	6cfcfb17914966ff34cdb33da5e67f59deb465baed3846c0638aaa88e6bee3e3
42	Yulduz	+998777041401	2025-01-01 13:47:22.300793+00	6377662920	2025-01-01 13:47:22.699924+00	5f9f30b32c7238ef95c549f8742822c5339f6b16eceda4e2d78f3dc2ae5973d4
36	Sanam	+998916451455	2025-01-01 13:33:35.936726+00	5865525347	2025-01-01 13:33:36.339785+00	f574018c6fd03b2757fea914e40c174566c6596b84234667d4b29c835fcd8f5d
43	Umida	+998906291805	2025-01-01 14:45:32.933226+00	1393397939	2025-01-01 14:45:33.335486+00	a4aa9ca2e4ed2b6fad91ad6ed06d47eb18a59ed18a6185a30bfd3ea55fc5bd81
44	Abdulhamid Haydarov	\N	2025-01-01 15:30:51.578691+00	1932542093	2025-01-01 15:30:51.974223+00	22934d4861f1dbf0c096fb99a3c8f51060af09785763f69e6c4149f4bced2510
45	Guzal	+998947092608	2025-01-01 15:34:10.793797+00	5719988755	2025-01-01 15:34:11.198802+00	e3e058afe7d571934a771663d6f9b2a10b1988b1a7ced7d7aa587aef4762e4d8
46	Davron	+998935929237	2025-01-01 15:34:30.727842+00	2072197113	2025-01-01 15:34:31.123235+00	f2d87e79e0c64cbc4c21b903bc92c6d6379f1dbc47a9a07cdd709f6519d3447b
48	Charos	+998900806034	2025-01-01 15:40:34.918484+00	1260973442	2025-01-01 15:40:35.331146+00	7d7e600475e4b785d6c120c12abc0f011a6c6f9a30caa30ca773c507335ff2c3
49	Malika	+998500013716	2025-01-01 15:58:07.555199+00	6230298412	2025-01-01 15:58:07.953281+00	e7708338e55cf0f455a8ca8d93aeb94cc95446da343670f5925b1a45c8f43af5
51	Madina	+998998256299	2025-01-01 16:18:01.734173+00	633710679	2025-01-01 16:18:02.14027+00	f171aa70f40d2858f2e43e4b3d9f219d2d5c7daf38603b2a107b3fdd54106d4a
52	Sarvinoz	+998994345635	2025-01-01 16:31:42.305569+00	1821003397	2025-01-01 16:31:42.70844+00	febc8cba675b8ffbc0f109666c2b7a07c37229f21f9652354c6621d4109fda31
54	Elnora	+998950880714	2025-01-01 17:05:16.280958+00	7011193253	2025-01-01 17:05:16.681098+00	741e4dc1de99efa9273d83a7faf2a14ac6cc8c237690dfa7ef7be3883441cb21
55	Niginabonu	+998905105067	2025-01-01 17:22:47.03159+00	460951786	2025-01-01 17:22:47.44226+00	bd35301a39bca9172781c21653afb078f6a787c94af90f137667cfed2f54e8fd
56	Gulyuz	+998918818867	2025-01-01 17:39:42.257409+00	6538762244	2025-01-01 17:39:42.652122+00	fd0ce8a5d10a1b9153b7faa543b34dbe15e939617ba49521372508473c524e1a
57	Sevinch	+998994717705	2025-01-01 17:43:06.638975+00	5406491156	2025-01-01 17:43:07.034118+00	e999293541aeb6e6cd368c4fcef60f2a5b0210309a54a6d31e4b1bb3b330d41e
58	Shaxlo	+998998610629	2025-01-01 20:02:01.521472+00	5058526405	2025-01-01 20:02:01.954399+00	8bb660e95d4ec5498347e6d31575521617b82cd82eda6068ff75b9e04b2be745
59	Jason	+998977039484	2025-01-01 21:13:08.056386+00	563022189	2025-01-01 21:13:08.498432+00	63b514723050fff3b887758121069ea90ba2f2723e1e468586c9e8693bb47509
60	Marvarid	+998976785015	2025-01-02 02:09:26.428783+00	7497081307	2025-01-02 02:09:26.824783+00	1f8f2ae91f42444147a42842d95859d4f3fdf05609144ec4af181503e85bd838
20	Yulduz	+998901153774	2024-12-29 19:15:12.57002+00	2024957530	2025-01-02 12:29:44.559365+00	cbd0006e17e809eaf24ee7c5373a038bfd6c43112c358e63f1b59b97646df8ea
61	Rukhshona	+998973029389	2025-01-02 03:23:06.241216+00	1802647441	2025-01-02 03:23:06.656568+00	f0bb794e4720a651241fa24a9a0d4746347fc11e8119ede05e608ec2d4914bb0
47	Maryam	+998507242826	2025-01-01 15:36:36.841305+00	7347122973	2025-01-01 15:36:37.255958+00	87cd22f7b1533d69df974356ea21f992774506f403cc8ce19b3f57a653394b3c
63	Nargiza	\N	2025-01-02 10:22:35.011957+00	680169190	2025-01-02 10:22:35.426919+00	afc3c2e2b683f263aa76b046e6de76910ed1198ff2d1dd9d1c229e36d1aa31e7
64	Muslima	+998979717880	2025-01-02 11:09:03.70073+00	5631357470	2025-01-02 11:09:04.099917+00	7994ad17c85fafb58840d2d383fb584a6ccfe122a94a77e3776c260384dd2b6f
62	Nodira	+998931439496	2025-01-02 09:04:44.525723+00	1370326555	2025-01-02 09:04:44.921457+00	b9de5894ae3c14f0fd37e4e8b4df3e9bcfb6a1a5618200b57746aa516d7db701
69	Guli	+998912792646	2025-01-02 19:07:43.662306+00	6639711176	2025-01-02 19:07:44.090489+00	08290f22aed3c84bfd97943ad77480a0b11298e39dffb961372651c7107a1927
65	Zahro	+998908686373	2025-01-02 11:34:50.39971+00	1510505244	2025-01-02 11:34:50.794211+00	18d8da2abea51bbbd356649b4e39df21b824a3493c29d5133b668fcb2dfa0164
70	Umidjon	+998940772376	2025-01-02 19:08:02.600445+00	5502945721	2025-01-02 19:08:02.996357+00	c17c65cb43b1a95d5885459a9a88e0f09389db6f0e471c76b60856404e694fd5
66	Madina	+998938085653	2025-01-02 12:07:31.913513+00	1665539036	2025-01-02 12:07:32.313061+00	537dcb67ff02a22d999ad38e31a9ab3bedb7b82d0ad65dbd9507fb329c33b2fe
67	Zilola	+998995575257	2025-01-02 13:07:48.60512+00	171786431	2025-01-02 13:07:49.002858+00	3784186129d7f47a39ddcb7417186666747e6bdd91bf56577b64bda8f07026fa
72	Hulkaroy	\N	2025-01-02 19:09:00.784865+00	5364040809	2025-01-02 19:09:01.189898+00	209ee4678d6fdf5a150e846445e9c6d564e771279756c3aa68066f0ee7364a49
71	Shahnoza	+998997312000	2025-01-02 19:08:54.967331+00	1086859208	2025-01-02 19:08:55.397464+00	9d2ae32fb2e963afe00e0e5670251382c126c7c0b9d290a2a62aaa920454a689
73	Iroda	+998935802910	2025-01-02 19:09:02.291695+00	667459245	2025-01-02 19:09:02.690474+00	a0a3150268398adc35819de0d77d431dc8526f6c11197d62de6aedf1d81be8db
75	rushana	\N	2025-01-02 19:10:08.602866+00	1762484308	2025-01-02 19:10:09.000237+00	b1a87171308bd2b35e3e54854ea995ecdbb46add16e93f7d40aafd12b495506e
74	Oydin	+998901066121	2025-01-02 19:09:53.236975+00	1974044964	2025-01-02 19:09:53.63123+00	55340f3ff4ce7c0b490ea572622e98987de3f8f2458ea5cd504aeb93baf0dd5c
76	Nursulton Qahhorov	\N	2025-01-02 19:10:39.236077+00	1938423312	2025-01-02 19:10:39.638461+00	33a2e4c6fadebbd6059cb92835337831541fbcba9736ce43f874780f9c1a3fe0
77	Elzeera🍀✨️🕊	\N	2025-01-02 19:11:39.165456+00	6034804211	2025-01-02 19:11:39.566032+00	e3f38601575ee767cc6559176c30e2c7798c968fe8c52db2b1e5a108a3376641
78	Sug'diyona	+998900684011	2025-01-02 19:11:52.479991+00	6410069085	2025-01-02 19:11:52.876866+00	aa0088bf669cab55424c4a317de509f27d8162fcecd4d5074902ff5f731da41c
80	Madina	+998939430623	2025-01-02 19:13:33.803799+00	6385136281	2025-01-02 19:13:34.214213+00	2f9ec16c644b8fb09f25e7e0c42743634cfd823feb8feaa24a9250981b50e7b6
81	Dilnavoz	\N	2025-01-02 19:14:43.177473+00	6504241027	2025-01-02 19:14:43.575922+00	cfa165b5f3fea4da2e97cb0ae6e20fc69a11a8b1ffcd9e7edfb4d3be03e85436
82	Мадина	\N	2025-01-02 19:14:58.796159+00	7072890691	2025-01-02 19:14:59.204828+00	3f7ba62c18d6e0faa560e796b1f30616db0a38a15e57d33adc34e88ebc2d638e
84	Zarnigor	+998885382422	2025-01-02 19:22:26.908053+00	2049639643	2025-01-02 19:22:27.320255+00	960df5ac4184b253ca965039b10dd0477a6df38b91a71942da82c65141c38baa
79	Dinora Tukhtamurodova	+998945141782	2025-01-02 19:12:34.770206+00	5086138268	2025-01-02 19:12:35.168884+00	f69689fb3a32ec6a380a9379dd2c78d5e5a3ee31483c744470c3168f369bac23
85	Shirin	\N	2025-01-02 19:35:59.268916+00	1222105951	2025-01-02 19:35:59.665794+00	7ea917cb757c306073e782411ea201a7ff8e32de3b3624382edb4da5940cf8c8
87	Dilnura	\N	2025-01-02 19:40:14.786099+00	5676644257	2025-01-02 19:40:15.184468+00	1eb89debb6ee4886573c8573625f66bb8d4de2559b20079ad73c8c35482c9570
86	Sevinch	+998938544569	2025-01-02 19:39:50.83319+00	1558901836	2025-01-02 19:39:51.24374+00	4826ffb301603f78b45f4cb57c7bb27f870a4741e0bb291833e214ef2262e144
88	Shakhi	+998880835565	2025-01-02 19:53:44.547777+00	7288015390	2025-01-02 19:53:44.964228+00	853f22040ce98c2a6784708a1963f3b8cd648ddc4b759b6d246c6bcec08c0e13
89	Shakhrizoda	\N	2025-01-02 20:08:55.198943+00	1321281903	2025-01-02 20:08:55.597062+00	984a78ef1f222133977393652c6c0be15730a4b48fae9f2a85dacd85bbcfc361
90	Porla Admin	\N	2025-01-02 21:15:19.424978+00	7844643099	2025-01-02 21:15:20.460595+00	5ff00dded0fd5424c3f8fe98429d2db0114b73abc64a48ba44e88c25cc7e9b6a
91	luna	\N	2025-01-02 22:18:57.12772+00	5338793438	2025-01-02 22:18:57.521421+00	f512db50e241204eda25dcfe56be1478ad0036a71e43cfac7761a132f1dc38fb
92	Shakhzoda	\N	2025-01-03 00:47:16.185674+00	5601682275	2025-01-03 00:47:16.587128+00	7a384fddd286b0507008d6846ec156dfa0d773833c65c0a5d0be41c49283fe6b
93	Go'zal Ismatova	\N	2025-01-03 02:47:59.033957+00	1272262322	2025-01-03 02:47:59.457618+00	55a905c3d89cd61cffa65f319647daa29162eb620f9f861d8bbd740d96dad837
94	Sunnat	\N	2025-01-03 03:42:29.75828+00	5607961398	2025-01-03 03:42:30.15403+00	cdc996a1759f0b15b715869bab53bf2f7d5008ab39365263b2f8ba7a5a047799
95	Ruxsora Safarova	\N	2025-01-03 03:45:12.436868+00	6727895648	2025-01-03 03:45:12.838178+00	105836c0705700383c02c61e98eb46173d613cd3ee315238dbf321050bcbc74b
96	zakiyya🔮	\N	2025-01-03 03:52:01.863639+00	6547872958	2025-01-03 03:52:02.277695+00	b1f5cc40edcc388777c4e3b0f89977f2639541aa2f0ba80d1b6f68e62e947f0d
97	Gulimoh Bobomurodova	\N	2025-01-03 04:06:58.466009+00	1633094201	2025-01-03 04:06:58.860799+00	0f5bcd66e9c3f01d79adf89bd5494af73283747d89bd82f857e57fb3af7a6b47
27	Abror	+998999406455	2025-01-01 12:32:55.294909+00	751366545	2025-01-03 04:14:19.679551+00	0d0e1fac17b6388a8ce5e6debf2f9d7f6052038d117b60a4b6fde187c82decfd
98	Ismoilova	\N	2025-01-03 04:45:05.051331+00	7378284543	2025-01-03 04:45:05.461929+00	7d7b40130310dd0034d32c604c63b73e37899fff19c24a847da2b5fc88872f39
99	Mohira Oltiyeva	\N	2025-01-03 04:46:08.457868+00	5029952390	2025-01-03 04:46:08.853766+00	20b4d547181d58555292770c477a60ddf7bf73a4443ad50bbb43f6759c287f60
100	Ro'ziqulova Laylo	\N	2025-01-03 04:48:18.247337+00	1993236700	2025-01-03 04:48:18.664632+00	d61ff5dd0dbd1585c14475176365aeea08a4ee066caa0b758adbe6873c872746
101	Shodmonova Azima	\N	2025-01-03 04:54:58.390223+00	1090127577	2025-01-03 04:54:58.787847+00	c1714d82575ad718829080f164fa988a626cd763fcffb37c874af68bd126c7c1
103	Xurshida	\N	2025-01-03 05:33:50.675018+00	1866564899	2025-01-03 05:33:51.075189+00	9afbcd420d2479101e5a82f3fbae176a0c6a9750c50556b89509a1eed86e46a0
104	Zarifbek Yuldashmatov	\N	2025-01-03 05:38:42.507263+00	839679852	2025-01-03 05:38:42.902408+00	21d2a1d6d190e30038b1ef027225108645af53a79edef33762354644c6a11b35
105	Баҳора	\N	2025-01-03 06:12:40.40507+00	7683726195	2025-01-03 06:12:40.806648+00	428f5e48c4f8b4a690f3f4ff2abd0c1a8106748ee60be1912eef71878acb0824
106	Diyorakhon	\N	2025-01-03 08:56:30.757007+00	706820676	2025-01-03 08:56:31.168548+00	072cfb0bb0b5563acfbc89c9e9470a8294d730883556b3b87cd75a7fe3319e7e
107	Nilufar Yaxyayeva	\N	2025-01-03 10:08:26.953209+00	6421858215	2025-01-03 10:08:27.378581+00	3ef1287c43acf1b6b99ef470ff1d32c224d30f1767730b9ba4b27613f580e914
108	27	\N	2025-01-03 10:08:38.328001+00	5649143084	2025-01-03 10:08:38.731524+00	02c8f4ec74d0a3ddd95b8870d206fdc8f4bbf966229c9699ae6649a468b09984
109	Zohidjon Ma'rufov	\N	2025-01-03 11:07:51.000632+00	6246129349	2025-01-03 11:07:51.428729+00	87f23ea99d4c3965490ed8dadf5b0edc3bd85a18d914c8473735cae742b25280
110	Feruzaa	\N	2025-01-03 11:38:27.799828+00	5793342460	2025-01-03 11:38:28.232086+00	8bd7b6b1d6d11cb846e9bf46df901d3a720dbd4790fa0f159659cbcd206783b9
111	Muattar	\N	2025-01-03 11:45:42.91668+00	663580465	2025-01-03 11:45:43.325982+00	9d26da8fcc6b307235177e0c71ba9e7b45e49cde95b08765c14d9671f8912709
112	A	\N	2025-01-03 11:48:02.958802+00	1867916737	2025-01-03 11:48:03.377152+00	38192ab35747cc95069f012aaa415959449362bf7946ee34f389cabcc282357b
113	Нигора Сайфуллаева🪐	\N	2025-01-03 11:48:19.98519+00	2067247738	2025-01-03 11:48:20.42614+00	61984c1005ceb751bf5811a01be07a30881bff0527859f68cfbf43cda792e4f5
114	Hidoyatxon Sodiqjonova	\N	2025-01-03 12:15:54.449546+00	6560478176	2025-01-03 12:15:54.867594+00	08f39d1f5eb136189d6bd04a26672d31a999207789e8596d6ba7c0714569a4e0
115	Gulmira	\N	2025-01-03 12:35:59.672535+00	5622734742	2025-01-03 12:36:00.070428+00	bdb61565af8c226f615f90c90b918d046370d6f86ce924008a39ffb0fe543655
116	Санжарбек	\N	2025-01-03 13:37:26.070605+00	6300552627	2025-01-03 13:37:26.476625+00	5124a1327c4009984420dbf3fd3756d768dc8fed22cb3a9566b992e594d93264
117	Qodirov Murodjon	\N	2025-01-03 14:39:12.6895+00	1306688798	2025-01-03 14:39:13.09514+00	6a1b993dd7efd6835d719cd0382172751e451d579c73a30a11bb3cebc7d4cf2b
118	Buchet Dev	\N	2025-01-03 19:27:34.839227+00	7281789658	2025-01-03 19:27:35.267165+00	a031f4e4cfcb7e691c27f275e37e4fab3aae36dd9eb6e7ca62b1533f0c285b5d
83	Akobir	+998932158000	2025-01-02 19:20:54.88764+00	1581200460	2025-01-04 07:24:02.360098+00	6f2b2c7c2c26cc368a1b52f9765fb17f6ae901ee749b3a2a6bad8574913bc056
119	Xolmirzayeva M	\N	2025-01-04 08:05:29.472528+00	6835598330	2025-01-04 08:05:29.865805+00	ba0556224b583738be7b8da477c219e1bbd2efb232296b2da6d4b4a1e58064bb
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, content_type_id, codename, name) FROM stdin;
1	1	add_logentry	Can add log entry
2	1	change_logentry	Can change log entry
3	1	delete_logentry	Can delete log entry
4	1	view_logentry	Can view log entry
5	2	add_permission	Can add permission
6	2	change_permission	Can change permission
7	2	delete_permission	Can delete permission
8	2	view_permission	Can view permission
9	3	add_group	Can add group
10	3	change_group	Can change group
11	3	delete_group	Can delete group
12	3	view_group	Can view group
13	4	add_user	Can add user
14	4	change_user	Can change user
15	4	delete_user	Can delete user
16	4	view_user	Can view user
17	5	add_contenttype	Can add content type
18	5	change_contenttype	Can change content type
19	5	delete_contenttype	Can delete content type
20	5	view_contenttype	Can view content type
21	6	add_session	Can add session
22	6	change_session	Can change session
23	6	delete_session	Can delete session
24	6	view_session	Can view session
25	7	add_mentor	Can add Mentor
26	7	change_mentor	Can change Mentor
27	7	delete_mentor	Can delete Mentor
28	7	view_mentor	Can view Mentor
29	8	add_mentoravailability	Can add Mentor Availability
30	8	change_mentoravailability	Can change Mentor Availability
31	8	delete_mentoravailability	Can delete Mentor Availability
32	8	view_mentoravailability	Can view Mentor Availability
33	9	add_course	Can add Course
34	9	change_course	Can change Course
35	9	delete_course	Can delete Course
36	9	view_course	Can view Course
37	10	add_lesson	Can add Lesson
38	10	change_lesson	Can change Lesson
39	10	delete_lesson	Can delete Lesson
40	10	view_lesson	Can view Lesson
41	11	add_quiz	Can add Quiz
42	11	change_quiz	Can change Quiz
43	11	delete_quiz	Can delete Quiz
44	11	view_quiz	Can view Quiz
45	12	add_student	Can add Student
46	12	change_student	Can change Student
47	12	delete_student	Can delete Student
48	12	view_student	Can view Student
49	13	add_studentprogress	Can add Student Progress
50	13	change_studentprogress	Can change Student Progress
51	13	delete_studentprogress	Can delete Student Progress
52	13	view_studentprogress	Can view Student Progress
53	14	add_payment	Can add Payment
54	14	change_payment	Can change Payment
55	14	delete_payment	Can delete Payment
56	14	view_payment	Can view Payment
57	15	add_token	Can add Token
58	15	change_token	Can change Token
59	15	delete_token	Can delete Token
60	15	view_token	Can view Token
61	16	add_tokenproxy	Can add Token
62	16	change_tokenproxy	Can change Token
63	16	delete_tokenproxy	Can delete Token
64	16	view_tokenproxy	Can view Token
65	17	add_webinar	Can add Webinar
66	17	change_webinar	Can change Webinar
67	17	delete_webinar	Can delete Webinar
68	17	view_webinar	Can view Webinar
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) FROM stdin;
1	pbkdf2_sha256$870000$vkndoob7FXsofnYFdtFD3Z$QtDYhb2x4UGnA/rdZFE3D+kT9Awhmi4YQ2mJkTVTV94=	2024-12-31 05:12:43.542488+00	t	olllayor			t	t	2024-12-23 19:46:46.214031+00	
2	pbkdf2_sha256$870000$E4ZYAuaGwloEDNCa1qb9hB$PlWP8V7aDO0SeCi4X+2tWtgvcAmN4NOgD5pfe1H84sw=	2024-12-31 05:28:10.818206+00	t	olloyor			t	t	2024-12-31 05:19:15+00	
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
2	2	1
3	2	2
4	2	3
5	2	4
6	2	5
7	2	6
8	2	7
9	2	8
10	2	9
11	2	10
12	2	11
13	2	12
14	2	13
15	2	14
16	2	15
17	2	16
18	2	17
19	2	18
20	2	19
21	2	20
22	2	21
23	2	22
24	2	23
25	2	24
26	2	25
27	2	26
28	2	27
29	2	28
30	2	29
31	2	30
32	2	31
33	2	32
34	2	33
35	2	34
36	2	35
37	2	36
38	2	37
39	2	38
40	2	39
41	2	40
42	2	41
43	2	42
44	2	43
45	2	44
46	2	45
47	2	46
48	2	47
49	2	48
50	2	49
51	2	50
52	2	51
53	2	52
54	2	53
55	2	54
56	2	55
57	2	56
58	2	57
59	2	58
60	2	59
61	2	60
62	2	61
63	2	62
64	2	63
65	2	64
66	2	65
67	2	66
68	2	67
69	2	68
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: courses_course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses_course (id, title, description, mentor_id, created_at, price) FROM stdin;
1	Sotuv	Sotuv haqida boshlang’ich bilimlar va sotuvda faoliyat yuritish ko’nikmalari.	2	2024-12-23 19:58:24+00	500000
2	SMM	SMM bo’yicha fundamental bilimlarni berish va ilk loyihani olishga ko’maklashish.	3	2024-12-23 19:59:06+00	300000
3	China Order		4	2024-12-23 20:04:36+00	0
4	Mastering Upwork: A Freelancer’s Guide to Success	Are you ready to turn your skills into a thriving freelance career on Upwork? This comprehensive course is designed to teach you how to create a standout profile, land high-paying clients, and build lasting relationships in the competitive world of freelancing.	1	2024-12-24 18:22:53+00	0
5	Shaxsiy Brendni rivojlantirish	Personal branding kursida shaxsiy brendni yaratish va rivojlantirishga oid asosiy bilim va ko‘nikmalar o‘rgatiladi. Kurs davomida o‘zini anglash, kuchli tomonlarni aniqlash, maqsadli auditoriyani belgilash, brend strategiyasini ishlab chiqish, ijtimoiy tarmoqlarda professional profiling yaratish, kontent targ‘iboti, networking, imij va nutq madaniyati kabi mavzular qamrab olinadi. Shuningdek, shaxsiy brendni doimiy rivojlantirish va yangi ko‘nikmalarni egallash usullari o‘rgatiladi. Bu bilimlar shaxsiy va professional muvaffaqiyatga erishishda yordam beradi.	6	2024-12-27 12:31:50+00	300000
\.


--
-- Data for Name: courses_lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses_lesson (id, title, content, is_free, created_at, updated_at, course_id, telegram_video_id) FROM stdin;
1	SMM ga kirish va maqsadni aniqlash		t	2024-12-23 20:00:13.846114+00	2024-12-23 20:00:13.846135+00	2	\N
2	Bozor va auditoriya analizi		f	2024-12-23 20:00:33.038903+00	2024-12-23 20:00:33.038928+00	2	\N
3	Strategiya va kontent plan tuzish		f	2024-12-23 20:00:43.277438+00	2024-12-23 20:00:43.277462+00	2	\N
4	Stories-making		f	2024-12-23 20:00:58.438403+00	2024-12-23 20:00:58.43843+00	2	\N
5	Syomka va montaj		f	2024-12-23 20:01:08.481337+00	2024-12-23 20:01:08.481356+00	2	\N
6	Pragrev va Komyuniti menejment		f	2024-12-23 20:01:26.537862+00	2024-12-23 20:01:26.537885+00	2	\N
7	Vazifa taqsimoti va menejment		f	2024-12-23 20:01:34.444731+00	2024-12-23 20:01:34.444759+00	2	\N
8	SMM Trends, Ad		f	2024-12-23 20:01:44.965069+00	2024-12-23 20:01:44.965087+00	2	\N
9	Campaigns, and Professional		f	2024-12-23 20:01:54.120933+00	2024-12-23 20:01:54.120968+00	2	\N
10	Development		f	2024-12-23 20:02:02.689714+00	2024-12-23 20:02:02.689742+00	2	\N
11	Sotuvga kirish		t	2024-12-23 20:02:44.185404+00	2024-12-23 20:02:44.185427+00	1	\N
12	Sotuv jarayonining bosqichlari		f	2024-12-23 20:02:55.596163+00	2024-12-23 20:02:55.596179+00	1	\N
13	Potensial mijozlarni qidirish va yaratish		f	2024-12-23 20:03:03.844712+00	2024-12-23 20:03:03.84474+00	1	\N
14	Mijoz bilan aloqa o’rnatish va muammolarni yengish		f	2024-12-23 20:03:12.747941+00	2024-12-23 20:03:12.747969+00	1	\N
15	Samarali sotuv taqdimoti		f	2024-12-23 20:03:25.4882+00	2024-12-23 20:03:25.488227+00	1	\N
16	Bitimni yopish texnikalari		f	2024-12-23 20:03:34.244545+00	2024-12-23 20:03:34.244572+00	1	\N
17	Sotuv ko‘rsatkichlarini tahlil qilish va rivojlanish		f	2024-12-23 20:03:41.660417+00	2024-12-23 20:03:41.660447+00	1	\N
18	ILOVADAN RO’YXATDAN O’TISH		t	2024-12-23 20:05:07.92535+00	2024-12-23 20:05:07.925377+00	3	\N
19	VISA KARTA ULASH		f	2024-12-23 20:05:16.310407+00	2024-12-23 20:05:16.310431+00	3	\N
20	ILOVADAN TOVAR SOTIB OLISH TARTIBI		f	2024-12-23 20:05:30.686153+00	2024-12-23 20:05:30.686189+00	3	\N
21	TOVAR YETIB KELISHINI O’RGANISH CHEGIRMALI TOVARLARNI TOPISH		f	2024-12-23 20:05:43.061606+00	2024-12-23 20:05:43.061633+00	3	\N
22	MAGAZIN EGALARI BILAN MULOQOT QILISH		f	2024-12-23 20:05:55.426398+00	2024-12-23 20:05:55.426423+00	3	\N
23	BO’LIMLARNI O’RGANISH		f	2024-12-23 20:06:03.401407+00	2024-12-23 20:06:03.40142+00	3	\N
24	TO’G’RI TOVAR TANLASH		f	2024-12-23 20:06:14.206324+00	2024-12-23 20:06:14.206356+00	3	\N
25	Freelancing and Upwork		t	2024-12-24 18:26:38.259897+00	2024-12-24 18:26:38.259918+00	4	\N
26	Signing up		f	2024-12-24 18:26:54.927426+00	2024-12-24 18:26:54.927443+00	4	\N
27	Proposals		f	2024-12-24 18:27:05.570398+00	2024-12-24 18:27:05.570429+00	4	\N
28	Contracts		f	2024-12-24 18:27:14.942416+00	2024-12-24 18:27:14.942436+00	4	\N
29	Upwork fees		f	2024-12-24 18:27:28.810195+00	2024-12-24 18:27:28.810209+00	4	\N
30	Portfolio		f	2024-12-24 18:27:40.023438+00	2024-12-24 18:27:40.023455+00	4	\N
31	Get paid		f	2024-12-24 18:27:44.209863+00	2024-12-24 18:27:44.209879+00	4	\N
32	Upwork Agency		f	2024-12-24 18:27:54.076323+00	2024-12-24 18:27:54.076349+00	4	\N
37	Shaxsiy brend nima va nima uchun muhim?		t	2024-12-27 12:35:10.122856+00	2024-12-27 12:35:10.122874+00	5	\N
38	O'z brendingizni aniqlash: Strategiya va Analiz		f	2024-12-27 12:35:23.119304+00	2024-12-27 12:35:23.119324+00	5	\N
39	Auditoriya bilan aloqalar va tarmoq qurish		f	2024-12-27 12:35:38.199233+00	2024-12-27 12:35:38.199257+00	5	\N
40	Kontent yaratish va brendni targ'ib qilish		f	2024-12-27 12:35:48.872259+00	2024-12-27 12:35:48.872271+00	5	\N
\.


--
-- Data for Name: courses_quiz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses_quiz (id, questions, answers, lesson_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) FROM stdin;
1	1	Numonjon Yusupov	1	[{"added": {}}]	7	1	2024-12-23 19:55:34.8636+00
2	2	Mardonbek Norboyev	1	[{"added": {}}]	7	1	2024-12-23 19:56:29.24195+00
3	3	Shirin Tokhirova	1	[{"added": {}}]	7	1	2024-12-23 19:57:27.541236+00
4	2	Mardonbek Norboyev	2	[{"changed": {"fields": ["Bio"]}}]	7	1	2024-12-23 19:57:43.053908+00
5	1	Numonjon Yusupov	2	[{"changed": {"fields": ["Bio"]}}]	7	1	2024-12-23 19:57:48.312555+00
6	1	Sotuv	1	[{"added": {}}]	9	1	2024-12-23 19:59:06.43618+00
7	2	SMM	1	[{"added": {}}]	9	1	2024-12-23 19:59:34.078052+00
8	1	SMM - SMM ga kirish va maqsadni aniqlash	1	[{"added": {}}]	10	1	2024-12-23 20:00:13.848558+00
9	2	SMM - Bozor va auditoriya analizi	1	[{"added": {}}]	10	1	2024-12-23 20:00:33.03984+00
10	3	SMM - Strategiya va kontent plan tuzish	1	[{"added": {}}]	10	1	2024-12-23 20:00:43.278058+00
11	4	SMM - Stories-making	1	[{"added": {}}]	10	1	2024-12-23 20:00:58.439993+00
12	5	SMM - Syomka va montaj	1	[{"added": {}}]	10	1	2024-12-23 20:01:08.482167+00
13	6	SMM - Pragrev va Komyuniti menejment	1	[{"added": {}}]	10	1	2024-12-23 20:01:26.539245+00
14	7	SMM - Vazifa taqsimoti va menejment	1	[{"added": {}}]	10	1	2024-12-23 20:01:34.446308+00
15	8	SMM - SMM Trends, Ad	1	[{"added": {}}]	10	1	2024-12-23 20:01:44.965649+00
16	9	SMM - Campaigns, and Professional	1	[{"added": {}}]	10	1	2024-12-23 20:01:54.122149+00
17	10	SMM - Development	1	[{"added": {}}]	10	1	2024-12-23 20:02:02.690829+00
18	11	Sotuv - Sotuvga kirish	1	[{"added": {}}]	10	1	2024-12-23 20:02:44.186829+00
19	12	Sotuv - Sotuv jarayonining bosqichlari	1	[{"added": {}}]	10	1	2024-12-23 20:02:55.596802+00
20	13	Sotuv - Potensial mijozlarni qidirish va yaratish	1	[{"added": {}}]	10	1	2024-12-23 20:03:03.845758+00
21	14	Sotuv - Mijoz bilan aloqa o’rnatish va muammolarni yengish	1	[{"added": {}}]	10	1	2024-12-23 20:03:12.74865+00
22	15	Sotuv - Samarali sotuv taqdimoti	1	[{"added": {}}]	10	1	2024-12-23 20:03:25.489903+00
23	16	Sotuv - Bitimni yopish texnikalari	1	[{"added": {}}]	10	1	2024-12-23 20:03:34.245744+00
24	17	Sotuv - Sotuv ko‘rsatkichlarini tahlil qilish va rivojlanish	1	[{"added": {}}]	10	1	2024-12-23 20:03:41.661507+00
25	4	Badalova Shaxnoza	1	[{"added": {}}]	7	1	2024-12-23 20:04:31.643459+00
26	3	China Order	1	[{"added": {}}]	9	1	2024-12-23 20:04:55.829546+00
27	18	China Order - ILOVADAN RO’YXATDAN O’TISH	1	[{"added": {}}]	10	1	2024-12-23 20:05:07.927296+00
28	19	China Order - VISA KARTA ULASH	1	[{"added": {}}]	10	1	2024-12-23 20:05:16.311481+00
29	20	China Order - ILOVADAN TOVAR SOTIB OLISH TARTIBI	1	[{"added": {}}]	10	1	2024-12-23 20:05:30.687957+00
30	21	China Order - TOVAR YETIB KELISHINI O’RGANISH CHEGIRMALI TOVARLARNI TOPISH	1	[{"added": {}}]	10	1	2024-12-23 20:05:43.062914+00
31	22	China Order - MAGAZIN EGALARI BILAN MULOQOT QILISH	1	[{"added": {}}]	10	1	2024-12-23 20:05:55.427472+00
32	23	China Order - BO’LIMLARNI O’RGANISH	1	[{"added": {}}]	10	1	2024-12-23 20:06:03.402396+00
33	24	China Order - TO’G’RI TOVAR TANLASH	1	[{"added": {}}]	10	1	2024-12-23 20:06:14.207715+00
34	4	Badalova Shaxnoza	2	[{"changed": {"fields": ["Bio", "Mentor picture ID"]}}]	7	1	2024-12-24 18:15:45.902374+00
35	2	Mardonbek Norboyev	2	[{"changed": {"fields": ["Bio"]}}]	7	1	2024-12-24 18:16:18.816075+00
36	1	Jo'rayeva Mehriniso	2	[{"changed": {"fields": ["Name", "Bio", "Mentor picture ID"]}}]	7	1	2024-12-24 18:22:27.862579+00
37	4	Mastering Upwork: A Freelancer’s Guide to Success	1	[{"added": {}}]	9	1	2024-12-24 18:23:50.21597+00
38	1	Sotuv	2	[{"changed": {"fields": ["Description", "Price"]}}]	9	1	2024-12-24 18:24:44.581171+00
39	2	SMM	2	[{"changed": {"fields": ["Price"]}}]	9	1	2024-12-24 18:25:33.460996+00
40	25	Mastering Upwork: A Freelancer’s Guide to Success - Freelancing and Upwork	1	[{"added": {}}]	10	1	2024-12-24 18:26:38.261554+00
41	26	Mastering Upwork: A Freelancer’s Guide to Success - Signing up	1	[{"added": {}}]	10	1	2024-12-24 18:26:54.928404+00
42	27	Mastering Upwork: A Freelancer’s Guide to Success - Proposals	1	[{"added": {}}]	10	1	2024-12-24 18:27:05.57164+00
43	28	Mastering Upwork: A Freelancer’s Guide to Success - Contracts	1	[{"added": {}}]	10	1	2024-12-24 18:27:14.943484+00
44	29	Mastering Upwork: A Freelancer’s Guide to Success - Upwork fees	1	[{"added": {}}]	10	1	2024-12-24 18:27:28.811077+00
45	30	Mastering Upwork: A Freelancer’s Guide to Success - Portfolio	1	[{"added": {}}]	10	1	2024-12-24 18:27:40.024027+00
46	31	Mastering Upwork: A Freelancer’s Guide to Success - Get paid	1	[{"added": {}}]	10	1	2024-12-24 18:27:44.210373+00
47	32	Mastering Upwork: A Freelancer’s Guide to Success - Upwork Agency	1	[{"added": {}}]	10	1	2024-12-24 18:27:54.07751+00
48	5	Abdul Sharopov	1	[{"added": {}}]	7	1	2024-12-27 12:30:58.291113+00
49	6	Samandar Salomov	1	[{"added": {}}]	7	1	2024-12-27 12:31:40.342564+00
50	5	Shaxsiy Brendni rivojlantirish	1	[{"added": {}}]	9	1	2024-12-27 12:32:26.060502+00
51	6	AI Tools	1	[{"added": {}}]	9	1	2024-12-27 12:33:10.207008+00
52	33	AI Tools - AI yozuv va matn yaratish	1	[{"added": {}}]	10	1	2024-12-27 12:34:20.353411+00
53	34	AI Tools - Dasturlash va dasturlash vositalari	1	[{"added": {}}]	10	1	2024-12-27 12:34:24.385231+00
54	35	AI Tools - Vizual kontent yaratish	1	[{"added": {}}]	10	1	2024-12-27 12:34:38.753664+00
55	36	AI Tools - Marketing va ijtimoiy tarmoqlar	1	[{"added": {}}]	10	1	2024-12-27 12:34:49.298407+00
56	37	Shaxsiy Brendni rivojlantirish - Shaxsiy brend nima va nima uchun muhim?	1	[{"added": {}}]	10	1	2024-12-27 12:35:10.124184+00
57	38	Shaxsiy Brendni rivojlantirish - O'z brendingizni aniqlash: Strategiya va Analiz	1	[{"added": {}}]	10	1	2024-12-27 12:35:23.120657+00
58	39	Shaxsiy Brendni rivojlantirish - Auditoriya bilan aloqalar va tarmoq qurish	1	[{"added": {}}]	10	1	2024-12-27 12:35:38.200693+00
59	40	Shaxsiy Brendni rivojlantirish - Kontent yaratish va brendni targ'ib qilish	1	[{"added": {}}]	10	1	2024-12-27 12:35:48.873188+00
60	6	Samandar Salomov	2	[{"changed": {"fields": ["Mentor picture ID"]}}]	7	1	2024-12-27 12:48:32.302335+00
61	7	Bobirjon Mardonov	1	[{"added": {}}]	7	1	2024-12-29 04:39:32.181712+00
62	8	Abdusamatova Baxora	1	[{"added": {}}]	7	1	2024-12-29 04:41:25.142544+00
63	1	SMM	1	[{"added": {}}]	17	1	2024-12-29 05:10:37.070064+00
64	2	Sotuv	1	[{"added": {}}]	17	1	2024-12-29 05:11:27.208809+00
65	3	Chet eldan buyurtma qilish : Xitoy	1	[{"added": {}}]	17	1	2024-12-29 05:12:06.653448+00
66	4	Upworkga kirish: Frilanserlar uchun muvaffaqiyat qo'llanmasi.	1	[{"added": {}}]	17	1	2024-12-29 05:13:01.086748+00
67	5	Shaxsiy Brendni rivojlantirish	1	[{"added": {}}]	17	1	2024-12-29 05:14:02.409491+00
68	6	Samandar Salomov	2	[{"changed": {"fields": ["Bio"]}}]	7	1	2024-12-29 05:59:33.686381+00
69	5	Abdul Sharopov	2	[{"changed": {"fields": ["Bio"]}}]	7	1	2024-12-29 05:59:41.155581+00
70	5	Abdul Sharopov	2	[]	7	1	2024-12-29 05:59:45.417456+00
71	4	Badalova Shaxnoza	2	[{"changed": {"fields": ["Bio"]}}]	7	1	2024-12-29 05:59:51.852909+00
72	3	Shirin Tokhirova	2	[{"changed": {"fields": ["Bio"]}}]	7	1	2024-12-29 05:59:58.299536+00
73	2	Mardonbek Norboyev	2	[{"changed": {"fields": ["Bio"]}}]	7	1	2024-12-29 06:00:03.636448+00
74	1	Jo'rayeva Mehriniso	2	[{"changed": {"fields": ["Bio"]}}]	7	1	2024-12-29 06:00:34.66686+00
75	4	Badalova Shaxnoza	2	[{"changed": {"fields": ["Bio"]}}]	7	1	2024-12-29 11:51:35.120678+00
76	4	Badalova Shaxnoza	2	[{"changed": {"fields": ["Bio"]}}]	7	1	2024-12-29 11:52:18.372257+00
77	4	Badalova Shaxnoza	2	[{"changed": {"fields": ["Bio"]}}]	7	1	2024-12-29 11:52:41.63516+00
78	4	Badalova Shaxnoza	2	[{"changed": {"fields": ["Mentor picture ID"]}}]	7	1	2024-12-29 12:09:14.168886+00
79	1	Olloyor M	3		12	1	2024-12-29 16:12:14.828746+00
80	9	Maxammadnabiyev	3		12	1	2024-12-29 16:12:18.429789+00
81	11	Olloyor Maxammadnabiyev	2	[{"changed": {"fields": ["Phone number"]}}]	12	1	2024-12-29 16:19:24.775755+00
82	8	Bobir Mardonov	3		12	1	2024-12-29 16:20:29.953857+00
83	3	dilshoda	3		12	1	2024-12-29 16:20:45.417322+00
84	4	Mardonbek Norboyev	3		12	1	2024-12-29 16:20:50.301419+00
85	2	Orzugul Umarovna	3		12	1	2024-12-29 16:20:53.082329+00
86	5	Raykhona Khamrokulova	3		12	1	2024-12-29 16:20:55.868832+00
87	6	Joʻrayeva Mehriniso ✨멯리니소✨	3		12	1	2024-12-29 16:20:58.780465+00
88	7	yulduz	3		12	1	2024-12-29 16:21:01.982135+00
89	10	olloyor m	3		12	1	2024-12-29 16:21:06.078668+00
90	9	Xo'jamurodova Guljahon	1	[{"added": {}}]	7	1	2024-12-29 17:12:06.275678+00
91	13	dede	3		12	1	2024-12-29 17:14:24.333612+00
92	16	test	3		12	1	2024-12-29 17:15:10.913588+00
93	17	.	3		12	1	2024-12-29 17:18:06.409631+00
94	5	Abdul Sharopov	3		7	1	2024-12-29 19:21:38.028288+00
95	4	Badalova Shaxnoza	2	[{"changed": {"fields": ["Bio"]}}]	7	1	2024-12-29 19:23:17.68304+00
96	4	Badalova Shakhnoza	2	[{"changed": {"fields": ["Name"]}}]	7	1	2024-12-29 19:26:46.350823+00
97	4	Badalova Shaxnoza	2	[{"changed": {"fields": ["Name"]}}]	7	1	2024-12-29 19:27:04.413176+00
98	4	Badalova Shaxnoza	2	[]	7	1	2024-12-29 19:28:12.604476+00
99	9	Xo'jamurodova Guljahon	2	[]	7	1	2024-12-29 19:28:15.494258+00
100	2	olloyor	1	[{"added": {}}]	4	1	2024-12-31 05:19:16.526664+00
101	2	olloyor	2	[{"changed": {"fields": ["Staff status", "Superuser status", "User permissions"]}}]	4	1	2024-12-31 05:19:45.129245+00
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	mentors	mentor
8	mentors	mentoravailability
9	courses	course
10	courses	lesson
11	courses	quiz
12	accounts	student
13	progress	studentprogress
14	payment	payment
15	authtoken	token
16	authtoken	tokenproxy
17	webinar	webinar
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	accounts	0001_initial	2024-12-23 19:46:18.142741+00
2	accounts	0002_student_created_at_student_telegram_id	2024-12-23 19:46:18.146136+00
3	accounts	0003_alter_student_phone_number	2024-12-23 19:46:18.147859+00
4	accounts	0004_student_auth_token	2024-12-23 19:46:18.149429+00
5	accounts	0005_remove_student_auth_token	2024-12-23 19:46:18.151683+00
6	accounts	0006_add_created_at_field	2024-12-23 19:46:18.155552+00
7	accounts	0007_alter_student_auth_token	2024-12-23 19:46:18.157382+00
8	contenttypes	0001_initial	2024-12-23 19:46:18.158801+00
9	auth	0001_initial	2024-12-23 19:46:18.164653+00
10	admin	0001_initial	2024-12-23 19:46:18.168827+00
11	admin	0002_logentry_remove_auto_add	2024-12-23 19:46:18.172843+00
12	admin	0003_logentry_add_action_flag_choices	2024-12-23 19:46:18.175214+00
13	contenttypes	0002_remove_content_type_name	2024-12-23 19:46:18.182626+00
14	auth	0002_alter_permission_name_max_length	2024-12-23 19:46:18.186675+00
15	auth	0003_alter_user_email_max_length	2024-12-23 19:46:18.190797+00
16	auth	0004_alter_user_username_opts	2024-12-23 19:46:18.193024+00
17	auth	0005_alter_user_last_login_null	2024-12-23 19:46:18.196736+00
18	auth	0006_require_contenttypes_0002	2024-12-23 19:46:18.197303+00
19	auth	0007_alter_validators_add_error_messages	2024-12-23 19:46:18.200495+00
20	auth	0008_alter_user_username_max_length	2024-12-23 19:46:18.20687+00
21	auth	0009_alter_user_last_name_max_length	2024-12-23 19:46:18.210241+00
22	auth	0010_alter_group_name_max_length	2024-12-23 19:46:18.213997+00
23	auth	0011_update_proxy_permissions	2024-12-23 19:46:18.217032+00
24	auth	0012_alter_user_first_name_max_length	2024-12-23 19:46:18.221499+00
25	authtoken	0001_initial	2024-12-23 19:46:18.224412+00
26	authtoken	0002_auto_20160226_1747	2024-12-23 19:46:18.234005+00
27	authtoken	0003_tokenproxy	2024-12-23 19:46:18.235145+00
28	authtoken	0004_alter_tokenproxy_options	2024-12-23 19:46:18.236943+00
29	mentors	0001_initial	2024-12-23 19:46:18.237989+00
30	courses	0001_initial	2024-12-23 19:46:18.241862+00
31	courses	0002_rename_telegram_xideo_id_lesson_telegram_video_id	2024-12-23 19:46:18.244382+00
32	courses	0003_alter_course_options_course_created_at	2024-12-23 19:46:18.248629+00
33	courses	0004_alter_course_price	2024-12-23 19:46:18.252037+00
34	courses	0005_lesson_telegram_video_unique_id	2024-12-23 19:46:18.254916+00
35	courses	0006_remove_lesson_telegram_video_unique_id	2024-12-23 19:46:18.257259+00
36	courses	0007_alter_lesson_telegram_video_id	2024-12-23 19:46:18.260345+00
37	mentors	0002_mentoravailability	2024-12-23 19:46:18.262884+00
38	mentors	0003_mentor_profile_picture_id	2024-12-23 19:46:18.265996+00
39	mentors	0004_mentoravailability_created_at	2024-12-23 19:46:18.268848+00
40	mentors	0005_mentor_profile_picture_unique_id	2024-12-23 19:46:18.271298+00
41	mentors	0006_remove_mentor_profile_picture_unique_id	2024-12-23 19:46:18.273656+00
42	mentors	0007_alter_mentor_profile_picture_id	2024-12-23 19:46:18.27625+00
43	payment	0001_initial	2024-12-23 19:46:18.279228+00
44	payment	0002_payment_screenshot_file_id_and_more	2024-12-23 19:46:18.283936+00
45	payment	0003_alter_payment_unique_together	2024-12-23 19:46:18.292638+00
46	progress	0001_initial	2024-12-23 19:46:18.296282+00
47	sessions	0001_initial	2024-12-23 19:46:18.29802+00
48	webinar	0001_initial	2024-12-28 14:35:08.317559+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
vvx8v8yy8ouapaq1m3h6ajrh8jgs3co3	.eJxVjEEOwiAQRe_C2hAoQ0GX7nuGZqYzSNVAUtqV8e7apAvd_vfef6kRtzWPW5NlnFldlFWn341wekjZAd-x3KqealmXmfSu6IM2PVSW5_Vw_w4ytvytvRcCBgOdF4fGiBX2EK2QpD5CdJHQAwYHyULAcyLuo-8CowXDFNX7A92rN80:1tPoVg:nZgjYdCGsV3TwsRKXnFIqRw-ynIsEPBRsiHuoZMnOLI	2025-01-06 19:54:36.481044+00
kttjygp9k7zbn727e44i2y1irts4q8f9	.eJxVjEEOwiAQRe_C2hAoQ0GX7nuGZqYzSNVAUtqV8e7apAvd_vfef6kRtzWPW5NlnFldlFWn341wekjZAd-x3KqealmXmfSu6IM2PVSW5_Vw_w4ytvytvRcCBgOdF4fGiBX2EK2QpD5CdJHQAwYHyULAcyLuo-8CowXDFNX7A92rN80:1tSUYd:zrVvv_9jjnpGecPRcgRweycbSBXLCpy4Tk3DF_lah04	2025-01-14 05:12:43.783671+00
oetz9dnj1nkj5zproluukkufub226xme	.eJxVjDsOwyAQBe9CHSG-C6RM7zOgNYuDkwgkY1dR7h5bcpG0b-bNm0Xc1hK3npc4E7syxS6_24jpmesB6IH13nhqdV3mkR8KP2nnQ6P8up3uX6BgL_sbPXntAISbhAXyiYIkmb2YLAShkhMAhKTDnnSEVijjdXBGKyMpS80-X8-aNxo:1tSUna:aVb5JNIXm4AOY-0AvCPnA3cYbMcUJk_kK0J15RNYugw	2025-01-14 05:28:10.955733+00
\.


--
-- Data for Name: mentors_mentor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mentors_mentor (id, name, bio, profile_picture_id) FROM stdin;
1	Jo'rayeva Mehriniso	Mehriniso frilanser va Upwork instruktori boʻlib, oʻz tajribasi va strategiyalarini baham koʻrish orqali boshqalarga platformada harakat qilish va muvaffaqiyatga erishishda yordam beradi.\r\n📞Kontakt : littledreamer1513@gmail.com	AgACAgIAAxkBAAMrZ2r72PFhV0FEN57J-jAVbio4nDcAAv7xMRu5RFlL1r5dsi7GvoEBAAMCAAN5AAM2BA
2	Mardonbek Norboyev	5+ biznes va sotuvda tajriba \r\n300+ muvaffaqiyatli sotuvlar\r\n📞Kontakt : @NorboyevMardonbek	AgACAgIAAxkBAAMNZ2m_xVI_F-s1RJxKYpmiWzwZQ1IAAt3wMRt3mEhL64hS3MR7qOYBAAMCAAN5AAM2BA
3	Shirin Tokhirova	Media va marketing sohasida 3+ yillik tajriba, SMM bo’yicha 10 ga yaqin loyihalar va ayni damda frilansdagi fotograf va mobilograf. \r\n\r\n📞Kontakt : @tkhrvash	AgACAgIAAxkBAAMRZ2m_2i0DL0bYSYx1jy6JBYn9DucAAq_rMRuYXkhLzUmnJdCUkmEBAAMCAAN5AAM2BA
4	Badalova Shaxnoza	3 yildan beri online savdo bilan shug'ullanuvchi ekspert\r\n\r\n📞Kontakt : @shonaa_me	AgACAgIAAxkBAAIClmdxO9pM7cgM923298WivqvOI1jbAAI36zEb2A2IS2shhQTtQ9m7AQADAgADeQADNgQ
6	Samandar Salomov	2+ yil marketingda tajriba\r\n"Do'ppi Media" Marketing agentligi asoschisi\r\n\r\n📞Kontakt : @SMMMARKETINGSPECIALIST	AgACAgIAAxkBAAOVZ26iChnoxb4Xelsp24bQE0JqDTQAAnLxMRv1CnhLfaYglSMsbkgBAAMCAAN5AAM2BA
7	Bobirjon Mardonov	Speaklish asoschisi, CTO (Texnologiyalar bo‘yicha direktor), AI (sun’iy intellekt) startap bo‘yicha Tech mukofotlari sovrindori.\r\nMa’lumotlar muhandisligi va tahlili sohasida 2 yillik tajribaga ega.	AgACAgIAAxkBAAIBSmdw0nyOUuxlCtLrqz10qon4lXAhAAJC7jEb5-WBS0RV69TmCx4MAQADAgADeQADNgQ
8	Abdusamatova Baxora	2yildan ortiq Google Workspace bo'yicha tajribaga ega mutaxassis.	AgACAgIAAxkBAAIBTmdw0umPwZMHuNE1NR0W8zU6SNOhAAJD7jEb5-WBSwohsSh1Znn4AQADAgADeQADNgQ
9	Xo'jamurodova Guljahon	Ielts 8 egasi.\r\n2 yildan oshiq ingliz tilini o'qitish tajribasiga ega	AgACAgIAAxkBAAIEWWdxgsSgpSfSTmuQjspWOntiqMoKAAJD5zEb2A2QSyGFtZz-prRVAQADAgADeAADNgQ
\.


--
-- Data for Name: mentors_mentoravailability; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mentors_mentoravailability (id, start_time, end_time, is_available, mentor_id, created_at) FROM stdin;
\.


--
-- Data for Name: payment_payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_payment (id, amount, status, created_at, confirmed_at, course_id, student_id, screenshot_file_id) FROM stdin;
\.


--
-- Data for Name: progress_studentprogress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.progress_studentprogress (id, quiz_score, completed_at, lesson_id, student_id) FROM stdin;
\.


--
-- Data for Name: webinar_webinar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.webinar_webinar (id, title, description, video_telegram_id, duration, status, created_at, mentor_id) FROM stdin;
1	SMM		BAACAgIAAxkBAAIBUGdw2b2qSinux9A6FzNgRfsrRLdWAAJKYwACbUGwSu-XXxsvrMNVNgQ	\N	scheduled	2024-12-29 05:10:37.067073+00	3
2	Sotuv		BAACAgIAAxkBAAIBVmdw2faJr95nHZn2dCtOHYJHJ9TnAAKNYwACCTj4SlVkoLXdX2WlNgQ	\N	scheduled	2024-12-29 05:11:27.204367+00	2
3	Chet eldan buyurtma qilish : Xitoy		BAACAgIAAxkBAAIBXGdw2iLUGi4hdx71pGclyftOaexDAAKyagACTl1BSxt80L0INJroNgQ	\N	scheduled	2024-12-29 05:12:06.650411+00	4
4	Upworkga kirish: Frilanserlar uchun muvaffaqiyat qo'llanmasi.		BAACAgIAAxkBAAIBYGdw2lhjxhCzcfd-VWla-WZtphpzAAIcZQAChEVgSzNdYjgkDOo6NgQ	\N	scheduled	2024-12-29 05:13:01.083815+00	1
5	Shaxsiy Brendni rivojlantirish		BAACAgIAAxkBAAIBZGdw2pWoZEZK8VieBEf1DEC5lLO6AAK1YQACQVUxSighy76tt8RxNgQ	\N	scheduled	2024-12-29 05:14:02.406885+00	6
\.


--
-- Name: accounts_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_student_id_seq', 119, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 68, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 69, true);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 5, true);


--
-- Name: courses_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_lesson_id_seq', 40, true);


--
-- Name: courses_quiz_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_quiz_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 101, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 48, true);


--
-- Name: mentors_mentor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mentors_mentor_id_seq', 9, true);


--
-- Name: mentors_mentoravailability_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mentors_mentoravailability_id_seq', 1, true);


--
-- Name: payment_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_payment_id_seq', 1, true);


--
-- Name: progress_studentprogress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.progress_studentprogress_id_seq', 1, true);


--
-- Name: webinar_webinar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.webinar_webinar_id_seq', 5, true);


--
-- Name: django_migrations idx_16681_django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT idx_16681_django_migrations_pkey PRIMARY KEY (id);


--
-- Name: accounts_student idx_16688_accounts_student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_student
    ADD CONSTRAINT idx_16688_accounts_student_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions idx_16695_auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT idx_16695_auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups idx_16700_auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT idx_16700_auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions idx_16705_auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT idx_16705_auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log idx_16710_django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT idx_16710_django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type idx_16717_django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT idx_16717_django_content_type_pkey PRIMARY KEY (id);


--
-- Name: auth_permission idx_16724_auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT idx_16724_auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_group idx_16731_auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT idx_16731_auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_user idx_16738_auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT idx_16738_auth_user_pkey PRIMARY KEY (id);


--
-- Name: authtoken_token idx_16744_sqlite_autoindex_authtoken_token_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT idx_16744_sqlite_autoindex_authtoken_token_1 PRIMARY KEY (key);


--
-- Name: courses_quiz idx_16750_courses_quiz_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_quiz
    ADD CONSTRAINT idx_16750_courses_quiz_pkey PRIMARY KEY (id);


--
-- Name: courses_course idx_16757_courses_course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT idx_16757_courses_course_pkey PRIMARY KEY (id);


--
-- Name: courses_lesson idx_16764_courses_lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_lesson
    ADD CONSTRAINT idx_16764_courses_lesson_pkey PRIMARY KEY (id);


--
-- Name: mentors_mentoravailability idx_16771_mentors_mentoravailability_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mentors_mentoravailability
    ADD CONSTRAINT idx_16771_mentors_mentoravailability_pkey PRIMARY KEY (id);


--
-- Name: mentors_mentor idx_16776_mentors_mentor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mentors_mentor
    ADD CONSTRAINT idx_16776_mentors_mentor_pkey PRIMARY KEY (id);


--
-- Name: payment_payment idx_16783_payment_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_payment
    ADD CONSTRAINT idx_16783_payment_payment_pkey PRIMARY KEY (id);


--
-- Name: progress_studentprogress idx_16790_progress_studentprogress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.progress_studentprogress
    ADD CONSTRAINT idx_16790_progress_studentprogress_pkey PRIMARY KEY (id);


--
-- Name: django_session idx_16794_sqlite_autoindex_django_session_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT idx_16794_sqlite_autoindex_django_session_1 PRIMARY KEY (session_key);


--
-- Name: webinar_webinar idx_16800_webinar_webinar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webinar_webinar
    ADD CONSTRAINT idx_16800_webinar_webinar_pkey PRIMARY KEY (id);


--
-- Name: idx_16688_sqlite_autoindex_accounts_student_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16688_sqlite_autoindex_accounts_student_1 ON public.accounts_student USING btree (telegram_id);


--
-- Name: idx_16688_sqlite_autoindex_accounts_student_2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16688_sqlite_autoindex_accounts_student_2 ON public.accounts_student USING btree (auth_token);


--
-- Name: idx_16695_auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16695_auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: idx_16695_auth_group_permissions_group_id_permission_id_0cd325b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16695_auth_group_permissions_group_id_permission_id_0cd325b ON public.auth_group_permissions USING btree (group_id, permission_id);


--
-- Name: idx_16695_auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16695_auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: idx_16700_auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16700_auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: idx_16700_auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16700_auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: idx_16700_auth_user_groups_user_id_group_id_94350c0c_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16700_auth_user_groups_user_id_group_id_94350c0c_uniq ON public.auth_user_groups USING btree (user_id, group_id);


--
-- Name: idx_16705_auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16705_auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: idx_16705_auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16705_auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: idx_16705_auth_user_user_permissions_user_id_permission_id_14a6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16705_auth_user_user_permissions_user_id_permission_id_14a6 ON public.auth_user_user_permissions USING btree (user_id, permission_id);


--
-- Name: idx_16710_django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16710_django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: idx_16710_django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16710_django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: idx_16717_django_content_type_app_label_model_76bd3d3b_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16717_django_content_type_app_label_model_76bd3d3b_uniq ON public.django_content_type USING btree (app_label, model);


--
-- Name: idx_16724_auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16724_auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: idx_16724_auth_permission_content_type_id_codename_01ab375a_uni; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16724_auth_permission_content_type_id_codename_01ab375a_uni ON public.auth_permission USING btree (content_type_id, codename);


--
-- Name: idx_16731_sqlite_autoindex_auth_group_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16731_sqlite_autoindex_auth_group_1 ON public.auth_group USING btree (name);


--
-- Name: idx_16738_sqlite_autoindex_auth_user_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16738_sqlite_autoindex_auth_user_1 ON public.auth_user USING btree (username);


--
-- Name: idx_16744_sqlite_autoindex_authtoken_token_2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16744_sqlite_autoindex_authtoken_token_2 ON public.authtoken_token USING btree (user_id);


--
-- Name: idx_16750_courses_quiz_lesson_id_2bf49392; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16750_courses_quiz_lesson_id_2bf49392 ON public.courses_quiz USING btree (lesson_id);


--
-- Name: idx_16757_courses_course_mentor_id_f2614305; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16757_courses_course_mentor_id_f2614305 ON public.courses_course USING btree (mentor_id);


--
-- Name: idx_16764_courses_lesson_course_id_16bc4882; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16764_courses_lesson_course_id_16bc4882 ON public.courses_lesson USING btree (course_id);


--
-- Name: idx_16771_mentors_mentoravailability_mentor_id_d600bb82; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16771_mentors_mentoravailability_mentor_id_d600bb82 ON public.mentors_mentoravailability USING btree (mentor_id);


--
-- Name: idx_16783_payment_payment_course_id_01e6ee27; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16783_payment_payment_course_id_01e6ee27 ON public.payment_payment USING btree (course_id);


--
-- Name: idx_16783_payment_payment_student_id_873ead1d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16783_payment_payment_student_id_873ead1d ON public.payment_payment USING btree (student_id);


--
-- Name: idx_16783_payment_payment_student_id_course_id_dbc04a52_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16783_payment_payment_student_id_course_id_dbc04a52_uniq ON public.payment_payment USING btree (student_id, course_id);


--
-- Name: idx_16790_progress_studentprogress_lesson_id_5be0d903; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16790_progress_studentprogress_lesson_id_5be0d903 ON public.progress_studentprogress USING btree (lesson_id);


--
-- Name: idx_16790_progress_studentprogress_student_id_accd3bf3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16790_progress_studentprogress_student_id_accd3bf3 ON public.progress_studentprogress USING btree (student_id);


--
-- Name: idx_16790_progress_studentprogress_student_id_lesson_id_9b4237d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_16790_progress_studentprogress_student_id_lesson_id_9b4237d ON public.progress_studentprogress USING btree (student_id, lesson_id);


--
-- Name: idx_16794_django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16794_django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: idx_16800_webinar_webinar_mentor_id_acfc323d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_16800_webinar_webinar_mentor_id_acfc323d ON public.webinar_webinar USING btree (mentor_id);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_group_permissions auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_permission auth_permission_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: auth_user_groups auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_user_groups auth_user_groups_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: authtoken_token authtoken_token_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: courses_course courses_course_mentor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_mentor_id_fkey FOREIGN KEY (mentor_id) REFERENCES public.mentors_mentor(id);


--
-- Name: courses_lesson courses_lesson_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_lesson
    ADD CONSTRAINT courses_lesson_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses_course(id);


--
-- Name: courses_quiz courses_quiz_lesson_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_quiz
    ADD CONSTRAINT courses_quiz_lesson_id_fkey FOREIGN KEY (lesson_id) REFERENCES public.courses_lesson(id);


--
-- Name: django_admin_log django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: django_admin_log django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: mentors_mentoravailability mentors_mentoravailability_mentor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mentors_mentoravailability
    ADD CONSTRAINT mentors_mentoravailability_mentor_id_fkey FOREIGN KEY (mentor_id) REFERENCES public.mentors_mentor(id);


--
-- Name: payment_payment payment_payment_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_payment
    ADD CONSTRAINT payment_payment_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses_course(id);


--
-- Name: payment_payment payment_payment_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_payment
    ADD CONSTRAINT payment_payment_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.accounts_student(id);


--
-- Name: progress_studentprogress progress_studentprogress_lesson_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.progress_studentprogress
    ADD CONSTRAINT progress_studentprogress_lesson_id_fkey FOREIGN KEY (lesson_id) REFERENCES public.courses_lesson(id);


--
-- Name: progress_studentprogress progress_studentprogress_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.progress_studentprogress
    ADD CONSTRAINT progress_studentprogress_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.accounts_student(id);


--
-- Name: webinar_webinar webinar_webinar_mentor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webinar_webinar
    ADD CONSTRAINT webinar_webinar_mentor_id_fkey FOREIGN KEY (mentor_id) REFERENCES public.mentors_mentor(id);


--
-- PostgreSQL database dump complete
--


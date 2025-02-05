--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    best_guess integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(60) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 36, 303);
INSERT INTO public.games VALUES (2, 36, 893);
INSERT INTO public.games VALUES (3, 37, 845);
INSERT INTO public.games VALUES (4, 37, 672);
INSERT INTO public.games VALUES (5, 36, 409);
INSERT INTO public.games VALUES (6, 36, 819);
INSERT INTO public.games VALUES (7, 36, 130);
INSERT INTO public.games VALUES (8, 38, 776);
INSERT INTO public.games VALUES (9, 38, 73);
INSERT INTO public.games VALUES (10, 39, 165);
INSERT INTO public.games VALUES (11, 39, 354);
INSERT INTO public.games VALUES (12, 40, 281);
INSERT INTO public.games VALUES (13, 40, 498);
INSERT INTO public.games VALUES (14, 39, 370);
INSERT INTO public.games VALUES (15, 39, 715);
INSERT INTO public.games VALUES (16, 39, 174);
INSERT INTO public.games VALUES (17, 41, 457);
INSERT INTO public.games VALUES (18, 41, 754);
INSERT INTO public.games VALUES (19, 42, 542);
INSERT INTO public.games VALUES (20, 42, 873);
INSERT INTO public.games VALUES (21, 41, 294);
INSERT INTO public.games VALUES (22, 41, 35);
INSERT INTO public.games VALUES (23, 41, 199);
INSERT INTO public.games VALUES (24, 43, 895);
INSERT INTO public.games VALUES (25, 43, 503);
INSERT INTO public.games VALUES (26, 44, 441);
INSERT INTO public.games VALUES (27, 44, 128);
INSERT INTO public.games VALUES (28, 43, 839);
INSERT INTO public.games VALUES (29, 43, 768);
INSERT INTO public.games VALUES (30, 43, 293);
INSERT INTO public.games VALUES (31, 45, 987);
INSERT INTO public.games VALUES (32, 45, 481);
INSERT INTO public.games VALUES (33, 46, 889);
INSERT INTO public.games VALUES (34, 46, 222);
INSERT INTO public.games VALUES (35, 45, 142);
INSERT INTO public.games VALUES (36, 45, 126);
INSERT INTO public.games VALUES (37, 45, 739);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1738760604863', 0);
INSERT INTO public.users VALUES (3, 'user_1738760604862', 0);
INSERT INTO public.users VALUES (8, 'user_1738760654588', 0);
INSERT INTO public.users VALUES (10, 'user_1738760654587', 0);
INSERT INTO public.users VALUES (15, 'user_1738760681581', 0);
INSERT INTO public.users VALUES (17, 'user_1738760681580', 0);
INSERT INTO public.users VALUES (22, 'user_1738760690375', 0);
INSERT INTO public.users VALUES (24, 'user_1738760690374', 0);
INSERT INTO public.users VALUES (29, '', 0);
INSERT INTO public.users VALUES (37, 'user_1738761079461', 2);
INSERT INTO public.users VALUES (36, 'user_1738761079462', 5);
INSERT INTO public.users VALUES (38, 'user_1738761302935', 2);
INSERT INTO public.users VALUES (40, 'user_1738761340409', 2);
INSERT INTO public.users VALUES (39, 'user_1738761340410', 5);
INSERT INTO public.users VALUES (42, 'user_1738761444546', 2);
INSERT INTO public.users VALUES (41, 'user_1738761444547', 5);
INSERT INTO public.users VALUES (44, 'user_1738761479989', 2);
INSERT INTO public.users VALUES (43, 'user_1738761479990', 5);
INSERT INTO public.users VALUES (46, 'user_1738761552141', 2);
INSERT INTO public.users VALUES (45, 'user_1738761552142', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 37, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 46, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_user_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_user_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


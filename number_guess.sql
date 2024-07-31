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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 4, 4);
INSERT INTO public.games VALUES (2, 131, 5);
INSERT INTO public.games VALUES (3, 793, 5);
INSERT INTO public.games VALUES (4, 29, 7);
INSERT INTO public.games VALUES (5, 711, 7);
INSERT INTO public.games VALUES (6, 148, 5);
INSERT INTO public.games VALUES (7, 974, 5);
INSERT INTO public.games VALUES (8, 529, 5);
INSERT INTO public.games VALUES (9, 781, 12);
INSERT INTO public.games VALUES (10, 805, 12);
INSERT INTO public.games VALUES (11, 623, 14);
INSERT INTO public.games VALUES (12, 863, 14);
INSERT INTO public.games VALUES (13, 183, 12);
INSERT INTO public.games VALUES (14, 314, 12);
INSERT INTO public.games VALUES (15, 760, 12);
INSERT INTO public.games VALUES (16, 8, 3);
INSERT INTO public.games VALUES (17, 444, 22);
INSERT INTO public.games VALUES (18, 606, 22);
INSERT INTO public.games VALUES (19, 161, 24);
INSERT INTO public.games VALUES (20, 387, 24);
INSERT INTO public.games VALUES (21, 372, 22);
INSERT INTO public.games VALUES (22, 600, 22);
INSERT INTO public.games VALUES (23, 496, 22);
INSERT INTO public.games VALUES (24, 124, 29);
INSERT INTO public.games VALUES (25, 518, 29);
INSERT INTO public.games VALUES (26, 888, 30);
INSERT INTO public.games VALUES (27, 558, 30);
INSERT INTO public.games VALUES (28, 482, 29);
INSERT INTO public.games VALUES (29, 230, 29);
INSERT INTO public.games VALUES (30, 129, 29);
INSERT INTO public.games VALUES (31, 486, 31);
INSERT INTO public.games VALUES (32, 286, 31);
INSERT INTO public.games VALUES (33, 614, 32);
INSERT INTO public.games VALUES (34, 719, 32);
INSERT INTO public.games VALUES (35, 277, 31);
INSERT INTO public.games VALUES (36, 786, 31);
INSERT INTO public.games VALUES (37, 81, 31);
INSERT INTO public.games VALUES (38, 271, 33);
INSERT INTO public.games VALUES (39, 259, 33);
INSERT INTO public.games VALUES (40, 655, 34);
INSERT INTO public.games VALUES (41, 864, 34);
INSERT INTO public.games VALUES (42, 804, 33);
INSERT INTO public.games VALUES (43, 296, 33);
INSERT INTO public.games VALUES (44, 203, 33);
INSERT INTO public.games VALUES (45, 11, 3);
INSERT INTO public.games VALUES (46, 549, 35);
INSERT INTO public.games VALUES (47, 262, 35);
INSERT INTO public.games VALUES (48, 933, 36);
INSERT INTO public.games VALUES (49, 778, 36);
INSERT INTO public.games VALUES (50, 597, 35);
INSERT INTO public.games VALUES (51, 7, 35);
INSERT INTO public.games VALUES (52, 800, 35);
INSERT INTO public.games VALUES (53, 934, 37);
INSERT INTO public.games VALUES (54, 341, 37);
INSERT INTO public.games VALUES (55, 640, 38);
INSERT INTO public.games VALUES (56, 353, 38);
INSERT INTO public.games VALUES (57, 984, 37);
INSERT INTO public.games VALUES (58, 56, 37);
INSERT INTO public.games VALUES (59, 249, 37);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'd');
INSERT INTO public.users VALUES (2, 'ff');
INSERT INTO public.users VALUES (3, 'maria');
INSERT INTO public.users VALUES (4, 'FV');
INSERT INTO public.users VALUES (5, 'user_1722440217802');
INSERT INTO public.users VALUES (7, 'user_1722440217801');
INSERT INTO public.users VALUES (12, 'user_1722440344133');
INSERT INTO public.users VALUES (14, 'user_1722440344132');
INSERT INTO public.users VALUES (22, 'user_1722440469062');
INSERT INTO public.users VALUES (24, 'user_1722440469061');
INSERT INTO public.users VALUES (29, 'user_1722440487979');
INSERT INTO public.users VALUES (30, 'user_1722440487978');
INSERT INTO public.users VALUES (31, 'user_1722440516664');
INSERT INTO public.users VALUES (32, 'user_1722440516663');
INSERT INTO public.users VALUES (33, 'user_1722440535282');
INSERT INTO public.users VALUES (34, 'user_1722440535281');
INSERT INTO public.users VALUES (35, 'user_1722440641151');
INSERT INTO public.users VALUES (36, 'user_1722440641150');
INSERT INTO public.users VALUES (37, 'user_1722440664206');
INSERT INTO public.users VALUES (38, 'user_1722440664205');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 59, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 38, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: game_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_info (
    user_id integer,
    gusses integer
);


ALTER TABLE public.game_info OWNER TO freecodecamp;

--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: game_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_info VALUES (11, 12);
INSERT INTO public.game_info VALUES (12, 389);
INSERT INTO public.game_info VALUES (12, 683);
INSERT INTO public.game_info VALUES (13, 294);
INSERT INTO public.game_info VALUES (13, 630);
INSERT INTO public.game_info VALUES (12, 298);
INSERT INTO public.game_info VALUES (12, 119);
INSERT INTO public.game_info VALUES (12, 506);
INSERT INTO public.game_info VALUES (11, 12);
INSERT INTO public.game_info VALUES (14, 212);
INSERT INTO public.game_info VALUES (15, 958);
INSERT INTO public.game_info VALUES (15, 350);
INSERT INTO public.game_info VALUES (14, 775);
INSERT INTO public.game_info VALUES (14, 620);
INSERT INTO public.game_info VALUES (14, 586);
INSERT INTO public.game_info VALUES (16, 819);
INSERT INTO public.game_info VALUES (17, 646);
INSERT INTO public.game_info VALUES (17, 45);
INSERT INTO public.game_info VALUES (16, 199);
INSERT INTO public.game_info VALUES (16, 98);
INSERT INTO public.game_info VALUES (16, 550);
INSERT INTO public.game_info VALUES (18, 984);
INSERT INTO public.game_info VALUES (19, 821);
INSERT INTO public.game_info VALUES (19, 854);
INSERT INTO public.game_info VALUES (18, 78);
INSERT INTO public.game_info VALUES (18, 957);
INSERT INTO public.game_info VALUES (18, 457);
INSERT INTO public.game_info VALUES (20, 883);
INSERT INTO public.game_info VALUES (20, 42);
INSERT INTO public.game_info VALUES (21, 861);
INSERT INTO public.game_info VALUES (21, 403);
INSERT INTO public.game_info VALUES (20, 516);
INSERT INTO public.game_info VALUES (20, 476);
INSERT INTO public.game_info VALUES (20, 222);
INSERT INTO public.game_info VALUES (11, 9);
INSERT INTO public.game_info VALUES (11, 13);
INSERT INTO public.game_info VALUES (22, 491);
INSERT INTO public.game_info VALUES (22, 580);
INSERT INTO public.game_info VALUES (23, 497);
INSERT INTO public.game_info VALUES (23, 73);
INSERT INTO public.game_info VALUES (22, 602);
INSERT INTO public.game_info VALUES (22, 149);
INSERT INTO public.game_info VALUES (22, 403);
INSERT INTO public.game_info VALUES (11, 9);
INSERT INTO public.game_info VALUES (24, 641);
INSERT INTO public.game_info VALUES (25, 265);
INSERT INTO public.game_info VALUES (25, 602);
INSERT INTO public.game_info VALUES (24, 445);
INSERT INTO public.game_info VALUES (24, 109);
INSERT INTO public.game_info VALUES (24, 672);
INSERT INTO public.game_info VALUES (11, 14);
INSERT INTO public.game_info VALUES (26, 272);
INSERT INTO public.game_info VALUES (27, 947);
INSERT INTO public.game_info VALUES (27, 735);
INSERT INTO public.game_info VALUES (26, 33);
INSERT INTO public.game_info VALUES (26, 38);
INSERT INTO public.game_info VALUES (26, 267);
INSERT INTO public.game_info VALUES (28, 9);
INSERT INTO public.game_info VALUES (29, 314);
INSERT INTO public.game_info VALUES (29, 405);
INSERT INTO public.game_info VALUES (30, 117);
INSERT INTO public.game_info VALUES (30, 302);
INSERT INTO public.game_info VALUES (29, 208);
INSERT INTO public.game_info VALUES (29, 15);
INSERT INTO public.game_info VALUES (29, 263);
INSERT INTO public.game_info VALUES (31, 104);
INSERT INTO public.game_info VALUES (31, 207);
INSERT INTO public.game_info VALUES (32, 77);
INSERT INTO public.game_info VALUES (32, 977);
INSERT INTO public.game_info VALUES (31, 264);
INSERT INTO public.game_info VALUES (31, 214);
INSERT INTO public.game_info VALUES (31, 302);
INSERT INTO public.game_info VALUES (33, 744);
INSERT INTO public.game_info VALUES (33, 126);
INSERT INTO public.game_info VALUES (34, 591);
INSERT INTO public.game_info VALUES (34, 647);
INSERT INTO public.game_info VALUES (33, 377);
INSERT INTO public.game_info VALUES (33, 856);
INSERT INTO public.game_info VALUES (33, 794);
INSERT INTO public.game_info VALUES (35, 372);
INSERT INTO public.game_info VALUES (35, 622);
INSERT INTO public.game_info VALUES (36, 244);
INSERT INTO public.game_info VALUES (36, 359);
INSERT INTO public.game_info VALUES (35, 46);
INSERT INTO public.game_info VALUES (35, 808);
INSERT INTO public.game_info VALUES (35, 455);
INSERT INTO public.game_info VALUES (37, 736);
INSERT INTO public.game_info VALUES (38, 589);
INSERT INTO public.game_info VALUES (38, 180);
INSERT INTO public.game_info VALUES (37, 534);
INSERT INTO public.game_info VALUES (37, 334);
INSERT INTO public.game_info VALUES (37, 22);
INSERT INTO public.game_info VALUES (39, 63);
INSERT INTO public.game_info VALUES (39, 300);
INSERT INTO public.game_info VALUES (40, 192);
INSERT INTO public.game_info VALUES (40, 157);
INSERT INTO public.game_info VALUES (39, 250);
INSERT INTO public.game_info VALUES (39, 24);
INSERT INTO public.game_info VALUES (39, 483);
INSERT INTO public.game_info VALUES (41, 525);
INSERT INTO public.game_info VALUES (41, 250);
INSERT INTO public.game_info VALUES (42, 166);
INSERT INTO public.game_info VALUES (42, 633);
INSERT INTO public.game_info VALUES (41, 248);
INSERT INTO public.game_info VALUES (41, 877);
INSERT INTO public.game_info VALUES (41, 363);
INSERT INTO public.game_info VALUES (43, 190);
INSERT INTO public.game_info VALUES (43, 782);
INSERT INTO public.game_info VALUES (44, 466);
INSERT INTO public.game_info VALUES (44, 213);
INSERT INTO public.game_info VALUES (43, 991);
INSERT INTO public.game_info VALUES (43, 104);
INSERT INTO public.game_info VALUES (43, 496);
INSERT INTO public.game_info VALUES (45, 337);
INSERT INTO public.game_info VALUES (45, 417);
INSERT INTO public.game_info VALUES (46, 576);
INSERT INTO public.game_info VALUES (46, 767);
INSERT INTO public.game_info VALUES (45, 154);
INSERT INTO public.game_info VALUES (45, 9);
INSERT INTO public.game_info VALUES (45, 472);
INSERT INTO public.game_info VALUES (47, 823);
INSERT INTO public.game_info VALUES (47, 108);
INSERT INTO public.game_info VALUES (48, 425);
INSERT INTO public.game_info VALUES (48, 847);
INSERT INTO public.game_info VALUES (47, 574);
INSERT INTO public.game_info VALUES (47, 348);
INSERT INTO public.game_info VALUES (47, 859);
INSERT INTO public.game_info VALUES (49, 246);
INSERT INTO public.game_info VALUES (50, 643);
INSERT INTO public.game_info VALUES (50, 196);
INSERT INTO public.game_info VALUES (49, 286);
INSERT INTO public.game_info VALUES (49, 139);
INSERT INTO public.game_info VALUES (49, 787);
INSERT INTO public.game_info VALUES (51, 184);
INSERT INTO public.game_info VALUES (51, 164);
INSERT INTO public.game_info VALUES (52, 349);
INSERT INTO public.game_info VALUES (52, 156);
INSERT INTO public.game_info VALUES (51, 149);
INSERT INTO public.game_info VALUES (51, 99);
INSERT INTO public.game_info VALUES (51, 898);
INSERT INTO public.game_info VALUES (53, 435);
INSERT INTO public.game_info VALUES (54, 98);
INSERT INTO public.game_info VALUES (54, 708);
INSERT INTO public.game_info VALUES (53, 855);
INSERT INTO public.game_info VALUES (53, 36);
INSERT INTO public.game_info VALUES (53, 907);
INSERT INTO public.game_info VALUES (55, 685);
INSERT INTO public.game_info VALUES (55, 84);
INSERT INTO public.game_info VALUES (56, 169);
INSERT INTO public.game_info VALUES (56, 935);
INSERT INTO public.game_info VALUES (55, 521);
INSERT INTO public.game_info VALUES (55, 495);
INSERT INTO public.game_info VALUES (55, 317);
INSERT INTO public.game_info VALUES (57, 87);
INSERT INTO public.game_info VALUES (57, 837);
INSERT INTO public.game_info VALUES (58, 901);
INSERT INTO public.game_info VALUES (58, 244);
INSERT INTO public.game_info VALUES (57, 119);
INSERT INTO public.game_info VALUES (57, 514);
INSERT INTO public.game_info VALUES (57, 44);
INSERT INTO public.game_info VALUES (59, 428);
INSERT INTO public.game_info VALUES (60, 43);
INSERT INTO public.game_info VALUES (60, 148);
INSERT INTO public.game_info VALUES (59, 800);
INSERT INTO public.game_info VALUES (59, 779);
INSERT INTO public.game_info VALUES (59, 174);
INSERT INTO public.game_info VALUES (61, 440);
INSERT INTO public.game_info VALUES (61, 396);
INSERT INTO public.game_info VALUES (62, 229);
INSERT INTO public.game_info VALUES (62, 305);
INSERT INTO public.game_info VALUES (61, 125);
INSERT INTO public.game_info VALUES (61, 567);
INSERT INTO public.game_info VALUES (61, 693);
INSERT INTO public.game_info VALUES (63, 26);
INSERT INTO public.game_info VALUES (63, 103);
INSERT INTO public.game_info VALUES (64, 42);
INSERT INTO public.game_info VALUES (64, 130);
INSERT INTO public.game_info VALUES (63, 608);
INSERT INTO public.game_info VALUES (63, 453);
INSERT INTO public.game_info VALUES (63, 783);
INSERT INTO public.game_info VALUES (65, 953);
INSERT INTO public.game_info VALUES (66, 521);
INSERT INTO public.game_info VALUES (66, 12);
INSERT INTO public.game_info VALUES (65, 667);
INSERT INTO public.game_info VALUES (65, 730);
INSERT INTO public.game_info VALUES (65, 348);
INSERT INTO public.game_info VALUES (67, 8);
INSERT INTO public.game_info VALUES (68, 562);
INSERT INTO public.game_info VALUES (68, 3);
INSERT INTO public.game_info VALUES (69, 936);
INSERT INTO public.game_info VALUES (69, 108);
INSERT INTO public.game_info VALUES (68, 865);
INSERT INTO public.game_info VALUES (68, 589);
INSERT INTO public.game_info VALUES (68, 46);
INSERT INTO public.game_info VALUES (70, 12);
INSERT INTO public.game_info VALUES (71, 217);
INSERT INTO public.game_info VALUES (72, 650);
INSERT INTO public.game_info VALUES (72, 604);
INSERT INTO public.game_info VALUES (71, 279);
INSERT INTO public.game_info VALUES (71, 248);
INSERT INTO public.game_info VALUES (71, 45);
INSERT INTO public.game_info VALUES (73, 986);
INSERT INTO public.game_info VALUES (74, 124);
INSERT INTO public.game_info VALUES (74, 308);
INSERT INTO public.game_info VALUES (73, 990);
INSERT INTO public.game_info VALUES (73, 454);
INSERT INTO public.game_info VALUES (73, 777);
INSERT INTO public.game_info VALUES (11, 9);
INSERT INTO public.game_info VALUES (75, 157);
INSERT INTO public.game_info VALUES (76, 883);
INSERT INTO public.game_info VALUES (76, 90);
INSERT INTO public.game_info VALUES (75, 847);
INSERT INTO public.game_info VALUES (75, 957);
INSERT INTO public.game_info VALUES (75, 298);
INSERT INTO public.game_info VALUES (77, 1);
INSERT INTO public.game_info VALUES (78, 1);
INSERT INTO public.game_info VALUES (78, 1);
INSERT INTO public.game_info VALUES (77, 1);
INSERT INTO public.game_info VALUES (77, 1);
INSERT INTO public.game_info VALUES (77, 1);
INSERT INTO public.game_info VALUES (11, 1);
INSERT INTO public.game_info VALUES (11, 10);
INSERT INTO public.game_info VALUES (79, 903);
INSERT INTO public.game_info VALUES (80, 719);
INSERT INTO public.game_info VALUES (79, 197);
INSERT INTO public.game_info VALUES (79, 73);
INSERT INTO public.game_info VALUES (79, 817);
INSERT INTO public.game_info VALUES (81, 12);
INSERT INTO public.game_info VALUES (82, 320);
INSERT INTO public.game_info VALUES (82, 316);
INSERT INTO public.game_info VALUES (83, 28);
INSERT INTO public.game_info VALUES (83, 397);
INSERT INTO public.game_info VALUES (82, 264);
INSERT INTO public.game_info VALUES (82, 518);
INSERT INTO public.game_info VALUES (82, 278);
INSERT INTO public.game_info VALUES (11, 20);
INSERT INTO public.game_info VALUES (67, 10);
INSERT INTO public.game_info VALUES (84, 211);
INSERT INTO public.game_info VALUES (84, 56);
INSERT INTO public.game_info VALUES (85, 207);
INSERT INTO public.game_info VALUES (85, 425);
INSERT INTO public.game_info VALUES (84, 544);
INSERT INTO public.game_info VALUES (84, 262);
INSERT INTO public.game_info VALUES (84, 368);
INSERT INTO public.game_info VALUES (86, 49);
INSERT INTO public.game_info VALUES (86, 948);
INSERT INTO public.game_info VALUES (87, 890);
INSERT INTO public.game_info VALUES (86, 206);
INSERT INTO public.game_info VALUES (86, 873);
INSERT INTO public.game_info VALUES (86, 302);
INSERT INTO public.game_info VALUES (88, 844);
INSERT INTO public.game_info VALUES (89, 64);
INSERT INTO public.game_info VALUES (89, 557);
INSERT INTO public.game_info VALUES (88, 557);
INSERT INTO public.game_info VALUES (88, 872);
INSERT INTO public.game_info VALUES (88, 327);
INSERT INTO public.game_info VALUES (90, 724);
INSERT INTO public.game_info VALUES (91, 819);
INSERT INTO public.game_info VALUES (91, 295);
INSERT INTO public.game_info VALUES (90, 32);
INSERT INTO public.game_info VALUES (90, 922);
INSERT INTO public.game_info VALUES (90, 823);
INSERT INTO public.game_info VALUES (92, 142);
INSERT INTO public.game_info VALUES (92, 16);
INSERT INTO public.game_info VALUES (93, 27);
INSERT INTO public.game_info VALUES (93, 311);
INSERT INTO public.game_info VALUES (92, 966);
INSERT INTO public.game_info VALUES (92, 33);
INSERT INTO public.game_info VALUES (92, 63);
INSERT INTO public.game_info VALUES (94, 394);
INSERT INTO public.game_info VALUES (95, 339);
INSERT INTO public.game_info VALUES (95, 939);
INSERT INTO public.game_info VALUES (95, 242);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (11, 'Pame');
INSERT INTO public.players VALUES (12, 'user_1682615619387');
INSERT INTO public.players VALUES (13, 'user_1682615619386');
INSERT INTO public.players VALUES (14, 'user_1682615742380');
INSERT INTO public.players VALUES (15, 'user_1682615742379');
INSERT INTO public.players VALUES (16, 'user_1682616040252');
INSERT INTO public.players VALUES (17, 'user_1682616040251');
INSERT INTO public.players VALUES (18, 'user_1682616198783');
INSERT INTO public.players VALUES (19, 'user_1682616198782');
INSERT INTO public.players VALUES (20, 'user_1682616324079');
INSERT INTO public.players VALUES (21, 'user_1682616324078');
INSERT INTO public.players VALUES (22, 'user_1682616509753');
INSERT INTO public.players VALUES (23, 'user_1682616509752');
INSERT INTO public.players VALUES (24, 'user_1682616659071');
INSERT INTO public.players VALUES (25, 'user_1682616659070');
INSERT INTO public.players VALUES (26, 'user_1682616846731');
INSERT INTO public.players VALUES (27, 'user_1682616846730');
INSERT INTO public.players VALUES (28, 'Pa,e');
INSERT INTO public.players VALUES (29, 'user_1682617002915');
INSERT INTO public.players VALUES (30, 'user_1682617002914');
INSERT INTO public.players VALUES (31, 'user_1682617034166');
INSERT INTO public.players VALUES (32, 'user_1682617034165');
INSERT INTO public.players VALUES (33, 'user_1682617049468');
INSERT INTO public.players VALUES (34, 'user_1682617049467');
INSERT INTO public.players VALUES (35, 'user_1682617063902');
INSERT INTO public.players VALUES (36, 'user_1682617063901');
INSERT INTO public.players VALUES (37, 'user_1682617067927');
INSERT INTO public.players VALUES (38, 'user_1682617067926');
INSERT INTO public.players VALUES (39, 'user_1682617131536');
INSERT INTO public.players VALUES (40, 'user_1682617131535');
INSERT INTO public.players VALUES (41, 'user_1682617184875');
INSERT INTO public.players VALUES (42, 'user_1682617184874');
INSERT INTO public.players VALUES (43, 'user_1682617265595');
INSERT INTO public.players VALUES (44, 'user_1682617265594');
INSERT INTO public.players VALUES (45, 'user_1682617282633');
INSERT INTO public.players VALUES (46, 'user_1682617282632');
INSERT INTO public.players VALUES (47, 'user_1682617318286');
INSERT INTO public.players VALUES (48, 'user_1682617318285');
INSERT INTO public.players VALUES (49, 'user_1682617350507');
INSERT INTO public.players VALUES (50, 'user_1682617350506');
INSERT INTO public.players VALUES (51, 'user_1682617366763');
INSERT INTO public.players VALUES (52, 'user_1682617366762');
INSERT INTO public.players VALUES (53, 'user_1682617533588');
INSERT INTO public.players VALUES (54, 'user_1682617533587');
INSERT INTO public.players VALUES (55, 'user_1682617549218');
INSERT INTO public.players VALUES (56, 'user_1682617549217');
INSERT INTO public.players VALUES (57, 'user_1682617556101');
INSERT INTO public.players VALUES (58, 'user_1682617556100');
INSERT INTO public.players VALUES (59, 'user_1682617561587');
INSERT INTO public.players VALUES (60, 'user_1682617561586');
INSERT INTO public.players VALUES (61, 'user_1682617829195');
INSERT INTO public.players VALUES (62, 'user_1682617829194');
INSERT INTO public.players VALUES (63, 'user_1682617866425');
INSERT INTO public.players VALUES (64, 'user_1682617866424');
INSERT INTO public.players VALUES (65, 'user_1682617920714');
INSERT INTO public.players VALUES (66, 'user_1682617920713');
INSERT INTO public.players VALUES (67, 'ADSDF');
INSERT INTO public.players VALUES (68, 'user_1682618120103');
INSERT INTO public.players VALUES (69, 'user_1682618120102');
INSERT INTO public.players VALUES (70, 'Paul');
INSERT INTO public.players VALUES (71, 'user_1682618198378');
INSERT INTO public.players VALUES (72, 'user_1682618198377');
INSERT INTO public.players VALUES (73, 'user_1682618236166');
INSERT INTO public.players VALUES (74, 'user_1682618236165');
INSERT INTO public.players VALUES (75, 'user_1682618324393');
INSERT INTO public.players VALUES (76, 'user_1682618324392');
INSERT INTO public.players VALUES (77, 'user_1682618573183');
INSERT INTO public.players VALUES (78, 'user_1682618573182');
INSERT INTO public.players VALUES (79, 'user_1682618835294');
INSERT INTO public.players VALUES (80, 'user_1682618835293');
INSERT INTO public.players VALUES (81, 'gvkfd');
INSERT INTO public.players VALUES (82, 'user_1682618978897');
INSERT INTO public.players VALUES (83, 'user_1682618978896');
INSERT INTO public.players VALUES (84, 'user_1682619186783');
INSERT INTO public.players VALUES (85, 'user_1682619186782');
INSERT INTO public.players VALUES (86, 'user_1682619203221');
INSERT INTO public.players VALUES (87, 'user_1682619203220');
INSERT INTO public.players VALUES (88, 'user_1682619240664');
INSERT INTO public.players VALUES (89, 'user_1682619240663');
INSERT INTO public.players VALUES (90, 'user_1682619386878');
INSERT INTO public.players VALUES (91, 'user_1682619386877');
INSERT INTO public.players VALUES (92, 'user_1682619500120');
INSERT INTO public.players VALUES (93, 'user_1682619500119');
INSERT INTO public.players VALUES (94, 'user_1682619552716');
INSERT INTO public.players VALUES (95, 'user_1682619552717');


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 95, true);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: game_info game_info_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info
    ADD CONSTRAINT game_info_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--


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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    constellation text,
    size integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    diameter integer NOT NULL,
    mass integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    mass numeric NOT NULL,
    star_id integer NOT NULL,
    hasrings boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    description text,
    has_radiation boolean,
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    distance integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'The Biggest', 'Andromeda', 300);
INSERT INTO public.galaxy VALUES (2, 'Antenna Galaxie', 'none', 'Corvus', 100);
INSERT INTO public.galaxy VALUES (3, 'Condor Galaxy', 'Largest know Spirit Galaxy', 'Pavo', 100);
INSERT INTO public.galaxy VALUES (4, 'Cosmos Redshift 7', 'IC 4970', 'Sextans', 50);
INSERT INTO public.galaxy VALUES (5, 'Firewoork Galaxy', 'none', 'Cyndel', 500);
INSERT INTO public.galaxy VALUES (6, 'Malin 1', 'none', 'Coma berences', 503);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Blue moon', 1, 2500, 3000);
INSERT INTO public.moon VALUES (2, 'Red  moon', 2, 25300, 3000);
INSERT INTO public.moon VALUES (3, 'Green  moon', 2, 1255, 300);
INSERT INTO public.moon VALUES (4, 'Frank Sinatra  moon', 5, 1255, 300);
INSERT INTO public.moon VALUES (5, 'Alice in Chains  moon', 6, 1255, 300);
INSERT INTO public.moon VALUES (6, 'Metallica  moon', 7, 52031, 231213);
INSERT INTO public.moon VALUES (7, 'Red Jaguar', 10, 1000, 20);
INSERT INTO public.moon VALUES (8, 'San Francisco 49ers', 3, 49000, 49);
INSERT INTO public.moon VALUES (9, 'Dallas Cowboys moon', 10, 10000, 1000);
INSERT INTO public.moon VALUES (10, 'Skrillex', 5, 324, 3400);
INSERT INTO public.moon VALUES (11, 'Martin Garrix', 3, 100, 500);
INSERT INTO public.moon VALUES (12, 'The Office', 2, 100, 500);
INSERT INTO public.moon VALUES (13, 'Sopranos ', 2, 33, 500);
INSERT INTO public.moon VALUES (14, 'Lana Del Rey', 4, 213, 533100);
INSERT INTO public.moon VALUES (15, 'Lorde', 2, 3213, 12);
INSERT INTO public.moon VALUES (16, 'Hitman', 3, 223213, 12);
INSERT INTO public.moon VALUES (17, 'The Rolling Stones', 11, 2223213, 12);
INSERT INTO public.moon VALUES (18, 'Billie Holiday', 12, 5555, 231212);
INSERT INTO public.moon VALUES (19, 'Nina Simone', 2, 2563, 533100);
INSERT INTO public.moon VALUES (20, 'Cabouse', 9, 322312563, 533100);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'PCL-99-N2', 300, 1, false);
INSERT INTO public.planet VALUES (2, 'IDK-2000', 350, 1, false);
INSERT INTO public.planet VALUES (3, 'Something', 3550, 2, true);
INSERT INTO public.planet VALUES (4, 'Planet 1', 21300, 2, true);
INSERT INTO public.planet VALUES (5, 'JCF AS', 2310, 3, true);
INSERT INTO public.planet VALUES (6, 'IFC AS 2 ', 231110, 5, false);
INSERT INTO public.planet VALUES (7, 'Earth version', 3000, 2, false);
INSERT INTO public.planet VALUES (8, 'IDK ', 2100, 1, true);
INSERT INTO public.planet VALUES (9, 'IDK 2 ', 1200, 6, true);
INSERT INTO public.planet VALUES (10, 'IDK 3', 6300, 4, true);
INSERT INTO public.planet VALUES (11, 'MCF STAR PLANET', 2, 5, true);
INSERT INTO public.planet VALUES (12, 'METAL PLANET', 2000000, 3, true);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES ('a giant planet composed by mainly of gas', true, 1, 'Gas Giant');
INSERT INTO public.planet_types VALUES ('Neptune Like', false, 2, 'Neptune Like');
INSERT INTO public.planet_types VALUES ('A rockyside world outside of solar syste', false, 3, 'Terrestrial');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 10, 30, 1);
INSERT INTO public.star VALUES (2, 'Mirach', 15, 20000, 1);
INSERT INTO public.star VALUES (3, 'Almach', 32, 200, 1);
INSERT INTO public.star VALUES (4, 'Adhil', 50, 600, 1);
INSERT INTO public.star VALUES (5, 'Tidal Warf', 50, 600, 3);
INSERT INTO public.star VALUES (6, 'Eta Cehpei', 3350, 6621, 5);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


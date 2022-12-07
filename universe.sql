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
    number_of_planets integer,
    number_of_stars integer,
    distance_from_earth_in_light_years numeric,
    has_life boolean DEFAULT false,
    is_spherical boolean DEFAULT false,
    description text NOT NULL,
    number_of_moons integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    discovery_year integer,
    size_of_moon integer,
    orbital_distance_km numeric,
    has_life boolean DEFAULT false,
    is_spherical boolean DEFAULT false,
    description text NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_billions_of_years integer,
    size_of_planet_in_km integer,
    orbital_distance_from_sun_in_km numeric,
    has_life boolean DEFAULT false NOT NULL,
    is_spherical boolean DEFAULT false NOT NULL,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    size_of_star integer,
    has_life boolean DEFAULT false,
    is_spherical boolean DEFAULT false,
    description text NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: star_trek_movies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_trek_movies (
    star_trek_movies_id integer NOT NULL,
    name character varying(30) NOT NULL,
    release_date integer NOT NULL,
    star_rating_out_of_ten integer,
    popularity numeric,
    synopsis text NOT NULL
);


ALTER TABLE public.star_trek_movies OWNER TO freecodecamp;

--
-- Name: star_trek_movies_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_trek_movies_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_trek_movies_movie_id_seq OWNER TO freecodecamp;

--
-- Name: star_trek_movies_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_trek_movies_movie_id_seq OWNED BY public.star_trek_movies.star_trek_movies_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_trek_movies star_trek_movies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_trek_movies ALTER COLUMN star_trek_movies_id SET DEFAULT nextval('public.star_trek_movies_movie_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 14, 100, 27, false, false, 'huge collection of stars, dust & gas', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda galaxy', 10, 6, 2537, false, false, 'spiral galaxy', NULL);
INSERT INTO public.galaxy VALUES (3, 'black eye galaxy', 13, 100, 24, false, false, 'spiral galaxy discovered by Edward Pigott', NULL);
INSERT INTO public.galaxy VALUES (4, 'Blades galaxy', 13, 250, 12, false, false, 'Cartwheel galaxy', NULL);
INSERT INTO public.galaxy VALUES (5, 'Sunflower galaxy', 13, 400, 27, false, false, 'Graceful winding arms like a grand staircase', NULL);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel galaxy', 20, 1, 21, false, false, 'It is unique because it had no black hole in center', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1609, 1737, 407000, false, false, 'The typical shape is a oblate spherical');
INSERT INTO public.moon VALUES (2, 'Ganymede', 1610, 2634, 628, false, true, 'It has three layers of ice, rock and iron');
INSERT INTO public.moon VALUES (3, 'Europa', 1610, 1561, 670900, false, true, 'Because of Jupiters gravitational force Europa is spherical');
INSERT INTO public.moon VALUES (4, 'Titan', 1655, 2575, 1221870, false, false, 'shape is a hydrostatic ellipsoid');
INSERT INTO public.moon VALUES (5, 'lo', 1610, 1821, 262000, false, false, 'lo is an ellipsoid in shape');
INSERT INTO public.moon VALUES (6, 'Callisto', 1610, 2410, 1883000, false, false, 'Third largest moon in the solar system');
INSERT INTO public.moon VALUES (7, 'Encelladus', 1789, 2521, 252, false, true, 'Smallest of Saturns moons');
INSERT INTO public.moon VALUES (8, 'Mimas', 1789, 198000, 185520, false, false, 'it is not quite big enough to hold a round shape it is ovoid');
INSERT INTO public.moon VALUES (9, 'Rhea', 1672, 7648, 1528, false, false, 'Rhea is ovular in shape');
INSERT INTO public.moon VALUES (10, 'Lapetus', 1671, 734, 3, false, false, 'Looks like a walnut');
INSERT INTO public.moon VALUES (11, 'Hyperion', 1848, 8, 129000, false, false, 'it has an irregular shape');
INSERT INTO public.moon VALUES (12, 'Daphnis', 2005, 4, 85000, false, false, 'Daphnis beleived to have invented bucolic poetry in greek mythology');
INSERT INTO public.moon VALUES (13, 'Himalia', 1904, 170, 7, false, false, 'NASA spaceship Cassini captured images of Hamalia');
INSERT INTO public.moon VALUES (14, 'Tethys', 1684, 531, 183000, false, false, 'it is an irregular shape');
INSERT INTO public.moon VALUES (15, 'Thebe', 1979, 49, 222000, false, false, 'It is on the outer edge of the Thebe gossamer and is formed by dust ejected from the surface');
INSERT INTO public.moon VALUES (16, 'Carpo', 2003, 5, 170000, false, true, 'it is a classical spherical shape');
INSERT INTO public.moon VALUES (17, 'Andrastea', 1979, 8, 129000, false, false, 'it has an irregular shape');
INSERT INTO public.moon VALUES (18, 'Kallichare', 2003, 2, 231122000, false, false, 'It has an elliptoid or oval shape');
INSERT INTO public.moon VALUES (19, 'Dione', 1684, 1123, 377400, false, false, 'it is a circular type prograde orbit');
INSERT INTO public.moon VALUES (20, 'Jurnsaxa', 2006, 3, 19000000, false, false, 'It is more elongated than circular');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mecury', 4503, 2439, 70000000, false, true, 'Mecury is one the roundest almost perfect round planets');
INSERT INTO public.planet VALUES (2, 'Venus', 4503, 6052, 67000000, false, true, 'It is the third biggest object after the sun and moon');
INSERT INTO public.planet VALUES (3, 'Earth', 50, 6371, 93000000, true, false, 'the earth is an irregular shaped ellipsoid');
INSERT INTO public.planet VALUES (4, 'Mars', 4603, 3389, 228000000, false, false, 'Mars is not a sphere');
INSERT INTO public.planet VALUES (5, 'The Aestroid Belt', 4, 150, 478000000, false, false, 'it is a torus shaped region in the solar system');
INSERT INTO public.planet VALUES (6, 'Jupiter', 4603, 69911, 484000000, false, false, 'Jupiters shape is oblate sephroid');
INSERT INTO public.planet VALUES (7, 'Saturn', 4503, 58232, 886000000, false, false, 'Saturn is not a spherical planet');
INSERT INTO public.planet VALUES (8, 'Uranus', 4503, 25362, 2000000000, false, false, 'Uranus is oblate spheroid in shape');
INSERT INTO public.planet VALUES (9, 'Neptune', 4503, 24622, 3000000000, false, false, 'Neptune is the fourth largest planet in the solar system');
INSERT INTO public.planet VALUES (10, 'Pluto', 5, 1188, 4000000000, false, false, 'it is massive enough to have its own gravity');
INSERT INTO public.planet VALUES (11, 'Pluto nine', 5, 2376, 6000000000, false, false, 'Planet nine is also known as Planet X');
INSERT INTO public.planet VALUES (12, 'Eris', 4503, 1163, 10125000000, false, false, 'Eris is a dwarf plaent in the trans Neptune region');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'UY scuti', 25, 23765, false, false, 'it is a spectral type');
INSERT INTO public.star VALUES (2, 'VY Canis Moijoris', 8206, 98789, false, false, 'Red Hypergiant');
INSERT INTO public.star VALUES (3, 'RW Cephei', 19, 1068, false, false, 'Hypergiant variable star');
INSERT INTO public.star VALUES (4, 'KY Cygrni', 142, 10461, false, false, 'Luminoud red supergiant');
INSERT INTO public.star VALUES (5, 'Mu Cephei', 10, 877, false, false, 'Red Supergiant');
INSERT INTO public.star VALUES (6, 'VV Cephei A', 25, 1026, false, false, 'M2 supergiant');


--
-- Data for Name: star_trek_movies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_trek_movies VALUES (1, 'Star Trek Motion Picture', 1979, 6, 3102, 'Admiral Kirkk is commissioned to intercept an alien spacecraft heading for earth on the USS Enterprise');
INSERT INTO public.star_trek_movies VALUES (2, 'Star Trek 2 The Wrath of Kahn', 1982, 7, 3049, 'Admiral kirk must get the genesis device from his old nemesis Khan');
INSERT INTO public.star_trek_movies VALUES (3, 'Star Trek 3 Search for spock', 1984, 6, 4082, 'Kirk and crew steal the dicommissioned USS Enterprise to return to planet Genesis for Spocks body');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: star_trek_movies_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_trek_movies_movie_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star_trek_movies star_trek_movies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_trek_movies
    ADD CONSTRAINT star_trek_movies_pkey PRIMARY KEY (star_trek_movies_id);


--
-- Name: star_trek_movies star_trek_movies_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_trek_movies
    ADD CONSTRAINT star_trek_movies_unique UNIQUE (star_trek_movies_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: galaxy galaxy_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_star_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_fkey1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star_trek_movies star_trek_movies_star_trek_movies_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_trek_movies
    ADD CONSTRAINT star_trek_movies_star_trek_movies_id_fkey FOREIGN KEY (star_trek_movies_id) REFERENCES public.star_trek_movies(star_trek_movies_id);


--
-- PostgreSQL database dump complete
--



/* IMPORTANT NOTE: I have tried to solve the 5 sql tasks with the database schema
resulted from the design but it was not possible. This is because the conceptual design is poor.
Due to restricted time, I have decided to not redesign the database and move on with the schema that are in this file.
It contains a lot of data redundency but it allows me to be able to try the tasks. */

DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS us_state_vaccinations;
DROP TABLE IF EXISTS vaccinations;
DROP TABLE IF EXISTS vaccinations_by_age_group;
DROP TABLE IF EXISTS vaccinations_by_manufacturer;
DROP TABLE IF EXISTS all_countries;


CREATE TABLE location (
location VARCHAR(100),
iso_code VARCHAR(3),
vaccines VARCHAR(100),
last_observation_date VARCHAR(15),
source_name VARCHAR(500),
source_website VARCHAR(500)
);

CREATE TABLE us_state_vaccinations (
date VARCHAR(15),
location VARCHAR(100),
total_distributed INTEGER,
people_vaccinated INTEGER,
people_fully_vaccinated_per_hundred REAL,
total_vaccinations_per_hundred REAL,
people_fully_vaccinated INTEGER,
people_vaccinated_per_hundred REAL,
distributed_per_hundred REAL,
daily_vaccinations INTEGER,
daily_vaccinations_per_million INTEGER,
share_doses_used REAL,
total_boosters INTEGER,
total_boosters_per_hundred REAL);

CREATE TABLE vaccinations (
location VARCHAR(100),
iso_code VARCHAR(3),
date VARCHAR(15),
people_vaccinated INTEGER,
people_fully_vaccinated INTEGER,
total_boosters INTEGER,
daily_vaccinations INTEGER,
total_vaccinations_per_hundred REAL,
people_vaccinated_per_hundred REAL,
people_fully_vaccinated_per_hundred REAL,
total_boosters_per_hundred REAL,
daily_vaccinations_per_million INTEGER,
daily_people_vaccinated INTEGER,
daily_people_vaccinated_per_hundred REAL);

CREATE TABLE vaccinations_by_age_group (
location VARCHAR(100),
date VARCHAR(15),
age_group VARCHAR(15),
people_vaccinated_per_hundred REAL,
people_fully_vaccinated_per_hundred REAL,
people_with_booster_per_hundred REAL);

CREATE TABLE vaccinations_by_manufacturer (
location VARCHAR(100),
date VARCHAR(15),
vaccine VARCHAR(100));

CREATE TABLE all_countries (
location VARCHAR(100),
date VARCHAR(15),
vaccine VARCHAR(100),
source_website VARCHAR(500),
people_vaccinated INTEGER,
people_fully_vaccinated INTEGER,
total_boosters INTEGER);
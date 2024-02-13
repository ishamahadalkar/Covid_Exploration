/*
Covid 19 Data Exploration 

Skills used: Joins, CTE's, Temp Tables, Windows Functions, Aggregate Functions, Creating Views

*/

-- We have data about different countries from 2020-02-04 onwards.
-- Making sure we have country-wise data
SELECT *
FROM COVIDExploration.coviddeaths
WHERE continent IS NOT NULL
ORDER BY location, date;

-- Lets select data that we are going to be looking at.
SELECT location, date, total_cases, new_cases, total_deaths, population
FROM COVIDExploration.coviddeaths
WHERE continent IS NOT NULL
ORDER BY location, date;

-- Explored the relationship between total cases and total deaths for United States, determining the percentage of people who died.
-- Examined the likelihood of mortality upon contracting COVID-19.
SELECT location, date, total_cases, total_deaths, ROUND((total_deaths / total_cases) * 100, 2) AS death_percentage
FROM COVIDExploration.coviddeaths
WHERE location = "United States" AND continent IS NOT NULL
ORDER BY location, date;

-- Explored the relationship between total cases and the population for United States, determining the percentage of people who contracted COVID.
-- Examined what percentage of population has contracted COVID.
SELECT location, date, total_cases, population, ROUND((total_cases / population) * 100, 2) AS infection_percentage
FROM COVIDExploration.coviddeaths
WHERE location = "United States" AND continent IS NOT NULL
ORDER BY location, date;

-- Analyzed countries with the highest infection rates relative to their population size.
SELECT location, population, MAX(total_cases) AS highest_infection_count, ROUND(MAX(total_cases / population) * 100, 2) AS infection_percentage
FROM COVIDExploration.coviddeaths
WHERE continent IS NOT NULL
GROUP BY location, population
ORDER BY infection_percentage DESC;

-- Analyzed countries with the highest death rates relative to their population size.
SELECT location,  MAX(total_deaths) AS total_death_count
FROM COVIDExploration.coviddeaths
WHERE continent IS NOT NULL
GROUP BY location
ORDER BY total_death_count DESC;

-- Analyzed continents with the highest death rates relative to their population size.
SELECT continent,  MAX(total_deaths) AS total_death_count
FROM COVIDExploration.coviddeaths
WHERE continent IS NULL
GROUP BY continent
ORDER BY total_death_count DESC;

-- Now, let's look at the numbers on a global scale
SELECT SUM(new_cases) AS total_cases_calc, SUM(new_deaths) AS total_deaths_calc, ROUND((SUM(new_deaths) / SUM(new_cases)) * 100, 2) AS death_percentage
FROM COVIDExploration.coviddeaths
WHERE continent IS NOT NULL -- making sure we are only looking at the continents 
ORDER BY 1, 2;

-- The overall global death rate is 2.11%

-- Now, let's examine the vaccination data by starting with a join between the two tables.

/* Analyzing the total population versus vaccinations to determine the proportion of the global population that has been vaccinated.
Using CTE's to store the population and vaccination data
*/

WITH pops_vac (continent, location, date, population, new_vaccinations, running_sum_vaccinations)
	AS (
		SELECT D.continent, D.location, D.date, D.population, V.new_vaccinations,
			SUM(V.new_vaccinations) OVER (PARTITION BY D.location ORDER BY D.location, D.date) AS running_sum_vaccinations -- allows us to do a running sum
		FROM COVIDExploration.coviddeaths AS D
		JOIN COVIDExploration.covidvaccinations AS V
			ON D.location = V.location AND D.date = V.date
		WHERE D.continent IS NOT NULL
	)

SELECT *, (running_sum_vaccinations / population) * 100 AS vaccination_percentage
FROM pops_vac;

-- We can do the same calculation to find the vaccination percentage using temp tables

DROP TABLE IF EXISTS percent_population_vaccinated;
CREATE TEMPORARY TABLE percent_population_vaccinated (
    continent NVARCHAR(255),
    location NVARCHAR(255),
    date DATETIME,
    population DECIMAL(18, 2),
    new_vaccinations DECIMAL(18, 2),
    running_sum_vaccinations DECIMAL(18, 2)
);

INSERT INTO percent_population_vaccinated (
	SELECT D.continent, D.location, D.date, D.population, V.new_vaccinations,
				SUM(V.new_vaccinations) OVER (PARTITION BY D.location ORDER BY D.location, D.date) AS running_sum_vaccinations -- allows us to do a running sum
			FROM COVIDExploration.coviddeaths AS D
			JOIN COVIDExploration.covidvaccinations AS V
				ON D.location = V.location AND D.date = V.date
			WHERE D.continent IS NOT NULL
);

SELECT *, (running_sum_vaccinations / population) * 100 AS vaccination_percentage
FROM percent_population_vaccinated;

-- Now, let's create a view with this data

CREATE VIEW percent_population_vaccinated AS (
	SELECT D.continent, D.location, D.date, D.population, V.new_vaccinations,
				SUM(V.new_vaccinations) OVER (PARTITION BY D.location ORDER BY D.location, D.date) AS running_sum_vaccinations -- allows us to do a running sum
			FROM COVIDExploration.coviddeaths AS D
			JOIN COVIDExploration.covidvaccinations AS V
				ON D.location = V.location AND D.date = V.date
			WHERE D.continent IS NOT NULL
);










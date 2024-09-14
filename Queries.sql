/* TASK 1:*/
SELECT
    VC.location AS "Country Name (CN)",VC.date AS "Administered Vaccine on OD (VOD)",VC.daily_vaccinations AS "Total Administered Vaccines"
FROM
    vaccinations VC
WHERE
    VC.location LIKE "%Australia%";
    
/* TASK 2:*/
SELECT
    VC.location AS "Country", MAX(VC.people_vaccinated + VC.people_fully_vaccinated) AS "Cumulative Doses"
FROM
   vaccinations VC
GROUP BY
    VC.location;

/* TASK 3:*/

/* TASK 4:*/
SELECT
    L.source_website AS "Source Name (URL)",VC.people_vaccinated + VC.people_fully_vaccinated AS "Total Administered Vaccines"
FROM
    vaccinations VC
INNER JOIN location L USING(location)
GROUP BY
L.source_website
ORDER BY
L.source_name;

/* TASK 5: */
Select date,
     Min(Case location When 'Australia' Then people_fully_vaccinated End) Australia,
     Min(Case location When 'United States' Then people_fully_vaccinated End) US,
     Min(Case location When 'Germany' Then people_fully_vaccinated End) Germany,
     Min(Case location When 'Italy' Then people_fully_vaccinated End) Italy
From
    all_countries ac
WHERE date LIKE '%2022%'
Group BY
date;
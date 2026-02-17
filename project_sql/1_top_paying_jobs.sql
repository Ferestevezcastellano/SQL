/*
Pregunta: ¿Cuáles son los trabajos de analista de datos mejor pagados?
- Identificar los 10 puestos de Analista de Datos mejor pagados que estén disponibles de forma remota.
- Enfocarse en las ofertas de empleo con salarios especificados (eliminar nulos).
- ¿Por qué? Destacar las oportunidades mejor remuneradas para Analistas de Datos, ofreciendo información sobre los empleadores.
*/


SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10
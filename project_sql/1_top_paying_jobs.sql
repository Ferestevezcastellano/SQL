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

/*
El mercado remoto mejor pago está concentrado en empresas tech y data-driven.

Los salarios más altos requieren seniority o liderazgo.

Existe un pequeño segmento extremadamente exclusivo.

El rango “realista” para un Data Analyst senior remoto top está alrededor de USD 190k–250k.

[
  {
    "job_id": 226942,
    "job_title": "Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "650000.0",
    "job_posted_date": "2023-02-20 15:13:33",
    "company_name": "Mantys"
  },
  {
    "job_id": 547382,
    "job_title": "Director of Analytics",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "336500.0",
    "job_posted_date": "2023-08-23 12:04:42",
    "company_name": "Meta"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "255829.5",
    "job_posted_date": "2023-06-18 16:03:12",
    "company_name": "AT&T"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "232423.0",
    "job_posted_date": "2023-12-05 20:00:40",
    "company_name": "Pinterest Job Advertisements"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "217000.0",
    "job_posted_date": "2023-01-17 00:17:23",
    "company_name": "Uclahealthcareers"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "205000.0",
    "job_posted_date": "2023-08-09 11:00:01",
    "company_name": "SmartAsset"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189309.0",
    "job_posted_date": "2023-12-07 15:00:13",
    "company_name": "Inclusively"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "189000.0",
    "job_posted_date": "2023-01-05 00:00:25",
    "company_name": "Motional"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "186000.0",
    "job_posted_date": "2023-07-11 16:00:05",
    "company_name": "SmartAsset"
  },
  {
    "job_id": 387860,
    "job_title": "ERM Data Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "184000.0",
    "job_posted_date": "2023-06-09 08:01:04",
    "company_name": "Get It Recruit - Information Technology"
  }
]


*/
/*
Pregunta: ¿Cuáles son las habilidades con mayor demanda para los analistas de datos?
- Unir (Join) las publicaciones de trabajo con la tabla de unión de forma similar a la consulta 2.
- Identificar las 5 habilidades con mayor demanda para un analista de datos.
- Enfocarse en todas las publicaciones de trabajo.
- ¿Por qué? Recupera las 5 habilidades con mayor demanda en el mercado laboral, 
  ofreciendo información sobre las habilidades más valiosas para quienes buscan empleo.
*/


SELECT 
  skills,
  COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
  job_title_short = 'Data Analyst' AND
  job_work_from_home = TRUE
GROUP BY 
  skills
ORDER BY
  demand_count DESC
LIMIT 5

/*
El mercado no demanda una sola habilidad estrella.

Demanda una combinación estructurada:

SQL + (Excel o Python) + una herramienta de BI

No alcanza con saber solo una.

📌 Insight para alguien que busca empleo

Si una persona quiere maximizar empleabilidad como Data Analyst:

SQL es obligatorio

Debe complementar con Python

Debe manejar al menos una herramienta de visualización

Excel sigue siendo relevante incluso en 2025

[
  {
    "skills": "sql",
    "demand_count": "7291"
  },
  {
    "skills": "excel",
    "demand_count": "4611"
  },
  {
    "skills": "python",
    "demand_count": "4330"
  },
  {
    "skills": "tableau",
    "demand_count": "3745"
  },
  {
    "skills": "power bi",
    "demand_count": "2609"
  }
]


*/
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


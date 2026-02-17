/*
Pregunta: ¿Cuáles son las mejores habilidades basadas en el salario?
- Analizar el salario promedio asociado con cada habilidad para puestos de Analista de Datos.
- Se enfoca en roles con salarios especificados, independientemente de la ubicación.
- ¿Por qué? Revela cómo diferentes habilidades impactan los niveles salariales de los Analistas de Datos y 
  ayuda a identificar las habilidades financieramente más gratificantes para adquirir o mejorar.
*/


SELECT 
  skills,
  ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
  job_title_short = 'Data Analyst' AND
  salary_year_avg IS NOT NULL
GROUP BY 
  skills
ORDER BY
  avg_salary DESC
LIMIT 25

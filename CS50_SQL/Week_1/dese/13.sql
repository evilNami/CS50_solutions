SELECT
  s.name AS school_name,
  gr.graduated
FROM
  schools s
JOIN
  graduation_rates gr ON s.id = gr.school_id
WHERE
  s.type = 'Public School' AND gr.graduated > 90;

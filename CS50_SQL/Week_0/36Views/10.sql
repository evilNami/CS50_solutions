SELECT english_title AS "Title",
       entropy AS "Entropy Score"
FROM views
WHERE artist = 'Hokusai'
ORDER BY entropy DESC
LIMIT 5;


WITH RECURSIVE
cnt(a) AS (
    SELECT 1
    UNION ALL
    SELECT a + 1 FROM cnt
    LIMIT 1000
)
SELECT a, b, c, a * b * c as Answer
FROM cnt
LEFT JOIN (SELECT cnt.a AS b FROM cnt)
LEFT JOIN (SELECT cnt.a AS c FROM cnt)
WHERE
	a < b
	AND
	b < c
	AND
	a + b + c = 1000
	AND
	a * a + b * b = c * c
LIMIT 1;


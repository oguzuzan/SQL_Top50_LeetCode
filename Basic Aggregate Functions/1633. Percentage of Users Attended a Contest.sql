SELECT r.contest_id AS contest_id, 
ROUND(((COUNT(r.contest_id) / (SELECT COUNT(DISTINCT user_id) FROM Users)  * 100)), 2) AS percentage
FROM Users AS u
JOIN Register AS r
ON u.user_id = r.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC, contest_id ASC
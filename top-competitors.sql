SELECT 
    s.hacker_id, 
    h.name 
FROM Submissions s
LEFT JOIN Hackers h 
ON h.hacker_id = s.hacker_id
LEFT JOIN Challenges c 
ON c.challenge_id = s.challenge_id
LEFT JOIN Difficulty d 
ON d.difficulty_level = c.difficulty_level
WHERE s.score = d.score
GROUP BY s.hacker_id, h.name
HAVING COUNT(s.hacker_id) > 1
ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC;
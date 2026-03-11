SELECT Stage_Name, Position_, Age 
FROM ARTIST 
WHERE Position_ IN ('rapper', 'dancer') 
ORDER BY Age DESC;

SELECT Track_Title, Duration_Sec 
FROM TRACK 
WHERE Duration_Sec BETWEEN 180 AND 210;

SELECT DISTINCT Nationality 
FROM ARTIST;

SELECT Album_Title, Release_Date 
FROM ALBUM 
WHERE Album_Title LIKE '%Pink%' OR Album_Title LIKE '%Love%';

SELECT Track_Title, BPM 
FROM TRACK 
WHERE Is_Hit_Song = TRUE AND BPM > 115 
ORDER BY BPM DESC;

SELECT Group_ID, COUNT(Artist_ID) AS Nombre_Membres 
FROM ARTIST 
GROUP BY Group_ID 
HAVING COUNT(Artist_ID) > 4;

SELECT Nationality, AVG(Age) AS Age_Moyen 
FROM ARTIST 
GROUP BY Nationality;

SELECT Album_ID, SUM(Duration_Sec) AS Duree_Totale_Album 
FROM TRACK 
GROUP BY Album_ID;

SELECT Album_ID, MAX(BPM) AS Tempo_Max, MIN(BPM) AS Tempo_Min 
FROM TRACK 
GROUP BY Album_ID;

SELECT Producer_ID, COUNT(Track_ID) AS Nombre_Titres 
FROM composes 
GROUP BY Producer_ID 
HAVING COUNT(Track_ID) >= 3;

SELECT t.Track_Title, a.Album_Title, a.Album_Genre 
FROM TRACK t
INNER JOIN ALBUM a ON t.Album_ID = a.Album_ID;

-- 12. (Jointure Multiple) Afficher les noms des artistes avec le nom de leur groupe et le nom de leur fanclub officiel
SELECT art.Stage_Name, g.Group_Name, fc.Fanclub_Name 
FROM ARTIST art
INNER JOIN GROUP_ g ON art.Group_ID = g.Group_ID
INNER JOIN FANCLUB fc ON g.Group_ID = fc.Group_ID;

SELECT f.Fan_Name, b.Fanclub_ID 
FROM FAN f
LEFT JOIN belongs_to_2_ b ON f.Fan_ID = b.Fan_ID;

SELECT DISTINCT p.Producer_Name, t.Track_Title
FROM PRODUCER p
INNER JOIN composes c ON p.Producer_ID = c.Producer_ID
INNER JOIN TRACK t ON c.Track_ID = t.Track_ID
WHERE t.Is_Hit_Song = TRUE;

SELECT a.Album_Title, g.Group_Name 
FROM ALBUM a
INNER JOIN GROUP_ g ON a.Group_ID = g.Group_ID
WHERE g.Concept_type = 'Girl Crush';

SELECT Stage_Name, Age 
FROM ARTIST 
WHERE Group_ID IN (
    SELECT Group_ID FROM GROUP_ WHERE Debut_Date < '2017-01-01'
);

SELECT Fan_Name 
FROM FAN f
WHERE NOT EXISTS (
    SELECT 1 FROM belongs_to_2_ b WHERE b.Fan_ID = f.Fan_ID
);

SELECT Track_Title, Duration_Sec 
FROM TRACK 
WHERE Duration_Sec > ALL (
    SELECT Duration_Sec FROM TRACK WHERE Album_ID = 'ALB_BP2'
);

SELECT Producer_Name 
FROM PRODUCER p
WHERE EXISTS (
    SELECT 1 FROM composes c 
    INNER JOIN TRACK t ON c.Track_ID = t.Track_ID 
    WHERE c.Producer_ID = p.Producer_ID AND t.Duration_Sec > 220
);

SELECT Group_Name 
FROM GROUP_ 
WHERE Group_ID = ANY (
    SELECT Group_ID FROM ALBUM WHERE Album_Genre = 'Hyperpop'
);

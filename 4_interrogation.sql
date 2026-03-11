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

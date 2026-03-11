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


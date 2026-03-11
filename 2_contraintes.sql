ALTER TABLE ARTIST 
ADD CONSTRAINT chk_artist_age CHECK (Age >= 16) 

ALTER TABLE TRACK
ADD CONSTRAINT chk_track_duration CHECK (Duration_Sec >= 90);

ALTER TABLE ARTIST
ADD CONSTRAINT chk_artist_position 
CHECK (Position_ IN ('dancer', 'singer', 'rapper', 'visual'));


-- 1. Contrainte de format (LIKE) : Vérifier que l'email du fan a une forme valide (contient un @ et un .)
ALTER TABLE FAN 
ADD CONSTRAINT chk_fan_email 
CHECK (Fan_Email LIKE '%_@__%.__%');

-- 2. Contrainte numérique (Inégalités) : Une musique doit avoir une durée et un BPM strictement positifs
ALTER TABLE TRACK 
ADD CONSTRAINT chk_track_duration 
CHECK (Duration_Sec > 0);

ALTER TABLE TRACK 
ADD CONSTRAINT chk_track_bpm 
CHECK (BPM > 0);

-- 3. Contrainte de domaine (IN) : Le rôle (Position) d'un artiste doit appartenir à une liste précise
ALTER TABLE ARTIST 
ADD CONSTRAINT chk_artist_position 
CHECK (Position_ IN ('Vocalist', 'Dancer', 'Rapper', 'Leader', 'Visual', 'Maknae'));

-- 4. Contrainte temporelle (<) : La date de naissance d'un artiste doit être dans le passé
ALTER TABLE ARTIST 
ADD CONSTRAINT chk_artist_birthdate 
CHECK (Birth_Date < CURRENT_DATE);

-- 5. Contrainte temporelle : Un fanclub ne peut pas être créé dans le futur
ALTER TABLE FANCLUB 
ADD CONSTRAINT chk_fanclub_creation 
CHECK (Creation_Date <= CURRENT_DATE);

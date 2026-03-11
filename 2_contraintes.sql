ALTER TABLE ARTIST 
ADD CONSTRAINT chk_artist_age CHECK (Age >= 16) 

ALTER TABLE TRACK
ADD CONSTRAINT chk_track_duration CHECK (Duration_Sec >= 90);

ALTER TABLE ARTIST
ADD CONSTRAINT chk_artist_position 
CHECK (Position_ IN ('dancer', 'singer', 'rapper', 'visual'));


ALTER TABLE FAN 
ADD CONSTRAINT chk_fan_email 
CHECK (Fan_Email LIKE '%_@__%.__%');

ALTER TABLE TRACK 
ADD CONSTRAINT chk_track_bpm 
CHECK (BPM > 0);

ALTER TABLE FANCLUB 
ADD CONSTRAINT chk_fanclub_creation 
CHECK (Creation_Date <= CURRENT_DATE);

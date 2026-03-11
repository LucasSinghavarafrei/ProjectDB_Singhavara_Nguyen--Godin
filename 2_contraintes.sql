ALTER TABLE ARTIST 
ADD CONSTRAINT chk_artist_age CHECK (Age >= 16);

ALTER TABLE ARTIST 
ADD CONSTRAINT chk_artist_position 
CHECK (Position_ IN ('dancer', 'singer', 'rapper', 'visual'));
  
ALTER TABLE TRACK
ADD CONSTRAINT chk_track_duration CHECK (Duration_Sec >= 90);

ALTER TABLE TRACK 
ADD CONSTRAINT chk_track_bpm_range 
CHECK (BPM BETWEEN 40 AND 300);

ALTER TABLE FAN 
ADD CONSTRAINT chk_fan_email 
CHECK (Fan_Email LIKE '%_@__%.__%');

ALTER TABLE PRODUCER 
ADD CONSTRAINT chk_producer_pseudo_length 
CHECK (LENGTH(TRIM(Producer_Pseudo)) >= 2);

ALTER TABLE FANCLUB 
ADD CONSTRAINT chk_fanclub_name_length 
CHECK (LENGTH(TRIM(Fanclub_Name)) >= 2);

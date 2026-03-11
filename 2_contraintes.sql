ALTER TABLE ARTIST 
ADD CONSTRAINT chk_artist_age CHECK (Age >= 16) 

ALTER TABLE TRACK
ADD CONSTRAINT chk_track_duration CHECK (Duration_Sec >= 90);

ALTER TABLE ARTIST
ADD CONSTRAINT chk_artist_position 
CHECK (Position_ IN ('dancer', 'singer', 'rapper', 'visual'));

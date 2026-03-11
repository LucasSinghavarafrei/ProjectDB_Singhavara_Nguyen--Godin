CREATE DATABASE IF NOT EXISTS label_management;
Use label_management;

CREATE TABLE GROUP_KPOP(
   Group_ID VARCHAR(50),
   Group_Name VARCHAR(50) NOT NULL,
   Debut_Date DATE,
   Lore_Description TEXT,
   Concept_type VARCHAR(50),
   PRIMARY KEY(Group_ID)
);

CREATE TABLE ALBUM(
   Album_ID VARCHAR(50),
   Album_Title VARCHAR(50) NOT NULL,
   Release_Date DATE,
   Album_Genre VARCHAR(50),
   Group_ID VARCHAR(50) NOT NULL,
   PRIMARY KEY(Album_ID),
   FOREIGN KEY(Group_ID) REFERENCES GROUP_KPOP(Group_ID)
      ON DELETE CASCADE 
      ON UPDATE CASCADE
);

CREATE TABLE TRACK(
   Track_ID VARCHAR(50),
   Track_Title VARCHAR(50) NOT NULL,
   Duration_Sec INT, 
   BPM INT,
   Is_Hit_Song BOOLEAN,
   Album_ID VARCHAR(50) NOT NULL,
   PRIMARY KEY(Track_ID),
   FOREIGN KEY(Album_ID) REFERENCES ALBUM(Album_ID) 
      ON DELETE CASCADE 
      ON UPDATE CASCADE
      );

CREATE TABLE PRODUCER(
   Producer_ID VARCHAR(50),
   Producer_Pseudo VARCHAR(50),
   Producer_Name VARCHAR(50),
   PRIMARY KEY(Producer_ID)
);

CREATE TABLE FANCLUB(
   Fanclub_ID VARCHAR(50),
   Fanclub_Name VARCHAR(50) NOT NULL,
   Creation_Date DATE,
   Group_ID VARCHAR(50) NOT NULL,
   PRIMARY KEY(Fanclub_ID),
   UNIQUE(Group_ID),
   FOREIGN KEY(Group_ID) REFERENCES GROUP_KPOP(Group_ID) 
      ON DELETE CASCADE 
      ON UPDATE CASCADE
);

CREATE TABLE FAN(
   Fan_ID VARCHAR(50),
   Fan_Name VARCHAR(50),
   Fan_Email VARCHAR(100),
   Join_Date DATE,
   PRIMARY KEY(Fan_ID)
);

CREATE TABLE ARTIST(
   Artist_ID VARCHAR(50),
   Stage_Name VARCHAR(50),
   Nationality VARCHAR(50),
   Position_ VARCHAR(50),
   Real_Name VARCHAR(50),
   Age INT, 
   Group_ID VARCHAR(50) NOT NULL,
   PRIMARY KEY(Artist_ID),
   FOREIGN KEY(Group_ID) REFERENCES GROUP_KPOP(Group_ID) 
      ON DELETE CASCADE 
      ON UPDATE CASCADE
);

CREATE TABLE composes(
   Track_ID VARCHAR(50),
   Producer_ID VARCHAR(50),
   PRIMARY KEY(Track_ID, Producer_ID),
   FOREIGN KEY(Track_ID) REFERENCES TRACK(Track_ID),
   FOREIGN KEY(Producer_ID) REFERENCES PRODUCER(Producer_ID)
);

CREATE TABLE belongs_to_2_(
   Fanclub_ID VARCHAR(50),
   Fan_ID VARCHAR(50),
   PRIMARY KEY(Fanclub_ID, Fan_ID),
   FOREIGN KEY(Fanclub_ID) REFERENCES FANCLUB(Fanclub_ID),
   FOREIGN KEY(Fan_ID) REFERENCES FAN(Fan_ID)
);

CREATE DATABASE IF NOT EXISTS label_management;
Use label_management;

-- 1. INSERT INTO GROUP_
INSERT INTO GROUP_KPOP (Group_ID, Group_Name, Debut_Date, Lore_Description, Concept_type) VALUES
('GRP_BP', 'BLACKPINK', '2016-08-08', 'Girl crush, bad-ass attitude et luxe', 'Girl Crush'),
('GRP_TW', 'TWICE', '2015-10-20', 'Énergie lumineuse, amour et amitié', 'Color Pop'),
('GRP_AE', 'aespa', '2020-11-17', 'Voyage dans le métavers pour combattre le Black Mamba', 'Cyberpunk / Metaverse');

-- 2. INSERT INTO FANCLUB
INSERT INTO FANCLUB (Fanclub_ID, Fanclub_Name, Creation_Date, Group_ID) VALUES
('FC_BLINK', 'BLINK', '2017-01-14', 'GRP_BP'),
('FC_ONCE', 'ONCE', '2015-11-04', 'GRP_TW'),
('FC_MY', 'MY', '2020-11-17', 'GRP_AE');

-- 3. INSERT INTO ALBUM
INSERT INTO ALBUM (Album_ID, Album_Title, Release_Date, Album_Genre, Group_ID) VALUES
('ALB_BP1', 'The Album', '2020-10-02', 'Pop/Hip-Hop', 'GRP_BP'),
('ALB_BP2', 'Born Pink', '2022-09-16', 'Hip-Hop', 'GRP_BP'),
('ALB_TW1', 'Formula of Love', '2021-11-12', 'Synth-Pop', 'GRP_TW'),
('ALB_TW2', 'Ready To Be', '2023-03-10', 'Pop', 'GRP_TW'),
('ALB_AE1', 'Savage', '2021-10-05', 'Hyperpop', 'GRP_AE'),
('ALB_AE2', 'My World', '2023-05-08', 'Pop/EDM', 'GRP_AE');

-- 4. INSERT INTO TRACK
INSERT INTO TRACK (Track_ID, Track_Title, Duration_Sec, BPM, Is_Hit_Song, Album_ID) VALUES
-- BLACKPINK
('TRK_BP01', 'How You Like That', 182, 130, TRUE, 'ALB_BP1'),
('TRK_BP02', 'Lovesick Girls', 192, 128, TRUE, 'ALB_BP1'),
('TRK_BP03', 'Pink Venom', 186, 90, TRUE, 'ALB_BP2'),
('TRK_BP04', 'Shut Down', 175, 110, TRUE, 'ALB_BP2'),
-- TWICE
('TRK_TW01', 'SCIENTIST', 194, 113, TRUE, 'ALB_TW1'),
('TRK_TW02', 'Moonlight', 224, 105, FALSE, 'ALB_TW1'),
('TRK_TW03', 'Set Me Free', 181, 118, TRUE, 'ALB_TW2'),
('TRK_TW04', 'Moonlight Sunrise', 180, 125, TRUE, 'ALB_TW2'),
-- aespa
('TRK_AE01', 'Savage', 238, 145, TRUE, 'ALB_AE1'),
('TRK_AE02', 'Lucid Dream', 210, 110, FALSE, 'ALB_AE1'),
('TRK_AE03', 'Spicy', 197, 115, TRUE, 'ALB_AE2'),
('TRK_AE04', 'Thirsty', 193, 112, FALSE, 'ALB_AE2');

-- 5. INSERT INTO PRODUCER
INSERT INTO PRODUCER (Producer_ID, Producer_Pseudo, Producer_Name) VALUES
('PRD_TED', 'Teddy', 'Teddy Park'),
('PRD_JYP', 'J.Y. Park', 'Park Jin-young'),
('PRD_KEN', 'Kenzie', 'Kim Yeon-jung'),
('PRD_YYJ', 'Yoo Young-jin', 'Yoo Young-jin');

-- 6. INSERT INTO ARTIST
INSERT INTO ARTIST (Artist_ID, Stage_Name, Nationality, Position_, Real_Name, Age, Group_ID) VALUES
-- BLACKPINK
('ART_BP1', 'Jisoo', 'South Korean', 'visual', 'Kim Ji-soo', 29, 'GRP_BP'),
('ART_BP2', 'Jennie', 'South Korean', 'rapper', 'Kim Jennie', 28, 'GRP_BP'),
('ART_BP3', 'Rosé', 'New Zealander', 'singer', 'Roseanne Park', 27, 'GRP_BP'),
('ART_BP4', 'Lisa', 'Thai', 'dancer', 'Lalisa Manobal', 27, 'GRP_BP'),
-- TWICE (Sélection de 5 membres pour varier)
('ART_TW1', 'Nayeon', 'South Korean', 'singer', 'Im Na-yeon', 28, 'GRP_TW'),
('ART_TW2', 'Momo', 'Japanese', 'dancer', 'Hirai Momo', 27, 'GRP_TW'),
('ART_TW3', 'Jihyo', 'South Korean', 'singer', 'Park Ji-hyo', 27, 'GRP_TW'),
('ART_TW4', 'Dahyun', 'South Korean', 'rapper', 'Kim Da-hyun', 25, 'GRP_TW'),
('ART_TW5', 'Tzuyu', 'Taiwanese', 'visual', 'Chou Tzu-yu', 24, 'GRP_TW'),
-- aespa
('ART_AE1', 'Karina', 'South Korean', 'dancer', 'Yoo Ji-min', 24, 'GRP_AE'),
('ART_AE2', 'Giselle', 'Japanese', 'rapper', 'Uchinaga Aeri', 23, 'GRP_AE'),
('ART_AE3', 'Winter', 'South Korean', 'singer', 'Kim Min-jeong', 23, 'GRP_AE'),
('ART_AE4', 'Ningning', 'Chinese', 'singer', 'Ning Yizhuo', 21, 'GRP_AE');

-- 7. INSERT INTO FAN
INSERT INTO FAN (Fan_ID, Fan_Name, Fan_Email, Join_Date) VALUES
('F_001', 'Léa Dupont', 'lea.d@email.com', '2019-05-12'),
('F_002', 'Camille Tremblay', 'camille.t@email.com', '2021-11-20'),
('F_003', 'Sarah Connor', 'sarah.c@email.com', '2020-01-05'),
('F_004', 'Inès Benali', 'ines.b@email.com', '2023-06-15');

-- 8. INSERT INTO composes (Chansons et Producteurs)
INSERT INTO composes (Track_ID, Producer_ID) VALUES
-- Teddy produit le groupe BP
('TRK_BP01', 'PRD_TED'), ('TRK_BP02', 'PRD_TED'), ('TRK_BP03', 'PRD_TED'), ('TRK_BP04', 'PRD_TED'),
-- JYP produit TWICE
('TRK_TW01', 'PRD_JYP'), ('TRK_TW02', 'PRD_JYP'), ('TRK_TW03', 'PRD_JYP'), ('TRK_TW04', 'PRD_JYP'),
-- Yoo Young-jin et Kenzie produisent aespa
('TRK_AE01', 'PRD_YYJ'), ('TRK_AE02', 'PRD_KEN'), ('TRK_AE03', 'PRD_KEN'), ('TRK_AE04', 'PRD_YYJ');

-- 9. INSERT INTO belongs_to_2_ (Fans et Fanclubs)
INSERT INTO belongs_to_2_ (Fanclub_ID, Fan_ID) VALUES
('FC_BLINK', 'F_001'), ('FC_BLINK', 'F_002'), 
('FC_ONCE', 'F_002'), ('FC_ONCE', 'F_003'), -- Camille est multi-stan (Blink & Once)
('FC_MY', 'F_004'), ('FC_MY', 'F_001');     -- Léa est Blink & My

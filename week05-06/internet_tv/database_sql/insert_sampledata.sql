
INSERT INTO
  genres (genre_name)
VALUES
  ('genre_A'),
  ('genre_B'),
  ('genre_C'),
  ('genre_D'),
  ('genre_E'),
  ('genre_F')
;

INSERT INTO
  programs (title, detail)
VALUES
  ('program_A', 'program_A_detail'),
  ('program_B', 'program_B_detail'),
  ('program_C', 'program_C_detail'),
  ('program_D', 'program_D_detail'),
  ('program_E', 'program_E_detail'),
  ('program_F', 'program_F_detail'),
  ('program_G', 'program_G_detail'),
  ('program_H', 'program_H_detail'),
  ('program_I', 'program_I_detail'),
  ('program_J', 'program_J_detail')
;

INSERT INTO
  program_genre (program_id, genre_id)
VALUES
  (1, 1),
  (1, 3),
  (2, 1),
  (2, 4),
  (3, 5),
  (3, 6),
  (4, 2),
  (4, 3),
  (5, 3),
  (5, 6),
  (6, 1),
  (7, 2),
  (8, 4),
  (9, 5),
  (10, 6)
;

INSERT INTO
  program_seasons (program_id, season_num)
VALUES
  (1, 0),
  (2, 1),
  (2, 2),
  (3, 1),
  (3, 2),
  (3, 3),
  (4, 1),
  (4, 2),
  (5, 1),
  (5, 2),
  (5, 3),
  (6, 0),
  (7, 0),
  (8, 0),
  (9, 0),
  (10, 0)
;

INSERT INTO
  episodes (episode_num, title, description, duration, release_date, program_season_id)
VALUES
  (0,  'program_A',     'description_A',      '01:30:00', '2022-04-01', 1),
  (1,  'program_B 1-1', 'description_B 1-1',  '01:30:00', '2022-04-01', 2),
  (2,  'program_B 1-2', 'description_B 1-2' , '01:30:00', '2022-04-02', 2),
  (3,  'program_B 1-3', 'description_B 1-3' , '01:30:00', '2022-04-03', 2),
  (4,  'program_C 2-4', 'description_C 2-4' , '00:30:00', '2022-05-01', 5),
  (1,  'program_D 1-1', 'description_D 1-1' , '00:30:00', '2022-06-01', 7),
  (2,  'program_D 1-2', 'description_D 1-2' , '00:30:00', '2022-06-01', 7),
  (1,  'program_E 1-1', 'description_E 1-1' , '01:00:00', '2022-07-01', 9),
  (1,  'program_E 2-1', 'description_E 2-1' , '01:00:00', '2022-07-01', 10),
  (1,  'program_E 3-1', 'description_E 3-1' , '01:00:00', '2022-07-01', 11),
  (0,  'program_F',     'description_F' ,     '02:00:00', '2022-08-01', 12),
  (0,  'program_G',     'description_G' ,     '02:00:00', '2022-09-01', 13),
  (0,  'program_H',     'description_H' ,     '02:00:00', '2022-10-01', 14),
  (0,  'program_I',     'description_I' ,     '02:00:00', '2022-11-01', 15),
  (0,  'program_J',     'description_J' ,     '02:00:00', '2022-12-01', 16)
  ;

INSERT INTO
  channels (channel_name)
VALUES
  ('channel_A'),
  ('channel_B'),
  ('channel_C'),
  ('channel_D')
;

INSERT INTO
  lists (start_time, end_time, episode_id, channel_id, views)
VALUES
  ('2023-04-01 00:00:00', '2023-04-01 01:30:00', 1, 1, 31000),
  ('2023-04-01 00:00:00', '2023-04-01 01:30:00', 2, 2, 43000),
  ('2023-04-01 01:30:00', '2023-04-01 03:00:00', 3, 2, 44000),
  ('2023-04-01 03:00:00', '2023-04-01 04:30:00', 4, 2, 46000),
  ('2023-04-01 00:00:00', '2023-04-01 00:30:00', 5, 3, 13000),
  ('2023-04-01 01:00:00', '2023-04-01 01:30:00', 6, 3, 11000),
  ('2023-04-01 01:30:00', '2023-04-01 02:00:00', 7, 3, 15000),
  ('2023-04-01 00:00:00', '2023-04-01 01:00:00', 8, 4, 55000),
  ('2023-04-01 01:00:00', '2023-04-01 02:00:00', 9, 4, 52000),
  ('2023-04-01 02:00:00', '2023-04-01 03:00:00', 10, 4, 56000),
  ('2023-04-01 02:00:00', '2023-04-01 04:00:00', 11, 1, 27000),
  ('2023-04-01 04:00:00', '2023-04-01 06:00:00', 12, 1, 23000),
  ('2023-04-01 05:00:00', '2023-04-01 07:00:00', 13, 2, 26000),
  ('2023-04-01 02:00:00', '2023-04-01 04:00:00', 14, 3, 29000),
  ('2023-04-01 04:00:00', '2023-04-01 06:00:00', 15, 3, 22000)
;

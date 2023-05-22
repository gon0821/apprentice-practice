CREATE TABLE genres (
  genre_id   INT            PRIMARY KEY AUTO_INCREMENT,
  genre_name VARCHAR(100)   NOT NULL UNIQUE
);

CREATE TABLE programs (
  program_id BIGINT         PRIMARY KEY AUTO_INCREMENT,
  title      VARCHAR(255)   NOT NULL UNIQUE,
  detail     TEXT           NOT NULL
);

CREATE TABLE program_genre (
  program_id BIGINT ,
  genre_id   INT ,
  PRIMARY KEY (program_id, genre_id),
  FOREIGN KEY (program_id)    REFERENCES programs(program_id),
  FOREIGN KEY (genre_id)      REFERENCES genres(genre_id)
);

CREATE TABLE program_seasons (
  program_season_id BIGINT   PRIMARY KEY AUTO_INCREMENT,
  program_id        BIGINT   NOT NULL,
  season_num        INTEGER  NOT NULL,
  UNIQUE (program_id, season_num),
  FOREIGN KEY (program_id)      REFERENCES programs(program_id)
);

CREATE TABLE episodes (
  episode_id         BIGINT        PRIMARY KEY AUTO_INCREMENT,
  episode_num        INTEGER       NOT NULL,
  title              VARCHAR(255)  NOT NULL,
  description        TEXT          NOT NULL,
  duration           TIME          NOT NULL,
  release_date       DATE          NOT NULL,
  program_season_id  BIGINT        NOT NULL,
  UNIQUE (episode_num, program_season_id),
  FOREIGN KEY (program_season_id)      REFERENCES program_seasons(program_season_id)
);

CREATE TABLE channels (
  channel_id   INT            PRIMARY KEY AUTO_INCREMENT,
  channel_name VARCHAR(100)   NOT NULL UNIQUE
);

CREATE TABLE lists (
  list_id       BIGINT     PRIMARY KEY AUTO_INCREMENT,
  start_time    DATETIME   NOT NULL,
  end_time      DATETIME   NOT NULL,
  episode_id    BIGINT     NOT NULL,
  channel_id    INT        NOT NULL,
  views         BIGINT     NOT NULL,
  UNIQUE (start_time, channel_id),
  FOREIGN KEY (episode_id)      REFERENCES episodes(episode_id),
  FOREIGN KEY (channel_id)      REFERENCES channels(channel_id)
);

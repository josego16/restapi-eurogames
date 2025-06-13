-- ========================================================
-- TABLAS
-- ========================================================

CREATE TABLE IF NOT EXISTS country
(
    id            SERIAL PRIMARY KEY,
    name_common   VARCHAR(255) NOT NULL,
    name_official VARCHAR(255) NOT NULL,
    capital       VARCHAR(255) NOT NULL,
    region        VARCHAR(255) NOT NULL,
    subregion     VARCHAR(255) NOT NULL,
    population    BIGINT       NOT NULL,
    timezones     VARCHAR(255) NOT NULL,
    continents    VARCHAR(255) NOT NULL,
    flag_url      VARCHAR(512),
    shield_url    VARCHAR(512),
    start_of_week VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS auth
(
    id        SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    username  VARCHAR(255) NOT NULL,
    email     VARCHAR(255) NOT NULL,
    password  VARCHAR(255) NOT NULL,
    avatar    VARCHAR(512)
);

CREATE TABLE IF NOT EXISTS game
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    game_type   VARCHAR(50)  NOT NULL,
    image_url   VARCHAR(512),
    description TEXT         NOT NULL
);

CREATE TABLE IF NOT EXISTS question
(
    id            SERIAL PRIMARY KEY,
    statement     TEXT        NOT NULL,
    question_type VARCHAR(50) NOT NULL,
    response_mode VARCHAR(50) NOT NULL,
    difficulty    VARCHAR(50) NOT NULL,
    flag_url      VARCHAR(512),
    coat_url      VARCHAR(512)
);

CREATE TABLE IF NOT EXISTS answer
(
    id          SERIAL PRIMARY KEY,
    question_id INTEGER REFERENCES question (id) ON DELETE CASCADE,
    text        TEXT    NOT NULL,
    is_correct  BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS score
(
    id              SERIAL PRIMARY KEY,
    user_id         INTEGER REFERENCES auth (id) ON DELETE CASCADE,
    game_id         INTEGER REFERENCES game (id) ON DELETE CASCADE,
    score_value     DOUBLE PRECISION NOT NULL,
    game_type       VARCHAR(50)      NOT NULL,
    difficulty      VARCHAR(50)      NOT NULL,
    correct_answers INTEGER          NOT NULL,
    wrong_answers   INTEGER          NOT NULL,
    total_questions INTEGER          NOT NULL
);
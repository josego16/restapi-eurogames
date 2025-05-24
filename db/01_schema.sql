-- ========================================================
-- ENUMS
-- ========================================================
DO
$$
    BEGIN
        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'difficulty') THEN
            CREATE TYPE difficulty AS ENUM ('Easy', 'Medium', 'Hard');
        END IF;

        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'game_type') THEN
            CREATE TYPE game_type AS ENUM ('Guess_the_flag','Quiz');
        END IF;

        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'question_type') THEN
            CREATE TYPE question_type AS ENUM ('Flag_Guess', 'Coat_Quiz','History_Quiz', 'Geography_Quiz', 'Sports_Quiz','Mythology_Quiz', 'General_Knowledge_Quiz');
        END IF;

        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'response_mode') THEN
            CREATE TYPE response_mode AS ENUM ('True_or_false','Multiple_Choice', 'Free_Text');
        END IF;

        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'session_status') THEN
            CREATE TYPE session_status AS ENUM ('In_Progress', 'Finished');
        END IF;
    END
$$;

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
    language      VARCHAR(255) NOT NULL,
    population    BIGINT       NOT NULL,
    timezones     VARCHAR(255) NOT NULL,
    continents    VARCHAR(255) NOT NULL,
    flag_url      VARCHAR(512) NOT NULL,
    shield_url    VARCHAR(512) NOT NULL,
    start_of_week VARCHAR(255) NOT NULL
);

CREATE TABLE auth
(
    id        SERIAL PRIMARY KEY,
    full_name VARCHAR(255),
    username  VARCHAR(255),
    email     VARCHAR(255) NOT NULL,
    password  VARCHAR(255) NOT NULL,
    avatar    VARCHAR(512)
);

CREATE TABLE game
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    game_type   game_type    NOT NULL,
    difficulty  difficulty   NOT NULL,
    image_url   VARCHAR(512),
    description TEXT         NOT NULL
);

CREATE TABLE game_session
(
    id            SERIAL PRIMARY KEY,
    user_id       INTEGER REFERENCES auth (id) ON DELETE CASCADE,
    game_id       INTEGER REFERENCES game (id) ON DELETE CASCADE,
    score_session DOUBLE PRECISION NOT NULL,
    game_type     game_type        NOT NULL,
    difficulty    difficulty       NOT NULL,
    played_at     TIMESTAMP        NOT NULL DEFAULT now()
);

CREATE TABLE question
(
    id            SERIAL PRIMARY KEY,
    statement     TEXT          NOT NULL,
    question_type question_type NOT NULL,
    response_mode response_mode NOT NULL,
    difficulty    difficulty    NOT NULL,
    image_url     VARCHAR(512)
);

CREATE TABLE answer
(
    id          SERIAL PRIMARY KEY,
    question_id INTEGER REFERENCES question (id) ON DELETE CASCADE,
    text        TEXT    NOT NULL,
    is_correct  BOOLEAN NOT NULL
);

CREATE TABLE score
(
    id          SERIAL PRIMARY KEY,
    user_id     INTEGER REFERENCES auth (id) ON DELETE CASCADE,
    game_id     INTEGER REFERENCES game (id) ON DELETE CASCADE,
    score_value DOUBLE PRECISION NOT NULL,
    game_type   game_type        NOT NULL,
    difficulty  difficulty       NOT NULL,
    recorded_at TIMESTAMP        NOT NULL DEFAULT now()
);
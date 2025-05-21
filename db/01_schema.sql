-- 01_schema.sql
-- ========================================================
-- ENUMS
-- ========================================================
DO
$$
    BEGIN
        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'difficulty') THEN
            CREATE TYPE difficulty AS ENUM ('easy', 'medium', 'hard');
        END IF;

        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'game_type') THEN
            CREATE TYPE game_type AS ENUM ('guess_flag','quiz');
        END IF;

        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'question_type') THEN
            CREATE TYPE question_type AS ENUM ('FLAG_GUESS', 'COAT_QUIZ','HISTORY_QUIZ', 'GEOGRAPHY_QUIZ', 'SPORTS_QUIZ','MYTHOLOGY_QUIZ');
        END IF;

        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'response_mode') THEN
            CREATE TYPE response_mode AS ENUM ('TRUE/FALSE','MULTIPLE_CHOICE', 'FREE_TEXT');
        END IF;

        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'session_status') THEN
            CREATE TYPE session_status AS ENUM ('IN_PROGRESS', 'FINISHED');
        END IF;
    END
$$;

-- ========================================================
-- EXTENSION NECESARIA PARA UUID
-- ========================================================
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- ========================================================
-- TABLAS
-- ========================================================

CREATE TABLE IF NOT EXISTS country
(
    id               UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name_common      VARCHAR(255) NOT NULL,
    name_official    VARCHAR(255) NOT NULL,
    capital          VARCHAR(255) NOT NULL,
    region           VARCHAR(255) NOT NULL,
    subregion        VARCHAR(255) NOT NULL,
    language         VARCHAR(255) NOT NULL,
    population       BIGINT       NOT NULL,
    timezones        VARCHAR(255) NOT NULL,
    continents       VARCHAR(255) NOT NULL,
    flag_url         VARCHAR(512) NOT NULL,
    shield_url       VARCHAR(512) NOT NULL,
    start_of_week    VARCHAR(255) NOT NULL
);

CREATE TABLE auth
(
    id        UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    full_name VARCHAR(255),
    username  VARCHAR(255),
    email     VARCHAR(255) NOT NULL,
    password  VARCHAR(255) NOT NULL,
    avatar    VARCHAR(512)
);

CREATE TABLE game
(
    id          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name        VARCHAR(255) NOT NULL,
    game_type   game_type    NOT NULL,
    difficulty  difficulty   NOT NULL,
    image_url   VARCHAR(512),
    description TEXT         NOT NULL
);

CREATE TABLE game_session
(
    id            UUID PRIMARY KEY          DEFAULT uuid_generate_v4(),
    user_id       UUID REFERENCES auth (id) ON DELETE CASCADE,
    game_id       UUID REFERENCES game (id) ON DELETE CASCADE,
    score_session DOUBLE PRECISION NOT NULL,
    game_type     game_type        NOT NULL,
    difficulty    difficulty       NOT NULL,
    played_at     TIMESTAMP        NOT NULL DEFAULT now()
);

CREATE TABLE question
(
    id            UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    statement     TEXT          NOT NULL,
    question_type question_type NOT NULL,
    response_mode response_mode NOT NULL,
    difficulty    difficulty    NOT NULL,
    image_url     VARCHAR(512)
);

CREATE TABLE answer
(
    id          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    question_id UUID REFERENCES question (id) ON DELETE CASCADE,
    text        TEXT    NOT NULL,
    is_correct  BOOLEAN NOT NULL
);

CREATE TABLE score
(
    id          UUID PRIMARY KEY          DEFAULT uuid_generate_v4(),
    user_id     UUID REFERENCES auth (id) ON DELETE CASCADE,
    game_id     UUID REFERENCES game (id) ON DELETE CASCADE,
    score_value DOUBLE PRECISION NOT NULL,
    game_type   game_type        NOT NULL,
    difficulty  difficulty       NOT NULL,
    recorded_at TIMESTAMP        NOT NULL DEFAULT now()
);
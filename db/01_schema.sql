-- 01_schema.sql
-- ========================================================
-- ENUMS
-- ========================================================
DO
$$
    BEGIN
        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'difficulty') THEN
            CREATE TYPE difficulty AS ENUM ('EASY', 'MEDIUM', 'HARD');
        END IF;

        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'game_type') THEN
            CREATE TYPE game_type AS ENUM ('GUESS_FLAG', 'QUIZ');
        END IF;

        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'media_type') THEN
            CREATE TYPE media_type AS ENUM ('FLAG','COAT');
        END IF;

        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'question_type') THEN
            CREATE TYPE question_type AS ENUM ('FLAG_GUESS', 'CAPITAL_QUIZ');
        END IF;

        IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'response_mode') THEN
            CREATE TYPE response_mode AS ENUM ('SINGLE_CHOICE','MULTIPLE_CHOICE', 'FREE_TEXT');
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
    id          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name        VARCHAR(255) NOT NULL,
    capital     VARCHAR(255) NOT NULL,
    region      VARCHAR(255) NOT NULL,
    subregion   VARCHAR(255) NOT NULL,
    population  BIGINT       NOT NULL,
    description TEXT         NOT NULL,
    flag_url    VARCHAR(512) NOT NULL,
    shield_url  VARCHAR(512) NOT NULL
);

CREATE TABLE IF NOT EXISTS language
(
    id   UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(255) NOT NULL,
    code VARCHAR(10)  NOT NULL
);

CREATE TABLE IF NOT EXISTS country_lang
(
    country_id UUID REFERENCES country (id) ON DELETE CASCADE,
    lang_id    UUID REFERENCES language (id) ON DELETE CASCADE,
    PRIMARY KEY (country_id, lang_id)
);

-- 1. Tabla auth (usuarios)
CREATE TABLE auth
(
    id        UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    full_name VARCHAR(255),
    username  VARCHAR(255),
    email     VARCHAR(255) NOT NULL UNIQUE,
    password  VARCHAR(255) NOT NULL,
    avatar    VARCHAR(512)
);

-- 2. Tabla media (imágenes)
CREATE TABLE media
(
    id          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    country_id  UUID REFERENCES country (id) ON DELETE CASCADE,
    type        media_type   NOT NULL,
    title       VARCHAR(255) NOT NULL,
    image_url   VARCHAR(512) NOT NULL,
    description TEXT         NOT NULL
);

-- 3. Tabla game (minijuegos)
CREATE TABLE game
(
    id          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name        VARCHAR(255) NOT NULL,
    game_type   game_type    NOT NULL,
    difficulty  difficulty   NOT NULL,
    image_url   VARCHAR(512),
    description TEXT         NOT NULL
);

-- 4. Tabla game_session (sesiones de juego)
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

-- 5. Tabla question (preguntas del quiz)
CREATE TABLE question
(
    id            UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    country_id    UUID REFERENCES country (id) ON DELETE CASCADE,
    statement     TEXT          NOT NULL,
    type          question_type NOT NULL,
    response_mode response_mode NOT NULL,
    difficulty    difficulty    NOT NULL,
    image_url     VARCHAR(512)
);

-- 6. Tabla answer (respuestas)
CREATE TABLE answer
(
    id          UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    question_id UUID REFERENCES question (id) ON DELETE CASCADE,
    text        TEXT    NOT NULL,
    is_correct  BOOLEAN NOT NULL
);

-- 7. Tabla score (puntuación del usuario para ranking)
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
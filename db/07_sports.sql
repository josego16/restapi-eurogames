-- Pregunta 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('En béisbol, ¿cuántos fouls son un out?', 'Deportes', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '0', TRUE
FROM new_question
UNION ALL
SELECT id, '5', FALSE
FROM new_question
UNION ALL
SELECT id, '3', FALSE
FROM new_question
UNION ALL
SELECT id, '2', FALSE
FROM new_question;

-- Pregunta 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('En béisbol, ¿cuántas veces debe lanzarse la pelota fuera de la zona de strike para que el bateador reciba una base por bolas?',
                'Deportes', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '4', TRUE
FROM new_question
UNION ALL
SELECT id, '1', FALSE
FROM new_question
UNION ALL
SELECT id, '2', FALSE
FROM new_question
UNION ALL
SELECT id, '3', FALSE
FROM new_question;

-- Pregunta 3
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál fue el marcador final del partido Alemania vs. Brasil en la Copa Mundial de la FIFA 2014?',
                'Deportes', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '7 - 1', TRUE
FROM new_question
UNION ALL
SELECT id, '0 - 1', FALSE
FROM new_question
UNION ALL
SELECT id, '3 - 4', FALSE
FROM new_question
UNION ALL
SELECT id, '16 - 0', FALSE
FROM new_question;

-- Pregunta 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿A qué equipo venció Inglaterra para ganar la final de la Copa Mundial de 1966?', 'Deportes',
                'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Alemania Occidental', TRUE
FROM new_question
UNION ALL
SELECT id, 'Unión Soviética', FALSE
FROM new_question
UNION ALL
SELECT id, 'Portugal', FALSE
FROM new_question
UNION ALL
SELECT id, 'Brasil', FALSE
FROM new_question;

-- Pregunta 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Quién ganó la UEFA Champions League en 2016?', 'Deportes', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Real Madrid C.F.', TRUE
FROM new_question
UNION ALL
SELECT id, 'FC Bayern Múnich', FALSE
FROM new_question
UNION ALL
SELECT id, 'Atlético de Madrid', FALSE
FROM new_question
UNION ALL
SELECT id, 'Manchester City F.C.', FALSE
FROM new_question;

-- Pregunta 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('En el fútbol asociación, o soccer, ¿un saque de esquina es cuando el juego se reinicia después de que alguien marca un gol?',
                'Deportes', 'True_or_false', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Falso', TRUE
FROM new_question
UNION ALL
SELECT id, 'Verdadero', FALSE
FROM new_question;

-- Pregunta 7
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué país ganó la Copa Mundial de la FIFA 2018 celebrada en Rusia?', 'Deportes', 'Opcion_multiple',
                'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Francia', TRUE
FROM new_question
UNION ALL
SELECT id, 'Croacia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Bélgica', FALSE
FROM new_question
UNION ALL
SELECT id, 'Inglaterra', FALSE
FROM new_question;

-- Pregunta 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál de los siguientes deportes no forma parte del triatlón?', 'Deportes', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Equitación', TRUE
FROM new_question
UNION ALL
SELECT id, 'Ciclismo', FALSE
FROM new_question
UNION ALL
SELECT id, 'Natación', FALSE
FROM new_question
UNION ALL
SELECT id, 'Carrera', FALSE
FROM new_question;

-- Pregunta 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué país fue el anfitrión de la Copa Mundial de la FIFA 2022?', 'Deportes', 'Opcion_multiple',
                'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Catar', TRUE
FROM new_question
UNION ALL
SELECT id, 'Estados Unidos', FALSE
FROM new_question
UNION ALL
SELECT id, 'Japón', FALSE
FROM new_question
UNION ALL
SELECT id, 'Suiza', FALSE
FROM new_question;

-- Pregunta 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿En qué año ganaron los New Orleans Saints el Super Bowl?', 'Deportes', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '2010', TRUE
FROM new_question
UNION ALL
SELECT id, '2008', FALSE
FROM new_question
UNION ALL
SELECT id, '2009', FALSE
FROM new_question
UNION ALL
SELECT id, '2011', FALSE
FROM new_question;

-- Pregunta 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('En una partida de snooker, ¿de qué color es la bola que vale 3 puntos?', 'Deportes', 'Opcion_multiple',
                'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Verde', TRUE
FROM new_question
UNION ALL
SELECT id, 'Amarillo', FALSE
FROM new_question
UNION ALL
SELECT id, 'Marrón', FALSE
FROM new_question
UNION ALL
SELECT id, 'Azul', FALSE
FROM new_question;

-- Pregunta 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿En qué deporte compite Fanny Chmelar por Alemania?', 'Deportes', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Esquí', TRUE
FROM new_question
UNION ALL
SELECT id, 'Natación', FALSE
FROM new_question
UNION ALL
SELECT id, 'Salto ecuestre', FALSE
FROM new_question
UNION ALL
SELECT id, 'Gimnasia', FALSE
FROM new_question;

-- Pregunta 3
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuántos partidos estuvo invicto el Arsenal FC durante la temporada 2003-2004 de la Premier League inglesa?',
                'Deportes', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '38', TRUE
FROM new_question
UNION ALL
SELECT id, '51', FALSE
FROM new_question
UNION ALL
SELECT id, '49', FALSE
FROM new_question
UNION ALL
SELECT id, '22', FALSE
FROM new_question;

-- Pregunta 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Quién fue el máximo goleador de la selección nacional de fútbol de Inglaterra?', 'Deportes',
                'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Wayne Rooney', TRUE
FROM new_question
UNION ALL
SELECT id, 'David Beckham', FALSE
FROM new_question
UNION ALL
SELECT id, 'Steven Gerrard', FALSE
FROM new_question
UNION ALL
SELECT id, 'Michael Owen', FALSE
FROM new_question;

-- Pregunta 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es el nombre del afiliado de la AHL de los Toronto Maple Leafs?', 'Deportes', 'Opcion_multiple',
                'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Toronto Marlies', TRUE
FROM new_question
UNION ALL
SELECT id, 'Toronto Rock', FALSE
FROM new_question
UNION ALL
SELECT id, 'Toronto Argonauts', FALSE
FROM new_question
UNION ALL
SELECT id, 'Toronto Wolfpack', FALSE
FROM new_question;

-- Pregunta 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuántos trofeos de la Premier League ganó Sir Alex Ferguson durante su tiempo en el Manchester United?',
                'Deportes', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '13', TRUE
FROM new_question
UNION ALL
SELECT id, '11', FALSE
FROM new_question
UNION ALL
SELECT id, '20', FALSE
FROM new_question
UNION ALL
SELECT id, '22', FALSE
FROM new_question;

-- Pregunta 7
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué nación fue la anfitriona de la Copa Mundial de la FIFA en 2006?', 'Deportes', 'Opcion_multiple',
                'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Alemania', TRUE
FROM new_question
UNION ALL
SELECT id, 'Reino Unido', FALSE
FROM new_question
UNION ALL
SELECT id, 'Brasil', FALSE
FROM new_question
UNION ALL
SELECT id, 'Sudáfrica', FALSE
FROM new_question;
-- Pregunta 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué equipo de fútbol ganó la Copa América Centenario 2016?', 'Deportes', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Chile', TRUE
FROM new_question
UNION ALL
SELECT id, 'Argentina', FALSE
FROM new_question
UNION ALL
SELECT id, 'Brasil', FALSE
FROM new_question
UNION ALL
SELECT id, 'Colombia', FALSE
FROM new_question;

-- Pregunta 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿De qué isla portuguesa es originario el futbolista Cristiano Ronaldo?', 'Deportes', 'Opcion_multiple',
                'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Madeira', TRUE
FROM new_question
UNION ALL
SELECT id, 'Terceira', FALSE
FROM new_question
UNION ALL
SELECT id, 'Santa María', FALSE
FROM new_question
UNION ALL
SELECT id, 'Porto Santo', FALSE
FROM new_question;

-- Pregunta 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿En qué año nació la leyenda del hockey Wayne Gretzky?', 'Deportes', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '1961', TRUE
FROM new_question
UNION ALL
SELECT id, '1965', FALSE
FROM new_question
UNION ALL
SELECT id, '1959', FALSE
FROM new_question
UNION ALL
SELECT id, '1963', FALSE
FROM new_question;

-- Pregunta 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('En el fútbol canadiense, ¿cuántos puntos vale anotar un rouge?', 'Deportes', 'Opcion_multiple',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '1', TRUE
FROM new_question
UNION ALL
SELECT id, '2', FALSE
FROM new_question
UNION ALL
SELECT id, '3', FALSE
FROM new_question
UNION ALL
SELECT id, '4', FALSE
FROM new_question;

-- Pregunta 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué jugadora ganó la medalla de oro en tenis de mesa individual en los Juegos Olímpicos de 2016?',
                'Deportes',
                'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'DING Ning (China)', TRUE
FROM new_question
UNION ALL
SELECT id, 'LI Xiaoxia (China)', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ai FUKUHARA (Japón)', FALSE
FROM new_question
UNION ALL
SELECT id, 'Song KIM (Corea del Norte)', FALSE
FROM new_question;

-- Pregunta 3
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿En qué año se celebró el tercer Super Bowl?', 'Deportes', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '1969', TRUE
FROM new_question
UNION ALL
SELECT id, '1968', FALSE
FROM new_question
UNION ALL
SELECT id, '1971', FALSE
FROM new_question
UNION ALL
SELECT id, '1970', FALSE
FROM new_question;

-- Pregunta 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿El Etihad Stadium es el estadio local de qué equipo?', 'Deportes', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Manchester City', TRUE
FROM new_question
UNION ALL
SELECT id, 'Manchester United', FALSE
FROM new_question
UNION ALL
SELECT id, 'Arsenal', FALSE
FROM new_question
UNION ALL
SELECT id, 'Blackpool', FALSE
FROM new_question;

-- Pregunta 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué ciudad tiene todos sus equipos deportivos profesionales con el mismo esquema de colores en sus camisetas?',
                'Deportes', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Pittsburgh', TRUE
FROM new_question
UNION ALL
SELECT id, 'Nueva York', FALSE
FROM new_question
UNION ALL
SELECT id, 'Seattle', FALSE
FROM new_question
UNION ALL
SELECT id, 'Tampa Bay', FALSE
FROM new_question;

-- Pregunta 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es el nombre completo del futbolista "Cristiano Ronaldo"?', 'Deportes', 'Opcion_multiple',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Cristiano Ronaldo dos Santos Aveiro', TRUE
FROM new_question
UNION ALL
SELECT id, 'Cristiano Ronaldo los Santos Diego', FALSE
FROM new_question
UNION ALL
SELECT id, 'Cristiano Armando Diego Ronaldo', FALSE
FROM new_question
UNION ALL
SELECT id, 'Cristiano Luis Armando Ronaldo', FALSE
FROM new_question;

-- Pregunta 7
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué jugador "dio una patada de kung-fu" a un aficionado del Crystal Palace en enero de 1995?',
                'Deportes', 'Opcion_multiple',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Eric Cantona', TRUE
FROM new_question
UNION ALL
SELECT id, 'David Seamen', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ashley Cole', FALSE
FROM new_question
UNION ALL
SELECT id, 'Mark Hughes', FALSE
FROM new_question;

-- Pregunta 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué jugador masculino ganó la medalla de oro en tenis de mesa individual en los Juegos Olímpicos de 2016?',
                'Deportes', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Ma Long (China)', TRUE
FROM new_question
UNION ALL
SELECT id, 'Zhang Jike (China)', FALSE
FROM new_question
UNION ALL
SELECT id, 'Jun Mizutani (Japón)', FALSE
FROM new_question
UNION ALL
SELECT id, 'Vladimir Samsonov (Bielorrusia)', FALSE
FROM new_question;

-- Pregunta 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuántas veces ganó Martina Navratilova el Campeonato de Wimbledon en individuales?', 'Deportes',
                'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Nueve', TRUE
FROM new_question
UNION ALL
SELECT id, 'Diez', FALSE
FROM new_question
UNION ALL
SELECT id, 'Siete', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ocho', FALSE
FROM new_question;

-- Pregunta 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cómo se llama el equipo afiliado de la AHL de los Boston Bruins?', 'Deportes', 'Opcion_multiple',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Providence Bruins', TRUE
FROM new_question
UNION ALL
SELECT id, 'New Haven Bruins', FALSE
FROM new_question
UNION ALL
SELECT id, 'Cambridge Bruins', FALSE
FROM new_question
UNION ALL
SELECT id, 'Hartford Bruins', FALSE
FROM new_question;
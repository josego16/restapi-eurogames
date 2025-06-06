-- Question 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es la capital del estado estadounidense de Arizona?', 'Geografia', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Phoenix', TRUE
FROM new_question
UNION ALL
SELECT id, 'Montgomery', FALSE
FROM new_question
UNION ALL
SELECT id, 'Tallahassee', FALSE
FROM new_question
UNION ALL
SELECT id, 'Raleigh', FALSE
FROM new_question;

-- Pregunta 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Alaska es el estado más grande de los Estados Unidos.', 'Geografia', 'Verdadero_falso', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Verdadero', TRUE
FROM new_question
UNION ALL
SELECT id, 'Falso', FALSE
FROM new_question;

-- Pregunta 3
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿En qué continente se encuentra la cordillera de los Alpes?', 'Geografia', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Europa', TRUE
FROM new_question
UNION ALL
SELECT id, 'Norteamérica', FALSE
FROM new_question
UNION ALL
SELECT id, 'Asia', FALSE
FROM new_question
UNION ALL
SELECT id, 'África', FALSE
FROM new_question;

-- Pregunta 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es el estado más grande de los Estados Unidos de América?', 'Geografia', 'Opcion_multiple',
                'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Alaska', TRUE
FROM new_question
UNION ALL
SELECT id, 'California', FALSE
FROM new_question
UNION ALL
SELECT id, 'Texas', FALSE
FROM new_question
UNION ALL
SELECT id, 'Washington', FALSE
FROM new_question;

-- Pregunta 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál de estos países africanos tiene el español como idioma oficial?', 'Geografia',
                'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Guinea Ecuatorial', TRUE
FROM new_question
UNION ALL
SELECT id, 'Guinea', FALSE
FROM new_question
UNION ALL
SELECT id, 'Camerún', FALSE
FROM new_question
UNION ALL
SELECT id, 'Angola', FALSE
FROM new_question;

-- Pregunta 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Un grupo de islas se llama un "archipiélago".', 'Geografia', 'Verdadero_falso', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Verdadero', TRUE
FROM new_question
UNION ALL
SELECT id, 'Falso', FALSE
FROM new_question;

-- Pregunta 7
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es el único estado de Estados Unidos que no tiene una bandera con forma de 4 lados?',
                'Geografia', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Ohio', TRUE
FROM new_question
UNION ALL
SELECT id, 'Florida', FALSE
FROM new_question
UNION ALL
SELECT id, 'Idaho', FALSE
FROM new_question
UNION ALL
SELECT id, 'Nuevo México', FALSE
FROM new_question;

-- Pregunta 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Existe una ciudad llamada Roma en cada continente de la Tierra.', 'Geografia', 'Verdadero_falso',
                'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Falso', TRUE
FROM new_question
UNION ALL
SELECT id, 'Verdadero', FALSE
FROM new_question;

-- Pregunta 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué pequeño país se encuentra entre las fronteras de Francia y España?', 'Geografia',
                'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Andorra', TRUE
FROM new_question
UNION ALL
SELECT id, 'San Marino', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ciudad del Vaticano', FALSE
FROM new_question
UNION ALL
SELECT id, 'Liechtenstein', FALSE
FROM new_question;

-- Pregunta 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('La Ciudad del Vaticano es un país.', 'Geografia', 'Verdadero_falso', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Verdadero', TRUE
FROM new_question
UNION ALL
SELECT id, 'Falso', FALSE
FROM new_question;

-- Pregunta 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es la capital de Seychelles?', 'Geografia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Victoria', TRUE
FROM new_question
UNION ALL
SELECT id, 'Luanda', FALSE
FROM new_question
UNION ALL
SELECT id, 'Yamena', FALSE
FROM new_question
UNION ALL
SELECT id, 'Trípoli', FALSE
FROM new_question;

-- Pregunta 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué ciudad europea tiene la mayor cantidad de kilómetros de canales en el mundo?', 'Geografia',
                'Opcion_multiple',
                'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Birmingham', TRUE
FROM new_question
UNION ALL
SELECT id, 'Venecia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ámsterdam', FALSE
FROM new_question
UNION ALL
SELECT id, 'Berlín', FALSE
FROM new_question;

-- Pregunta 3
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('La capital del estado estadounidense de Ohio es la ciudad de Chillicothe.', 'Geografia',
                'Verdadero_falso', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Falso', TRUE
FROM new_question
UNION ALL
SELECT id, 'Verdadero', FALSE
FROM new_question;

-- Pregunta 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál de estos países es el más pequeño por población?', 'Geografia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Noruega', TRUE
FROM new_question
UNION ALL
SELECT id, 'Eslovaquia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Finlandia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Hong Kong', FALSE
FROM new_question;

-- Pregunta 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuáles son los cuatro estados de las esquinas de EE.UU.?', 'Geografia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Utah, Colorado, Arizona, Nuevo México', TRUE
FROM new_question
UNION ALL
SELECT id, 'Oregón, Idaho, Nevada, Utah', FALSE
FROM new_question
UNION ALL
SELECT id, 'Kansas, Oklahoma, Arkansas, Luisiana', FALSE
FROM new_question
UNION ALL
SELECT id, 'Dakota del Sur, Minnesota, Nebraska, Iowa', FALSE
FROM new_question;

-- Pregunta 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál de estos países limita con Polonia?', 'Geografia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Lituania', TRUE
FROM new_question
UNION ALL
SELECT id, 'Francia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Noruega', FALSE
FROM new_question
UNION ALL
SELECT id, 'Países Bajos', FALSE
FROM new_question;

-- Pregunta 7
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es la capital de Chile?', 'Geografia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Santiago', TRUE
FROM new_question
UNION ALL
SELECT id, 'Valparaíso', FALSE
FROM new_question
UNION ALL
SELECT id, 'Copiapó', FALSE
FROM new_question
UNION ALL
SELECT id, 'Antofagasta', FALSE
FROM new_question;

-- Pregunta 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Las siguientes provincias españolas están ubicadas en el norte de España, excepto:', 'Geografia',
                'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Murcia', TRUE
FROM new_question
UNION ALL
SELECT id, 'Asturias', FALSE
FROM new_question
UNION ALL
SELECT id, 'Navarra', FALSE
FROM new_question
UNION ALL
SELECT id, 'León', FALSE
FROM new_question;

-- Pregunta 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es el país más pequeño de Sudamérica por superficie?', 'Geografia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Surinam', TRUE
FROM new_question
UNION ALL
SELECT id, 'Brasil', FALSE
FROM new_question
UNION ALL
SELECT id, 'Uruguay', FALSE
FROM new_question
UNION ALL
SELECT id, 'Chile', FALSE
FROM new_question;

-- Pregunta 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es la capital del estado de Washington, Estados Unidos?', 'Geografia', 'Opcion_multiple',
                'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Olympia', TRUE
FROM new_question
UNION ALL
SELECT id, 'Washington D.C.', FALSE
FROM new_question
UNION ALL
SELECT id, 'Seattle', FALSE
FROM new_question
UNION ALL
SELECT id, 'Yukón', FALSE
FROM new_question;

-- Pregunta 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cómo se llama la región rocosa que abarca la mayor parte del este de Canadá?', 'Geografia',
                'Opcion_multiple',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Escudo Canadiense', TRUE
FROM new_question
UNION ALL
SELECT id, 'Montañas Rocosas', FALSE
FROM new_question
UNION ALL
SELECT id, 'Montes Apalaches', FALSE
FROM new_question
UNION ALL
SELECT id, 'Himalayas', FALSE
FROM new_question;

-- Pregunta 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('El emblema en la bandera de la República de Tayikistán presenta un amanecer sobre montañas debajo de qué símbolo?',
                'Geografia', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Corona', TRUE
FROM new_question
UNION ALL
SELECT id, 'Pájaro', FALSE
FROM new_question
UNION ALL
SELECT id, 'Hoz', FALSE
FROM new_question
UNION ALL
SELECT id, 'Árbol', FALSE
FROM new_question;

-- Pregunta 3
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es la montaña más alta de Canadá?', 'Geografia', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Monte Logan', TRUE
FROM new_question
UNION ALL
SELECT id, 'Mont Tremblant', FALSE
FROM new_question
UNION ALL
SELECT id, 'Montaña Whistler', FALSE
FROM new_question
UNION ALL
SELECT id, 'Montaña Azul', FALSE
FROM new_question;

-- Pregunta 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál era la nación de mayoría musulmana más poblada en 2010?', 'Geografia', 'Opcion_multiple',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Indonesia', TRUE
FROM new_question
UNION ALL
SELECT id, 'Arabia Saudita', FALSE
FROM new_question
UNION ALL
SELECT id, 'Irán', FALSE
FROM new_question
UNION ALL
SELECT id, 'Sudán', FALSE
FROM new_question;

-- Pregunta 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es el nombre oficial en alemán de los Ferrocarriles Federales Suizos?', 'Geografia',
                'Opcion_multiple',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Schweizerische Bundesbahnen', TRUE
FROM new_question
UNION ALL
SELECT id, 'Schweizerische Nationalbahnen', FALSE
FROM new_question
UNION ALL
SELECT id, 'Bundesbahnen der Schweiz', FALSE
FROM new_question
UNION ALL
SELECT id, 'Schweizerische Staatsbahnen', FALSE
FROM new_question;

-- Pregunta 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es la segunda ciudad más grande de Lituania?', 'Geografia', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Kaunas', TRUE
FROM new_question
UNION ALL
SELECT id, 'Panevėžys', FALSE
FROM new_question
UNION ALL
SELECT id, 'Vilna', FALSE
FROM new_question
UNION ALL
SELECT id, 'Klaipėda', FALSE
FROM new_question;

-- Pregunta 7
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es la ciudad más grande y la capital comercial de Sri Lanka?', 'Geografia', 'Opcion_multiple',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Colombo', TRUE
FROM new_question
UNION ALL
SELECT id, 'Moratuwa', FALSE
FROM new_question
UNION ALL
SELECT id, 'Negombo', FALSE
FROM new_question
UNION ALL
SELECT id, 'Kandy', FALSE
FROM new_question;

-- Pregunta 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es la isla más grande de Canadá?', 'Geografia', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Isla de Baffin', TRUE
FROM new_question
UNION ALL
SELECT id, 'Isla del Príncipe Eduardo', FALSE
FROM new_question
UNION ALL
SELECT id, 'Isla de Vancouver', FALSE
FROM new_question
UNION ALL
SELECT id, 'Terranova', FALSE
FROM new_question;

-- Pregunta 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué museo nacional encontrarás en Cooperstown, Nueva York?', 'Geografia', 'Opcion_multiple',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Salón de la Fama del Béisbol Nacional', TRUE
FROM new_question
UNION ALL
SELECT id, 'Museo Metropolitano de Arte', FALSE
FROM new_question
UNION ALL
SELECT id, 'Salón de la Fama Nacional del Juguete', FALSE
FROM new_question
UNION ALL
SELECT id, 'Museo de Arte Moderno', FALSE
FROM new_question;

-- Pregunta 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál de estas NO es una ciudad de la India?', 'Geografia', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Islamabad', TRUE
FROM new_question
UNION ALL
SELECT id, 'Hyderabad', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ahmedabad', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ghaziabad', FALSE
FROM new_question;
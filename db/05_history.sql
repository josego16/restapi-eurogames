-- Pregunta 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué país moderno es conocido como "El Cementerio de los Imperios"?', 'Historia', 'Opcion_multiple',
                'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Afganistán', TRUE
FROM new_question
UNION ALL
SELECT id, 'China', FALSE
FROM new_question
UNION ALL
SELECT id, 'Irak', FALSE
FROM new_question
UNION ALL
SELECT id, 'Rusia', FALSE
FROM new_question;

-- Pregunta 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('El presidente de los Estados Unidos John F. Kennedy fue asesinado durante su caravana presidencial en Atlanta, Georgia el 22 de noviembre de 1963.',
                'Historia', 'Verdadero_falso', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Falso', TRUE
FROM new_question
UNION ALL
SELECT id, 'Verdadero', FALSE
FROM new_question;

-- Pregunta 3
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Los vikingos fueron los primeros europeos en descubrir América del Norte.', 'Historia',
                'Verdadero_falso',
                'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Verdadero', TRUE
FROM new_question
UNION ALL
SELECT id, 'Falso', FALSE
FROM new_question;

-- Pregunta 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Una colección de himnos y versos en sánscrito conocida como los Vedas son textos sagrados de qué religión?',
                'Historia', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Hinduismo', TRUE
FROM new_question
UNION ALL
SELECT id, 'Judaísmo', FALSE
FROM new_question
UNION ALL
SELECT id, 'Islam', FALSE
FROM new_question
UNION ALL
SELECT id, 'Budismo', FALSE
FROM new_question;

-- Pregunta 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Adolf Hitler fue un soldado alemán en la Primera Guerra Mundial.', 'Historia', 'Verdadero_falso',
                'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Verdadero', TRUE
FROM new_question
UNION ALL
SELECT id, 'Falso', FALSE
FROM new_question;

-- Pregunta 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué líder mundial famoso es conocido por la frase "Que coman pastel", aunque se rumorea que nunca lo dijo?',
                'Historia', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'María Antonieta', TRUE
FROM new_question
UNION ALL
SELECT id, 'Zar Nicolás II', FALSE
FROM new_question
UNION ALL
SELECT id, 'Isabel I', FALSE
FROM new_question
UNION ALL
SELECT id, 'Enrique VIII', FALSE
FROM new_question;

-- Pregunta 7
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('El Departamento de Seguridad Nacional de los Estados Unidos se formó en respuesta a los ataques del 11 de septiembre.',
                'Historia', 'Verdadero_falso', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Verdadero', TRUE
FROM new_question
UNION ALL
SELECT id, 'Falso', FALSE
FROM new_question;

-- Pregunta 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿En qué país se construyó la Estatua de la Libertad y se exportó a los Estados Unidos de América?',
                'Historia', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Francia', TRUE
FROM new_question
UNION ALL
SELECT id, 'Alemania', FALSE
FROM new_question
UNION ALL
SELECT id, 'España', FALSE
FROM new_question
UNION ALL
SELECT id, 'Inglaterra', FALSE
FROM new_question;

-- Pregunta 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál fue el primer deporte que se jugó en la luna?', 'Historia', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Golf', TRUE
FROM new_question
UNION ALL
SELECT id, 'Fútbol americano', FALSE
FROM new_question
UNION ALL
SELECT id, 'Tenis', FALSE
FROM new_question
UNION ALL
SELECT id, 'Fútbol', FALSE
FROM new_question;

-- Pregunta 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Quién descubrió la penicilina?', 'Historia', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Alexander Fleming', TRUE
FROM new_question
UNION ALL
SELECT id, 'Marie Curie', FALSE
FROM new_question
UNION ALL
SELECT id, 'Alfred Nobel', FALSE
FROM new_question
UNION ALL
SELECT id, 'Louis Pasteur', FALSE
FROM new_question;

-- Pregunta 1-- Pregunta 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es el estado más antiguo de EE. UU.?', 'Historia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Delaware', TRUE
FROM new_question
UNION ALL
SELECT id, 'Rhode Island', FALSE
FROM new_question
UNION ALL
SELECT id, 'Maine', FALSE
FROM new_question
UNION ALL
SELECT id, 'Virginia', FALSE
FROM new_question;

-- Pregunta 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál fue la longitud total del Titanic?', 'Historia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '882 pies | 268.8 m', TRUE
FROM new_question
UNION ALL
SELECT id, '759 pies | 231.3 m', FALSE
FROM new_question
UNION ALL
SELECT id, '1042 pies | 317.6 m', FALSE
FROM new_question
UNION ALL
SELECT id, '825 pies | 251.5 m', FALSE
FROM new_question;

-- Pregunta 3
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué país tuvo una "Revolución Naranja" entre 2004 y 2005?', 'Historia', 'Opcion_multiple',
                'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Ucrania', TRUE
FROM new_question
UNION ALL
SELECT id, 'Bielorrusia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Letonia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Lituania', FALSE
FROM new_question;

-- Pregunta 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál era el pasado criminal de Joseph Stalin?', 'Historia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Robar trenes', TRUE
FROM new_question
UNION ALL
SELECT id, 'Asesinato por encargo', FALSE
FROM new_question
UNION ALL
SELECT id, 'Evasión de impuestos', FALSE
FROM new_question
UNION ALL
SELECT id, 'Fraude de identidad', FALSE
FROM new_question;

-- Pregunta 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué presidente de los EE. UU. participó en la Conferencia de Potsdam, donde los Aliados alcanzaron un acuerdo de paz con Alemania?',
                'Historia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Harry S. Truman', TRUE
FROM new_question
UNION ALL
SELECT id, 'Dwight D. Eisenhower', FALSE
FROM new_question
UNION ALL
SELECT id, 'Franklin D. Roosevelt', FALSE
FROM new_question
UNION ALL
SELECT id, 'Herbert Hoover', FALSE
FROM new_question;

-- Pregunta 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('La Cuarta Cruzada duró de 1095 a 1099 d.C.', 'Historia', 'Verdadero_falso', 'Normal')
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
        VALUES ('¿Cuál era el nombre del químico que fue arrojado sobre Vietnam durante la guerra de Vietnam?',
                'Historia',
                'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Agente Naranja', TRUE
FROM new_question
UNION ALL
SELECT id, 'Fosgeno', FALSE
FROM new_question
UNION ALL
SELECT id, 'Gas Mostaza', FALSE
FROM new_question
UNION ALL
SELECT id, 'Cianuro de Hidrógeno', FALSE
FROM new_question;

-- Pregunta 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('El Imperio Otomano fue creado en 1299.', 'Historia', 'Verdadero_falso', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Verdadero', TRUE
FROM new_question
UNION ALL
SELECT id, 'Falso', FALSE
FROM new_question;

-- Pregunta 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Quién fue el tutor de Alejandro Magno?', 'Historia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Aristóteles', TRUE
FROM new_question
UNION ALL
SELECT id, 'Sócrates', FALSE
FROM new_question
UNION ALL
SELECT id, 'Platón', FALSE
FROM new_question
UNION ALL
SELECT id, 'Rey Filipo', FALSE
FROM new_question;

-- Pregunta 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál era la capital de Vietnam del Sur antes de la Guerra de Vietnam?', 'Historia', 'Opcion_multiple',
                'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Saigón', TRUE
FROM new_question
UNION ALL
SELECT id, 'Ciudad Ho Chi Minh', FALSE
FROM new_question
UNION ALL
SELECT id, 'Hanói', FALSE
FROM new_question
UNION ALL
SELECT id, 'Hue', FALSE
FROM new_question;

-- Pregunta 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Además de su carrera como astrólogo y "profeta", Nostradamus publicó un tratado en 1555 que incluía una sección sobre ¿qué tema?',
                'Historia', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Hacer mermeladas y jaleas', TRUE
FROM new_question
UNION ALL
SELECT id, 'Enseñar a los loros a hablar', FALSE
FROM new_question
UNION ALL
SELECT id, 'Hacer trampas en juegos de cartas', FALSE
FROM new_question
UNION ALL
SELECT id, 'Cavar tumbas', FALSE
FROM new_question;

-- Pregunta 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('El hombre que disparó a Alexander Hamilton se llamaba Aaron Burr.', 'Historia', 'Verdadero_falso',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Verdadero', TRUE
FROM new_question
UNION ALL
SELECT id, 'Falso', FALSE
FROM new_question;

-- Pregunta 3-- Pregunta 3
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Durante la Guerra Civil Española (1936), ¿por qué facción política luchó Francisco Franco?',
                'Historia',
                'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'España Nacionalista', TRUE
FROM new_question
UNION ALL
SELECT id, 'España Republicana', FALSE
FROM new_question
UNION ALL
SELECT id, 'Frente Popular', FALSE
FROM new_question
UNION ALL
SELECT id, 'Estado Pontificio', FALSE
FROM new_question;

-- Pregunta 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('La cuarta chimenea del RMS Titanic era falsa, diseñada para que el barco pareciera más potente y simétrico.',
                'Historia', 'Verdadero_falso', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Verdadero', TRUE
FROM new_question
UNION ALL
SELECT id, 'Falso', FALSE
FROM new_question;

-- Pregunta 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuántas sonatas escribió Ludwig van Beethoven?', 'Historia', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '32', TRUE
FROM new_question
UNION ALL
SELECT id, '50', FALSE
FROM new_question
UNION ALL
SELECT id, '31', FALSE
FROM new_question
UNION ALL
SELECT id, '21', FALSE
FROM new_question;

-- Pregunta 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('El USS Missouri (BB-63) sirvió por última vez en la Guerra de Corea.', 'Historia', 'Verdadero_falso',
                'Dificil')
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
        VALUES ('¿En qué año se firmó la Declaración de Independencia de los Estados Unidos?', 'Historia',
                'Opcion_multiple',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '1776', TRUE
FROM new_question
UNION ALL
SELECT id, '1775', FALSE
FROM new_question
UNION ALL
SELECT id, '1774', FALSE
FROM new_question
UNION ALL
SELECT id, '1777', FALSE
FROM new_question;

-- Pregunta 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál fue la última colonia que el Reino Unido cedió, marcando el fin del Imperio Británico?',
                'Historia',
                'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Hong Kong', TRUE
FROM new_question
UNION ALL
SELECT id, 'India', FALSE
FROM new_question
UNION ALL
SELECT id, 'Australia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Irlanda', FALSE
FROM new_question;

-- Pregunta 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuándo fue el centenario de la independencia de Finlandia?', 'Historia', 'Opcion_multiple', 'Dificil')
        RETURNING id)
SELECT id, '2017', TRUE
FROM new_question
UNION ALL
SELECT id, '2016', FALSE
FROM new_question
UNION ALL
SELECT id, '2018', FALSE
FROM new_question
UNION ALL
SELECT id, '2015', FALSE
FROM new_question;

-- Pregunta 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿En qué año se fundó Canadá?', 'Historia', 'Opcion_multiple', 'Dificil')
        RETURNING id)
SELECT id, '1867', TRUE
FROM new_question
UNION ALL
SELECT id, '1798', FALSE
FROM new_question
UNION ALL
SELECT id, '1859', FALSE
FROM new_question
UNION ALL
SELECT id, '1668', FALSE
FROM new_question;
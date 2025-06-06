-- Question 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Quién es la persona más joven en recibir un Premio Nobel?', 'Conocimiento_general', 'Opcion_multiple',
                'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Malala Yousafzai', TRUE
FROM new_question
UNION ALL
SELECT id, 'Lawrence Bragg', FALSE
FROM new_question
UNION ALL
SELECT id, 'Werner Heisenberg', FALSE
FROM new_question
UNION ALL
SELECT id, 'Yasser Arafat', FALSE
FROM new_question;

-- Question 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿De qué están hechos los sombreros de Panamá?', 'Conocimiento_general', 'Opcion_multiple', 'Facil')
        RETURNING id)

INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Paja', TRUE
FROM new_question
UNION ALL
SELECT id, 'Seda', FALSE
FROM new_question
UNION ALL
SELECT id, 'Cáñamo', FALSE
FROM new_question
UNION ALL
SELECT id, 'Lino', FALSE
FROM new_question;

-- Question 3
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es la palabra francesa para "sombrero"?', 'Conocimiento_general', 'Opcion_multiple', 'Facil')
        RETURNING id)

INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Chapeau', TRUE
FROM new_question
UNION ALL
SELECT id, 'Bonnet', FALSE
FROM new_question
UNION ALL
SELECT id, ' Écharpe', FALSE
FROM new_question
UNION ALL
SELECT id, ' Casque', FALSE
FROM new_question;

-- Question 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('En arquitectura, un "pecklesteiner" es un conjunto de puertas que se superponen entre sí cuando están cerradas y pueden ser bloqueadas mediante una sola cerradura.',
                'Conocimiento_general', 'Verdadero_falso', 'Facil')
        RETURNING id)

INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Falso', TRUE
FROM new_question
UNION ALL
SELECT id, 'Verdadero', FALSE
FROM new_question;

-- Question 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuándo se fundó el sitio web reddit?', 'Conocimiento_general', 'Opcion_multiple', 'Facil')
        RETURNING id)

INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '2005', TRUE
FROM new_question
UNION ALL
SELECT id, '2008', FALSE
FROM new_question
UNION ALL
SELECT id, '2004', FALSE
FROM new_question
UNION ALL
SELECT id, '2006', FALSE
FROM new_question;

-- Question 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Terry Gilliam fue un animador que trabajó con qué grupo de comedia británico?',
                'Conocimiento_general',
                'Opcion_multiple', 'Facil')
        RETURNING id)

INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Monty Python', TRUE
FROM new_question
UNION ALL
SELECT id, 'The Goodies‎', FALSE
FROM new_question
UNION ALL
SELECT id, 'The League of Gentlemen‎', FALSE
FROM new_question
UNION ALL
SELECT id, 'The Penny Dreadfuls', FALSE
FROM new_question;

-- Question 7
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿De los siguientes meses, cuál tiene la mayor cantidad de días?', 'Conocimiento_general',
                'Opcion_multiple', 'Facil')
        RETURNING id)

INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Diciembre', TRUE
FROM new_question
UNION ALL
SELECT id, 'Abril', FALSE
FROM new_question
UNION ALL
SELECT id, 'Septiembre', FALSE
FROM new_question
UNION ALL
SELECT id, 'Noviembre', FALSE
FROM new_question;

-- Question 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Con qué empresa colaboró Valve en la creación del Vive?', 'Conocimiento_general',
                'Opcion_multiple', 'Facil')
        RETURNING id)

INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'HTC', TRUE
FROM new_question
UNION ALL
SELECT id, 'Oculus', FALSE
FROM new_question
UNION ALL
SELECT id, 'Google', FALSE
FROM new_question
UNION ALL
SELECT id, 'Razer', FALSE
FROM new_question;

-- Question 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál de los siguientes juegos de cartas gira en torno a los números y las matemáticas básicas?',
                'Conocimiento_general', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Uno', TRUE
FROM new_question
UNION ALL
SELECT id, 'Go Fish', FALSE
FROM new_question
UNION ALL
SELECT id, 'Twister', FALSE
FROM new_question
UNION ALL
SELECT id, 'Munchkin', FALSE
FROM new_question;

-- Question 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál de estas festividades NO suele celebrarse en el mes de diciembre?', 'Conocimiento_general',
                'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Accion de Gracias', TRUE
FROM new_question
UNION ALL
SELECT id, 'Navidad', FALSE
FROM new_question
UNION ALL
SELECT id, 'Kwanzaa', FALSE
FROM new_question
UNION ALL
SELECT id, 'Hanukkah', FALSE
FROM new_question;

-- Question 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es el mayor número de estrellas Michelin que puede recibir un restaurante?',
                'Conocimiento_general',
                'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Tres', TRUE
FROM new_question
UNION ALL
SELECT id, 'Cuatro', FALSE
FROM new_question
UNION ALL
SELECT id, 'Cinco', FALSE
FROM new_question
UNION ALL
SELECT id, 'Seis', FALSE
FROM new_question;

-- Question 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Frank Lloyd Wright fue el arquitecto detrás de qué famoso edificio?', 'Conocimiento_general',
                'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'The Guggenheim', TRUE
FROM new_question
UNION ALL
SELECT id, 'Villa Savoye', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ópera de Sídney', FALSE
FROM new_question
UNION ALL
SELECT id, 'La Aguja Espacial', FALSE
FROM new_question;

-- Question 3
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿En qué país se celebraron los Juegos Olímpicos de Verano de 1992?', 'Conocimiento_general',
                'Opcion_multiple',
                'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'España', TRUE
FROM new_question
UNION ALL
SELECT id, 'Rusia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Corea', FALSE
FROM new_question
UNION ALL
SELECT id, 'Estados Unidos', FALSE
FROM new_question;

-- Question 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Una berenjena es una verdura.', 'Conocimiento_general', 'Verdadero_falso', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Falso', TRUE
FROM new_question
UNION ALL
SELECT id, 'Verdadero', FALSE
FROM new_question;

-- Question 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Las cadenas de restaurantes de comida rápida Carl''s Jr. y Hardee''s son propiedad de la misma compañía.',
                'Conocimiento_general', 'Verdadero_falso', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Verdadero', TRUE
FROM new_question
UNION ALL
SELECT id, 'Falso', FALSE
FROM new_question;

-- Question 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Directamente entre el Monumento a Washington y el Reflecting Pool hay un monumento conmemorativo a qué guerra?',
                'Conocimiento_general', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Segunda Guerra Mundial', TRUE
FROM new_question
UNION ALL
SELECT id, 'Guerra de Vietnam', FALSE
FROM new_question
UNION ALL
SELECT id, 'Guerra Civil Estadounidense', FALSE
FROM new_question
UNION ALL
SELECT id, 'Guerra de Independencia de los Estados Unidos', FALSE
FROM new_question;

-- Question 7
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué fabricante italiano de automóviles obtuvo el control mayoritario del fabricante estadounidense Chrysler en 2011?',
                'Conocimiento_general', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Fiat', TRUE
FROM new_question
UNION ALL
SELECT id, 'Maserati', FALSE
FROM new_question
UNION ALL
SELECT id, 'Alfa Romeo', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ferrari', FALSE
FROM new_question;

-- Question 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Albert Einstein tuvo problemas con las matemáticas cuando estaba en la escuela.',
                'Conocimiento_general',
                'Verdadero_falso', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Falso', TRUE
FROM new_question
UNION ALL
SELECT id, 'Verdadero', FALSE
FROM new_question;

-- Question 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuándo se fundó Nintendo?', 'Conocimiento_general', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '23 de septiembre de 1889', TRUE
FROM new_question
UNION ALL
SELECT id, '19 de octubre de 1891', FALSE
FROM new_question
UNION ALL
SELECT id, '4 de marzo de 1887', FALSE
FROM new_question
UNION ALL
SELECT id, '27 de diciembre de 1894', FALSE
FROM new_question;

-- Question 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('El vapor producido por los cigarrillos electrónicos es en realidad agua.', 'Conocimiento_general',
                'True_or_false', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Falso', TRUE
FROM new_question
UNION ALL
SELECT id, 'Verdadero', FALSE
FROM new_question;

-- Question 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es el sustantivo más utilizado en el idioma inglés?', 'Conocimiento_general', 'Opcion_multiple',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Time', TRUE
FROM new_question
UNION ALL
SELECT id, 'Home', FALSE
FROM new_question
UNION ALL
SELECT id, 'Water', FALSE
FROM new_question
UNION ALL
SELECT id, 'Man', FALSE
FROM new_question;

-- Question 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cómo se describe mejor el Quadrangularis Reversum?', 'Conocimiento_general',
                'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Un instrumento de percusion', TRUE
FROM new_question
UNION ALL
SELECT id, 'Un edificio de la Universidad de Oxford', FALSE
FROM new_question
UNION ALL
SELECT id, 'Un movimiento de ajedrez', FALSE
FROM new_question
UNION ALL
SELECT id, 'Un teorema geometrico', FALSE
FROM new_question;

-- Question 3
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Como se llamaba originalmente el Bank of America?', 'Conocimiento_general', 'Opcion_multiple',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Bank of Italy', TRUE
FROM new_question
UNION ALL
SELECT id, 'Bank of Long Island', FALSE
FROM new_question
UNION ALL
SELECT id, 'Bank of Pennsylvania', FALSE
FROM new_question
UNION ALL
SELECT id, 'Bank of Charlotte', FALSE
FROM new_question;

-- Question 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Según Fair Works Australia, ¿cuánto tiempo tienes que trabajar para obtener la Licencia por Servicio Prolongado?',
                'Conocimiento_general', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '7 años', TRUE
FROM new_question
UNION ALL
SELECT id, '2 años', FALSE
FROM new_question
UNION ALL
SELECT id, '8 años', FALSE
FROM new_question
UNION ALL
SELECT id, '6 meses', FALSE
FROM new_question;

-- Question 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('En el MMO RPG "Realm of the Mad God", ¿qué mazmorra es considerada ampliamente la más difícil?',
                'Conocimiento_general', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'The Shatter''s', TRUE
FROM new_question
UNION ALL
SELECT id, 'Snake Pit', FALSE
FROM new_question
UNION ALL
SELECT id, 'The Tomb of the Acient''s', FALSE
FROM new_question
UNION ALL
SELECT id, 'The Puppet Master''s Theater', FALSE
FROM new_question;

-- Question 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('En los idiomas escandinavos, la letra Å significa río.', 'Conocimiento_general', 'Verdadero_falso',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Verdadero', TRUE
FROM new_question
UNION ALL
SELECT id, 'Falso', FALSE
FROM new_question;

-- Question 7
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué estrella de cine tiene su estatua en Leicester Square?', 'Conocimiento_general',
                'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Charlie Chaplin', TRUE
FROM new_question
UNION ALL
SELECT id, 'Paul Newman', FALSE
FROM new_question
UNION ALL
SELECT id, 'Rowan Atkinson ', FALSE
FROM new_question
UNION ALL
SELECT id, 'Alfred Hitchcock', FALSE
FROM new_question;

-- Question 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Antes del siglo XIX, la "sala de estar" se llamaba originalmente...', 'Conocimiento_general',
                'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Salón', TRUE
FROM new_question
UNION ALL
SELECT id, 'Habitacion abierta', FALSE
FROM new_question
UNION ALL
SELECT id, 'Sala de estar', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ático', FALSE
FROM new_question;

-- Question 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál es la palabra coreana romanizada para "corazón"?', 'Conocimiento_general', 'Opcion_multiple',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Simjang', TRUE
FROM new_question
UNION ALL
SELECT id, 'Aejeong', FALSE
FROM new_question
UNION ALL
SELECT id, 'Jeongsin', FALSE
FROM new_question
UNION ALL
SELECT id, 'Segseu', FALSE
FROM new_question;

-- Question 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿De qué tiene miedo una persona con sciophobia?', 'Conocimiento_general', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'La oscuridad', TRUE
FROM new_question
UNION ALL
SELECT id, 'Comer', FALSE
FROM new_question
UNION ALL
SELECT id, 'Luces brillantes', FALSE
FROM new_question
UNION ALL
SELECT id, 'Transporte', FALSE
FROM new_question
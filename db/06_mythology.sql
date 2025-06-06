-- Pregunta 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('En la mitología griega, la Gorgona puede convertir en piedra a quienes la miran.', 'Mitologia',
                'Verdadero_falso', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Verdadero', TRUE
FROM new_question
UNION ALL
SELECT id, 'Falso', FALSE
FROM new_question;

-- Pregunta 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('En la mitología griega, el dios de la guerra se llama Marte.', 'Mitologia', 'Verdadero_falso', 'Facil')
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
        VALUES ('¿Cuántas cabezas tiene Cerbero?', 'Mitologia', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '3', TRUE
FROM new_question
UNION ALL
SELECT id, '2', FALSE
FROM new_question
UNION ALL
SELECT id, '1', FALSE
FROM new_question
UNION ALL
SELECT id, '5', FALSE
FROM new_question;

-- Pregunta 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál de estas criaturas mitológicas se dice que es mitad hombre y mitad caballo?', 'Mitologia',
                'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Centauro', TRUE
FROM new_question
UNION ALL
SELECT id, 'Minotauro', FALSE
FROM new_question
UNION ALL
SELECT id, 'Pegaso', FALSE
FROM new_question
UNION ALL
SELECT id, 'Gorgona', FALSE
FROM new_question;

-- Pregunta 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué dios griego y romano era conocido como el dios de la música, la verdad y la profecía, la curación, el sol y la luz, la peste, la poesía y más?',
                'Mitologia', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Apolo', TRUE
FROM new_question
UNION ALL
SELECT id, 'Afrodita', FALSE
FROM new_question
UNION ALL
SELECT id, 'Artemisa', FALSE
FROM new_question
UNION ALL
SELECT id, 'Atenea', FALSE
FROM new_question;

-- Pregunta 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cómo se conocía comúnmente al dios de la guerra en la antigua Roma?', 'Mitologia',
                'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Marte', TRUE
FROM new_question
UNION ALL
SELECT id, 'Júpiter', FALSE
FROM new_question
UNION ALL
SELECT id, 'Juno', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ares', FALSE
FROM new_question;

-- Pregunta 7
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('En la mitología griega, ¿quién es el dios del vino?', 'Mitologia', 'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Dionisio', TRUE
FROM new_question
UNION ALL
SELECT id, 'Hefesto', FALSE
FROM new_question
UNION ALL
SELECT id, 'Deméter', FALSE
FROM new_question
UNION ALL
SELECT id, 'Apolo', FALSE
FROM new_question;

-- Pregunta 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('En la mitología nórdica, Thor una vez se vistió de mujer.', 'Mitologia', 'Verdadero_falso', 'Facil')
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
        VALUES ('¿Quién fue el único dios de Grecia que no cambió de nombre en Roma?', 'Mitologia',
                'Opcion_multiple', 'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Apolo', TRUE
FROM new_question
UNION ALL
SELECT id, 'Deméter', FALSE
FROM new_question
UNION ALL
SELECT id, 'Zeus', FALSE
FROM new_question
UNION ALL
SELECT id, 'Atenea', FALSE
FROM new_question;

-- Pregunta 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Qué criaturas mitológicas tienen rostro de mujer y cuerpo de buitre?', 'Mitologia', 'Opcion_multiple',
                'Facil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Harpías', TRUE
FROM new_question
UNION ALL
SELECT id, 'Sirenas', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ninfa', FALSE
FROM new_question
UNION ALL
SELECT id, 'Lilith', FALSE
FROM new_question;

-- Pregunta 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Hel era hija de qué figura mitológica nórdica?', 'Mitologia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Loki', TRUE
FROM new_question
UNION ALL
SELECT id, 'Thor', FALSE
FROM new_question
UNION ALL
SELECT id, 'Odín', FALSE
FROM new_question
UNION ALL
SELECT id, 'Balder', FALSE
FROM new_question;

-- Pregunta 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Según la mitología nórdica, Loki es madre.', 'Mitologia', 'Verdadero_falso', 'Normal')
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
        VALUES ('¿Quién es hijo del dios Loki?', 'Mitologia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Fenrir', TRUE
FROM new_question
UNION ALL
SELECT id, 'Odín', FALSE
FROM new_question
UNION ALL
SELECT id, 'Hel', FALSE
FROM new_question
UNION ALL
SELECT id, 'Sigyn', FALSE
FROM new_question;

-- Pregunta 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Quién es el dios de la guerra en la mitología polinesia?', 'Mitologia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, '''Oro', TRUE
FROM new_question
UNION ALL
SELECT id, 'Hina', FALSE
FROM new_question
UNION ALL
SELECT id, 'Kohara', FALSE
FROM new_question
UNION ALL
SELECT id, 'Māui', FALSE
FROM new_question;

-- Pregunta 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('El dios japonés Izanagi logró devolver con éxito a su esposa Izanami del inframundo.', 'Mitologia',
                'Verdadero_falso', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Falso', TRUE
FROM new_question
UNION ALL
SELECT id, 'Verdadero', FALSE
FROM new_question;

-- Pregunta 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Hera es diosa de...', 'Mitologia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Matrimonio', TRUE
FROM new_question
UNION ALL
SELECT id, 'Agricultura', FALSE
FROM new_question
UNION ALL
SELECT id, 'Mar', FALSE
FROM new_question
UNION ALL
SELECT id, 'Guerra', FALSE
FROM new_question;

-- Pregunta 7
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Un minotauro es mitad humano y mitad qué?', 'Mitologia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Toro', TRUE
FROM new_question
UNION ALL
SELECT id, 'Vaca', FALSE
FROM new_question
UNION ALL
SELECT id, 'Caballo', FALSE
FROM new_question
UNION ALL
SELECT id, 'Águila', FALSE
FROM new_question;

-- Pregunta 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('El hipogrifo, que no debe confundirse con el grifo, es una criatura mágica con la parte delantera de un águila y la parte trasera de qué animal?',
                'Mitologia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Un caballo', TRUE
FROM new_question
UNION ALL
SELECT id, 'Un dragón', FALSE
FROM new_question
UNION ALL
SELECT id, 'Un tigre', FALSE
FROM new_question
UNION ALL
SELECT id, 'Un león', FALSE
FROM new_question;

-- Pregunta 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('El nombre griego de Neptuno era...', 'Mitologia', 'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Poseidón', TRUE
FROM new_question
UNION ALL
SELECT id, 'Ares', FALSE
FROM new_question
UNION ALL
SELECT id, 'Zeus', FALSE
FROM new_question
UNION ALL
SELECT id, 'Apolo', FALSE
FROM new_question;

-- Pregunta 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Según el folclore japonés, ¿cuál es la comida favorita del Kappa?', 'Mitologia',
                'Opcion_multiple', 'Normal')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Pepinos', TRUE
FROM new_question
UNION ALL
SELECT id, 'Kabocha', FALSE
FROM new_question
UNION ALL
SELECT id, 'Nasu', FALSE
FROM new_question
UNION ALL
SELECT id, 'Soba', FALSE
FROM new_question;

-- Pregunta 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Rannamaari era un demonio marino que atormentaba a la gente de Maldivas y tenía que ser apaciguado mensualmente con el sacrificio de una joven virgen.',
                'Mitologia', 'Verdadero_falso', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Verdadero', TRUE
FROM new_question
UNION ALL
SELECT id, 'Falso', FALSE
FROM new_question;

-- Pregunta 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Skaði es la diosa nórdica del esquí, las montañas, el invierno y la caza con arco.', 'Mitologia',
                'Verdadero_falso',
                'Dificil')
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
        VALUES ('Talos, el mítico gigante de bronce, ¿de qué isla era protector?', 'Mitologia',
                'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Creta', TRUE
FROM new_question
UNION ALL
SELECT id, 'Cerdeña', FALSE
FROM new_question
UNION ALL
SELECT id, 'Sicilia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Chipre', FALSE
FROM new_question;

-- Pregunta 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Quién es un dios menor protector y creador de varias artes, como la fabricación de queso y la apicultura?',
                'Mitologia', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Aristeo', TRUE
FROM new_question
UNION ALL
SELECT id, 'Autónoe', FALSE
FROM new_question
UNION ALL
SELECT id, 'Carme', FALSE
FROM new_question
UNION ALL
SELECT id, 'Cefiso', FALSE
FROM new_question;

-- Pregunta 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Según el folclore algonquino, ¿cómo se transforma uno en un Wendigo?', 'Mitologia',
                'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Participando en el canibalismo.', TRUE
FROM new_question
UNION ALL
SELECT id, 'Mutilación excesiva de cadáveres de animales.', FALSE
FROM new_question
UNION ALL
SELECT id, 'Realizando un ritual que implica asesinato.', FALSE
FROM new_question
UNION ALL
SELECT id, 'Bebiendo la sangre de muchos animales muertos.', FALSE
FROM new_question;

-- Pregunta 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿A quién derrotó Hipómenes en una carrera a pie?', 'Mitologia', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Atalanta', TRUE
FROM new_question
UNION ALL
SELECT id, 'Peleo', FALSE
FROM new_question
UNION ALL
SELECT id, 'Teseo', FALSE
FROM new_question
UNION ALL
SELECT id, 'Jasón', FALSE
FROM new_question;

-- Pregunta 7
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál fue el castigo por la astucia de Sísifo?', 'Mitologia', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Condenado a empujar una roca cuesta arriba por la eternidad.', TRUE
FROM new_question
UNION ALL
SELECT id, 'Atado a una roca por la eternidad, siendo picoteado por aves.', FALSE
FROM new_question
UNION ALL
SELECT id, 'De pie en un lago lleno de agua que no podía beber.', FALSE
FROM new_question
UNION ALL
SELECT id, 'Talar un árbol que se regeneraba después de cada hachazo.', FALSE
FROM new_question;

-- Pregunta 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Nidhogg es una criatura mítica de qué mitología?', 'Mitologia', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Nórdica', TRUE
FROM new_question
UNION ALL
SELECT id, 'Egipcia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Griega', FALSE
FROM new_question
UNION ALL
SELECT id, 'Hindú', FALSE
FROM new_question;

-- Pregunta 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Cuál de los siguientes NO es un dios de la mitología nórdica?', 'Mitologia', 'Opcion_multiple',
                'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Jens', TRUE
FROM new_question
UNION ALL
SELECT id, 'Loki', FALSE
FROM new_question
UNION ALL
SELECT id, 'Tyr', FALSE
FROM new_question
UNION ALL
SELECT id, 'Snotra', FALSE
FROM new_question;

-- Pregunta 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('¿Quién es el dios egipcio de la reproducción y la lechuga?', 'Mitologia', 'Opcion_multiple', 'Dificil')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Min', TRUE
FROM new_question
UNION ALL
SELECT id, 'Menu', FALSE
FROM new_question
UNION ALL
SELECT id, 'Mut', FALSE
FROM new_question
UNION ALL
SELECT id, 'Meret', FALSE
FROM new_question;
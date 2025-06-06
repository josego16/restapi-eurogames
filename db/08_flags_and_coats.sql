-- Question 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Dificil', 'Opcion_multiple',
                'https://flagcdn.com/w320/pm.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Islas Cook', FALSE
FROM new_question
UNION ALL
SELECT id, 'Islas Vírgenes de los Estados Unidos', FALSE
FROM new_question
UNION ALL
SELECT id, 'Georgia del Sur', FALSE
FROM new_question
UNION ALL
SELECT id, 'San Pedro y Miquelón', TRUE
FROM new_question;

-- Question 2
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Normal', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/ie.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Bulgaria', FALSE
FROM new_question
UNION ALL
SELECT id, 'Irlanda', TRUE
FROM new_question
UNION ALL
SELECT id, 'Guernsey', FALSE
FROM new_question
UNION ALL
SELECT id, 'Cuba', FALSE
FROM new_question;

-- Question 3
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Normal', 'Opcion_multiple',
                'https://flagcdn.com/w320/ps.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Argelia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Antártida', FALSE
FROM new_question
UNION ALL
SELECT id, 'Palestina', TRUE
FROM new_question
UNION ALL
SELECT id, 'Ciudad del Vaticano', FALSE
FROM new_question FROM new_question;

-- Question 4
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Normal', 'Opcion_multiple',
                'https://flagcdn.com/w320/mf.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'San Martín', TRUE
FROM new_question
UNION ALL
SELECT id, 'Antártida', FALSE
FROM new_question
UNION ALL
SELECT id, 'Yemen', FALSE
FROM new_question
UNION ALL
SELECT id, 'Myanmar', FALSE
FROM new_question;

-- Question 5
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/ca.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Etiopía', FALSE
FROM new_question
UNION ALL
SELECT id, 'Canadá', TRUE
FROM new_question
UNION ALL
SELECT id, 'Kiribati', FALSE
FROM new_question
UNION ALL
SELECT id, 'Croacia', FALSE
FROM new_question;

-- Question 6
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/mm.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Myanmar', TRUE
FROM new_question
UNION ALL
SELECT id, 'Guernsey', FALSE
FROM new_question
UNION ALL
SELECT id, 'Caribe Neerlandés', FALSE
FROM new_question
UNION ALL
SELECT id, 'Francia', FALSE
FROM new_question;

-- Question 7
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/nl.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Uganda', FALSE
FROM new_question
UNION ALL
SELECT id, 'Países Bajos', TRUE
FROM new_question
UNION ALL
SELECT id, 'Ruanda', FALSE
FROM new_question
UNION ALL
SELECT id, 'Austria', FALSE
FROM new_question;

-- Question 8
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/ke.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Moldavia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Kenia', TRUE
FROM new_question
UNION ALL
SELECT id, 'Martinica', FALSE
FROM new_question
UNION ALL
SELECT id, 'Sahara Occidental', FALSE
FROM new_question;

-- Question 9
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/to.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Tonga', TRUE
FROM new_question
UNION ALL
SELECT id, 'Camerún', FALSE
FROM new_question
UNION ALL
SELECT id, 'Islas Pitcairn', FALSE
FROM new_question
UNION ALL
SELECT id, 'Eslovenia', FALSE
FROM new_question;

-- Question 10
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Normal', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/be.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Turkmenistán', FALSE
FROM new_question
UNION ALL
SELECT id, 'Camerún', FALSE
FROM new_question
UNION ALL
SELECT id, 'Mauritania', FALSE
FROM new_question
UNION ALL
SELECT id, 'Bélgica', TRUE
FROM new_question;

-- Question 11
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Dificil', 'Opcion_multiple',
                'https://flagcdn.com/w320/vg.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'México', FALSE
FROM new_question
UNION ALL
SELECT id, 'Namibia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Eslovenia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Islas Vírgenes Británicas', TRUE
FROM new_question;

-- Question 12
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/ki.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Namibia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Montserrat', FALSE
FROM new_question
UNION ALL
SELECT id, 'Surinam', FALSE
FROM new_question
UNION ALL
SELECT id, 'Kiribati', TRUE
FROM new_question;

-- Question 13
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Normal', 'Opcion_multiple',
                'https://flagcdn.com/w320/ly.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Islandia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Haití', FALSE
FROM new_question
UNION ALL
SELECT id, 'Libia', TRUE
FROM new_question
UNION ALL
SELECT id, 'Bermudas', FALSE
FROM new_question;

-- Question 14
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Normal', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/ge.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Liechtenstein', FALSE
FROM new_question
UNION ALL
SELECT id, 'Azerbaiyán', FALSE
FROM new_question
UNION ALL
SELECT id, 'Bahamas', FALSE
FROM new_question
UNION ALL
SELECT id, 'Georgia', TRUE
FROM new_question;

-- Question 15
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/mh.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Vanuatu', FALSE
FROM new_question
UNION ALL
SELECT id, 'Yemen', FALSE
FROM new_question
UNION ALL
SELECT id, 'Croacia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Islas Marshall', TRUE
FROM new_question;

-- Question 16
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/ao.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Polonia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Angola', TRUE
FROM new_question
UNION ALL
SELECT id, 'Guayana Francesa', FALSE
FROM new_question
UNION ALL
SELECT id, 'Isla Bouvet', FALSE
FROM new_question;

-- Question 17
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Normal', 'Opcion_multiple',
                'https://flagcdn.com/w320/zm.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Zambia', TRUE
FROM new_question
UNION ALL
SELECT id, 'Taiwán', FALSE
FROM new_question
UNION ALL
SELECT id, 'Nueva Caledonia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Armenia', FALSE
FROM new_question;

-- Question 18
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/mv.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Maldivas', TRUE
FROM new_question
UNION ALL
SELECT id, 'Siria', FALSE
FROM new_question
UNION ALL
SELECT id, 'Indonesia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Rusia', FALSE
FROM new_question;

-- Question 19
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/kh.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Brunéi', FALSE
FROM new_question
UNION ALL
SELECT id, 'Camboya', TRUE
FROM new_question
UNION ALL
SELECT id, 'Eslovenia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Dinamarca', FALSE
FROM new_question;

-- Question 20
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Normal', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/cz.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Rusia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Samoa Americana', FALSE
FROM new_question
UNION ALL
SELECT id, 'Chile', FALSE
FROM new_question
UNION ALL
SELECT id, 'Chequia', TRUE
FROM new_question;

-- Question 21
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Normal', 'Opcion_multiple',
                'https://flagcdn.com/w320/ht.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Haití', TRUE
FROM new_question
UNION ALL
SELECT id, 'Sahara Occidental', FALSE
FROM new_question
UNION ALL
SELECT id, 'Omán', FALSE
FROM new_question
UNION ALL
SELECT id, 'Dominica', FALSE
FROM new_question;

-- Question 22
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Dificil', 'Opcion_multiple',
                'https://flagcdn.com/w320/gw.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Guinea-Bisáu', TRUE
FROM new_question
UNION ALL
SELECT id, 'Bangladés', FALSE
FROM new_question
UNION ALL
SELECT id, 'Burkina Faso', FALSE
FROM new_question
UNION ALL
SELECT id, 'Bosnia y Herzegovina', FALSE
FROM new_question;

-- Question 23
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/xk.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Kosovo', TRUE
FROM new_question
UNION ALL
SELECT id, 'Kiribati', FALSE
FROM new_question
UNION ALL
SELECT id, 'Jamaica', FALSE
FROM new_question
UNION ALL
SELECT id, 'Alemania', FALSE
FROM new_question FROM new_question;

-- Question 24
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/sl.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Colombia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Suecia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Sierra Leona', TRUE
FROM new_question
UNION ALL
SELECT id, 'Belice', FALSE
FROM new_question;

-- Question 25
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/hu.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Tierras Australes y Antárticas Francesas', FALSE
FROM new_question
UNION ALL
SELECT id, 'Islas Caimán', FALSE
FROM new_question
UNION ALL
SELECT id, 'Hungría', TRUE
FROM new_question
UNION ALL
SELECT id, 'Bangladés', FALSE
FROM new_question;

-- Question 26
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/jo.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Eslovenia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Bélgica', FALSE
FROM new_question
UNION ALL
SELECT id, 'Jordania', TRUE
FROM new_question
UNION ALL
SELECT id, 'Granada', FALSE
FROM new_question;

-- Question 27
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/bb.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Singapur', FALSE
FROM new_question
UNION ALL
SELECT id, 'República Dominicana', FALSE
FROM new_question
UNION ALL
SELECT id, 'Islas Cook', FALSE
FROM new_question
UNION ALL
SELECT id, 'Barbados', TRUE
FROM new_question;

-- Question 28
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/ai.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Montenegro', FALSE
FROM new_question
UNION ALL
SELECT id, 'Anguila', TRUE
FROM new_question
UNION ALL
SELECT id, 'Corea del Sur', FALSE
FROM new_question
UNION ALL
SELECT id, 'San Pedro y Miquelón', FALSE
FROM new_question;

-- Question 29
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Normal', 'Opcion_multiple',
                'https://flagcdn.com/w320/bn.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Kazajistán', FALSE
FROM new_question
UNION ALL
SELECT id, 'Brunéi', TRUE
FROM new_question
UNION ALL
SELECT id, 'Tanzania', FALSE
FROM new_question
UNION ALL
SELECT id, 'Territorio Británico del Océano Índico', FALSE
FROM new_question;

-- Question 30
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Normal', 'Opcion_multiple',
                'https://flagcdn.com/w320/bt.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Gabón', FALSE
FROM new_question
UNION ALL
SELECT id, 'Georgia del Sur', FALSE
FROM new_question
UNION ALL
SELECT id, 'Guatemala', FALSE
FROM new_question
UNION ALL
SELECT id, 'Bután', TRUE
FROM new_question;

-- Question 31
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Dificil', 'Opcion_multiple',
                'https://flagcdn.com/w320/pw.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Nigeria', FALSE
FROM new_question
UNION ALL
SELECT id, 'Sierra Leona', FALSE
FROM new_question
UNION ALL
SELECT id, 'Palaos', TRUE
FROM new_question
UNION ALL
SELECT id, 'Islas Feroe', FALSE
FROM new_question;

-- Question 32
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/sc.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Seychelles', TRUE
FROM new_question
UNION ALL
SELECT id, 'Islas Feroe', FALSE
FROM new_question
UNION ALL
SELECT id, 'Reunión', FALSE
FROM new_question
UNION ALL
SELECT id, 'Martinica', FALSE
FROM new_question;

-- Question 33
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Normal', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/tn.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Guinea', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ecuador', FALSE
FROM new_question
UNION ALL
SELECT id, 'Túnez', TRUE
FROM new_question
UNION ALL
SELECT id, 'Níger', FALSE
FROM new_question;

-- Question 34
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/sn.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Maldivas', FALSE
FROM new_question
UNION ALL
SELECT id, 'Yibuti', FALSE
FROM new_question
UNION ALL
SELECT id, 'Turkmenistán', FALSE
FROM new_question
UNION ALL
SELECT id, 'Senegal', TRUE
FROM new_question;

-- Question 35
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/bf.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Burkina Faso', TRUE
FROM new_question
UNION ALL
SELECT id, 'Mónaco', FALSE
FROM new_question
UNION ALL
SELECT id, 'Guinea-Bisáu', FALSE
FROM new_question
UNION ALL
SELECT id, 'Myanmar', FALSE
FROM new_question;

-- Question 36
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Normal', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/mn.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Aruba', FALSE
FROM new_question
UNION ALL
SELECT id, 'Mongolia', TRUE
FROM new_question
UNION ALL
SELECT id, 'Namibia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Suecia', FALSE
FROM new_question;

-- Question 37
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/gr.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Irlanda', FALSE
FROM new_question
UNION ALL
SELECT id, 'Gabón', FALSE
FROM new_question
UNION ALL
SELECT id, 'Francia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Grecia', TRUE
FROM new_question;

-- Question 38
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/mr.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Estados Unidos', FALSE
FROM new_question
UNION ALL
SELECT id, 'Dinamarca', FALSE
FROM new_question
UNION ALL
SELECT id, 'Japón', FALSE
FROM new_question
UNION ALL
SELECT id, 'Mauritania', TRUE
FROM new_question;

-- Question 39
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/in.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Camerún', FALSE
FROM new_question
UNION ALL
SELECT id, 'India', TRUE
FROM new_question
UNION ALL
SELECT id, 'Seychelles', FALSE
FROM new_question
UNION ALL
SELECT id, 'Sudán del Sur', FALSE
FROM new_question FROM new_question;

-- Question 40
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/my.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Samoa Americana', FALSE
FROM new_question
UNION ALL
SELECT id, 'Turkmenistán', FALSE
FROM new_question
UNION ALL
SELECT id, 'Malasia', TRUE
FROM new_question
UNION ALL
SELECT id, 'Tierras Australes y Antárticas Francesas', FALSE
FROM new_question;

-- Question 41
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Normal', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/br.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Líbano', FALSE
FROM new_question
UNION ALL
SELECT id, 'Lituania', FALSE
FROM new_question
UNION ALL
SELECT id, 'Brasil', TRUE
FROM new_question
UNION ALL
SELECT id, 'Argelia', FALSE
FROM new_question;

-- Question 42
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/eg.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Burundi', FALSE
FROM new_question
UNION ALL
SELECT id, 'San Martín', FALSE
FROM new_question
UNION ALL
SELECT id, 'Egipto', TRUE
FROM new_question
UNION ALL
SELECT id, 'Eritrea', FALSE
FROM new_question;

-- Question 43
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/zw.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Islas Caimán', FALSE
FROM new_question
UNION ALL
SELECT id, 'Aruba', FALSE
FROM new_question
UNION ALL
SELECT id, 'Etiopía', FALSE
FROM new_question
UNION ALL
SELECT id, 'Zimbabue', TRUE
FROM new_question;

-- Question 44
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Normal', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/hn.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Guinea', FALSE
FROM new_question
UNION ALL
SELECT id, 'España', FALSE
FROM new_question
UNION ALL
SELECT id, 'Tonga', FALSE
FROM new_question
UNION ALL
SELECT id, 'Honduras', TRUE
FROM new_question;

-- Question 45
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/fr.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Siria', FALSE
FROM new_question
UNION ALL
SELECT id, 'Uganda', FALSE
FROM new_question
UNION ALL
SELECT id, 'Honduras', FALSE
FROM new_question
UNION ALL
SELECT id, 'Francia', TRUE
FROM new_question;

-- Question 46
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/dj.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Fiyi', FALSE
FROM new_question
UNION ALL
SELECT id, 'Jordania', FALSE
FROM new_question
UNION ALL
SELECT id, 'Guadalupe', FALSE
FROM new_question
UNION ALL
SELECT id, 'Yibuti', TRUE
FROM new_question;

-- Question 47
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/lv.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Bélgica', FALSE
FROM new_question
UNION ALL
SELECT id, 'Letonia', TRUE
FROM new_question
UNION ALL
SELECT id, 'Antártida', FALSE
FROM new_question
UNION ALL
SELECT id, 'Vietnam', FALSE
FROM new_question;

-- Question 48
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/ws.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Samoa', TRUE
FROM new_question
UNION ALL
SELECT id, 'Islas Åland', FALSE
FROM new_question
UNION ALL
SELECT id, 'Islas Turcas y Caicos', FALSE
FROM new_question
UNION ALL
SELECT id, 'República Dominicana', FALSE
FROM new_question;

-- Question 49
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/co.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Colombia', TRUE
FROM new_question
UNION ALL
SELECT id, 'Burkina Faso', FALSE
FROM new_question
UNION ALL
SELECT id, 'Guadalupe', FALSE
FROM new_question
UNION ALL
SELECT id, 'Baréin', FALSE
FROM new_question FROM new_question;

-- Question 50
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/al.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Timor Oriental', FALSE
FROM new_question
UNION ALL
SELECT id, 'Santa Elena, Ascensión y Tristán de Acuña', FALSE
FROM new_question
UNION ALL
SELECT id, 'Barbados', FALSE
FROM new_question
UNION ALL
SELECT id, 'Albania', TRUE
FROM new_question;

-- Question 51
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/ck.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Perú', FALSE
FROM new_question
UNION ALL
SELECT id, 'Granada', FALSE
FROM new_question
UNION ALL
SELECT id, 'Australia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Islas Cook', TRUE
FROM new_question;

-- Question 52
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Normal', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/ua.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Kosovo', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ucrania', TRUE
FROM new_question
UNION ALL
SELECT id, 'Lituania', FALSE
FROM new_question
UNION ALL
SELECT id, 'Bolivia', FALSE
FROM new_question;

-- Question 53
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/vn.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Bosnia y Herzegovina', FALSE
FROM new_question
UNION ALL
SELECT id, 'Territorio Británico del Océano Índico', FALSE
FROM new_question
UNION ALL
SELECT id, 'Islas Feroe', FALSE
FROM new_question
UNION ALL
SELECT id, 'Vietnam', TRUE
FROM new_question;

-- Question 54
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Dificil', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/va.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Turkmenistán', FALSE
FROM new_question
UNION ALL
SELECT id, 'Austria', FALSE
FROM new_question
UNION ALL
SELECT id, 'Ciudad del Vaticano', TRUE
FROM new_question
UNION ALL
SELECT id, 'Botsuana', FALSE
FROM new_question;

-- Question 55
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/md.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Antártida', FALSE
FROM new_question
UNION ALL
SELECT id, 'San Martín', FALSE
FROM new_question
UNION ALL
SELECT id, 'Moldavia', TRUE
FROM new_question
UNION ALL
SELECT id, 'Guayana Francesa', FALSE
FROM new_question;

-- Question 56
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Dificil', 'Opcion_multiple',
                'https://flagcdn.com/w320/gu.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Guam', TRUE
FROM new_question
UNION ALL
SELECT id, 'Canadá', FALSE
FROM new_question
UNION ALL
SELECT id, 'Surinam', FALSE
FROM new_question
UNION ALL
SELECT id, 'Georgia del Sur', FALSE
FROM new_question;

-- Question 57
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Normal', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/cy.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Comoras', FALSE
FROM new_question
UNION ALL
SELECT id, 'Canadá', FALSE
FROM new_question
UNION ALL
SELECT id, 'Azerbaiyán', FALSE
FROM new_question
UNION ALL
SELECT id, 'Chipre', TRUE
FROM new_question;

-- Question 58
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/se.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Luxemburgo', FALSE
FROM new_question
UNION ALL
SELECT id, 'Cabo Verde', FALSE
FROM new_question
UNION ALL
SELECT id, 'Suecia', TRUE
FROM new_question
UNION ALL
SELECT id, 'Croacia', FALSE
FROM new_question;

-- Question 59
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
        VALUES ('¿A qué país pertenece este escudo?', 'Escudos', 'Normal', 'Opcion_multiple',
                'https://mainfacts.com/media/images/coats_of_arms/ni.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Omán', FALSE
FROM new_question
UNION ALL
SELECT id, 'Chipre', FALSE
FROM new_question
UNION ALL
SELECT id, 'Nicaragua', TRUE
FROM new_question
UNION ALL
SELECT id, 'Ruanda', FALSE
FROM new_question;

-- Question 60
WITH new_question AS (
    INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
        VALUES ('¿A qué país pertenece esta bandera?', 'Banderas', 'Facil', 'Opcion_multiple',
                'https://flagcdn.com/w320/py.png')
        RETURNING id)
INSERT
INTO answer (question_id, text, is_correct)
SELECT id, 'Paraguay', TRUE
FROM new_question
UNION ALL
SELECT id, 'Singapur', FALSE
FROM new_question
UNION ALL
SELECT id, 'Zambia', FALSE
FROM new_question
UNION ALL
SELECT id, 'Indonesia', FALSE
FROM new_question;
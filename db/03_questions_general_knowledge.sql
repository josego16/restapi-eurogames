BEGIN;

-- Preguntas y respuestas de General Knowledge (easy, medium, hard)

-- Easy
-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The National Animal of Scotland is the Unicorn.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('All strawberries are red.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('It is automatically considered entrapment in the United States if the police sell you illegal substances without revealing themselves.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Is a dog a mammal?', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Slovakia is a member of European Union-', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The mitochondria is the powerhouse of the cell.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In architecture, a &quot;pecklesteiner&quot; is a set of doors that overlap each other when closed, and can be locked through a single keyhole.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Nutella is produced by the German company Ferrero.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Gumbo is a stew that originated in Louisiana.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Ping-Pong originated in England', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 11
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Did Michael Jackson invent the moonwalk?', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 12
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In 2010, Twitter and the United States Library of Congress partnered together to archive every tweet by American citizens.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 13
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Dihydrogen Monoxide is a dangerous chemical.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 14
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('When you cry in space, your tears stick to your face.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 15
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('French is an official language in Canada.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 16
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('King Gizzard &amp; The Lizard Wizard&#039;s album &quot;Nonagon Infinity&quot; can be looped seamlessly.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 17
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Romanian belongs to the Romance language family, shared with French, Spanish, Portuguese and Italian. ', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 18
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The color orange is named after the fruit.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 19
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Lego Group was founded in 1932.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;
-- Question ID 20
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Sun rises from the North.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Easy
-- Question ID 1
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'True', TRUE);
-- Question ID 2
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'False', FALSE);
-- Question ID 3
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'False', TRUE);
-- Question ID 4
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'True', FALSE);
-- Question ID 5
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'False', TRUE);
-- Question ID 6
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'True', FALSE);
-- Question ID 7
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'True', TRUE);
-- Question ID 8
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'False', FALSE);
-- Question ID
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'True', TRUE);
-- Question ID 10
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'False', FALSE);
-- Question ID 11
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'True', TRUE);
-- Question ID 12
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'False', FALSE);
-- Question ID 13
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'False', TRUE);
-- Question ID 14
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'True', FALSE);
-- Question ID 15
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'False', TRUE);
-- Question ID 16
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'True', FALSE);
-- Question ID 17
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'True', TRUE);
-- Question ID 18
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'False', FALSE);
-- Question ID 19
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'True', TRUE);
-- Question ID 20
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'False', FALSE);
-- Question ID 21
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'False', TRUE);
-- Question ID 22
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'True', FALSE);
-- Question ID 23
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'True', TRUE);
-- Question ID 24
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'False', FALSE);
-- Question ID 25
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'False', TRUE);
-- Question ID 26
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'True', FALSE);
-- Question ID 27
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'True', TRUE);
-- Question ID 28
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'False', FALSE);
-- Question ID 29
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'True', TRUE);
-- Question ID 30
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'False', FALSE);
-- Question ID 31
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'True', TRUE);
-- Question ID 32
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'False', FALSE);
-- Question ID 33
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'True', TRUE);
-- Question ID 34
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'False', FALSE);
-- Question ID 35
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'True', TRUE);
-- Question ID 36
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'False', FALSE);
-- Question ID 37
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'True', TRUE);
-- Question ID 38
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'False', FALSE);
-- Question ID 39
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'False', TRUE);
-- Question ID 40
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'True', FALSE);

COMMIT;
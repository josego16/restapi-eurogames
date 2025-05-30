-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In the Greek Mythology, the Gorgon can turn those who behold her to stone.', 'Mythology', 'True_or_false', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In the Greek Mythology, the god of war is called Mars.', 'Mythology', 'True_or_false', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'False', TRUE FROM new_question
UNION ALL
SELECT id, 'True', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('How many heads does Cerberus have?', 'Mythology', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '3', TRUE FROM new_question
UNION ALL
SELECT id, '2', FALSE FROM new_question
UNION ALL
SELECT id, '1', FALSE FROM new_question
UNION ALL
SELECT id, '5', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which of these mythological creatures is said to be half-man and half-horse?', 'Mythology', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Centaur', TRUE FROM new_question
UNION ALL
SELECT id, 'Minotaur', FALSE FROM new_question
UNION ALL
SELECT id, 'Pegasus', FALSE FROM new_question
UNION ALL
SELECT id, 'Gorgon', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which Greek & Roman god was known as the god of music, truth and prophecy, healing, the sun and light, plague, poetry, and more?', 'Mythology', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Apollo', TRUE FROM new_question
UNION ALL
SELECT id, 'Aphrodite', FALSE FROM new_question
UNION ALL
SELECT id, 'Artemis', FALSE FROM new_question
UNION ALL
SELECT id, 'Athena', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The ancient Roman god of war was commonly known as which of the following?', 'Mythology', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Mars', TRUE FROM new_question
UNION ALL
SELECT id, 'Jupiter', FALSE FROM new_question
UNION ALL
SELECT id, 'Juno', FALSE FROM new_question
UNION ALL
SELECT id, 'Ares', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In Greek mythology, who is the god of wine?', 'Mythology', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Dionysus', TRUE FROM new_question
UNION ALL
SELECT id, 'Hephaestus', FALSE FROM new_question
UNION ALL
SELECT id, 'Demeter', FALSE FROM new_question
UNION ALL
SELECT id, 'Apollo', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In Norse mythology, Thor once dressed as a woman.', 'Mythology', 'True_or_false', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Who was the only god from Greece who did not get a name change in Rome?', 'Mythology', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Apollo', TRUE FROM new_question
UNION ALL
SELECT id, 'Demeter', FALSE FROM new_question
UNION ALL
SELECT id, 'Zeus', FALSE FROM new_question
UNION ALL
SELECT id, 'Athena', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What mytological creatures have women''s faces and vultures'' bodies?', 'Mythology', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Harpies', TRUE FROM new_question
UNION ALL
SELECT id, 'Mermaids', FALSE FROM new_question
UNION ALL
SELECT id, 'Nymph', FALSE FROM new_question
UNION ALL
SELECT id, 'Lilith', FALSE FROM new_question;

-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Hel was the daughter of which Norse Mythological figure?', 'Mythology', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Loki', TRUE FROM new_question
UNION ALL
SELECT id, 'Thor', FALSE FROM new_question
UNION ALL
SELECT id, 'Odin', FALSE FROM new_question
UNION ALL
SELECT id, 'Balder', FALSE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('According to Norse mythology, Loki is a mother.', 'Mythology', 'True_or_false', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Who is the God Loki''s son? ', 'Mythology', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Fenrir ', TRUE FROM new_question
UNION ALL
SELECT id, 'Odin', FALSE FROM new_question
UNION ALL
SELECT id, 'Hel', FALSE FROM new_question
UNION ALL
SELECT id, 'Sigyn', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Who is the god of war in Polynesian mythology?', 'Mythology', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '''Oro', TRUE FROM new_question
UNION ALL
SELECT id, 'Hina', FALSE FROM new_question
UNION ALL
SELECT id, 'Kohara', FALSE FROM new_question
UNION ALL
SELECT id, 'Māui', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The Japanese god Izanagi successfully returned his wife Izanami from the Underworld.', 'Mythology', 'True_or_false', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'False', TRUE FROM new_question
UNION ALL
SELECT id, 'True', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Hera is god of...', 'Mythology', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Marriage', TRUE FROM new_question
UNION ALL
SELECT id, 'Agriculture', FALSE FROM new_question
UNION ALL
SELECT id, 'Sea', FALSE FROM new_question
UNION ALL
SELECT id, 'War', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('A minotaur is half human half what?', 'Mythology', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Bull', TRUE FROM new_question
UNION ALL
SELECT id, 'Cow', FALSE FROM new_question
UNION ALL
SELECT id, 'Horse', FALSE FROM new_question
UNION ALL
SELECT id, 'Eagle', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The Hippogriff, not to be confused with the Griffon, is a magical creature with the front half of an eagle, and the back half of what?', 'Mythology', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'A Horse', TRUE FROM new_question
UNION ALL
SELECT id, 'A Dragon', FALSE FROM new_question
UNION ALL
SELECT id, 'A Tiger', FALSE FROM new_question
UNION ALL
SELECT id, 'A Lion', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Neptune''s greek name was...', 'Mythology', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Poseidon', TRUE FROM new_question
UNION ALL
SELECT id, 'Ares', FALSE FROM new_question
UNION ALL
SELECT id, 'Zeus', FALSE FROM new_question
UNION ALL
SELECT id, 'Apollo', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('According to Japanese folklore, what is the favorite food of the Kappa.', 'Mythology', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Cucumbers', TRUE FROM new_question
UNION ALL
SELECT id, 'Kabocha', FALSE FROM new_question
UNION ALL
SELECT id, 'Nasu', FALSE FROM new_question
UNION ALL
SELECT id, 'Soba', FALSE FROM new_question;

-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Rannamaari was a sea demon that haunted the people of the Maldives and had to be appeased monthly with the sacrifice of a virgin girl.', 'Mythology', 'True_or_false', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Skaði is the Norse Goddess of skiing, mountains, winter and bowhunting.', 'Mythology', 'True_or_false', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Talos, the mythical giant bronze man, was the protector of which island?', 'Mythology', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Crete', TRUE FROM new_question
UNION ALL
SELECT id, 'Sardinia', FALSE FROM new_question
UNION ALL
SELECT id, 'Sicily', FALSE FROM new_question
UNION ALL
SELECT id, 'Cyprus', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Who is a minor god that is protector and creator of various arts, such as cheese making and bee keeping.', 'Mythology', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Aristaeus', TRUE FROM new_question
UNION ALL
SELECT id, 'Autonoe', FALSE FROM new_question
UNION ALL
SELECT id, 'Carme', FALSE FROM new_question
UNION ALL
SELECT id, 'Cephisso', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('According to Algonquian folklore, how does one transform into a Wendigo?', 'Mythology', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Participating in cannibalism.', TRUE FROM new_question
UNION ALL
SELECT id, 'Excessive mutilation of animal corpses.', FALSE FROM new_question
UNION ALL
SELECT id, 'Performing a ritual involving murder.', FALSE FROM new_question
UNION ALL
SELECT id, 'Drinking the blood of many slain animals.', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Who did Hippomenes defeat in a footrace?', 'Mythology', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Atalanta', TRUE FROM new_question
UNION ALL
SELECT id, 'Peleus', FALSE FROM new_question
UNION ALL
SELECT id, 'Theseus', FALSE FROM new_question
UNION ALL
SELECT id, 'Jason', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What was the punishment for Sysiphus''s craftiness?', 'Mythology', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Cursed to roll a boulder up a hill for eternity.', TRUE FROM new_question
UNION ALL
SELECT id, 'Tied to a boulder for eternity, being pecked by birds.', FALSE FROM new_question
UNION ALL
SELECT id, 'Standing in a lake filled with water he could not drink.', FALSE FROM new_question
UNION ALL
SELECT id, 'To fell a tree that regenerated after every axe swing.', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Nidhogg is a mythical creature from what mythology?', 'Mythology', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Norse', TRUE FROM new_question
UNION ALL
SELECT id, 'Egyptian', FALSE FROM new_question
UNION ALL
SELECT id, 'Greek', FALSE FROM new_question
UNION ALL
SELECT id, 'Hindu', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which of the following is NOT a god in Norse Mythology.', 'Mythology', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Jens', TRUE FROM new_question
UNION ALL
SELECT id, 'Loki', FALSE FROM new_question
UNION ALL
SELECT id, 'Tyr', FALSE FROM new_question
UNION ALL
SELECT id, 'Snotra', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Who is the Egyptian god of reproduction and lettuce?', 'Mythology', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Min', TRUE FROM new_question
UNION ALL
SELECT id, 'Menu', FALSE FROM new_question
UNION ALL
SELECT id, 'Mut', FALSE FROM new_question
UNION ALL
SELECT id, 'Meret', FALSE FROM new_question;


-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which modern country is known as "The Graveyard of Empires"?', 'History_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Afghanistan', TRUE FROM new_question
UNION ALL
SELECT id, 'China', FALSE FROM new_question
UNION ALL
SELECT id, 'Iraq', FALSE FROM new_question
UNION ALL
SELECT id, 'Russia', FALSE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('United States President John F. Kennedy was assassinated during his presidential motorcade in Atlanta, Georgia on November 22nd, 1963.', 'History_Quiz', 'True_or_false', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'False', TRUE FROM new_question
UNION ALL
SELECT id, 'True', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Vikings were the first Europeans to discover North America.', 'History_Quiz', 'True_or_false', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('A collection of Sanskrit hymns and verses known as the Vedas are sacred texts in what religion?', 'History_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Hinduism', TRUE FROM new_question
UNION ALL
SELECT id, 'Judaism', FALSE FROM new_question
UNION ALL
SELECT id, 'Islam', FALSE FROM new_question
UNION ALL
SELECT id, 'Buddhism', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Adolf Hitler was a german soldier in World War I.', 'History_Quiz', 'True_or_false', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which famous world leader is famed for the saying, "Let them eat cake", yet is rumored that he/she never said it at all?', 'History_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Marie Antoinette', TRUE FROM new_question
UNION ALL
SELECT id, 'Czar Nicholas II', FALSE FROM new_question
UNION ALL
SELECT id, 'Elizabeth I', FALSE FROM new_question
UNION ALL
SELECT id, 'Henry VIII', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The United States Department of Homeland Security was formed in response to the September 11th attacks.', 'History_Quiz', 'True_or_false', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In which country was the Statue of Liberty built and exported to the United States of America?', 'History_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'France', TRUE FROM new_question
UNION ALL
SELECT id, 'Germany', FALSE FROM new_question
UNION ALL
SELECT id, 'Spain', FALSE FROM new_question
UNION ALL
SELECT id, 'England', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What was the first sport to have been played on the moon?', 'History_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Golf', TRUE FROM new_question
UNION ALL
SELECT id, 'Football', FALSE FROM new_question
UNION ALL
SELECT id, 'Tennis', FALSE FROM new_question
UNION ALL
SELECT id, 'Soccer', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Who discovered Penicillin?', 'History_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Alexander Flemming', TRUE FROM new_question
UNION ALL
SELECT id, 'Marie Curie', FALSE FROM new_question
UNION ALL
SELECT id, 'Alfred Nobel', FALSE FROM new_question
UNION ALL
SELECT id, 'Louis Pasteur', FALSE FROM new_question;

-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the oldest US state?', 'History_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Delaware', TRUE FROM new_question
UNION ALL
SELECT id, 'Rhode Island', FALSE FROM new_question
UNION ALL
SELECT id, 'Maine', FALSE FROM new_question
UNION ALL
SELECT id, 'Virginia', FALSE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What was the total length of the Titanic?', 'History_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '882 ft | 268.8 m', TRUE FROM new_question
UNION ALL
SELECT id, '759 ft | 231.3 m', FALSE FROM new_question
UNION ALL
SELECT id, '1042 ft | 317.6 m', FALSE FROM new_question
UNION ALL
SELECT id, '825 ft | 251.5 m', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which country had an "Orange Revolution" between 2004 and 2005?', 'History_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Ukraine', TRUE FROM new_question
UNION ALL
SELECT id, 'Belarus', FALSE FROM new_question
UNION ALL
SELECT id, 'Latvia', FALSE FROM new_question
UNION ALL
SELECT id, 'Lithuania', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Joseph Stalin had a criminal past doing what?', 'History_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Robbing Trains', TRUE FROM new_question
UNION ALL
SELECT id, 'Murder for Hire', FALSE FROM new_question
UNION ALL
SELECT id, 'Tax Evasion', FALSE FROM new_question
UNION ALL
SELECT id, 'Identity Fraud', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which U.S. president took part in the Potsdam Conference, where the Allies reached a peace settlement with Germany?', 'History_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Harry S. Truman', TRUE FROM new_question
UNION ALL
SELECT id, 'Dwight D. Eisenhower', FALSE FROM new_question
UNION ALL
SELECT id, 'Franklin D. Roosevelt', FALSE FROM new_question
UNION ALL
SELECT id, 'Herbert Hoover', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The Fourth Crusade lasted from 1095-1099 AD.', 'History_Quiz', 'True_or_false', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'False', TRUE FROM new_question
UNION ALL
SELECT id, 'True', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What was the name of the chemical that was dropped on Vietnam during the Vietnam war?', 'History_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Agent Orange', TRUE FROM new_question
UNION ALL
SELECT id, 'Phosgene', FALSE FROM new_question
UNION ALL
SELECT id, 'Mustard Gas', FALSE FROM new_question
UNION ALL
SELECT id, 'Hydrogen Cyanide', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Ottoman Empire was created in 1299.', 'History_Quiz', 'True_or_false', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Who tutored Alexander the Great?', 'History_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Aristotle', TRUE FROM new_question
UNION ALL
SELECT id, 'Socrates', FALSE FROM new_question
UNION ALL
SELECT id, 'Plato', FALSE FROM new_question
UNION ALL
SELECT id, 'King Philip', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What was the capital of South Vietnam before the Vietnam War?', 'History_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Saigon', TRUE FROM new_question
UNION ALL
SELECT id, 'Ho Chi Minh City', FALSE FROM new_question
UNION ALL
SELECT id, 'Hanoi', FALSE FROM new_question
UNION ALL
SELECT id, 'Hue', FALSE FROM new_question;

-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In addition to his career as an astrologer and "prophet", Nostradamus published a 1555 treatise that included a section on what?', 'History_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Making jams and jellies', TRUE FROM new_question
UNION ALL
SELECT id, 'Teaching parrots to talk', FALSE FROM new_question
UNION ALL
SELECT id, 'Cheating at card games', FALSE FROM new_question
UNION ALL
SELECT id, 'Digging graves', FALSE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The man that shot Alexander Hamilton was named Aaron Burr.', 'History_Quiz', 'True_or_false', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('During the Spanish Civil War (1936), Francisco Franco fought for which political faction?', 'History_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Nationalist Spain', TRUE FROM new_question
UNION ALL
SELECT id, 'Republican Spain', FALSE FROM new_question
UNION ALL
SELECT id, 'Popular Front', FALSE FROM new_question
UNION ALL
SELECT id, 'Papal State', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The fourth funnel of the RMS Titanic was fake designed to make the ship look more powerful and symmetrical.', 'History_Quiz', 'True_or_false', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('How many sonatas did Ludwig van Beethoven write?', 'History_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '32', TRUE FROM new_question
UNION ALL
SELECT id, '50', FALSE FROM new_question
UNION ALL
SELECT id, '31', FALSE FROM new_question
UNION ALL
SELECT id, '21', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The USS Missouri (BB-63) last served in the Korean War.', 'History_Quiz', 'True_or_false', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'False', TRUE FROM new_question
UNION ALL
SELECT id, 'True', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What year was the United States Declaration of Independence signed?', 'History_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '1776', TRUE FROM new_question
UNION ALL
SELECT id, '1775', FALSE FROM new_question
UNION ALL
SELECT id, '1774', FALSE FROM new_question
UNION ALL
SELECT id, '1777', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What was the last colony the UK ceded marking the end of the British Empire?', 'History_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Hong Kong', TRUE FROM new_question
UNION ALL
SELECT id, 'India', FALSE FROM new_question
UNION ALL
SELECT id, 'Australia', FALSE FROM new_question
UNION ALL
SELECT id, 'Ireland', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('When was Finland''s 100th year of being independent?', 'History_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '2017', TRUE FROM new_question
UNION ALL
SELECT id, '2016', FALSE FROM new_question
UNION ALL
SELECT id, '2018', FALSE FROM new_question
UNION ALL
SELECT id, '2015', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What year was Canada founded in?', 'History_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '1867', TRUE FROM new_question
UNION ALL
SELECT id, '1798', FALSE FROM new_question
UNION ALL
SELECT id, '1859', FALSE FROM new_question
UNION ALL
SELECT id, '1668', FALSE FROM new_question;
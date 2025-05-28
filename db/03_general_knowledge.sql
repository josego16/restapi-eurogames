-- Question 1
WITH new_question AS (
    INSERT INTO question (statement, question_type, response_mode, difficulty)
        VALUES ('Who is the youngest person to receive a Nobel Prize?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Easy')
        RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Malala Yousafzai', TRUE FROM new_question
UNION ALL
SELECT id, 'Lawrence Bragg', FALSE FROM new_question
UNION ALL
SELECT id, 'Werner Heisenberg', FALSE FROM new_question
UNION ALL
SELECT id, 'Yasser Arafat', FALSE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What are Panama hats made out of?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)

INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Straw', TRUE FROM new_question
UNION ALL
SELECT id, 'Silk', FALSE FROM new_question
UNION ALL
SELECT id, 'Hemp', FALSE FROM new_question
UNION ALL
SELECT id, 'Flax', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the French word for "hat"?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)

INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Chapeau', TRUE FROM new_question
UNION ALL
SELECT id, 'Bonnet', FALSE FROM new_question
UNION ALL
SELECT id, ' Écharpe', FALSE FROM new_question
UNION ALL
SELECT id, ' Casque', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In architecture, a "pecklesteiner" is a set of doors that overlap each other when closed, and can be locked through a single keyhole.', 'General_Knowledge_Quiz', 'True_or_false', 'Easy')
  RETURNING id
)

INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'False', TRUE FROM new_question
UNION ALL
SELECT id, 'True', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('When was the website reddit founded ?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)

INSERT INTO answer (question_id, text, is_correct)
SELECT id, '2005', TRUE FROM new_question
UNION ALL
SELECT id, '2008', FALSE FROM new_question
UNION ALL
SELECT id, '2004', FALSE FROM new_question
UNION ALL
SELECT id, '2006', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Terry Gilliam was an animator that worked with which British comedy group?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)

INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Monty Python', TRUE FROM new_question
UNION ALL
SELECT id, 'The Goodies‎', FALSE FROM new_question
UNION ALL
SELECT id, 'The League of Gentlemen‎', FALSE FROM new_question
UNION ALL
SELECT id, 'The Penny Dreadfuls', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Of the following months, which has the most amount of days?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)

INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'December', TRUE FROM new_question
UNION ALL
SELECT id, 'April', FALSE FROM new_question
UNION ALL
SELECT id, 'September', FALSE FROM new_question
UNION ALL
SELECT id, 'November ', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which company did Valve cooperate with in the creation of the Vive?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)

INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'HTC', TRUE FROM new_question
UNION ALL
SELECT id, 'Oculus', FALSE FROM new_question
UNION ALL
SELECT id, 'Google', FALSE FROM new_question
UNION ALL
SELECT id, 'Razer', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which of the following card games revolves around numbers and basic math?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Uno', TRUE FROM new_question
UNION ALL
SELECT id, 'Go Fish', FALSE FROM new_question
UNION ALL
SELECT id, 'Twister', FALSE FROM new_question
UNION ALL
SELECT id, 'Munchkin', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which of these holidays is NOT usually celebrated in the month of December?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Thanksgiving', TRUE FROM new_question
UNION ALL
SELECT id, 'Christmas', FALSE FROM new_question
UNION ALL
SELECT id, 'Kwanzaa', FALSE FROM new_question
UNION ALL
SELECT id, 'Hanukkah', FALSE FROM new_question;

-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the highest number of Michelin stars a restaurant can receive?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Three', TRUE FROM new_question
UNION ALL
SELECT id, 'Four', FALSE FROM new_question
UNION ALL
SELECT id, 'Five', FALSE FROM new_question
UNION ALL
SELECT id, 'Six', FALSE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Frank Lloyd Wright was the architect behind what famous building?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'The Guggenheim', TRUE FROM new_question
UNION ALL
SELECT id, 'Villa Savoye', FALSE FROM new_question
UNION ALL
SELECT id, 'Sydney Opera House', FALSE FROM new_question
UNION ALL
SELECT id, 'The Space Needle', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In which country was the 1992 Summer Olympics Games held?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Spain', TRUE FROM new_question
UNION ALL
SELECT id, 'Russia', FALSE FROM new_question
UNION ALL
SELECT id, 'Korea', FALSE FROM new_question
UNION ALL
SELECT id, 'USA', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('An eggplant is a vegetable.', 'General_Knowledge_Quiz', 'True_or_false', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'False', TRUE FROM new_question
UNION ALL
SELECT id, 'True', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Fast food restaurant chains Carl''s Jr. and Hardee''s are owned by the same company.', 'General_Knowledge_Quiz', 'True_or_false', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Directly between the Washington Monument and the Reflecting Pool is a memorial to which war?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'World War II', TRUE FROM new_question
UNION ALL
SELECT id, 'Vietnam War', FALSE FROM new_question
UNION ALL
SELECT id, 'American Civil War', FALSE FROM new_question
UNION ALL
SELECT id, 'American Revolutionary War', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which Italian automobile manufacturer gained majority control of U.S. automobile manufacturer Chrysler in 2011?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Fiat', TRUE FROM new_question
UNION ALL
SELECT id, 'Maserati', FALSE FROM new_question
UNION ALL
SELECT id, 'Alfa Romeo', FALSE FROM new_question
UNION ALL
SELECT id, 'Ferrari', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Albert Einstein had trouble with mathematics when he was in school.', 'General_Knowledge_Quiz', 'True_or_false', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'False', TRUE FROM new_question
UNION ALL
SELECT id, 'True', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('When was Nintendo founded?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'September 23rd, 1889', TRUE FROM new_question
UNION ALL
SELECT id, 'October 19th, 1891', FALSE FROM new_question
UNION ALL
SELECT id, 'March 4th, 1887', FALSE FROM new_question
UNION ALL
SELECT id, 'December 27th, 1894', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The vapor produced by e-cigarettes is actually water.', 'General_Knowledge_Quiz', 'True_or_false', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'False', TRUE FROM new_question
UNION ALL
SELECT id, 'True', FALSE FROM new_question;

-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the most commonly used noun in the English language?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Time', TRUE FROM new_question
UNION ALL
SELECT id, 'Home', FALSE FROM new_question
UNION ALL
SELECT id, 'Water', FALSE FROM new_question
UNION ALL
SELECT id, 'Man', FALSE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The Quadrangularis Reversum is best described as which of the following?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'A percussion instrument', TRUE FROM new_question
UNION ALL
SELECT id, 'A building in Oxford University', FALSE FROM new_question
UNION ALL
SELECT id, 'A chess move', FALSE FROM new_question
UNION ALL
SELECT id, 'A geometric theorem', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What was Bank of America originally established as?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Bank of Italy', TRUE FROM new_question
UNION ALL
SELECT id, 'Bank of Long Island', FALSE FROM new_question
UNION ALL
SELECT id, 'Bank of Pennsylvania', FALSE FROM new_question
UNION ALL
SELECT id, 'Bank of Charlotte', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('According to Fair Works Australia, how long do you have to work to get Long Service Leave?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '7 years', TRUE FROM new_question
UNION ALL
SELECT id, '2 years', FALSE FROM new_question
UNION ALL
SELECT id, '8 years', FALSE FROM new_question
UNION ALL
SELECT id, '6 months', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In the MMO RPG "Realm of the Mad God", what dungeon is widely considered to be the most difficult?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'The Shatter''s', TRUE FROM new_question
UNION ALL
SELECT id, 'Snake Pit', FALSE FROM new_question
UNION ALL
SELECT id, 'The Tomb of the Acient''s', FALSE FROM new_question
UNION ALL
SELECT id, 'The Puppet Master''s Theater', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In Scandinavian languages, the letter Å means river.', 'General_Knowledge_Quiz', 'True_or_false', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which film star has his statue in Leicester Square?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Charlie Chaplin', TRUE FROM new_question
UNION ALL
SELECT id, 'Paul Newman', FALSE FROM new_question
UNION ALL
SELECT id, 'Rowan Atkinson ', FALSE FROM new_question
UNION ALL
SELECT id, 'Alfred Hitchcock', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Before the 19th Century, the "Living Room" was originally called the...', 'General_Knowledge_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Parlor', TRUE FROM new_question
UNION ALL
SELECT id, 'Open Room', FALSE FROM new_question
UNION ALL
SELECT id, 'Sitting Room', FALSE FROM new_question
UNION ALL
SELECT id, 'Loft', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the romanized Korean word for "heart"?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Simjang', TRUE FROM new_question
UNION ALL
SELECT id, 'Aejeong', FALSE FROM new_question
UNION ALL
SELECT id, 'Jeongsin', FALSE FROM new_question
UNION ALL
SELECT id, 'Segseu', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Sciophobia is the fear of what?', 'General_Knowledge_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Shadows', TRUE FROM new_question
UNION ALL
SELECT id, 'Eating', FALSE FROM new_question
UNION ALL
SELECT id, 'Bright lights', FALSE FROM new_question
UNION ALL
SELECT id, 'Transportation', FALSE FROM new_question
-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the capital of the American state of Arizona?', 'Geography', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Phoenix', TRUE FROM new_question
UNION ALL
SELECT id, 'Montgomery', FALSE FROM new_question
UNION ALL
SELECT id, 'Tallahassee', FALSE FROM new_question
UNION ALL
SELECT id, 'Raleigh', FALSE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Alaska is the largest state in the United States.', 'Geography', 'True_or_false', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The Alps are a mountain range on which continent?', 'Geography', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Europe', TRUE FROM new_question
UNION ALL
SELECT id, 'North America', FALSE FROM new_question
UNION ALL
SELECT id, 'Asia', FALSE FROM new_question
UNION ALL
SELECT id, 'Africa', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What state is the largest state of the United States of America?', 'Geography', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Alaska', TRUE FROM new_question
UNION ALL
SELECT id, 'California', FALSE FROM new_question
UNION ALL
SELECT id, 'Texas', FALSE FROM new_question
UNION ALL
SELECT id, 'Washington', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which of these African countries list "Spanish" as an official language?', 'Geography', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Equatorial Guinea', TRUE FROM new_question
UNION ALL
SELECT id, 'Guinea', FALSE FROM new_question
UNION ALL
SELECT id, 'Cameroon', FALSE FROM new_question
UNION ALL
SELECT id, 'Angola', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('A group of islands is called an ''archipelago''.', 'Geography', 'True_or_false', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the only state in the United States that does not have a flag in a shape with 4 edges?', 'Geography', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Ohio', TRUE FROM new_question
UNION ALL
SELECT id, 'Florida', FALSE FROM new_question
UNION ALL
SELECT id, 'Idaho', FALSE FROM new_question
UNION ALL
SELECT id, 'New Mexico', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('There is a city called Rome in every continent on Earth.', 'Geography', 'True_or_false', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'False', TRUE FROM new_question
UNION ALL
SELECT id, 'True', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which small country is located between the borders of France and Spain?', 'Geography', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Andorra', TRUE FROM new_question
UNION ALL
SELECT id, 'San Marino', FALSE FROM new_question
UNION ALL
SELECT id, 'Vatican City', FALSE FROM new_question
UNION ALL
SELECT id, 'Lichtenstein', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Vatican City is a country.', 'Geography', 'True_or_false', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'True', TRUE FROM new_question
UNION ALL
SELECT id, 'False', FALSE FROM new_question;

-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the capital of Seychelles?', 'Geography', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Victoria', TRUE FROM new_question
UNION ALL
SELECT id, 'Luanda', FALSE FROM new_question
UNION ALL
SELECT id, 'N''Djamena', FALSE FROM new_question
UNION ALL
SELECT id, 'Tripoli', FALSE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which European city has the highest mileage of canals in the world?', 'Geography', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Birmingham', TRUE FROM new_question
UNION ALL
SELECT id, 'Venice', FALSE FROM new_question
UNION ALL
SELECT id, 'Amsterdam', FALSE FROM new_question
UNION ALL
SELECT id, 'Berlin', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The capital of the US State Ohio is the city of Chillicothe.', 'Geography', 'True_or_false', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'False', TRUE FROM new_question
UNION ALL
SELECT id, 'True', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which of these countries is the smallest by population?', 'Geography', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Norway', TRUE FROM new_question
UNION ALL
SELECT id, 'Slovakia', FALSE FROM new_question
UNION ALL
SELECT id, 'Finland', FALSE FROM new_question
UNION ALL
SELECT id, 'Hong Kong', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What are the four corner states of the US?', 'Geography', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Utah, Colorado, Arizona, New Mexico', TRUE FROM new_question
UNION ALL
SELECT id, 'Oregon, Idaho, Nevada, Utah', FALSE FROM new_question
UNION ALL
SELECT id, 'Kansas, Oklahoma, Arkansas, Louisiana', FALSE FROM new_question
UNION ALL
SELECT id, 'South Dakota, Minnesota, Nebraska, Iowa', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which one of these countries borders with Poland?', 'Geography', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Lithuania', TRUE FROM new_question
UNION ALL
SELECT id, 'France', FALSE FROM new_question
UNION ALL
SELECT id, 'Norway', FALSE FROM new_question
UNION ALL
SELECT id, 'Netherlands', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the capital of Chile?', 'Geography', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Santiago', TRUE FROM new_question
UNION ALL
SELECT id, 'Valparaíso', FALSE FROM new_question
UNION ALL
SELECT id, 'Copiapó', FALSE FROM new_question
UNION ALL
SELECT id, 'Antofagasta', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The following Spanish provinces are located in the northern area of Spain except:', 'Geography', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Murcia', TRUE FROM new_question
UNION ALL
SELECT id, 'Asturias', FALSE FROM new_question
UNION ALL
SELECT id, 'Navarre', FALSE FROM new_question
UNION ALL
SELECT id, 'León', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the smallest country in South America by area?', 'Geography', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Suriname', TRUE FROM new_question
UNION ALL
SELECT id, 'Brazil', FALSE FROM new_question
UNION ALL
SELECT id, 'Uruguay', FALSE FROM new_question
UNION ALL
SELECT id, 'Chile', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the capital of the State of Washington, United States?', 'Geography', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Olympia', TRUE FROM new_question
UNION ALL
SELECT id, 'Washington D.C.', FALSE FROM new_question
UNION ALL
SELECT id, 'Seattle', FALSE FROM new_question
UNION ALL
SELECT id, 'Yukon', FALSE FROM new_question;

-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the name of rocky region that spans most of eastern Canada?', 'Geography', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Canadian Shield', TRUE FROM new_question
UNION ALL
SELECT id, 'Rocky Mountains', FALSE FROM new_question
UNION ALL
SELECT id, 'Appalachian Mountains', FALSE FROM new_question
UNION ALL
SELECT id, 'Himalayas', FALSE FROM new_question;
-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The emblem on the flag of the Republic of Tajikistan features a sunrise over mountains below what symbol?', 'Geography', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Crown', TRUE FROM new_question
UNION ALL
SELECT id, 'Bird', FALSE FROM new_question
UNION ALL
SELECT id, 'Sickle', FALSE FROM new_question
UNION ALL
SELECT id, 'Tree', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the tallest mountain in Canada?', 'Geography', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Mount Logan', TRUE FROM new_question
UNION ALL
SELECT id, 'Mont Tremblant', FALSE FROM new_question
UNION ALL
SELECT id, 'Whistler Mountain', FALSE FROM new_question
UNION ALL
SELECT id, 'Blue Mountain', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the most populous Muslim-majority nation in 2010?', 'Geography', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Indonesia', TRUE FROM new_question
UNION ALL
SELECT id, 'Saudi Arabia', FALSE FROM new_question
UNION ALL
SELECT id, 'Iran', FALSE FROM new_question
UNION ALL
SELECT id, 'Sudan', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the official German name of the Swiss Federal Railways?', 'Geography', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Schweizerische Bundesbahnen', TRUE FROM new_question
UNION ALL
SELECT id, 'Schweizerische Nationalbahnen', FALSE FROM new_question
UNION ALL
SELECT id, 'Bundesbahnen der Schweiz', FALSE FROM new_question
UNION ALL
SELECT id, 'Schweizerische Staatsbahnen', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the second-largest city in Lithuania?', 'Geography', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Kaunas', TRUE FROM new_question
UNION ALL
SELECT id, 'Panevėžys', FALSE FROM new_question
UNION ALL
SELECT id, 'Vilnius', FALSE FROM new_question
UNION ALL
SELECT id, 'Klaipėda', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the largest city and commercial capital of Sri Lanka?', 'Geography', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Colombo', TRUE FROM new_question
UNION ALL
SELECT id, 'Moratuwa', FALSE FROM new_question
UNION ALL
SELECT id, 'Negombo', FALSE FROM new_question
UNION ALL
SELECT id, 'Kandy', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is Canada''s largest island?', 'Geography', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Baffin Island', TRUE FROM new_question
UNION ALL
SELECT id, 'Prince Edward Island', FALSE FROM new_question
UNION ALL
SELECT id, 'Vancouver Island', FALSE FROM new_question
UNION ALL
SELECT id, 'Newfoundland', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What national museum will you find in Cooperstown, New York?', 'Geography', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'National Baseball Hall of Fame', TRUE FROM new_question
UNION ALL
SELECT id, 'Metropolitan Museum of Art', FALSE FROM new_question
UNION ALL
SELECT id, 'National Toy Hall of Fame', FALSE FROM new_question
UNION ALL
SELECT id, 'Museum of Modern Art', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which of these is NOT a city in India?', 'Geography', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Islamabad', TRUE FROM new_question
UNION ALL
SELECT id, 'Hyderabad', FALSE FROM new_question
UNION ALL
SELECT id, 'Ahmedabad', FALSE FROM new_question
UNION ALL
SELECT id, 'Ghaziabad', FALSE FROM new_question;


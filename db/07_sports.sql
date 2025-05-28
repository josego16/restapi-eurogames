-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In baseball, how many fouls are an out?', 'Sports_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '0', TRUE FROM new_question
UNION ALL
SELECT id, '5', FALSE FROM new_question
UNION ALL
SELECT id, '3', FALSE FROM new_question
UNION ALL
SELECT id, '2', FALSE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In Baseball, how many times does the ball have to be pitched outside of the strike zone before the batter is walked?', 'Sports_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '4', TRUE FROM new_question
UNION ALL
SELECT id, '1', FALSE FROM new_question
UNION ALL
SELECT id, '2', FALSE FROM new_question
UNION ALL
SELECT id, '3', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What was the final score of the Germany vs. Brazil 2014 FIFA World Cup match?', 'Sports_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '7 - 1', TRUE FROM new_question
UNION ALL
SELECT id, '0 - 1', FALSE FROM new_question
UNION ALL
SELECT id, '3 - 4', FALSE FROM new_question
UNION ALL
SELECT id, '16 - 0', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What team did England beat to win in the 1966 World Cup final?', 'Sports_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'West Germany', TRUE FROM new_question
UNION ALL
SELECT id, 'Soviet Union', FALSE FROM new_question
UNION ALL
SELECT id, 'Portugal', FALSE FROM new_question
UNION ALL
SELECT id, 'Brazil', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Who won the UEFA Champions League in 2016?', 'Sports_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Real Madrid C.F.', TRUE FROM new_question
UNION ALL
SELECT id, 'FC Bayern Munich', FALSE FROM new_question
UNION ALL
SELECT id, 'Atletico Madrid', FALSE FROM new_question
UNION ALL
SELECT id, 'Manchester City F.C.', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In association football, or soccer, a corner kick is when the game restarts after someone scores a goal.', 'Sports_Quiz', 'True_or_false', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'False', TRUE FROM new_question
UNION ALL
SELECT id, 'True', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which country won the 2018 FIFA World Cup hosted in Russia?', 'Sports_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'France', TRUE FROM new_question
UNION ALL
SELECT id, 'Croatia', FALSE FROM new_question
UNION ALL
SELECT id, 'Belgium', FALSE FROM new_question
UNION ALL
SELECT id, 'England', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which of the following sports is not part of the triathlon?', 'Sports_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Horse-Riding', TRUE FROM new_question
UNION ALL
SELECT id, 'Cycling', FALSE FROM new_question
UNION ALL
SELECT id, 'Swimming', FALSE FROM new_question
UNION ALL
SELECT id, 'Running', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which country hosted the 2022 FIFA World Cup?', 'Sports_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Qatar', TRUE FROM new_question
UNION ALL
SELECT id, 'USA', FALSE FROM new_question
UNION ALL
SELECT id, 'Japan', FALSE FROM new_question
UNION ALL
SELECT id, 'Switzerland', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What year did the New Orleans Saints win the Super Bowl?', 'Sports_Quiz', 'Multiple_choice', 'Easy')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '2010', TRUE FROM new_question
UNION ALL
SELECT id, '2008', FALSE FROM new_question
UNION ALL
SELECT id, '2009', FALSE FROM new_question
UNION ALL
SELECT id, '2011', FALSE FROM new_question;

-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In a game of snooker, what colour ball is worth 3 points?', 'Sports_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Green', TRUE FROM new_question
UNION ALL
SELECT id, 'Yellow', FALSE FROM new_question
UNION ALL
SELECT id, 'Brown', FALSE FROM new_question
UNION ALL
SELECT id, 'Blue', FALSE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In what sport does Fanny Chmelar compete for Germany?', 'Sports_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Skiing', TRUE FROM new_question
UNION ALL
SELECT id, 'Swimming', FALSE FROM new_question
UNION ALL
SELECT id, 'Showjumping', FALSE FROM new_question
UNION ALL
SELECT id, 'Gymnastics', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('How many games did Arsenal FC go unbeaten during the 2003-2004 season of the English Premier League', 'Sports_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '38', TRUE FROM new_question
UNION ALL
SELECT id, '51', FALSE FROM new_question
UNION ALL
SELECT id, '49', FALSE FROM new_question
UNION ALL
SELECT id, '22', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Who was the topscorer for England national football team?', 'Sports_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Wayne Rooney', TRUE FROM new_question
UNION ALL
SELECT id, 'David Beckham', FALSE FROM new_question
UNION ALL
SELECT id, 'Steven Gerrard', FALSE FROM new_question
UNION ALL
SELECT id, 'Michael Owen', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the name of the AHL affiliate of the Toronto Maple Leafs?', 'Sports_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Toronto Marlies', TRUE FROM new_question
UNION ALL
SELECT id, 'Toronto Rock', FALSE FROM new_question
UNION ALL
SELECT id, 'Toronto Argonauts', FALSE FROM new_question
UNION ALL
SELECT id, 'Toronto Wolfpack', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('How many premier league trophies did Sir Alex Ferguson win during his time at Manchester United?', 'Sports_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '13', TRUE FROM new_question
UNION ALL
SELECT id, '11', FALSE FROM new_question
UNION ALL
SELECT id, '20', FALSE FROM new_question
UNION ALL
SELECT id, '22', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which nation hosted the FIFA World Cup in 2006?', 'Sports_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Germany', TRUE FROM new_question
UNION ALL
SELECT id, 'United Kingdom', FALSE FROM new_question
UNION ALL
SELECT id, 'Brazil', FALSE FROM new_question
UNION ALL
SELECT id, 'South Africa', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which soccer team won the Copa América Centenario 2016?', 'Sports_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Chile', TRUE FROM new_question
UNION ALL
SELECT id, 'Argentina', FALSE FROM new_question
UNION ALL
SELECT id, 'Brazil', FALSE FROM new_question
UNION ALL
SELECT id, 'Colombia', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which portuguese island is soccer player Cristiano Ronaldo from?', 'Sports_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Madeira', TRUE FROM new_question
UNION ALL
SELECT id, 'Terceira', FALSE FROM new_question
UNION ALL
SELECT id, 'Santa Maria', FALSE FROM new_question
UNION ALL
SELECT id, 'Porto Santo', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What year was hockey legend Wayne Gretzky born?', 'Sports_Quiz', 'Multiple_choice', 'Medium')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '1961', TRUE FROM new_question
UNION ALL
SELECT id, '1965', FALSE FROM new_question
UNION ALL
SELECT id, '1959', FALSE FROM new_question
UNION ALL
SELECT id, '1963', FALSE FROM new_question;

-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('In Canadian football, scoring a rouge is worth how many points?', 'Sports_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '1', TRUE FROM new_question
UNION ALL
SELECT id, '2', FALSE FROM new_question
UNION ALL
SELECT id, '3', FALSE FROM new_question
UNION ALL
SELECT id, '4', FALSE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which female player won the gold medal of table tennis singles in 2016 Olympics Games?', 'Sports_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'DING Ning (China)', TRUE FROM new_question
UNION ALL
SELECT id, 'LI Xiaoxia (China)', FALSE FROM new_question
UNION ALL
SELECT id, 'Ai FUKUHARA (Japan)', FALSE FROM new_question
UNION ALL
SELECT id, 'Song KIM (North Korea)', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which year was the third Super Bowl held?', 'Sports_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, '1969', TRUE FROM new_question
UNION ALL
SELECT id, '1968', FALSE FROM new_question
UNION ALL
SELECT id, '1971', FALSE FROM new_question
UNION ALL
SELECT id, '1970', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Etihad Stadium is the home stadium for which team?', 'Sports_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Manchester City', TRUE FROM new_question
UNION ALL
SELECT id, 'Manchester United', FALSE FROM new_question
UNION ALL
SELECT id, 'Arsenal', FALSE FROM new_question
UNION ALL
SELECT id, 'Blackpool', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which city features all of their professional sports teams'' jersey''s with the same color scheme?', 'Sports_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Pittsburgh', TRUE FROM new_question
UNION ALL
SELECT id, 'New York', FALSE FROM new_question
UNION ALL
SELECT id, 'Seattle', FALSE FROM new_question
UNION ALL
SELECT id, 'Tampa Bay', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('What is the full name of the footballer "Cristiano Ronaldo"?', 'Sports_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Cristiano Ronaldo dos Santos Aveiro', TRUE FROM new_question
UNION ALL
SELECT id, 'Cristiano Ronaldo los Santos Diego', FALSE FROM new_question
UNION ALL
SELECT id, 'Cristiano Armando Diego Ronaldo', FALSE FROM new_question
UNION ALL
SELECT id, 'Cristiano Luis Armando Ronaldo', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which player "kung-fu kicked" a Crystal Palace fan in January 1995?', 'Sports_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Eric Cantona', TRUE FROM new_question
UNION ALL
SELECT id, 'David Seamen', FALSE FROM new_question
UNION ALL
SELECT id, 'Ashley Cole', FALSE FROM new_question
UNION ALL
SELECT id, 'Mark Hughes', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('Which male player won the gold medal of table tennis singles in 2016 Olympics Games?', 'Sports_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Ma Long (China)', TRUE FROM new_question
UNION ALL
SELECT id, 'Zhang Jike (China)', FALSE FROM new_question
UNION ALL
SELECT id, 'Jun Mizutani (Japan)', FALSE FROM new_question
UNION ALL
SELECT id, 'Vladimir Samsonov (Belarus)', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('How many times did Martina Navratilova win the Wimbledon Singles Championship?', 'Sports_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Nine', TRUE FROM new_question
UNION ALL
SELECT id, 'Ten', FALSE FROM new_question
UNION ALL
SELECT id, 'Seven', FALSE FROM new_question
UNION ALL
SELECT id, 'Eight', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, response_mode, difficulty)
  VALUES ('The AHL affiliate team of the Boston Bruins is named what?', 'Sports_Quiz', 'Multiple_choice', 'Hard')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Providence Bruins', TRUE FROM new_question
UNION ALL
SELECT id, 'New Haven Bruins', FALSE FROM new_question
UNION ALL
SELECT id, 'Cambridge Bruins', FALSE FROM new_question
UNION ALL
SELECT id, 'Hartford Bruins', FALSE FROM new_question;


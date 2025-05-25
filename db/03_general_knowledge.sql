-- SQL generado para categoría: general_knowledge
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The National Animal of Scotland is the Unicorn.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('All strawberries are red.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('It is automatically considered entrapment in the United States if the police sell you illegal substances without revealing themselves.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Is a dog a mammal?', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Slovakia is a member of European Union-', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The mitochondria is the powerhouse of the cell.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In architecture, a &quot;pecklesteiner&quot; is a set of doors that overlap each other when closed, and can be locked through a single keyhole.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Nutella is produced by the German company Ferrero.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Gumbo is a stew that originated in Louisiana.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Ping-Pong originated in England', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 11
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Did Michael Jackson invent the moonwalk?', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 12
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In 2010, Twitter and the United States Library of Congress partnered together to archive every tweet by American citizens.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 13
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Dihydrogen Monoxide is a dangerous chemical.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 14
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('When you cry in space, your tears stick to your face.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 15
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('French is an official language in Canada.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 16
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('King Gizzard &amp; The Lizard Wizard&#039;s album &quot;Nonagon Infinity&quot; can be looped seamlessly.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 17
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Romanian belongs to the Romance language family, shared with French, Spanish, Portuguese and Italian. ', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 18
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The color orange is named after the fruit.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 19
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Lego Group was founded in 1932.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 20
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Sun rises from the North.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Easy') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'True', FALSE);

COMMIT;
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What year was Queen Elizabeth II born?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of the following  British Monarchs never appeared on a circulated pound sterling coin?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The word &quot;aprosexia&quot; means which of the following?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Before the 19th Century, the &quot;Living Room&quot; was originally called the...', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Virtual reality company Oculus VR lost which of it&#039;s co-founders in a freak car accident in 2013?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Where is Apple Inc. headquartered?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Electronic music producer Kygo&#039;s popularity skyrocketed after a certain remix. Which song did he remix?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Named after the mallow flower, mauve is a shade of what?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of these cities does NOT have a United States Minting location?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Chartreuse is a color between yellow and what?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 11
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Located in Chile, El Teniente is the world&#039;s largest underground mine for what metal?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 12
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('If you planted the seeds of Quercus robur, what would grow?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 13
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Sciophobia is the fear of what?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 14
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In &quot;Battle Cats&quot;, what is Moneko / MISS Moneko&#039;s critical percentage rate?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 15
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Going by the International Code of Signals, which single flag is interpreted as &quot;I require assistance (not distress)&quot;?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 16
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The word &quot;astasia&quot; means which of the following?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 17
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('According to Fair Works Australia, how long do you have to work to get Long Service Leave?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 18
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('According to the 2014-2015 Australian Bureau of Statistics, what percentage of Australians were born overseas?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 19
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('NCIS stands for &quot;Navy Corps Investigative Service&quot;', 'GeneralKnowledge_Quiz', 'True_or_false', 'Hard') RETURNING id;

-- Question ID 20
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the most commonly used noun in the English language?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, '1926', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, '1923', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, '1929', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, '1930', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Edward VIII', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Victoria', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'George VI', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Charles II', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'The inability to concentrate on anything', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'The inability to make decisions', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'A feverish desire to rip one&#039;s clothes off', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'The inability to stand up', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Parlor', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Open Room', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Sitting Room', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Loft', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Andrew Scott Reisse', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Nate Mitchell', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Jack McCauley', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Palmer Luckey', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Cupertino, California', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Redwood City, California', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Redmond, Washington', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Santa Monica, CA', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Ed Sheeran - I See Fire', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Marvin Gaye - Sexual Healing', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Coldplay - Midnight', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'a-ha - Take On Me', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Purple', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Red', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Brown', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Pink', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'St. Louis, MO', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'San Fransisco, CA', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Philidelphia, PA', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'West Point, NY', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Green', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Red', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Black', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Purple', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Copper', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Iron', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Nickel', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Silver', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Trees', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Grains', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Vegetables', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Flowers', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Shadows', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Eating', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Bright lights', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Transportation', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, '15%', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, '20%', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, '10%', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, '25%', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Victor', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Kilo', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Papa', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Delta', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'The inability to stand up', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'The inability to make decisions', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'The inability to concentrate on anything', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'A feverish desire to rip one&#039;s clothes off', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, '7 years', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, '2 years', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, '8 years', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, '6 months', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, '28%', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, '13%', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, '20%', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, '7%', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Time', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Home', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Water', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Man', FALSE);

COMMIT;
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of the General Mills Corporation&#039;s monster cereals was the last to be released in the 1970&#039;s?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which language is NOT Indo-European?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The word &quot;news&quot; originates from the first letters of the 4 main directions on a compass (North, East, West, South).', 'GeneralKnowledge_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Haggis is traditionally ate on Burns Night.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The average woman is 5 inches / 13 centimeters shorter than the average man.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('You are allowed to sell your soul on eBay.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the unit of currency in Laos?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the last letter of the Greek alphabet?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The vapor produced by e-cigarettes is actually water.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Who invented Pastafarianism?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 11
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('When was Hubba Bubba first introduced?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 12
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which river flows through the Scottish city of Glasgow?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 13
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Mexican Beer &quot;Corona&quot; is what type of beer?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 14
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The US emergency hotline is 911 because of the September 11th terrorist attacks.', 'GeneralKnowledge_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 15
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Kraft &quot;Cheez Whiz&quot; contains cheese culture, but doesn&#039;t actually contain cheese', 'GeneralKnowledge_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 16
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which Italian automobile manufacturer gained majority control of U.S. automobile manufacturer Chrysler in 2011?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 17
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('According to the BBPA, what is the most common pub name in the UK?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 18
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('A doctor with a PhD is a doctor of what?', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 19
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('This field is sometimes known as &ldquo;The Dismal Science.&rdquo;', 'GeneralKnowledge_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 20
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Pure water effectively conducts electricity ', 'GeneralKnowledge_Quiz', 'True_or_false', 'Medium') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Fruit Brute', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Count Chocula', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Franken Berry', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Boo-Berry', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Hungarian', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Russian', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Greek', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Latvian', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Kip', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Ruble', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Konra', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Dollar', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Omega', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Mu', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Epsilon', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Kappa', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Bobby Henderson', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Eric Tignor', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Bill Nye', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Zach Soldi', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, '1979', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, '1984', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, '1972', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, '1980', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Clyde', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Tay', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Dee', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Tweed', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Pale Lager', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'India Pale Ale', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Pilfsner', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Baltic Porter', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Fiat', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Maserati', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Alfa Romeo', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Ferrari', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Red Lion', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Royal Oak', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'White Hart', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'King&#039;s Head', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Philosophy', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Psychology', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Phrenology', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Physical Therapy', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Economics', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Philosophy', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Politics', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Physics', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'True', FALSE);

COMMIT;

-- SQL generado para categoría: history
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which one of these tanks was designed and operated by the United Kingdom?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('These two countries held a commonwealth from the 16th to 18th century.', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the historical name of Sri Lanka?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('How long did World War II last?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of these countries remained neutral during World War II?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In what year was the M1911 pistol designed?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which German field marshal was known as the `Desert Fox`?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('During WWII, in 1945, the United States dropped atomic bombs on the two Japanese cities of Hiroshima and what other city?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The United States was a member of the League of Nations.', 'History_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Who was among those killed in the 2010 Smolensk, Russia plane crash tragedy?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 11
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('How many manned moon landings have there been?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 12
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Cold War ended with Joseph Stalin&#039;s death.', 'History_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 13
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What was William Frederick Cody better known as?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 14
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Adolf Hitler was a german soldier in World War I.', 'History_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 15
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of the following countries was not an axis power during World War II?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 16
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The French Kingdom helped the United States gain their independence over Great Britain during the Revolutionary War.', 'History_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 17
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which modern day country is the region that was known as Phrygia in ancient times?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 18
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of the following was Brazil was a former colony under?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 19
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('How was Socrates executed?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 20
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('How old was Adolf Hitler when he died?', 'History_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Tog II', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'M4 Sherman', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Tiger H1', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'T-34', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Poland and Lithuania', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Hutu and Rwanda', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'North Korea and South Korea', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Bangladesh and Bhutan', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Ceylon', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Myanmar', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Colombo', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Badulla', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, '6 years', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, '4 years', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, '5 years', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, '7 years', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Switzerland', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'United Kingdom', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'France', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Italy', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, '1911', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, '1907', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, '1899', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, '1917', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Erwin Rommel', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Ernst Busch', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Wolfram Freiherr von Richthofen', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Wilhelm List', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Nagasaki', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Kawasaki', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Tokyo', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Kagoshima', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'The Polish President', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Pope John Paul II', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Bang-Ding Ow', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Albert Putin', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, '6', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, '1', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, '3', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, '7', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Buffalo Bill', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Billy the Kid', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Wild Bill Hickok', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Pawnee Bill', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, ' Soviet Union', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Italy', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Germany', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Japan', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Turkey', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Syria', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Greece', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Egypt', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Portugal', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Spain', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'The Netherlands', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'France', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Poison', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Decapitation', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Firing squad', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Crucifixion ', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, '56', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, '43', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, '65', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, '47', FALSE);

COMMIT;
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('When was the SS or Schutzstaffel established?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which English king was married to Eleanor of Aquitaine?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The pantheon in Rome was used to worship what god?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In addition to his career as an astrologer and &quot;prophet&quot;, Nostradamus published a 1555 treatise that included a section on what?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which countries participated in the Lobster War?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Battle of Hastings was fought in which year?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('When did Lithuania declare independence from the Soviet Union?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What was found in 1946 by two young shepards near a cave?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Pianist Fr&eacute;d&eacute;ric Chopin was a composer of which musical era?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of these theoretical phycisists first predicted the existence of antimatter?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 11
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What age was King Henry V when he died?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 12
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('On which day did ARPANET suffer a 4 hour long network crash?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 13
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Bohdan Khmelnytsky was which of the following?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 14
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('From 1940 to 1942, what was the capital-in-exile of Free France ?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 15
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which country did the Eureka Rebellion, an 1856 battle against colonial rule, take place in?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 16
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Japan was part of the Allied Powers during World War I.', 'History_Quiz', 'True_or_false', 'Hard') RETURNING id;

-- Question ID 17
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Spain was formed in 1469 with the marriage of Isabella I of Castile and Ferdinand II of what other Iberian kingdom?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 18
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Who was the first man to travel into outer space twice?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 19
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('During the Winter War, the amount of Soviet Union soliders that died or went missing was five times more than Finland&#039;s.', 'History_Quiz', 'True_or_false', 'Hard') RETURNING id;

-- Question ID 20
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('When did Canada leave the confederation to become their own nation?', 'History_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'April 4th, 1925', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'September 1st, 1941', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'March 8th, 1935', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'February 21st, 1926', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Henry II', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Richard I', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Henry I', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Henry V', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Any god they wanted', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Athena', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Zeus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Both Athena and Zeus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Making jams and jellies', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Teaching parrots to talk', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Cheating at card games', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Digging graves', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'France and Brazil', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Canada and Norway', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Australia and New Zealand', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'United States and England', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, '1066', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, '911', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, '1204', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, '1420', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'March 11th, 1990', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'December 25th, 1991', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'December 5th, 1991', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'April 20th, 1989', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Dead Sea Scrolls', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'The Blackbeard Chest', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Sheep', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'The First Oaxaca Cave Sleeper', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Romantic', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Classic', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Baroque', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Renaissance', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Paul Dirac', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Niels Bohr', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Albert Einstein', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Werner Heisenberg', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, '35', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, '62', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, '87', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, '73', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'October 27, 1980', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'November 21, 1969', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'October 29, 1969', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'December 9, 1991', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Leader of the Ukrainian Cossacks', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'General Secretary of the Communist Party of the USSR', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Prince of Wallachia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Grand Prince of Novgorod', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Brazzaville', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Algiers', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Paris', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Tunis', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Australia', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'India', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Canada', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Brazil', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Aragon', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Galicia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Le&oacute;n', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Navarre', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Gus Grissom', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Vladimir Komarov', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Charles Conrad', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Yuri Gagarin', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'July 1st, 1867', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'July 1st, 1763', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'July 1st, 1832', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'July 1st, 1902', FALSE);

COMMIT;
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Who crowned Charlemagne as Holy Roman Emperor on Christmas Day in 800?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What was the transfer of disease, crops, and people across the Atlantic shortly after the discovery of the Americas called?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In what prison was Adolf Hitler held in 1924?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Tsar Bomba, the most powerful nuclear bomb ever tested, had a yield of 50 megatons but theoretically had a maximum yield of how much?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In what year did the North American Video Game Crash occur?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('All of the following are names of the Seven Warring States EXCEPT:', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of the following is not in the Indo-European language family?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('One of the deadliest pandemics, the &quot;Spanish Flu&quot;, killed off what percentage of the human world population at the time?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Theodore Roosevelt Jr. was the only General involved in the initial assault on D-Day.', 'History_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Joseph Stalin had a criminal past doing what?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 11
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Panama Canal was finished under the administration of which U.S. president?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 12
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What year is considered to be the year that the British Empire ended?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 13
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('When did construction of the Suez Canal finish?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 14
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What was the bloodiest single-day battle during the American Civil War?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 15
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('When was &quot;The Gadget&quot;, the first nuclear device to be detonated, tested?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 16
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of the following snipers has the highest amount of confirmed kills?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 17
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of the following is NOT classified as a Semetic language?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 18
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('On which aircraft carrier did the Doolitte Raid launch from on April 18, 1942 during World War II?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 19
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What happened on June 6, 1944?', 'History_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 20
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('United States President Ronald Reagan was the first president to appoint a woman to the Supreme Court. ', 'History_Quiz', 'True_or_false', 'Medium') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Pope Leo III', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Pope Urban IV', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Pope Stephen V', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Pope Valentine', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'The Columbian Exchange', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Triangle Trade', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Transatlantic Slave Trade', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'The Silk Road', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Landsberg Prison', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Spandau Prison', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Ebrach Abbey', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Hohenasperg', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, '100 Megatons', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, '200 Megatons', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, '75 Megatons', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, '150 Megatons', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, '1983', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, '1982', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, '1993', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, '1970', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Zhai (翟)', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Zhao (趙)', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Qin (秦)', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Qi (齊)', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Finnish', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'English', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Hindi', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Russian', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, '3 to 6 percent', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, '6 to 10 percent', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, '1 to 3 percent', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'less than 1 percent', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Robbing Trains', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Murder for Hire', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Tax Evasion', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Identity Fraud', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Woodrow Wilson', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Franklin Delano Roosevelt', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Herbert Hoover', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Theodore Roosevelt', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, '1997', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, '1986', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, '1981', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, '1971', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, '1869', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, '1859', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, '1860', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, '1850', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'The Battle of Antietam', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'The Siege of Vicksburg', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'The Battle of Gettysburg', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'The Battles of Chancellorsville', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'July 16, 1945', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'June 22, 1945', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'August 6, 1945', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'April 5, 1945', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Simo H&auml;yh&auml;', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Chris Kyle', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Vasily Zaytsev', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Craig Harrison', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Sumerian', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Maltese', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Akkadian', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Mandaic', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'USS Hornet', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'USS Enterprise', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'USS Lexington', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'USS Saratoga', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'D-Day', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Atomic bombings of Hiroshima and Nagasaki', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Attack on Pearl Harbor', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'The Liberation of Paris', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'False', FALSE);

COMMIT;

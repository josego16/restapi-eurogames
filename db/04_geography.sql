-- SQL generado para categoría: geography
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is Canada&#039;s smallest province?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the name of New Zealand&#039;s indigenous people?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which nation claims ownership of Antarctica?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the Capital of the United States?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the capital of Denmark?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the largest country in the world?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The body of the Egyptian Sphinx was based on which animal?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the capital of the American state of Arizona?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which city is the capital of the United States of America?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What state is the largest state of the United States of America?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 11
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('A group of islands is called an &#039;archipelago&#039;.', 'Geography_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 12
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the capital of Jamaica?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 13
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the smallest country in the world?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 14
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The derisive acronym &quot;PIIGS&quot; refers to which of the following European countries and their economic statuses?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 15
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of the following European languages is classified as a &quot;language isolate?&quot;', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 16
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('If soccer is called football in England, what is American football called in England?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 17
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which country was NOT part of the Soviet Union?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 18
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('How many stars are featured on New Zealand&#039;s flag?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 19
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which ocean borders the west coast of the United States?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 20
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In which country is the city of Rio de Janeiro?', 'Geography_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Prince Edward Island', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'New Brunswick', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Nova Scotia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Yukon', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Maori', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Vikings', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Polynesians', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Samoans', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'No one, but there are claims.', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'United States of America', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'United Nations', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Australia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Washington, D.C.', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Los Angelas, CA', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'New York City, NY', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Houston, TX', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Copenhagen', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Aarhus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Odense', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Aalborg', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Russia', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Canada', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'China', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'United States', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Lion', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Bull', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Horse', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Dog', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Phoenix', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Montgomery', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Tallahassee', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Raleigh', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Washington D.C', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Seattle', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Albany', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Los Angeles', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Alaska', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'California', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Texas', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Washington', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Kingston', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'San Juan', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Port-au-Prince', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Bridgetown', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Vatican City', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Maldives', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Monaco', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Malta', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Portugal, Ireland, Italy, Greece, Spain', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Poland, Iceland, Italy, Greece, Serbia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Poland, Iceland, Italy, Greenland, Spain', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Portugal, Iceland, Ireland, Greece, Serbia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Basque', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Galician', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Maltese', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Hungarian', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'American football', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Combball', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Handball', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Touchdown', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Romania', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Turkmenistan', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Belarus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Tajikistan', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, '4', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, '5', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, '2', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, '0', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Pacific', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Atlantic', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Indian', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Arctic', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Brazil', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Peru', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Chile', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Venezuela', FALSE);

COMMIT;
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What city is known as the Rose Capital of the World?', 'Geography_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which is not a country in Africa?', 'Geography_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Hunua Ranges is located in...', 'Geography_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of these is NOT a real tectonic plate?', 'Geography_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('When does Finland celebrate their independence day?', 'Geography_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Into which basin does the Jordan River flow into?', 'Geography_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Llanfair&shy;pwllgwyngyll&shy;gogery&shy;chwyrn&shy;drobwll&shy;llan&shy;tysilio&shy;gogo&shy;goch is located on which Welsh island?', 'Geography_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What North American tourist attraction is served by the &quot;Maid of the Mist&quot; tour company?', 'Geography_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is Canada&#039;s largest island?', 'Geography_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of these cities is NOT in England?', 'Geography_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Tyler, Texas', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'San Diego, California', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Miami, Florida', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Anaheim, California', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Guyana', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Senegal', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Liberia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Somalia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'New Zealand', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Nepal', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'China', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Mexico', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Atlantic Plate', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'North American Plate', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Eurasian Plate', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Nazca Plate', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'December 6th', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'January 2nd', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'November 12th', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'February 8th', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Dead Sea', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Aral Sea', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Caspian Sea', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Salton Sea', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Anglesey', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Barry', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Bardsey', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Caldey', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Niagara Falls', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Whistler, British Columbia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Disney World', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Yosemite National Park', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Baffin Island', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Prince Edward Island', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Vancouver Island', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Newfoundland', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Edinburgh', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Oxford', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Manchester', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Southampton', FALSE);

COMMIT;
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Gibraltar, located just south of the Iberian peninsula, is a territory of which West Europe country?', 'Geography_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The surface area of Russia is slightly larger than that of the dwarf planet Pluto.', 'Geography_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the capital of Slovakia?', 'Geography_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Japanese district Akihabara is also known by what nickname?', 'Geography_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('How many countries are inside the United Kingdom?', 'Geography_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The third largest country (by square kilometres) in South America is Colombia.', 'Geography_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What island in the Canary Islands was the scene of one of the worst air disasters in history with the collision of two jumbo jets?', 'Geography_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Gothenburg is the capital of Sweden.', 'Geography_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Sonoran Desert is located in eastern Africa.', 'Geography_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('How many states are in Australia?', 'Geography_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 11
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which two modern-day countries used to be known as the region of Rhodesia between the 1890s and 1980?', 'Geography_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 12
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Norway has a larger land area than Sweden.', 'Geography_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 13
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which is the world&#039;s longest river?', 'Geography_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 14
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Is Tartu the capital of Estonia?', 'Geography_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 15
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which country claims ownership of the disputed state Kosovo?', 'Geography_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 16
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which country inside the United Kingdom does NOT appear on its flag, the Union Jack?', 'Geography_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 17
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of the following countries is within the Eurozone but outside of the Schengen Area?', 'Geography_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 18
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The World Health Organization headquarters is located in which European country?', 'Geography_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 19
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Route 66 in the United States spans the entire mainland of America, from California to New York.', 'Geography_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 20
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What African country has Portuguese as its official language?', 'Geography_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'United Kingdom', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Spain', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Portugal', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'France', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Bratislava', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Sofia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Ljubljana', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Sarajevo', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Electric Town', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Moon Walk River', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Otaku Central ', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Big Eyes', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Four', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Two', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Three', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'One', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Tenerife', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Fuerteventura', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Gran Canaria', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Maui', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, '6', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, '7', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, '8', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, '5', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Zambia &amp; Zimbabwe', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Togo &amp; Benin', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Lesotho &amp; Swaziland', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Rwanda &amp; Burundi', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Nile', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Missouri', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Amazon', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Yangtze', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Serbia', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Croatia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Albania', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Macedonia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Wales', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Scotland', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Ireland', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Isle of Wight', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Cyprus', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Malta', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Greece', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Portugal', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Switzerland', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'United Kingdom', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'France', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Belgium', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Mozambique', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Botswana', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Gabon', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Togo', FALSE);

COMMIT;

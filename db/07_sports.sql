-- SQL generado para categoría: sports
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('There are a total of 20 races in Formula One 2016 season.', 'Sports_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('When was the FC Schalke 04 founded?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which team won the 2015-16 English Premier League?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('&quot;Stadium of Light&quot; is the home stadium for which soccer team?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Who did Steven Gerrard win the Champions League with?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which two teams played in Super Bowl XLII?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In golf, what name is given to a hole score of two under par?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In what sport is a &quot;shuttlecock&quot; used?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What year did the New Orleans Saints win the Super Bowl?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which country won the 2018 FIFA World Cup hosted in Russia?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 11
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In Rugby League, performing a &quot;40-20&quot; is punished by a free kick for the opposing team.', 'Sports_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 12
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which team has won the most Stanley Cups in the NHL?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 13
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What team did England beat to win in the 1966 World Cup final?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 14
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which country hosted the 2020 Summer Olympics?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 15
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What was the year of estabilishment of the Bari Italian Football Club?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 16
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Rio 2016 Summer Olympics held it&#039;s closing ceremony on what date?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 17
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Who won the UEFA Champions League in 2017?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 18
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('This Canadian television sportscaster is known for his &quot;Hockey Night in Canada&quot; role, a commentary show during hockey games.', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 19
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which wrestler won the 2019 Men&rsquo;s Royal Rumble?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 20
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which driver has been the Formula 1 world champion for a record 7 times?', 'Sports_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, '1904', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, '1909', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, '2008', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, '1999', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Leicester City', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Liverpool', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Cheslea', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Manchester United', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Sunderland FC', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Barcelona FC', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Paris Saints-Germain', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Manchester United', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Liverpool', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Real Madrid', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Chelsea', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Man City', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'The New York Giants &amp; The New England Patriots', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'The Green Bay Packers &amp; The Pittsburgh Steelers', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'The Philadelphia Eagles &amp; The New England Patriots', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'The Seattle Seahawks &amp; The Denver Broncos', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Eagle', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Birdie', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Bogey', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Albatross', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Badminton', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Table Tennis', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Rugby', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Cricket', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, '2010', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, '2008', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, '2009', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, '2011', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'France', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Croatia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Belgium', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'England', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Montreal Canadians', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Chicago Blackhawks', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Toronto Maple Leafs', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Detroit Red Wings', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'West Germany', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Soviet Union', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Portugal', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Brazil', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Japan', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'China', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Australia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Germany', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, '1908', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, '1945', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, '2014', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, '1895', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'August 21', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'August 23', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'August 19', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'August 17', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Real Madrid C.F.', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Atletico Madrid', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'AS Monaco FC', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Juventus F.C.', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Don Cherry', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Don McKellar', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Don Taylor ', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Donald Sutherland', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Seth Rollins', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Braun Strowman', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'AJ Styles', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Andrade', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Michael Schumacher', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Ayrton Senna', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Fernando Alonso', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Jim Clark', FALSE);

COMMIT;
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Where was the Games of the XXII Olympiad held?', 'Sports_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the full name of the footballer &quot;Cristiano Ronaldo&quot;?', 'Sports_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('At which race was the 2018 F1 Drivers Championship won?', 'Sports_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('How many times did Martina Navratilova win the Wimbledon Singles Championship?', 'Sports_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which player &quot;kung-fu kicked&quot; a Crystal Palace fan in January 1995?', 'Sports_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which city features all of their professional sports teams&#039; jersey&#039;s with the same color scheme?', 'Sports_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('With which doubles partner did John McEnroe have most success?', 'Sports_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Prior to 2018, which car company is the only Japanese company which won the 24 Hours of Le Mans?', 'Sports_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The AHL affiliate team of the Boston Bruins is named what?', 'Sports_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Etihad Stadium is the home stadium for which team?', 'Sports_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Moscow', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Barcelona', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Tokyo', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Los Angeles', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Cristiano Ronaldo dos Santos Aveiro', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Cristiano Ronaldo los Santos Diego', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Cristiano Armando Diego Ronaldo', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Cristiano Luis Armando Ronaldo', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Mexico', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'United States', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Belgium', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Abu Dhabi', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Nine', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Ten', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Seven', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Eight', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Eric Cantona', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'David Seamen', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Ashley Cole', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Mark Hughes', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Pittsburgh', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'New York', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Seattle', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Tampa Bay', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Peter Fleming', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Mark Woodforde', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Michael Stich', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Mary Carillo', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Mazda', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Toyota', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Subaru', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Nissan', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Providence Bruins', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'New Haven Bruins', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Cambridge Bruins', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Hartford Bruins', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Manchester City', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Manchester United', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Arsenal', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Blackpool', FALSE);

COMMIT;
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the exact length of one non-curved part in Lane 1 of an Olympic Track?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Formula E is an auto racing series that uses hybrid electric race cars.', 'Sports_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Who is Manchester United&#039;s top premier league goal scorer?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('A stimpmeter measures the speed of a ball over what surface?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In 2016, who won the Formula 1 World Constructor&#039;s Championship for the third time in a row?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is Tiger Woods&#039; all-time best career golf-score?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In what sport does Fanny Chmelar compete for Germany?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which NBA player has the most games played over the course of their career?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In 2008, Usain Bolt set the world record for the 100 meters with one shoelace untied.', 'Sports_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What national team won the 2016 edition of UEFA European Championship?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 11
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('At which bridge does the annual Oxford and Cambridge boat race start?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 12
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('During Wimbledon, spectators in the grounds can buy the tennis balls that have been used in matches.', 'Sports_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 13
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which soccer team won the Copa Am&eacute;rica Centenario 2016?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 14
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which Formula 1 driver switched teams in the middle of the 2017 season?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 15
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('With which team did Michael Schumacher make his Formula One debut at the 1991 Belgian Grand Prix?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 16
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the oldest team in the NFL?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 17
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which NBA player won Most Valuable Player for the 1999-2000 season?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 18
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which basketball team has attended the most NBA grand finals?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 19
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('How many French Open&#039;s did Bj&ouml;rn Borg win?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 20
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Who won the &quot;Champions League&quot; in 1999?', 'Sports_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, '84.39m', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, '100m', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, '100yd', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, '109.36yd', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Wayne Rooney', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Sir Bobby Charlton', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Ryan Giggs', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'David Beckham', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Golf Putting Green', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, ' Football Pitch', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Cricket Outfield', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Pinball Table', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Mercedes-AMG Petronas', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Scuderia Ferrari', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'McLaren Honda', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Red Bull Racing Renault', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, '61', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, '65', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, '63', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, '67', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Skiing', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Swimming', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Showjumping', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Gymnastics', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Robert Parish', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Kareem Abdul-Jabbar', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Kevin Garnett', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Kobe Bryant', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Portugal', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'France', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Germany', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'England', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Putney', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Hammersmith', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Vauxhall ', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Battersea', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Chile', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Argentina', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Brazil', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Colombia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Carlos Sainz Jr.', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Daniil Kvyat', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Jolyon Palmer', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Rio Haryanto', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Jordan', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Benetton', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Ferrari', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'Mercedes', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Arizona Cardinals', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Chicago Bears', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Green Bay Packers', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'New York Giants', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Shaquille O&#039;Neal', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Allen Iverson', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Kobe Bryant', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Paul Pierce', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Los Angeles Lakers', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Boston Celtics', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Philadelphia 76ers', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Golden State Warriors', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, '6', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, '4', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, '9', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, '2', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Manchester United', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Barcelona', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Bayern Munich', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Liverpool', FALSE);

COMMIT;

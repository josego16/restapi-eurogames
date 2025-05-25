-- SQL generado para categoría: mythology
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of these mythological creatures is said to be half-man and half-horse?', 'Mythology_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('How many heads does Cerberus have?', 'Mythology_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In most traditions, who was the wife of Zeus?', 'Mythology_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of the following is not true about the life of Tiresias?', 'Mythology_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Who in Greek mythology, who led the Argonauts in search of the Golden Fleece?', 'Mythology_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What mytological creatures have women&#039;s faces and vultures&#039; bodies?', 'Mythology_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('A wyvern is the same as a dragon.', 'Mythology_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The greek god Poseidon was the god of what?', 'Mythology_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In the Greek Mythology, the Gorgon can turn those who behold her to stone.', 'Mythology_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('According to Greek Mythology, Zeus can control lightning.', 'Mythology_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 11
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In the Greek Mythology, the god of war is called Mars.', 'Mythology_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 12
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What mythology did the god &quot;Apollo&quot; come from?', 'Mythology_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 13
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The ancient Roman god of war was commonly known as which of the following?', 'Mythology_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 14
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In Norse mythology, Thor once dressed as a woman.', 'Mythology_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 15
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('According to Greek Mythology, Atlas was an Olympian God.', 'Mythology_Quiz', 'True_or_false', 'Easy') RETURNING id;

-- Question ID 16
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which Greek &amp; Roman god was known as the god of music, truth and prophecy, healing, the sun and light, plague, poetry, and more?', 'Mythology_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 17
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which figure from Greek mythology traveled to the underworld to return his wife Eurydice to the land of the living?', 'Mythology_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 18
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In Greek mythology, who is the god of wine?', 'Mythology_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 19
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Nike apparel and footwear brand takes it&#039;s name from the Greek goddess of what?', 'Mythology_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

-- Question ID 20
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Who was the only god from Greece who did not get a name change in Rome?', 'Mythology_Quiz', 'Multiple_Choice', 'Easy') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Centaur', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Minotaur', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Pegasus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Gorgon', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, '3', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, '2', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, '1', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, '5', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Hera', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Aphrodite', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Athena', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Hestia', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Sailed with the Argonauts to find the golden fleece', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Athena turned him into a woman, and then years later back into a man', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Hera blinded him after he agreed with Zeus in an argument', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Revealed to Oedipus that Oedipus had married his own mother', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Jason', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Castor', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Daedalus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Odysseus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Harpies', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Mermaids', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Nymph', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Lilith', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'The Sea', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'War', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Sun', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Fire', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Greek and Roman', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Roman and Spanish', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Greek and Chinese', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Greek, Roman and Norse', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Mars', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Jupiter', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Juno', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Ares', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Apollo', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Aphrodite', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Artemis', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Athena', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Orpheus', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Hercules', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Perseus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Daedalus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Dionysus', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Hephaestus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Demeter', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Apollo', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Victory', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Courage', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Strength', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'Honor', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Apollo', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Demeter', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Zeus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Athena', FALSE);

COMMIT;
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which Norse God has a horse named Sleipnir?', 'Mythology_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Ska&eth;i is the Norse Goddess of skiing, mountains, winter and bowhunting.', 'Mythology_Quiz', 'True_or_false', 'Hard') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What immense structure is referred to in Norse Mythology as the Yggdrasil.', 'Mythology_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In Greek Mythology, who was the daughter of King Minos?', 'Mythology_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What was the punishment for Sysiphus&#039;s craftiness?', 'Mythology_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Who is the Egyptian god of reproduction and lettuce?', 'Mythology_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Who did Hippomenes defeat in a footrace?', 'Mythology_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Rannamaari was a sea demon that haunted the people of the Maldives and had to be appeased monthly with the sacrifice of a virgin girl.', 'Mythology_Quiz', 'True_or_false', 'Hard') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Janus was the Roman god of doorways and passageways.', 'Mythology_Quiz', 'True_or_false', 'Hard') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of the following is NOT a god in Norse Mythology.', 'Mythology_Quiz', 'Multiple_Choice', 'Hard') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Odin', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Thor', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Frigg', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Balder', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Tree', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Mountain', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Temple', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'Castle', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Ariadne', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Athena', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Ariel', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'Alana', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Cursed to roll a boulder up a hill for eternity.', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Tied to a boulder for eternity, being pecked by birds.', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Standing in a lake filled with water he could not drink.', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'To fell a tree that regenerated after every axe swing.', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Min', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Menu', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Mut', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Meret', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Atalanta', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Peleus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Theseus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Jason', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Jens', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Loki', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Tyr', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Snotra', FALSE);

COMMIT;
BEGIN;

-- Question ID 1
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Who was the Roman god of fire?', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 2
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('According to the Egyptian Myth of Osiris, who murdered Osiris?', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 3
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In Greek mythology, Hera is the goddess of harvest.', 'Mythology_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 4
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('According to Norse mythology, Loki is a mother.', 'Mythology_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 5
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of the following is not one of the Greek Fates?', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 6
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Maori hold that which island nation was founded by Kupe, who discovered it under a long white cloud?', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 7
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the name of the first human being in Norse mythology?', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 8
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('What is the name of the Greek god of blacksmiths?', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 9
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Hel was the daughter of which Norse Mythological figure?', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 10
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In African mythology, Anansi is a trickster and storyteller who takes the shape of which animal?', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 11
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In Greek mythology, Persephone must return to the underworld because she had eaten what kind of seeds?', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 12
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Who is the God Loki&#039;s son? ', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 13
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Norse god Odin has two pet crows named &quot;Huginn&quot; and &quot;Muninn&quot;.  What do their names mean?', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 14
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Neptune&#039;s greek name was...', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 15
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Roman god &quot;Jupiter&quot; was first known as &quot;Zeus&quot; to the Greeks.', 'Mythology_Quiz', 'True_or_false', 'Medium') RETURNING id;

-- Question ID 16
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In Norse Mythology, Baldr was killed by Loki with a magical spear made from what plant?', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 17
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('In Greek Mythology, who killed Achilles?', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 18
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('According to Japanese folklore, what is the favorite food of the Kappa.', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 19
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('The Hippogriff, not to be confused with the Griffon, is a magical creature with the front half of an eagle, and the back half of what?', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

-- Question ID 20
INSERT INTO question (statement, question_type, response_mode, difficulty) VALUES ('Which of the following Mesopotamian mythological figures was NOT a deity?', 'Mythology_Quiz', 'Multiple_Choice', 'Medium') RETURNING id;

INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Vulcan', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Apollo', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Jupiter', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (1, 'Mercury', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Set', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Horus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Ra', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (2, 'Anhur', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'False', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (3, 'True', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (4, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Narcissus', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Clotho', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Atropos', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (5, 'Lachesis', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'New Zealand', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Vanuatu', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Fiji', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (6, 'Hawaii', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Ask', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Asmund', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Ake', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (7, 'Asger', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Hephaestus', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Dyntos', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Vulcan', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (8, 'Artagatus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Loki', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Thor', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Odin', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (9, 'Balder', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Spider', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Wild dog', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Monkey', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (10, 'Crocodile', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Pomegranate', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Sunflower', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Orange', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (11, 'Fig', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Fenrir ', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Odin', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Hel', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (12, 'Sigyn', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Thought &amp; Memory', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Power &amp; Peace', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'War &amp; Learning', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (13, 'Sleeping &amp; Waking', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Poseidon', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Ares', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Zeus', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (14, 'Apollo', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'True', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (15, 'False', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Mistletoe', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Wolf&#039;s Bane', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Buckthorn', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (16, 'Hemlock', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Paris', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Hector', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Helen', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (17, 'Pericles', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Cucumbers', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Kabocha', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Nasu', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (18, 'Soba', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'A Horse', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'A Dragon', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'A Tiger', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (19, 'A Lion', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Enkidu', TRUE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Enki', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Enlil', FALSE);
INSERT INTO answer (question_id, text, is_correct) VALUES (20, 'Enkimdu', FALSE);

COMMIT;

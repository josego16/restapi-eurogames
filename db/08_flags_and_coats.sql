-- Question 1
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Hard', 'Multiple_choice', 'https://flagcdn.com/w320/pm.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Cook Islands', FALSE FROM new_question
UNION ALL
SELECT id, 'United States Virgin Islands', FALSE FROM new_question
UNION ALL
SELECT id, 'South Georgia', FALSE FROM new_question
UNION ALL
SELECT id, 'Saint Pierre and Miquelon', TRUE FROM new_question;

-- Question 2
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms', 'Medium','Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/ie.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Bulgaria', FALSE FROM new_question
UNION ALL
SELECT id, 'Ireland', TRUE FROM new_question
UNION ALL
SELECT id, 'Guernsey', FALSE FROM new_question
UNION ALL
SELECT id, 'Cuba', FALSE FROM new_question;

-- Question 3
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag', 'Medium', 'Multiple_choice', 'https://flagcdn.com/w320/ps.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Algeria', FALSE FROM new_question
UNION ALL
SELECT id, 'Antarctica', FALSE FROM new_question
UNION ALL
SELECT id, 'Palestine', TRUE FROM new_question
UNION ALL
SELECT id, 'Vatican City', FALSE FROM new_question;

-- Question 4
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Medium','Multiple_choice', 'https://flagcdn.com/w320/mf.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Saint Martin', TRUE FROM new_question
UNION ALL
SELECT id, 'Antarctica', FALSE FROM new_question
UNION ALL
SELECT id, 'Yemen', FALSE FROM new_question
UNION ALL
SELECT id, 'Myanmar', FALSE FROM new_question;

-- Question 5
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag', 'Easy','Multiple_choice', 'https://flagcdn.com/w320/ca.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Ethiopia', FALSE FROM new_question
UNION ALL
SELECT id, 'Canada', TRUE FROM new_question
UNION ALL
SELECT id, 'Kiribati', FALSE FROM new_question
UNION ALL
SELECT id, 'Croatia', FALSE FROM new_question;

-- Question 6
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms', 'Hard','Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/mm.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Myanmar', TRUE FROM new_question
UNION ALL
SELECT id, 'Guernsey', FALSE FROM new_question
UNION ALL
SELECT id, 'Caribbean Netherlands', FALSE FROM new_question
UNION ALL
SELECT id, 'France', FALSE FROM new_question;

-- Question 7
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy','Multiple_choice','https://flagcdn.com/w320/nl.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Uganda', FALSE FROM new_question
UNION ALL
SELECT id, 'Netherlands', TRUE FROM new_question
UNION ALL
SELECT id, 'Rwanda', FALSE FROM new_question
UNION ALL
SELECT id, 'Austria', FALSE FROM new_question;

-- Question 8
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard','Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/ke.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Moldova', FALSE FROM new_question
UNION ALL
SELECT id, 'Kenya', TRUE FROM new_question
UNION ALL
SELECT id, 'Martinique', FALSE FROM new_question
UNION ALL
SELECT id, 'Western Sahara', FALSE FROM new_question;

-- Question 9
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard','Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/to.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Tonga', TRUE FROM new_question
UNION ALL
SELECT id, 'Cameroon', FALSE FROM new_question
UNION ALL
SELECT id, 'Pitcairn Islands', FALSE FROM new_question
UNION ALL
SELECT id, 'Slovenia', FALSE FROM new_question;

-- Question 10
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Medium', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/be.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Turkmenistan', FALSE FROM new_question
UNION ALL
SELECT id, 'Cameroon', FALSE FROM new_question
UNION ALL
SELECT id, 'Mauritania', FALSE FROM new_question
UNION ALL
SELECT id, 'Belgium', TRUE FROM new_question;

-- Question 11
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Hard', 'Multiple_choice', 'https://flagcdn.com/w320/vg.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Mexico', FALSE FROM new_question
UNION ALL
SELECT id, 'Namibia', FALSE FROM new_question
UNION ALL
SELECT id, 'Slovenia', FALSE FROM new_question
UNION ALL
SELECT id, 'British Virgin Islands', TRUE FROM new_question;

-- Question 12
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/ki.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Namibia', FALSE FROM new_question
UNION ALL
SELECT id, 'Montserrat', FALSE FROM new_question
UNION ALL
SELECT id, 'Suriname', FALSE FROM new_question
UNION ALL
SELECT id, 'Kiribati', TRUE FROM new_question;

-- Question 13
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Medium', 'Multiple_choice', 'https://flagcdn.com/w320/ly.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Iceland', FALSE FROM new_question
UNION ALL
SELECT id, 'Haiti', FALSE FROM new_question
UNION ALL
SELECT id, 'Libya', TRUE FROM new_question
UNION ALL
SELECT id, 'Bermuda', FALSE FROM new_question;

-- Question 14
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms', 'Medium','Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/ge.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Liechtenstein', FALSE FROM new_question
UNION ALL
SELECT id, 'Azerbaijan', FALSE FROM new_question
UNION ALL
SELECT id, 'Bahamas', FALSE FROM new_question
UNION ALL
SELECT id, 'Georgia', TRUE FROM new_question;

-- Question 15
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/mh.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Vanuatu', FALSE FROM new_question
UNION ALL
SELECT id, 'Yemen', FALSE FROM new_question
UNION ALL
SELECT id, 'Croatia', FALSE FROM new_question
UNION ALL
SELECT id, 'Marshall Islands', TRUE FROM new_question;

-- Question 16
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/ao.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Poland', FALSE FROM new_question
UNION ALL
SELECT id, 'Angola', TRUE FROM new_question
UNION ALL
SELECT id, 'French Guiana', FALSE FROM new_question
UNION ALL
SELECT id, 'Bouvet Island', FALSE FROM new_question;

-- Question 17
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Medium', 'Multiple_choice', 'https://flagcdn.com/w320/zm.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Zambia', TRUE FROM new_question
UNION ALL
SELECT id, 'Taiwan', FALSE FROM new_question
UNION ALL
SELECT id, 'New Caledonia', FALSE FROM new_question
UNION ALL
SELECT id, 'Armenia', FALSE FROM new_question;

-- Question 18
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy', 'Multiple_choice', 'https://flagcdn.com/w320/mv.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Maldives', TRUE FROM new_question
UNION ALL
SELECT id, 'Syria', FALSE FROM new_question
UNION ALL
SELECT id, 'Indonesia', FALSE FROM new_question
UNION ALL
SELECT id, 'Russia', FALSE FROM new_question;

-- Question 19
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/kh.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Brunei', FALSE FROM new_question
UNION ALL
SELECT id, 'Cambodia', TRUE FROM new_question
UNION ALL
SELECT id, 'Slovenia', FALSE FROM new_question
UNION ALL
SELECT id, 'Denmark', FALSE FROM new_question;

-- Question 20
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Medium', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/cz.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Russia', FALSE FROM new_question
UNION ALL
SELECT id, 'American Samoa', FALSE FROM new_question
UNION ALL
SELECT id, 'Chile', FALSE FROM new_question
UNION ALL
SELECT id, 'Czechia', TRUE FROM new_question;

-- Question 21
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag', 'Medium','Multiple_choice', 'https://flagcdn.com/w320/ht.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Haiti', TRUE FROM new_question
UNION ALL
SELECT id, 'Western Sahara', FALSE FROM new_question
UNION ALL
SELECT id, 'Oman', FALSE FROM new_question
UNION ALL
SELECT id, 'Dominica', FALSE FROM new_question;

-- Question 22
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Hard', 'Multiple_choice', 'https://flagcdn.com/w320/gw.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Guinea-Bissau', TRUE FROM new_question
UNION ALL
SELECT id, 'Bangladesh', FALSE FROM new_question
UNION ALL
SELECT id, 'Burkina Faso', FALSE FROM new_question
UNION ALL
SELECT id, 'Bosnia and Herzegovina', FALSE FROM new_question;

-- Question 23
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/xk.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Kosovo', TRUE FROM new_question
UNION ALL
SELECT id, 'Kiribati', FALSE FROM new_question
UNION ALL
SELECT id, 'Jamaica', FALSE FROM new_question
UNION ALL
SELECT id, 'Germany', FALSE FROM new_question;

-- Question 24
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/sl.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Colombia', FALSE FROM new_question
UNION ALL
SELECT id, 'Sweden', FALSE FROM new_question
UNION ALL
SELECT id, 'Sierra Leone', TRUE FROM new_question
UNION ALL
SELECT id, 'Belize', FALSE FROM new_question;

-- Question 25
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy', 'Multiple_choice', 'https://flagcdn.com/w320/hu.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'French Southern and Antarctic Lands', FALSE FROM new_question
UNION ALL
SELECT id, 'Cayman Islands', FALSE FROM new_question
UNION ALL
SELECT id, 'Hungary', TRUE FROM new_question
UNION ALL
SELECT id, 'Bangladesh', FALSE FROM new_question;

-- Question 26
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy', 'Multiple_choice', 'https://flagcdn.com/w320/jo.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Slovenia', FALSE FROM new_question
UNION ALL
SELECT id, 'Belgium', FALSE FROM new_question
UNION ALL
SELECT id, 'Jordan', TRUE FROM new_question
UNION ALL
SELECT id, 'Grenada', FALSE FROM new_question;

-- Question 27
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/bb.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Singapore', FALSE FROM new_question
UNION ALL
SELECT id, 'Dominican Republic', FALSE FROM new_question
UNION ALL
SELECT id, 'Cook Islands', FALSE FROM new_question
UNION ALL
SELECT id, 'Barbados', TRUE FROM new_question;

-- Question 28
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/ai.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Montenegro', FALSE FROM new_question
UNION ALL
SELECT id, 'Anguilla', TRUE FROM new_question
UNION ALL
SELECT id, 'South Korea', FALSE FROM new_question
UNION ALL
SELECT id, 'Saint Pierre and Miquelon', FALSE FROM new_question;

-- Question 29
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Medium', 'Multiple_choice', 'https://flagcdn.com/w320/bn.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Kazakhstan', FALSE FROM new_question
UNION ALL
SELECT id, 'Brunei', TRUE FROM new_question
UNION ALL
SELECT id, 'Tanzania', FALSE FROM new_question
UNION ALL
SELECT id, 'British Indian Ocean Territory', FALSE FROM new_question;

-- Question 30
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Medium', 'Multiple_choice', 'https://flagcdn.com/w320/bt.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Gabon', FALSE FROM new_question
UNION ALL
SELECT id, 'South Georgia', FALSE FROM new_question
UNION ALL
SELECT id, 'Guatemala', FALSE FROM new_question
UNION ALL
SELECT id, 'Bhutan', TRUE FROM new_question;

-- Question 31
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Hard', 'Multiple_choice', 'https://flagcdn.com/w320/pw.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Nigeria', FALSE FROM new_question
UNION ALL
SELECT id, 'Sierra Leone', FALSE FROM new_question
UNION ALL
SELECT id, 'Palau', TRUE FROM new_question
UNION ALL
SELECT id, 'Faroe Islands', FALSE FROM new_question;

-- Question 32
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/sc.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Seychelles', TRUE FROM new_question
UNION ALL
SELECT id, 'Faroe Islands', FALSE FROM new_question
UNION ALL
SELECT id, 'Réunion', FALSE FROM new_question
UNION ALL
SELECT id, 'Martinique', FALSE FROM new_question;

-- Question 33
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Medium', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/tn.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Guinea', FALSE FROM new_question
UNION ALL
SELECT id, 'Ecuador', FALSE FROM new_question
UNION ALL
SELECT id, 'Tunisia', TRUE FROM new_question
UNION ALL
SELECT id, 'Niger', FALSE FROM new_question;

-- Question 34
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy', 'Multiple_choice', 'https://flagcdn.com/w320/sn.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Maldives', FALSE FROM new_question
UNION ALL
SELECT id, 'Djibouti', FALSE FROM new_question
UNION ALL
SELECT id, 'Turkmenistan', FALSE FROM new_question
UNION ALL
SELECT id, 'Senegal', TRUE FROM new_question;

-- Question 35
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/bf.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Burkina Faso', TRUE FROM new_question
UNION ALL
SELECT id, 'Monaco', FALSE FROM new_question
UNION ALL
SELECT id, 'Guinea-Bissau', FALSE FROM new_question
UNION ALL
SELECT id, 'Myanmar', FALSE FROM new_question;

-- Question 36
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Medium', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/mn.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Aruba', FALSE FROM new_question
UNION ALL
SELECT id, 'Mongolia', TRUE FROM new_question
UNION ALL
SELECT id, 'Namibia', FALSE FROM new_question
UNION ALL
SELECT id, 'Sweden', FALSE FROM new_question;

-- Question 37
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy', 'Multiple_choice', 'https://flagcdn.com/w320/gr.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Ireland', FALSE FROM new_question
UNION ALL
SELECT id, 'Gabon', FALSE FROM new_question
UNION ALL
SELECT id, 'France', FALSE FROM new_question
UNION ALL
SELECT id, 'Greece', TRUE FROM new_question;

-- Question 38
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/mr.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'United States', FALSE FROM new_question
UNION ALL
SELECT id, 'Denmark', FALSE FROM new_question
UNION ALL
SELECT id, 'Japan', FALSE FROM new_question
UNION ALL
SELECT id, 'Mauritania', TRUE FROM new_question;

-- Question 39
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy', 'Multiple_choice', 'https://flagcdn.com/w320/in.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Cameroon', FALSE FROM new_question
UNION ALL
SELECT id, 'India', TRUE FROM new_question
UNION ALL
SELECT id, 'Seychelles', FALSE FROM new_question
UNION ALL
SELECT id, 'South Sudan', FALSE FROM new_question;

-- Question 40
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy', 'Multiple_choice', 'https://flagcdn.com/w320/my.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'American Samoa', FALSE FROM new_question
UNION ALL
SELECT id, 'Turkmenistan', FALSE FROM new_question
UNION ALL
SELECT id, 'Malaysia', TRUE FROM new_question
UNION ALL
SELECT id, 'French Southern and Antarctic Lands', FALSE FROM new_question;

-- Question 41
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Medium', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/br.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Lebanon', FALSE FROM new_question
UNION ALL
SELECT id, 'Lithuania', FALSE FROM new_question
UNION ALL
SELECT id, 'Brazil', TRUE FROM new_question
UNION ALL
SELECT id, 'Algeria', FALSE FROM new_question;

-- Question 42
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy', 'Multiple_choice', 'https://flagcdn.com/w320/eg.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Burundi', FALSE FROM new_question
UNION ALL
SELECT id, 'Saint Martin', FALSE FROM new_question
UNION ALL
SELECT id, 'Egypt', TRUE FROM new_question
UNION ALL
SELECT id, 'Eritrea', FALSE FROM new_question;

-- Question 43
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/zw.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Cayman Islands', FALSE FROM new_question
UNION ALL
SELECT id, 'Aruba', FALSE FROM new_question
UNION ALL
SELECT id, 'Ethiopia', FALSE FROM new_question
UNION ALL
SELECT id, 'Zimbabwe', TRUE FROM new_question;

-- Question 44
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Medium', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/hn.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Guinea', FALSE FROM new_question
UNION ALL
SELECT id, 'Spain', FALSE FROM new_question
UNION ALL
SELECT id, 'Tonga', FALSE FROM new_question
UNION ALL
SELECT id, 'Honduras', TRUE FROM new_question;

-- Question 45
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag', 'Easy','Multiple_choice', 'https://flagcdn.com/w320/fr.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Syria', FALSE FROM new_question
UNION ALL
SELECT id, 'Uganda', FALSE FROM new_question
UNION ALL
SELECT id, 'Honduras', FALSE FROM new_question
UNION ALL
SELECT id, 'France', TRUE FROM new_question;

-- Question 46
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/dj.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Fiji', FALSE FROM new_question
UNION ALL
SELECT id, 'Jordan', FALSE FROM new_question
UNION ALL
SELECT id, 'Guadeloupe', FALSE FROM new_question
UNION ALL
SELECT id, 'Djibouti', TRUE FROM new_question;

-- Question 47
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy', 'Multiple_choice', 'https://flagcdn.com/w320/lv.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Belgium', FALSE FROM new_question
UNION ALL
SELECT id, 'Latvia', TRUE FROM new_question
UNION ALL
SELECT id, 'Antarctica', FALSE FROM new_question
UNION ALL
SELECT id, 'Vietnam', FALSE FROM new_question;

-- Question 48
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms', 'Hard','Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/ws.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Samoa', TRUE FROM new_question
UNION ALL
SELECT id, 'Åland Islands', FALSE FROM new_question
UNION ALL
SELECT id, 'Turks and Caicos Islands', FALSE FROM new_question
UNION ALL
SELECT id, 'Dominican Republic', FALSE FROM new_question;

-- Question 49
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag', 'Easy','Multiple_choice', 'https://flagcdn.com/w320/co.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Colombia', TRUE FROM new_question
UNION ALL
SELECT id, 'Burkina Faso', FALSE FROM new_question
UNION ALL
SELECT id, 'Guadeloupe', FALSE FROM new_question
UNION ALL
SELECT id, 'Bahrain', FALSE FROM new_question;

-- Question 50
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy', 'Multiple_choice', 'https://flagcdn.com/w320/al.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Timor-Leste', FALSE FROM new_question
UNION ALL
SELECT id, 'Saint Helena, Ascension and Tristan da Cunha', FALSE FROM new_question
UNION ALL
SELECT id, 'Barbados', FALSE FROM new_question
UNION ALL
SELECT id, 'Albania', TRUE FROM new_question;

-- Question 51
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/ck.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Peru', FALSE FROM new_question
UNION ALL
SELECT id, 'Grenada', FALSE FROM new_question
UNION ALL
SELECT id, 'Australia', FALSE FROM new_question
UNION ALL
SELECT id, 'Cook Islands', TRUE FROM new_question;

-- Question 52
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Medium', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/ua.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Kosovo', FALSE FROM new_question
UNION ALL
SELECT id, 'Ukraine', TRUE FROM new_question
UNION ALL
SELECT id, 'Lithuania', FALSE FROM new_question
UNION ALL
SELECT id, 'Bolivia', FALSE FROM new_question;

-- Question 53
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy', 'Multiple_choice', 'https://flagcdn.com/w320/vn.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Bosnia and Herzegovina', FALSE FROM new_question
UNION ALL
SELECT id, 'British Indian Ocean Territory', FALSE FROM new_question
UNION ALL
SELECT id, 'Faroe Islands', FALSE FROM new_question
UNION ALL
SELECT id, 'Vietnam', TRUE FROM new_question;

-- Question 54
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Hard', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/va.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Turkmenistan', FALSE FROM new_question
UNION ALL
SELECT id, 'Austria', FALSE FROM new_question
UNION ALL
SELECT id, 'Vatican City', TRUE FROM new_question
UNION ALL
SELECT id, 'Botswana', FALSE FROM new_question;

-- Question 55
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy', 'Multiple_choice', 'https://flagcdn.com/w320/md.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Antarctica', FALSE FROM new_question
UNION ALL
SELECT id, 'Saint Martin', FALSE FROM new_question
UNION ALL
SELECT id, 'Moldova', TRUE FROM new_question
UNION ALL
SELECT id, 'French Guiana', FALSE FROM new_question;

-- Question 56
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Hard', 'Multiple_choice', 'https://flagcdn.com/w320/gu.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Guam', TRUE FROM new_question
UNION ALL
SELECT id, 'Canada', FALSE FROM new_question
UNION ALL
SELECT id, 'Suriname', FALSE FROM new_question
UNION ALL
SELECT id, 'South Georgia', FALSE FROM new_question;

-- Question 57
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Medium', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/cy.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Comoros', FALSE FROM new_question
UNION ALL
SELECT id, 'Canada', FALSE FROM new_question
UNION ALL
SELECT id, 'Azerbaijan', FALSE FROM new_question
UNION ALL
SELECT id, 'Cyprus', TRUE FROM new_question;

-- Question 58
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy', 'Multiple_choice', 'https://flagcdn.com/w320/se.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Luxembourg', FALSE FROM new_question
UNION ALL
SELECT id, 'Cape Verde', FALSE FROM new_question
UNION ALL
SELECT id, 'Sweden', TRUE FROM new_question
UNION ALL
SELECT id, 'Croatia', FALSE FROM new_question;

-- Question 59
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, coat_url)
  VALUES ('Which country does this coat of arms belong to?', 'Coat_of_arms','Medium', 'Multiple_choice', 'https://mainfacts.com/media/images/coats_of_arms/ni.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Oman', FALSE FROM new_question
UNION ALL
SELECT id, 'Cyprus', FALSE FROM new_question
UNION ALL
SELECT id, 'Nicaragua', TRUE FROM new_question
UNION ALL
SELECT id, 'Rwanda', FALSE FROM new_question;

-- Question 60
WITH new_question AS (
  INSERT INTO question (statement, question_type, difficulty, response_mode, flag_url)
  VALUES ('Which country does this flag belong to?', 'Flag','Easy', 'Multiple_choice', 'https://flagcdn.com/w320/py.png')
  RETURNING id
)
INSERT INTO answer (question_id, text, is_correct)
SELECT id, 'Paraguay', TRUE FROM new_question
UNION ALL
SELECT id, 'Singapore', FALSE FROM new_question
UNION ALL
SELECT id, 'Zambia', FALSE FROM new_question
UNION ALL
SELECT id, 'Indonesia', FALSE FROM new_question;
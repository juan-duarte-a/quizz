INSERT INTO question (number, text, points) VALUES (1, '¿Qué es un objeto en Java?', 2);
INSERT INTO question (number, text, points) VALUES (2, '¿Qué palabra reservada es usada para crear un objeto en Java?', 1);
INSERT INTO question (number, text, points) VALUES (3, '¿Qué es una clase en Java?', 2);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Un tipo de dato', 0, 1);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Una plantilla para creación de clases', 0, 1);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Una instancia de una clase', 1, 1);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Un tipo de variable', 0, 1);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, '`new`', 1, 2);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, '`class`', 0, 2);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, '`object`', 0, 2);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, '`create`', 0, 2);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Una instancia de un objeto', 0, 3);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Un plano para crear objetos', 1, 3);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Una declaración de un método', 0, 3);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Un tipo de dato', 0, 3);
INSERT INTO question (number, text) VALUES (1, '¿Qué es un objeto en Java?');
INSERT INTO question (number, text) VALUES (2, '¿Qué palabra reservada es usada para crear un objeto en Java?');
INSERT INTO question (number, text) VALUES (3, '¿Qué es una clase en Java?');
INSERT INTO question (number, text) VALUES (4, 'En java, ¿qué representa el método ''main''?');
INSERT INTO question (number, text) VALUES (5, '¿Qué es encapsulamiento en Java?');
INSERT INTO question (number, text) VALUES (6, '¿Cuál de las siguientes es la forma correcta de definir un constructor para la clase ''Person''?');
INSERT INTO question (number, text) VALUES (7, 'Si la clase ''B'' extiende la clase ''A'', ¿cuál clase es la superclase?');
INSERT INTO question (number, text) VALUES (8, '¿Qué es sobreescritura (overriding) de métodos en Java?');
INSERT INTO question (number, text) VALUES (9, '¿Qué principio de la Programación Orientada a Objetos (OOP) es demostrado cuando una referencia a una superclase es usada para referirse a un objeto subclase?');
INSERT INTO question (number, text) VALUES (10, '¿Qué palabra reservada es usada en Java para heredar de una clase?');

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Un tipo de dato', 0, 1);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Una plantilla para creación de clases', 0, 1);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Una instancia de una clase', 1, 1);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Un tipo de variable', 0, 1);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'new', 1, 2);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'class', 0, 2);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'object', 0, 2);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'create', 0, 2);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Una instancia de un objeto', 0, 3);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Un plano para crear objetos', 1, 3);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Una declaración de un método', 0, 3);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Un tipo de dato', 0, 3);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Un método estático necesario en todas las clases', 0, 4);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Un método constructor de una clase', 0, 4);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'El punto inicial de ejecución de un programa', 1, 4);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Un método especial privado para iniciar un programa', 0, 4);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Dividir un programa en múltiples clases', 0, 5);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'El proceso de herencia en Programación Orientada a Objetos', 0, 5);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Agrupar datos con métodos que operan sobre los datos', 1, 5);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Enlazar dos clases utilizando interfaces', 0, 5);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'void Person() {}', 0, 6);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Person() {}', 1, 6);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'new Person() {}', 0, 6);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'class Person() {}', 0, 6);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Clase A', 1, 7);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Clase B', 0, 7);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Ambas A y B', 0, 7);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Ninguna de las anteriores', 0, 7);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Cambiar el tipo de retorno de un método', 0, 8);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Sobrecarga de un método dentro de la misma clase', 0, 8);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Remover un método de la superclase', 0, 8);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Crear una nueva implementación de un método heredado', 1, 8);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Encapsulamiento', 0, 9);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Herencia', 0, 9);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Polimorfismo', 1, 9);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Abstracción', 0, 9);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'inherits', 0, 10);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'extends', 1, 10);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'implements', 0, 10);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'super', 0, 10);

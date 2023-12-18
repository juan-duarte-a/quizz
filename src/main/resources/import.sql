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
INSERT INTO question (number, text) VALUES (11, 'En Java, ¿qué significa una relación ''uno a uno''?');
INSERT INTO question (number, text) VALUES (12, '¿Cuál de las siguientes es una interfaz (interface) en Java?');
INSERT INTO question (number, text) VALUES (13, 'Una clase que sobreescribe los métodos abstractos de una interfaz _________ dicha interfaz.');
INSERT INTO question (number, text) VALUES (14, 'En una relación ''uno a muchos'', ¿a qué se refiere ''muchos''?');
INSERT INTO question (number, text) VALUES (15, '¿Cuál de las siguientes definiciones mejor describe a una clase abstracta?');
INSERT INTO question (number, text) VALUES (16, '¿Cómo se puede lograr múltiple herencia en Java?');
INSERT INTO question (number, text) VALUES (17, '¿Qué es polimorfismo en Java?');
INSERT INTO question (number, text) VALUES (18, '¿Cuál de las siguientes es una característica de las interfaces en Java?');
INSERT INTO question (number, text) VALUES (19, '¿En una relación ''muchos a uno'' en Java, ¿cómo están las clases relacionadas?');
INSERT INTO question (number, text) VALUES (20, '¿Qué principio utiliza Java para permitir a un objeto ser tratado como una instancia de la clase que lo implementa o extiende?');
INSERT INTO question (number, text) VALUES (21, '¿Qué es el Java Collections Framework (o API)?');
INSERT INTO question (number, text) VALUES (22, '¿Cuál de los siguientes es un tipo de colección en Java?');
INSERT INTO question (number, text) VALUES (23, '¿Qué es una excepción en Java?');
INSERT INTO question (number, text) VALUES (24, '¿Cuál de los siguientes métodos sirve para agregar un elemento en un HashMap en Java?');
INSERT INTO question (number, text) VALUES (25, '¿Cómo se manejan excepciones en Java?');
INSERT INTO question (number, text) VALUES (26, '¿Cuál es la diferencia entre ''List'' y ''Set'' en Java?');
INSERT INTO question (number, text) VALUES (27, '¿Cuál de los siguientes no hace parte del Java Collections Framework?');
INSERT INTO question (number, text) VALUES (28, '¿Qué es un ''NullPointerException'' en Java?');
INSERT INTO question (number, text) VALUES (29, '¿Cuál de las siguientes no es una interfaz en Java?');
INSERT INTO question (number, text) VALUES (30, '¿Qué hace el bloque ''finally'' dentro de una estructura ''try-catch''?');

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

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Una clase puede tener múltiples instancias de otra clase', 0, 11);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Dos clases son completamente independientes una de la otra', 0, 11);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Una instancia de una clase está asociada con una instancia de otra clase', 1, 11);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Una clase hereda de exactamente una sola clase', 0, 11);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Una clase que es usada para crear objetos', 0, 12);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Una plantilla para que otras clases hereden de ella', 0, 12);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Una colección de métodos abstractos y constantes', 1, 12);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Un método abstracto en Java', 0, 12);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'extiende', 0, 13);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'abstrae', 0, 13);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'instancia', 0, 13);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'implementa', 1, 13);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Múltiples métodos en una clase', 0, 14);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Varias clases que heredan de una superclase', 0, 14);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Múltiples interfaces implementadas por una sola clase', 0, 14);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Múltiples instancias de una clase asociadas a una instancia de otra clase', 1, 14);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Una clase que no puede ser instanciada y que podría tener métodos abstractos', 1, 15);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Una clase que no puede ser instanciada y que contiene métodos abstractos', 0, 15);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Una clase con métodos abstractos para ser utilizada con interfaces', 0, 15);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Una interfaz que además de tener métodos abstractos puede tener métodos implementados', 0, 15);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Extendiendo múltiples clases', 0, 16);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Con el uso de interfaces', 1, 16);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Java no soporta herencia múltiple de ningún tipo', 0, 16);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Creando clases anidadas', 0, 16);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Una forma de múltiple herencia de objetos en Java', 0, 17);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'La posibilidad de un objeto de implementar múltiples interfaces', 0, 17);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, '1 y 2 son correctas', 0, 17);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Ninguna es correcta', 1, 17);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'No puede contener métodos implementados (no abstractos)', 0, 18);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Puede tener implementaciones de métodos solo si estos son declarados ''static'' o ''default''', 1, 18);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Todos sus métodos deben ser abstractos', 0, 18);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Solo puede contener métodos abstractos y variables de clase tipo ''final'' (constantes)', 0, 18);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Cada clase extiende múltiples clases', 0, 19);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Múltiples instancias de una clase están asociadas a múltiples instancias de otra clase', 0, 19);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Múltiples clases están asociadas a otra clase', 0, 19);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Múltiples instancias de una clase están asociadas a una instancia de otra clase', 1, 19);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Abstracción', 0, 20);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Herencia', 0, 20);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Polimorfismo', 1, 20);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'No es posible en Java', 0, 20);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Un conjunto de clases e interfaces para manejar listas', 0, 21);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Una librería para creación de grandes cantidades de objetos', 0, 21);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Abstracciones e implementaciones para manejar diferentes tipos de colecciones', 1, 21);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Una herramienta para manejar la entrada y salida de datos', 0, 21);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'String', 0, 22);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Array', 0, 22);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Queue', 1, 22);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Object', 0, 22);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Un tipo de colección', 0, 23);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Un error en la sintaxis del código', 0, 23);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Un evento que interrumpe el flujo normal del programa', 1, 23);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Un error que obligatoriamente debe manejarse en el código del programa', 0, 23);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'add()', 0, 24);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'insert()', 0, 24);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'append()', 0, 24);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'put()', 1, 24);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Usando throws en la cabecera del método', 0, 25);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Usando un bloque try-catch', 0, 25);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, '1 y 2 son correctas', 1, 25);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Ninguna de las anteriores', 0, 25);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, '''List'' es ordenada y ''Set'' es no ordenada', 0, 26);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'No hay diferencia', 0, 26);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, '''List'' permite valores nulos y ''Set'' no los permite', 0, 26);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, '''List'' permite valores duplicados y ''Set'' no los permite', 1, 26);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Map', 0, 27);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Queue', 0, 27);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Array', 1, 27);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'LinkedList', 0, 27);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Un error indicando que un método recibió un argumento inapropiado', 0, 28);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'La asignación equivocada del valor ''null'' a un objeto', 0, 28);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Una excepción lanzada cuando la aplicación intenta usar un objeto que tiene valor ''null''', 1, 28);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Un error que ocurre cuando durante la ejecución de un programa se trata de asignar el valor ''null'' a un dato primitivo', 0, 28);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'List', 0, 29);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'HashMap', 1, 29);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Queue', 0, 29);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Set', 0, 29);

INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (1, 'Se ejecuta si una excepción es atrapada en el bloque ''try-catch''', 0, 30);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (2, 'Es usada para lanzar una nueva excepción', 0, 30);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (3, 'Se ejecuta únicamente si al finalizar el bloque ''try'' no es atrapada ninguna excepción', 0, 30);
INSERT INTO answer_option (option_number, answer, correct, question_number) VALUES (4, 'Es ejecutado al terminar el bloque ''try'' sin importar si se atrapó una excepción o no', 1, 30);


INSERT INTO quote (id, author, text) VALUES (1, 'Chris Pine', 'La programación no se trata de lo que sabes; se trata de lo que puedes averiguar.');
INSERT INTO quote (id, author, text) VALUES (2, 'John Romero', 'La programación es una profesión extremadamente creativa. Es creatividad basada en la lógica.');
INSERT INTO quote (id, author, text) VALUES (3, 'Oscar Wilde', 'Experiencia es el nombre que todos dan a sus errores.');
INSERT INTO quote (id, author, text) VALUES (4, 'Brian Kernighan', 'La programación se aprende escribiendo programas.');
INSERT INTO quote (id, author, text) VALUES (5, 'John Johnson', 'Primero, resuelve el problema. Luego, escribe el código.');
INSERT INTO quote (id, author, text) VALUES (6, 'Martin Fowler', 'Los buenos programadores escriben código que los humanos puedan entender.');
INSERT INTO quote (id, author, text) VALUES (7, 'Linus Torlvads', 'La mayoría de los buenos programadores programan no porque esperan ser pagados o recibir adulación del público, sino porque es divertido programar.');
INSERT INTO quote (id, author, text) VALUES (8, 'Desconocido', 'En software, la simplicidad y la claridad son mucho más valiosas que ser ingenioso.');
INSERT INTO quote (id, author, text) VALUES (9, 'John Johnson', 'Para tener éxito, hay que ser creativo y persistente.');
INSERT INTO quote (id, author, text) VALUES (10, 'Desconocido', 'El primer paso de cualquier proyecto es convencer a tu cerebro de que no es imposible.');
INSERT INTO quote (id, author, text) VALUES (11, 'Desconocido', 'Las herramientas no hacen buenos programas, los buenos programadores hacen buenos programas.');
INSERT INTO quote (id, author, text) VALUES (12, 'Anders Hejlsberg', 'Solo porque la gente te cuenta que no es posible, no necesariamente significa que es imposible. Solo significa que ellos no pueden hacerlo.');
INSERT INTO quote (id, author, text) VALUES (13, 'Edsger Dijkstra', 'La simplicidad es un requisito previo para la fiabilidad.');
INSERT INTO quote (id, author, text) VALUES (14, 'Bill Gates', 'Medir la programación por líneas de código es como medir el progreso de la construcción de un avión por su peso.');
INSERT INTO quote (id, author, text) VALUES (15, 'Grace Hopper', 'Lo más peligroso es decir ''siempre hemos hecho las cosas de esta manera''.');
INSERT INTO quote (id, author, text) VALUES (16, 'Desconocido', 'Si piensas que eres un buen programador... prueba a enseñar a alguien más tu código.');
INSERT INTO quote (id, author, text) VALUES (17, 'Desconocido', 'El verdadero arte de la programación no es escribir muchas líneas de código, sino cómo resolver problemas complejos de la manera más simple.');
INSERT INTO quote (id, author, text) VALUES (18, 'Andy Hunt', 'Nadie en la breve historia de la informática ha escrito nunca un software perfecto. Es poco probable que seas el primero.');
INSERT INTO quote (id, author, text) VALUES (19, 'Bjarne Stroustrup', 'El aspecto más importante del desarrollo de software es tener claro lo que estás tratando de construir.');
INSERT INTO quote (id, author, text) VALUES (20, 'Desconocido', 'Para entender la recursión, primero debes entender la recursión.');
INSERT INTO quote (id, author, text) VALUES (21, 'Desconocido', 'Los errores no son fracasos; son el proceso de aprendizaje y mejora.');

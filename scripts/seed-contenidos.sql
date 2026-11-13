-- ================================================================
-- DisneyPlusLab · 100 contenidos para práctica de EF Core + LINQ
-- PostgreSQL
--
-- Los títulos son obras reales asociadas a Disney/Pixar/Marvel/
-- Star Wars/National Geographic. El campo Disponible es DIDÁCTICO
-- y no representa disponibilidad actual por región.
-- En series, DuracionMinutos se usa como duración típica de episodio.
-- ================================================================

-- OPCIONAL: para borrar el registro de prueba y quedar con 100 exactos:
-- TRUNCATE TABLE "Contenidos" RESTART IDENTITY;

INSERT INTO "Contenidos"
("Titulo","Descripcion","Tipo","FechaEstreno","DuracionMinutos",
 "Clasificacion","Disponible","FechaCreacionUtc")
VALUES
('Snow White and the Seven Dwarfs', 'Clásico animado de Disney.', 'Película', DATE '1937-12-21', 83, 'G', TRUE, CURRENT_TIMESTAMP),
('Pinocchio', 'Clásico animado de Disney.', 'Película', DATE '1940-02-07', 88, 'G', TRUE, CURRENT_TIMESTAMP),
('Dumbo', 'Clásico animado de Disney.', 'Película', DATE '1941-10-23', 64, 'G', TRUE, CURRENT_TIMESTAMP),
('Bambi', 'Clásico animado de Disney.', 'Película', DATE '1942-08-13', 70, 'G', TRUE, CURRENT_TIMESTAMP),
('Cinderella', 'Clásico animado de Disney.', 'Película', DATE '1950-02-15', 74, 'G', TRUE, CURRENT_TIMESTAMP),
('Alice in Wonderland', 'Aventura fantástica animada de Disney.', 'Película', DATE '1951-07-26', 75, 'G', FALSE, CURRENT_TIMESTAMP),
('Peter Pan', 'Aventura animada de Disney.', 'Película', DATE '1953-02-05', 77, 'G', TRUE, CURRENT_TIMESTAMP),
('Lady and the Tramp', 'Romance animado de Disney.', 'Película', DATE '1955-06-22', 76, 'G', TRUE, CURRENT_TIMESTAMP),
('Sleeping Beauty', 'Clásico de princesas de Disney.', 'Película', DATE '1959-01-29', 75, 'G', FALSE, CURRENT_TIMESTAMP),
('One Hundred and One Dalmatians', 'Comedia animada de Disney.', 'Película', DATE '1961-01-25', 79, 'G', TRUE, CURRENT_TIMESTAMP),
('The Jungle Book', 'Aventura musical animada de Disney.', 'Película', DATE '1967-10-18', 78, 'G', TRUE, CURRENT_TIMESTAMP),
('The Aristocats', 'Comedia musical animada de Disney.', 'Película', DATE '1970-12-24', 78, 'G', TRUE, CURRENT_TIMESTAMP),
('The Little Mermaid', 'Musical animado del Renacimiento Disney.', 'Película', DATE '1989-11-17', 83, 'G', TRUE, CURRENT_TIMESTAMP),
('Beauty and the Beast', 'Musical animado de Disney.', 'Película', DATE '1991-11-22', 84, 'G', TRUE, CURRENT_TIMESTAMP),
('Aladdin', 'Aventura musical animada de Disney.', 'Película', DATE '1992-11-25', 90, 'G', TRUE, CURRENT_TIMESTAMP),
('The Lion King', 'Drama musical animado de Disney.', 'Película', DATE '1994-06-24', 88, 'G', TRUE, CURRENT_TIMESTAMP),
('The Hunchback of Notre Dame', 'Drama musical animado de Disney.', 'Película', DATE '1996-06-21', 91, 'G', FALSE, CURRENT_TIMESTAMP),
('Hercules', 'Aventura musical animada de Disney.', 'Película', DATE '1997-06-27', 93, 'G', TRUE, CURRENT_TIMESTAMP),
('Mulan', 'Aventura animada de Disney.', 'Película', DATE '1998-06-19', 88, 'G', TRUE, CURRENT_TIMESTAMP),
('Tarzan', 'Aventura animada de Disney.', 'Película', DATE '1999-06-18', 88, 'G', TRUE, CURRENT_TIMESTAMP),
('The Emperor''s New Groove', 'Comedia animada de Disney.', 'Película', DATE '2000-12-15', 78, 'G', TRUE, CURRENT_TIMESTAMP),
('Lilo & Stitch', 'Comedia y ciencia ficción animada.', 'Película', DATE '2002-06-21', 85, 'PG', TRUE, CURRENT_TIMESTAMP),
('The Princess and the Frog', 'Musical animado de Disney.', 'Película', DATE '2009-12-11', 97, 'G', TRUE, CURRENT_TIMESTAMP),
('Tangled', 'Aventura musical animada de Disney.', 'Película', DATE '2010-11-24', 100, 'PG', TRUE, CURRENT_TIMESTAMP),
('Wreck-It Ralph', 'Comedia animada ambientada en videojuegos.', 'Película', DATE '2012-11-02', 101, 'PG', FALSE, CURRENT_TIMESTAMP),
('Frozen', 'Musical animado de Disney.', 'Película', DATE '2013-11-27', 102, 'PG', TRUE, CURRENT_TIMESTAMP),
('Big Hero 6', 'Aventura animada de superhéroes.', 'Película', DATE '2014-11-07', 102, 'PG', TRUE, CURRENT_TIMESTAMP),
('Zootopia', 'Comedia policial animada de Disney.', 'Película', DATE '2016-03-04', 108, 'PG', TRUE, CURRENT_TIMESTAMP),
('Moana', 'Aventura musical animada de Disney.', 'Película', DATE '2016-11-23', 107, 'PG', TRUE, CURRENT_TIMESTAMP),
('Ralph Breaks the Internet', 'Secuela animada de Wreck-It Ralph.', 'Película', DATE '2018-11-21', 112, 'PG', FALSE, CURRENT_TIMESTAMP),
('Frozen II', 'Secuela musical animada de Disney.', 'Película', DATE '2019-11-22', 103, 'PG', TRUE, CURRENT_TIMESTAMP),
('Raya and the Last Dragon', 'Aventura fantástica animada.', 'Película', DATE '2021-03-05', 107, 'PG', TRUE, CURRENT_TIMESTAMP),
('Encanto', 'Musical animado ambientado en Colombia.', 'Película', DATE '2021-11-24', 102, 'PG', TRUE, CURRENT_TIMESTAMP),
('Strange World', 'Aventura de ciencia ficción animada.', 'Película', DATE '2022-11-23', 102, 'PG', FALSE, CURRENT_TIMESTAMP),
('Wish', 'Musical animado de Disney.', 'Película', DATE '2023-11-22', 95, 'PG', TRUE, CURRENT_TIMESTAMP),
('Toy Story', 'Primera película de Toy Story de Pixar.', 'Película', DATE '1995-11-22', 81, 'G', TRUE, CURRENT_TIMESTAMP),
('A Bug''s Life', 'Comedia de aventuras de Pixar.', 'Película', DATE '1998-11-25', 95, 'G', FALSE, CURRENT_TIMESTAMP),
('Toy Story 2', 'Segunda aventura de Woody y Buzz.', 'Película', DATE '1999-11-24', 92, 'G', TRUE, CURRENT_TIMESTAMP),
('Monsters, Inc.', 'Comedia fantástica de Pixar.', 'Película', DATE '2001-11-02', 92, 'G', TRUE, CURRENT_TIMESTAMP),
('Finding Nemo', 'Aventura submarina de Pixar.', 'Película', DATE '2003-05-30', 100, 'G', TRUE, CURRENT_TIMESTAMP),
('The Incredibles', 'Película de superhéroes de Pixar.', 'Película', DATE '2004-11-05', 115, 'PG', TRUE, CURRENT_TIMESTAMP),
('Cars', 'Aventura automovilística de Pixar.', 'Película', DATE '2006-06-09', 117, 'G', TRUE, CURRENT_TIMESTAMP),
('Ratatouille', 'Comedia culinaria de Pixar.', 'Película', DATE '2007-06-29', 111, 'G', TRUE, CURRENT_TIMESTAMP),
('WALL-E', 'Ciencia ficción animada de Pixar.', 'Película', DATE '2008-06-27', 98, 'G', TRUE, CURRENT_TIMESTAMP),
('Up', 'Aventura animada de Pixar.', 'Película', DATE '2009-05-29', 96, 'PG', TRUE, CURRENT_TIMESTAMP),
('Toy Story 3', 'Tercera película de Toy Story.', 'Película', DATE '2010-06-18', 103, 'G', TRUE, CURRENT_TIMESTAMP),
('Brave', 'Aventura fantástica de Pixar.', 'Película', DATE '2012-06-22', 93, 'PG', FALSE, CURRENT_TIMESTAMP),
('Inside Out', 'Aventura sobre emociones de Pixar.', 'Película', DATE '2015-06-19', 95, 'PG', TRUE, CURRENT_TIMESTAMP),
('The Good Dinosaur', 'Aventura prehistórica de Pixar.', 'Película', DATE '2015-11-25', 93, 'PG', FALSE, CURRENT_TIMESTAMP),
('Finding Dory', 'Secuela de Finding Nemo.', 'Película', DATE '2016-06-17', 97, 'PG', TRUE, CURRENT_TIMESTAMP),
('Coco', 'Aventura musical de Pixar.', 'Película', DATE '2017-11-22', 105, 'PG', TRUE, CURRENT_TIMESTAMP),
('Incredibles 2', 'Secuela de superhéroes de Pixar.', 'Película', DATE '2018-06-15', 118, 'PG', TRUE, CURRENT_TIMESTAMP),
('Toy Story 4', 'Cuarta película de Toy Story.', 'Película', DATE '2019-06-21', 100, 'G', TRUE, CURRENT_TIMESTAMP),
('Onward', 'Aventura fantástica de Pixar.', 'Película', DATE '2020-03-06', 102, 'PG', FALSE, CURRENT_TIMESTAMP),
('Soul', 'Aventura fantástica y musical de Pixar.', 'Película', DATE '2020-12-25', 100, 'PG', TRUE, CURRENT_TIMESTAMP),
('Luca', 'Aventura de amistad de Pixar.', 'Película', DATE '2021-06-18', 95, 'PG', TRUE, CURRENT_TIMESTAMP),
('Turning Red', 'Comedia de crecimiento de Pixar.', 'Película', DATE '2022-03-11', 100, 'PG', TRUE, CURRENT_TIMESTAMP),
('Lightyear', 'Aventura espacial de Pixar.', 'Película', DATE '2022-06-17', 105, 'PG', FALSE, CURRENT_TIMESTAMP),
('Elemental', 'Romance y comedia fantástica de Pixar.', 'Película', DATE '2023-06-16', 101, 'PG', TRUE, CURRENT_TIMESTAMP),
('Inside Out 2', 'Secuela de Inside Out.', 'Película', DATE '2024-06-14', 96, 'PG', TRUE, CURRENT_TIMESTAMP),
('Iron Man', 'Inicio de la saga cinematográfica de Iron Man.', 'Película', DATE '2008-05-02', 126, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Thor', 'Aventura de Marvel centrada en Thor.', 'Película', DATE '2011-05-06', 115, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Captain America: The First Avenger', 'Origen cinematográfico de Captain America.', 'Película', DATE '2011-07-22', 124, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('The Avengers', 'Reunión de los Avengers de Marvel.', 'Película', DATE '2012-05-04', 143, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Guardians of the Galaxy', 'Aventura espacial de Marvel.', 'Película', DATE '2014-08-01', 121, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Avengers: Age of Ultron', 'Segunda película grupal de Avengers.', 'Película', DATE '2015-05-01', 141, 'PG-13', FALSE, CURRENT_TIMESTAMP),
('Doctor Strange', 'Aventura mística de Marvel.', 'Película', DATE '2016-11-04', 115, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Black Panther', 'Aventura de Marvel ambientada en Wakanda.', 'Película', DATE '2018-02-16', 134, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Avengers: Infinity War', 'Enfrentamiento de los héroes contra Thanos.', 'Película', DATE '2018-04-27', 149, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Captain Marvel', 'Aventura de Marvel centrada en Carol Danvers.', 'Película', DATE '2019-03-08', 123, 'PG-13', FALSE, CURRENT_TIMESTAMP),
('Avengers: Endgame', 'Conclusión de la Saga del Infinito.', 'Película', DATE '2019-04-26', 181, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Black Widow', 'Aventura de Marvel centrada en Natasha Romanoff.', 'Película', DATE '2021-07-09', 134, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Shang-Chi and the Legend of the Ten Rings', 'Aventura de artes marciales de Marvel.', 'Película', DATE '2021-09-03', 132, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Eternals', 'Historia del grupo cósmico Eternals.', 'Película', DATE '2021-11-05', 156, 'PG-13', FALSE, CURRENT_TIMESTAMP),
('Doctor Strange in the Multiverse of Madness', 'Aventura multiversal de Marvel.', 'Película', DATE '2022-05-06', 126, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Black Panther: Wakanda Forever', 'Continuación de Black Panther.', 'Película', DATE '2022-11-11', 161, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Guardians of the Galaxy Vol. 3', 'Tercera aventura de los Guardianes.', 'Película', DATE '2023-05-05', 150, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Star Wars: A New Hope', 'Primera película estrenada de la saga Star Wars.', 'Película', DATE '1977-05-25', 121, 'PG', TRUE, CURRENT_TIMESTAMP),
('Star Wars: The Empire Strikes Back', 'Segunda película estrenada de la trilogía original.', 'Película', DATE '1980-05-21', 124, 'PG', TRUE, CURRENT_TIMESTAMP),
('Star Wars: Return of the Jedi', 'Cierre de la trilogía original.', 'Película', DATE '1983-05-25', 131, 'PG', TRUE, CURRENT_TIMESTAMP),
('Star Wars: The Phantom Menace', 'Primer episodio cronológico de la saga Skywalker.', 'Película', DATE '1999-05-19', 136, 'PG', FALSE, CURRENT_TIMESTAMP),
('Star Wars: Attack of the Clones', 'Segundo episodio cronológico de la saga Skywalker.', 'Película', DATE '2002-05-16', 142, 'PG', TRUE, CURRENT_TIMESTAMP),
('Star Wars: Revenge of the Sith', 'Tercer episodio cronológico de la saga Skywalker.', 'Película', DATE '2005-05-19', 140, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Star Wars: The Force Awakens', 'Inicio de la trilogía de secuelas.', 'Película', DATE '2015-12-18', 138, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Rogue One: A Star Wars Story', 'Historia independiente del universo Star Wars.', 'Película', DATE '2016-12-16', 133, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('The Mandalorian', 'Serie de acción real del universo Star Wars.', 'Serie', DATE '2019-11-12', 40, 'TV-14', TRUE, CURRENT_TIMESTAMP),
('WandaVision', 'Serie de Marvel centrada en Wanda Maximoff y Vision.', 'Serie', DATE '2021-01-15', 35, 'TV-14', TRUE, CURRENT_TIMESTAMP),
('The Falcon and the Winter Soldier', 'Serie de Marvel posterior a Avengers Endgame.', 'Serie', DATE '2021-03-19', 50, 'TV-14', FALSE, CURRENT_TIMESTAMP),
('Loki', 'Serie de Marvel centrada en Loki y la TVA.', 'Serie', DATE '2021-06-09', 50, 'TV-14', TRUE, CURRENT_TIMESTAMP),
('Hawkeye', 'Serie de Marvel centrada en Clint Barton y Kate Bishop.', 'Serie', DATE '2021-11-24', 50, 'TV-14', TRUE, CURRENT_TIMESTAMP),
('Moon Knight', 'Serie de Marvel centrada en Marc Spector.', 'Serie', DATE '2022-03-30', 50, 'TV-14', FALSE, CURRENT_TIMESTAMP),
('Ms. Marvel', 'Serie de Marvel centrada en Kamala Khan.', 'Serie', DATE '2022-06-08', 45, 'TV-PG', TRUE, CURRENT_TIMESTAMP),
('Andor', 'Serie de Star Wars sobre Cassian Andor.', 'Serie', DATE '2022-09-21', 45, 'TV-14', TRUE, CURRENT_TIMESTAMP),
('Ahsoka', 'Serie de Star Wars centrada en Ahsoka Tano.', 'Serie', DATE '2023-08-22', 50, 'TV-14', TRUE, CURRENT_TIMESTAMP),
('Percy Jackson and the Olympians', 'Serie de aventura fantástica.', 'Serie', DATE '2023-12-19', 40, 'TV-PG', TRUE, CURRENT_TIMESTAMP),
('The Imagineering Story', 'Serie documental sobre Walt Disney Imagineering.', 'Documental', DATE '2019-11-12', 60, 'TV-PG', TRUE, CURRENT_TIMESTAMP),
('The World According to Jeff Goldblum', 'Serie documental de National Geographic.', 'Documental', DATE '2019-11-12', 30, 'TV-PG', FALSE, CURRENT_TIMESTAMP),
('Free Solo', 'Documental de escalada de National Geographic.', 'Documental', DATE '2018-09-28', 100, 'PG-13', TRUE, CURRENT_TIMESTAMP),
('Bao', 'Corto animado de Pixar.', 'Corto', DATE '2018-06-15', 8, 'PG', TRUE, CURRENT_TIMESTAMP),
('Piper', 'Corto animado de Pixar.', 'Corto', DATE '2016-06-17', 6, 'G', TRUE, CURRENT_TIMESTAMP);

-- ================================================================
-- COMPROBACIONES / PRIMEROS EJERCICIOS SQL
-- ================================================================

SELECT COUNT(*) AS "TotalContenidos"
FROM "Contenidos";

SELECT "Tipo", COUNT(*) AS "Cantidad"
FROM "Contenidos"
GROUP BY "Tipo"
ORDER BY "Cantidad" DESC;

SELECT "Id","Titulo","Tipo","FechaEstreno","DuracionMinutos"
FROM "Contenidos"
WHERE "Disponible" = TRUE
ORDER BY "FechaEstreno" DESC;

SELECT "Id","Titulo","FechaEstreno","DuracionMinutos"
FROM "Contenidos"
WHERE "Tipo" = 'Película'
  AND "DuracionMinutos" > 120
ORDER BY "DuracionMinutos" DESC;

SELECT "Id","Titulo","Tipo","FechaEstreno"
FROM "Contenidos"
WHERE "FechaEstreno" >= DATE '2020-01-01'
ORDER BY "FechaEstreno" DESC;

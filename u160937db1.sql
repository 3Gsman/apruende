-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-02-2019 a las 08:09:44
-- Versión del servidor: 5.7.22-22-log
-- Versión de PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u160937db1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `IdUser` int(11) NOT NULL,
  `idTaller` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`IdUser`, `idTaller`) VALUES
(11, 14),
(11, 15),
(11, 25),
(11, 26),
(11, 28),
(11, 29),
(11, 30),
(11, 31),
(16, 28),
(16, 31),
(17, 25),
(19, 25),
(19, 27),
(20, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propuesta`
--

CREATE TABLE `propuesta` (
  `IDProp` int(11) NOT NULL,
  `IDOwn` int(11) NOT NULL,
  `Name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `facultad` varchar(64) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `propuesta`
--

INSERT INTO `propuesta` (`IDProp`, `IDOwn`, `Name`, `Description`, `facultad`, `Active`) VALUES
(51, 9, 'Como hacer \"Hola Mundo\" en distintos lenguajes', 'Por curiosidad                ', 'Ingenieria', 0),
(52, 1, 'Test propuesta', '*Ignorar* Mantenimiento                ', 'Deporte', 0),
(53, 9, 'Como sobrevivir a LE', 'SUS vaYs a arrepentir                ', 'Ciencias de la Salud', 0),
(54, 9, 'Networking', '       \r\n.......\r\n\r\n\r\n         ', 'Ingenieria', 0),
(55, 11, 'Test', 'test                ', 'Ingenieria', 0),
(56, 11, '1', '                1', 'Ingenieria', 0),
(58, 11, 'Test propuesta', 'Hola, que tal? te comento                ', 'Ciencias', 0),
(59, 1, 'Como saltar a la pata coja', 'Necesito ayuda                ', 'Deporte', 0),
(61, 15, 'Empleo de gnu/linux en la uem', 'I\'d just like to interject for a moment. What youâ€™re referring to as Linux, is in fact, GNU/Linux, or as Iâ€™ve recently taken to calling it, GNU plus Linux. Linux is not an operating system unto itself, but rather another free component of a fully functioning GNU system made useful by the GNU corelibs, shell utilities and vital system components comprising a full OS as defined by POSIX. Many computer users run a modified version of the GNU system every day, without realizing it. Through a peculiar turn of events, the version of GNU which is widely used today is often called â€œLinuxâ€, and many of its users are not aware that it is basically the GNU system, developed by the GNU Project. There really is a Linux, and these people are using it, but it is just a part of the system they use. Linux is the kernel: the program in the system that allocates the machineâ€™s resources to the other programs that you run. The kernel is an essential part of an operating system, but useless by itself; it can only functio', 'Ingenieria', 0),
(63, 17, 'Modelado 3D', '                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent erat elit, vulputate ut rutrum ut, lacinia a orci. Morbi maximus libero risus, nec convallis justo accumsan eu. Aenean congue consectetur mollis. Curabitur tincidunt ut eros eget dictum. Aliquam erat volutpat. Morbi iaculis eros urna, in consectetur nibh congue ut. Pellentesque nec iaculis quam.', 'Arte y Humanidades', 1),
(64, 18, 'Bases de photoshop', 'Lorem ipsum dolor amet cray tofu pork belly, pug truffaut vice hoodie pok pok cold-pressed. Keffiyeh yr offal literally deep v bitters. Tacos post-ironic air plant, PBR&B actually crucifix lomo pour-over try-hard palo santo YOLO fanny pack photo booth portland cliche. Hammock coloring book banh mi organic slow-carb authentic edison bulb tofu. Biodiesel vice pour-over keffiyeh trust fund messenger bag cardigan subway tile lo-fi +1 asymmetrical tattooed meh readymade church-key. Drinking vinegar messenger bag man bun, bicycle rights aesthetic shaman everyday carry chartreuse deep v typewriter paleo.                ', 'Arte y Humanidades', 1),
(65, 16, 'Curso de Impresion 3D', '                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eleifend tortor sit amet enim malesuada malesuada. Aliquam est felis, dapibus at semper id, malesuada at nibh. Donec eros dui, convallis vitae finibus at, faucibus at ante. Cras aliquet, libero id dignissim accumsan, augue enim porttitor nulla, sed convallis ante sem id est. Nunc hendrerit tortor nisi, sed semper lectus volutpat a. Maecenas at justo eu neque finibus euismod sit amet vel ante. Proin auctor ante at enim hendrerit, ac pretium nulla vehicula. Aliquam in semper sapien, vel ullamcorper erat. Proin quis laoreet tortor, eget mattis augue. Vivamus viverra eget tellus non tincidunt. In non augue vel lacus ultrices accumsan. Donec consequat ligula a lacus dictum vulputate. In leo nisl, convallis et orci non, suscipit aliquam dui. Aliquam fringilla ultricies metus, at tincidunt ligula blandit sollicitudin. Nam quis turpis nulla. Cras ac lectus ipsum.', 'Ingenieria', 0),
(66, 11, 'Preparacion para maraton', 'Lorem ipsum dolor amet viral coloring book 3 wolf moon palo santo trust fund. Mustache whatever slow-carb, jean shorts PBR&B truffaut waistcoat master cleanse yuccie taiyaki shoreditch. Chambray humblebrag trust fund, before they sold out umami normcore forage. Vinyl kickstarter sartorial fanny pack tilde aesthetic plaid normcore.                ', 'Ciencias Sociales y JurÃ­dicas', 1),
(67, 16, 'Circuitos Basicos', '            Necesitaria ayuda sobre analisis de circuitos tanto en continua como en alterna porque el examen no me ha salido muy bien y tengo que ir a extraordinaria', 'Ingenieria', 0),
(68, 19, 'Ayuda con la memoria de web', 'Es lo unico que nos falta                ', 'Ingenieria', 0),
(71, 19, 'Uso de software para el diseÃ±o de plantas', 'Lorem ipsum dolor sit amet consectetur adipiscing elit nascetur, potenti quis tempor fusce iaculis at cras augue, luctus placerat nostra aptent sed curae hendrerit. Mauris placerat pellentesque dui integer, neque mus laoreet magna himenaeos, fringilla sodales conubia. Laoreet nec sollicitudin tempor vulputate posuere sodales suscipit ac cum, ante auctor justo vivamus quam dignissim non netus, in neque iaculis feugiat blandit sociosqu lectus curabitur.                ', 'Arquitectura', 0),
(72, 19, 'Uso de software para realizar plantas', 'Lorem ipsum dolor sit amet consectetur adipiscing elit nascetur, potenti quis tempor fusce iaculis at cras augue, luctus placerat nostra aptent sed curae hendrerit. Mauris placerat pellentesque dui integer, neque mus laoreet magna himenaeos, fringilla sodales conubia. Laoreet nec sollicitudin tempor vulputate posuere sodales suscipit ac cum, ante auctor justo vivamus quam dignissim non netus, in neque iaculis feugiat blandit sociosqu lectus curabitur.                ', 'Arquitectura', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Taller`
--

CREATE TABLE `Taller` (
  `IDTal` int(8) NOT NULL,
  `IDUsTal` int(8) NOT NULL,
  `NombreTal` varchar(64) NOT NULL,
  `DescripcionTal` text NOT NULL,
  `FacultadTal` varchar(32) NOT NULL,
  `ActiveTal` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Taller`
--

INSERT INTO `Taller` (`IDTal`, `IDUsTal`, `NombreTal`, `DescripcionTal`, `FacultadTal`, `ActiveTal`) VALUES
(9, 11, 'Test3', 'Test3                ', 'Ingenieria', 0),
(10, 11, 'Python 3 Para Machine Learning: Desde Cero', 'Puedes aprender Python Para Machine Learning en poco tiempo                ', 'Ingenieria', 0),
(11, 11, 'Face Detection -Master Open CV with Digital Image Processing', 'Face Detection - Digital Image Processing and Open CV using C++. Best course for face detection and Open CV                ', 'Ingenieria', 0),
(12, 11, 'Premiere Pro CC for Beginners: Video Editing in Premiere', 'Learn how to edit videos in Adobe Premiere Pro with these easy-to-follow Premiere Pro video editing tutorials.                ', 'Arte y Humanidades', 0),
(13, 11, 'Learn Optimal Sleep to Improve Your Health, Energy, and Mind', 'Improve your health, mind, and energy by mastering sleep with this master guide. Includes nutrition and stress tips too.                ', 'Ciencias de la Salud', 0),
(14, 1, 'Pianoforall - Incredible New Way To Learn Piano & Keyboard', 'Learn Piano in WEEKS not years. Play-By-Ear & learn to Read Music. Pop, Blues, Jazz, Ballads, Improvisation, Classical                ', 'Arte y Humanidades', 0),
(15, 1, 'Aprende a usar KOIOK Text Classifier', 'Aprende a usar la herramienta de moda del momento para la clasificaciÃ³n de textos!!                ', 'Ingenieria', 0),
(17, 11, 'Otro taller', 'Pero esta vez de coches                ', 'Ciencias Sociales y JurÃ­dicas', 0),
(24, 16, 'AnimaciÃ³n 4D', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus libero massa, et pretium dolor volutpat eu. Vivamus sapien quam, condimentum vel tellus a, vestibulum accumsan nunc. Suspendisse id purus aliquet, venenatis lacus in, efficitur diam. Morbi eget tincidunt velit, sed euismod arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin viverra varius est, ac sagittis turpis tincidunt a. Nam ac mi tempor, pulvinar augue at, vestibulum arcu.', 'Arte y Humanidades', 0),
(25, 16, 'Curso de BOOTSTRAP', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris mattis arcu elit, non dapibus dolor gravida sit amet. Vestibulum et lectus ut sem finibus venenatis. Quisque molestie, magna in aliquet tincidunt, lacus sem eleifend nisi, in aliquam neque elit ac erat. Suspendisse ac purus risus. Donec nec laoreet nisl, eget fringilla enim. In et urna pretium, dapibus tortor ut, rhoncus orci. In viverra consectetur enim eget venenatis. Nullam laoreet vulputate elit. Phasellus aliquet mauris vitae nibh maximus condimentum a id lorem. Nullam facilisis aliquet ligula, sit amet varius neque. Etiam ullamcorper, leo ac porta accumsan, turpis lectus faucibus enim, eget consectetur ligula velit quis sem. Nulla tincidunt urna ut dui ullamcorper lobortis.', 'Ingenieria', 1),
(26, 16, 'Como presentar un examen de Javier y no morir en el intento', '                \r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula ipsum libero, at dignissim ante malesuada in. Maecenas ac euismod tellus. Quisque eu ex vel augue consectetur mollis ut nec sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nisi velit, laoreet facilisis interdum a, vestibulum quis risus. Nullam pellentesque justo et vehicula mattis. Nulla vitae pulvinar sapien.', 'Ingenieria', 1),
(27, 11, 'Introducion a el machine learning usando scikit learn', 'Lorem ipsum dolor amet heirloom portland cold-pressed wolf beard. Woke cloud bread gastropub poke fam ugh man bun, next level street art try-hard mumblecore hell of migas umami. Iceland ennui helvetica food truck flexitarian poke before they sold out kickstarter deep v marfa direct trade celiac chambray XOXO. Artisan blue bottle waistcoat, jean shorts selfies 90\'s chambray tilde you probably haven\'t heard of them street art wayfarers godard slow-carb. Retro ramps hoodie salvia intelligentsia kickstarter.                ', 'Ingenieria', 1),
(28, 17, 'Curso automatizacion', '                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque auctor lectus et placerat pretium. Donec magna ex, ullamcorper ac tristique in, suscipit faucibus nisl. Maecenas imperdiet dapibus bibendum. Nullam vitae arcu malesuada, aliquet leo et, accumsan ante. Sed sed metus ipsum. Sed tempor, nibh id scelerisque pulvinar, enim purus tincidunt orci, at aliquet massa elit sit amet lorem. Nullam pellentesque, eros vitae tincidunt interdum, enim lectus dignissim libero, sodales consectetur ante justo commodo justo.', 'Ingenieria', 1),
(29, 17, 'Curso de Biologia', '   Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pellentesque fringilla dapibus. Vivamus finibus mauris in eros semper dapibus quis in sem. Mauris dapibus semper leo nec lobortis. Suspendisse vitae nunc vel turpis ullamcorper lobortis nec quis magna. Quisque justo justo, sollicitudin a consequat ut, sodales ut leo. Integer sit amet quam quis mi varius malesuada. Praesent placerat risus in erat ultricies tristique.             ', 'Ciencias de la Salud', 1),
(30, 18, 'Taller de SCRUM y metodolgias agiles', 'Lorem ipsum dolor amet humblebrag bushwick hexagon gentrify, authentic polaroid ethical af cold-pressed blog aesthetic fam. Scenester drinking vinegar meggings roof party hashtag snackwave dreamcatcher shaman hella vexillologist heirloom. Unicorn food truck kale chips, seitan craft beer bitters freegan poutine offal keytar godard pinterest taiyaki. Taiyaki typewriter cliche, trust fund messenger bag neutra chillwave mixtape hot chicken live-edge chicharrones tumeric cardigan                ', 'Ingenieria', 1),
(31, 19, 'Circuitos basicos', 'Un taller para reforzar conceptos teoricos y practicos de analisis de circuitos. Tanto continua como alterna.                ', 'Ingenieria', 1),
(32, 11, 'Como hacer presentaciones', '	Kjdsafasdfaefd                ', 'Ingenieria', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserData`
--

CREATE TABLE `UserData` (
  `Nombre` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Apellidos` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Grado` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Email` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Telefono` int(11) NOT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `foto` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `UserData`
--

INSERT INTO `UserData` (`Nombre`, `Apellidos`, `Grado`, `Email`, `Telefono`, `userID`, `foto`) VALUES
('Administrador', 'admin', 'TIC', 'luisalfonso98@gmail.com', 12121, 1, ''),
('LUIS', 'PEREZ', '0', 'luisalfonso98', 650674451, 6, ''),
('LUIS', 'PEREZ', '0', 'luisalfonso98sasas', 6506744, 8, ''),
('LUIS', 'PEREZ', '0', 'luisalfonso98sasasasas', 6506744, 9, ''),
('LUIS', 'PEREZ', '0', 'luisalfonso98sasasasasasaas', 6506744, 10, '5.png'),
('Max', 'Ximiliano', '1', '123', 123, 11, '0.jpg'),
('keka', 'perrete', '0', '321', 321, 13, '0.jpeg'),
('1212', '12121', '0', '12121', 1212, 14, ''),
('german', 'esgay', '0', 'richardstallman', 666666666, 15, '2.jpg'),
('Luis', 'Ferrer', '0', '21641037', 650674451, 16, '3.jpg'),
('Pirulin', 'Jose', '1', '12341234', 21312131, 17, '0.jpeg'),
('Roberto', 'Fuentes', '1', '1234', 1234, 18, '4.jpg'),
('German', 'Garcia', '0', '21637346', 633410155, 19, '1.jpeg'),
('Nombre', 'Apellido', '1', '123456789', 123456789, 20, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserLogin`
--

CREATE TABLE `UserLogin` (
  `Username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `UserLogin`
--

INSERT INTO `UserLogin` (`Username`, `Password`, `ID`) VALUES
('admin', 'admin123', 1),
('noelegir', '1111111111', 2),
('luisalfonso98', 'aaaaa', 6),
('luisalfonso98sasas', 'asasasas', 8),
('test', 'test', 9),
('luisalfonso98sasasasasasaas', 'asasa', 10),
('123', '123', 11),
('321', '321', 13),
('12121', '121212', 14),
('richardstallman', 'melapela', 15),
('21641037', 'hola', 16),
('12341234', 'pirulin', 17),
('1234', '1234', 18),
('21637346', 'ghbvfty', 19),
('123456789', '123456789', 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD UNIQUE KEY `unique` (`IdUser`,`idTaller`),
  ADD KEY `idUser_index` (`IdUser`),
  ADD KEY `IdTaller_index` (`idTaller`);

--
-- Indices de la tabla `propuesta`
--
ALTER TABLE `propuesta`
  ADD PRIMARY KEY (`IDProp`),
  ADD KEY `IDOwn-fk` (`IDOwn`);

--
-- Indices de la tabla `Taller`
--
ALTER TABLE `Taller`
  ADD PRIMARY KEY (`IDTal`),
  ADD KEY `IDUsTal` (`IDUsTal`);

--
-- Indices de la tabla `UserData`
--
ALTER TABLE `UserData`
  ADD KEY `fk_user_id` (`userID`);

--
-- Indices de la tabla `UserLogin`
--
ALTER TABLE `UserLogin`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Password` (`Password`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `propuesta`
--
ALTER TABLE `propuesta`
  MODIFY `IDProp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `Taller`
--
ALTER TABLE `Taller`
  MODIFY `IDTal` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `UserLogin`
--
ALTER TABLE `UserLogin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `UserLogin` (`ID`),
  ADD CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`idTaller`) REFERENCES `Taller` (`IDTal`);

--
-- Filtros para la tabla `propuesta`
--
ALTER TABLE `propuesta`
  ADD CONSTRAINT `propuesta_ibfk_1` FOREIGN KEY (`IDOwn`) REFERENCES `UserLogin` (`ID`);

--
-- Filtros para la tabla `Taller`
--
ALTER TABLE `Taller`
  ADD CONSTRAINT `Taller_ibfk_1` FOREIGN KEY (`IDUsTal`) REFERENCES `UserLogin` (`ID`);

--
-- Filtros para la tabla `UserData`
--
ALTER TABLE `UserData`
  ADD CONSTRAINT `UserData_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `UserLogin` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

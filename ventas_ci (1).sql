-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2019 a las 16:37:32
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas_ci`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `descripción` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `descripción`, `estado`) VALUES
(1, 'Bebidas', 'Gaseosas,café, tés', 1),
(2, 'Condimentos', 'Salsas dulces y pica', 1),
(3, 'Repostería', 'Postres, dulces y pa', 1),
(4, 'Lácteos', 'Quesos', 1),
(5, 'Granos/Cereales', 'Pan, galletas, pasta', 1),
(6, 'Carnes', 'Carnes preparadas', 1),
(7, 'Frutas/Verduras', 'Frutas secas y queso', 1),
(8, 'Pescado/Marisco', 'Pescados, mariscos y', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_compañia` varchar(30) NOT NULL,
  `nombre_contacto` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `ciudad` varchar(24) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `nro_tarjeta_credito` varchar(20) NOT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_compañia`, `nombre_contacto`, `direccion`, `ciudad`, `pais`, `telefono`, `nro_tarjeta_credito`, `estado`) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlín', 'Alemania', '030-0074321', '4920-7967', 1),
(2, 'Ana Trujillo Emparedados ', 'Ana Trujillo', 'Avda. de la Constitución', 'México D.F.', 'México', '(5) 555-4729', '4920-7967', 1),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos  2312', 'México D.F.', 'México', '(5) 555-3932', '4920-7967', 1),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'Londres', 'Reino Unido', '(71) 555-7788', '4920-7967', 1),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen  8', 'Luleå', 'Suecia', '0921-12 34 65', '', 1),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', 'Alemania', '0621-08460', '', 1),
(7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Estrasburgo', 'Francia', '88.60.15.31', '', 1),
(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', 'España', '(91) 555 22 82', '', 1),
(9, 'Bon app\'', 'Laurence Lebihan', '12, rue des Bouchers', 'Marsella', 'Francia', '91.24.45.40', '', 1),
(10, 'Bottom-Dollar Markets', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'Canadá', '(604) 555-4729', '', 1),
(11, 'B\'s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'Londres', 'Reino Unido', '(71) 555-1212', '', 1),
(12, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', 'Argentina', '(1) 135-5555', '', 1),
(13, 'Centro Moctezuma', 'Francisco Chang', 'Sierras de Granada 99', 'México D.F.', 'México', '(5) 555-3392', '', 1),
(14, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Berna', 'Suiza', '0452-076545', '', 1),
(15, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', 'Brasil', '(11) 555-7647', '', 1),
(16, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens12', 'Londres', 'Reino Unido', '(71) 555-2282', '', 1),
(17, 'Drachenblut Delikatessen', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', 'Alemania', '0241-039123', '', 1),
(18, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante', 'Nantes', 'Francia', '40.67.88.88', '', 1),
(19, 'Eastern Connection', 'Ann Devon', '35 King George', 'Londres', 'Reino Unido', '(71) 555-0297', '', 1),
(20, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', 'Austria', '7675-3425', '', 1),
(21, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'Sao Paulo', 'Brasil', '(11) 555-9857', '', 1),
(22, 'FISSA Fabrica Inter. Salchicha', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', 'España', '(91) 555 94 44', '', 1),
(23, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', 'Francia', '20.16.10.16', '', 1),
(24, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'Suecia', '0695-34 67 21', '', 1),
(25, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', 'Alemania', '089-0877310', '', 1),
(26, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', 'Francia', '40.32.21.21', '', 1),
(27, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', 'Italia', '011-4988260', '', 1),
(28, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez ', 'Jardim das rosas n. 32', 'Lisboa', 'Portugal', '(1) 354-2534', '', 1),
(29, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', 'España', '(93) 203 4560', '', 1),
(30, 'Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero, 33', 'Sevilla', 'España', '(95) 555 82 82', '', 1),
(31, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugenia', 'Estados Unidos', '(503) 555-7555', '', 1),
(32, 'GROSELLA-Restaurante', 'Manuel Pereira', '5ª Ave. Los Palos Grandes', 'Caracas', 'Venezuela', '(2) 283-2951', '', 1),
(33, 'Hanari Carnes', 'Mario Pontes', 'Rua do Paço, 67', 'Rio de Janeiro', 'Brasil', '(21) 555-0091', '', 1),
(34, 'HILARIÓN-Abastos', 'Carlos Hernández', 'Carrera 22 con Ave. ', 'San Cristóbal', 'Venezuela', '(5) 555-1340', '', 1),
(35, 'Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza516 ', 'Elgin', 'Estados Unidos', '(503) 555-6874', '', 1),
(36, 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', 'Irlanda', '2967 542', '', 1),
(37, 'Island Trading', 'Helen Bennett', 'Garden HouseCrowther', 'Cowes', 'Reino Unido', '(198) 555-8888', '', 1),
(38, 'Königlich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburgo', 'Alemania', '0555-09876', '', 1),
(39, 'La corne d\'abondance', 'Daniel Tonini', '67, avenue de l\'Europe', 'Versalles', 'Francia', '30.59.84.10', '', 1),
(40, 'La maison d\'Asie', 'Annette Roulet', '1 rue Alsace-Lorraine', 'Toulouse', 'Francia', '61.77.61.10', '', 1),
(41, 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', '1900 Oak St.', 'Vancouver', 'Canadá', '(604) 555-3392', '', 1),
(42, 'Lazy K Kountry Store', 'John Steel', '12 Orchestra Terrace', 'Walla Walla', 'Estados Unidos', '(509) 555-7969', '', 1),
(43, 'Lehmanns Marktstand', 'Renate Messner', 'Magazinweg 7', 'Francfurt', 'Alemania', '069-0245984', '', 1),
(44, 'Let\'s Stop N Shop', 'Jaime Yorres', '87 Polk St.\nSuite 5', 'San Francisco', 'Estados Unidos', '(415) 555-5938', '', 1),
(45, 'LILA-Supermercado', 'Carlos González', 'Carrera 52 con Ave. Bolí', 'Barquisimeto', 'Venezuela', '(9) 331-6954', '', 1),
(46, 'LINO-Delicateses', 'Felipe Izquierdo', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Venezuela', '(8) 34-56-12', '', 1),
(47, 'Lonesome Pine Restaurant', 'Fran Wilson', '89 Chiaroscuro Rd.', 'Portland', 'Estados Unidos', '(503) 555-9573', '', 1),
(48, 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Via Ludovico il Moro 22', 'Bérgamo', 'Italia', '035-640230', '', 1),
(49, 'Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruselas', 'Bélgica', '(02) 201 24 67', '', 1),
(50, 'Mère Paillarde', 'Jean Fresnière', '43 rue St. Laurent', 'Montreal', 'Canadá', '(514) 555-8054', '', 1),
(51, 'Morgenstern Gesundkost', 'Alexander Feuer', 'Heerstr. 22', 'Leipzig', 'Alemania', '0342-023176', '', 1),
(52, 'North/South', 'Simon Crowther', 'South House300 Que', 'Londres', 'Reino Unido', '(71) 555-7733', '', 1),
(53, 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Ing. Gustavo  8585Piso', 'Buenos Aires', 'Argentina', '(1) 135-5333', '', 1),
(54, 'Old World Delicatessen', 'Rene Phillips', '2743 Bering St.', 'Anchorage', 'Estados Unidos', '(907) 555-7584', '', 1),
(55, 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Mehrheimerstr. 369', 'Köln', 'Alemania', '0221-0644327', '', 1),
(56, 'Paris spécialités', 'Marie Bertrand', '265, boulevard Charonne', 'París', 'Francia', '(1) 42.34.22.66', '', 1),
(57, 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Calle Dr. Jorge Cash 321', 'México D.F.', 'México', '(5) 552-3745', '', 1),
(58, 'Piccolo und mehr', 'Georg Pipps', 'Geislweg 14', 'Salzburgo', 'Austria', '6562-9722', '', 1),
(59, 'Princesa Isabel Vinhos', 'Isabel de Castro', 'Estrada da saúde n. 58', 'Lisboa', 'Portugal', '(1) 356-5634', '', 1),
(60, 'Que Delícia', 'Bernardo Batista', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'Brasil', '(21) 555-4252', '', 1),
(70, 'Queen Cozinha', 'Lúcia Carvalho', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'Brasil', '(11) 555-1189', '', 1),
(71, 'QUICK-Stop', 'Horst Kloss', 'Taucherstraße 10', 'Cunewalde', 'Alemania', '0372-035188', '', 1),
(72, 'Rancho grande', 'Sergio Gutiérrez', 'Av. del Libertador 900', 'Buenos Aires', 'Argentina', '(1) 123-5555', '', 1),
(73, 'Rattlesnake Canyon Grocery', 'Paula Wilson', '2817 Milton Dr.', 'Albuquerque', 'Estados Unidos', '(505) 555-5939', '', 1),
(74, 'Reggiani Caseifici', 'Maurizio Moroni', 'Strada Provinciale 124', 'Reggio Emilia', 'Italia', '0522-556721', '', 1),
(75, 'Ricardo Adocicados', 'Janete Limeira', 'Av. Copacabana, 267', 'Rio de Janeiro', 'Brasil', '(21) 555-3412', '', 1),
(76, 'Richter Supermarkt', 'Michael Holz', 'Grenzacherweg 237', 'Génova', 'Suiza', '0897-034214', '', 1),
(77, 'Romero y tomillo', 'Alejandra Camino', 'Gran Vía, 1', 'Madrid', 'España', '(91) 745 6200', '', 1),
(78, 'Santé Gourmet', 'Jonas Bergulfsen', 'Erling Skakkes gate 78', 'Stavern', 'Noruega', '07-98 92 35', '', 1),
(79, 'Save-a-lot Markets', 'Jose Pavarotti', '187 Suffolk Ln.', 'Boise', 'Estados Unidos', '(208) 555-8097', '', 1),
(80, 'Seven Seas Imports', 'Hari Kumar', '90 Wadhurst Rd.', 'Londres', 'Reino Unido', '(71) 555-1717', '', 1),
(81, 'Simons bistro', 'Jytte Petersen', 'Vinbæltet 34', 'København', 'Dinamarca', '31 12 34 56', '', 1),
(82, 'Spécialités du monde', 'Dominique Perrier', '25, rue Lauriston', 'París', 'Francia', '(1) 47.55.60.10', '', 1),
(83, 'Split Rail Beer & Ale', 'Art Braunschweiger', 'P.O. Box 555', 'Lander', 'Estados Unidos', '(307) 555-4680', '', 1),
(84, 'Suprêmes délices', 'Pascale Cartrain', 'Boulevard Tirou, 255', 'Charleroi', 'Bélgica', '(071) 23 67 22 ', '', 1),
(85, 'The Big Cheese', 'Liz Nixon', '89 Jefferson Way\nSuite 2', 'Portland', 'Estados Unidos', '(503) 555-3612', '', 1),
(86, 'The Cracker Box', 'Liu Wong', '55 Grizzly Peak Rd.', 'Butte', 'Estados Unidos', '(406) 555-5834', '', 1),
(87, 'Toms Spezialitäten', 'Karin Josephs', 'Luisenstr. 48', 'Münster', 'Alemania', '0251-031259', '', 1),
(88, 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Avda. Azteca 123', 'México D.F.', 'México', '(5) 555-2933', '', 1),
(89, 'Tradição Hipermercados', 'Anabela Domingues', 'Av. Inês de Castro, 414', 'Sao Paulo', 'Brasil', '(11) 555-2167', '', 1),
(90, 'Trail\'s Head Gourmet Provision', 'Helvetius Nagy', '722 DaVinci Blvd.', 'Kirkland', 'Estados Unidos', '(206) 555-8257', '', 1),
(91, 'Vaffeljernet', 'Palle Ibsen', 'Smagsløget 45', 'Århus', 'Dinamarca', '86 21 32 43', '', 1),
(92, 'Victuailles en stock', 'Mary Saveley', '2, rue du Commerce', 'Lion', 'Francia', '78.32.54.86', '', 1),
(93, 'Vins et alcools Chevalier', 'Paul Henriot', '59 rue de l\'Abbaye', 'Reims', 'Francia', '26.47.15.10', '', 1),
(94, 'Die Wandernde Kuh', 'Rita Müller', 'Adenauerallee 900', 'Stuttgart', 'Alemania', '0711-020361', '', 1),
(95, 'Wartian Herkku', 'Pirkko Koskitalo', 'Torikatu 38', 'Oulu', 'Finlandia', '981-443655', '', 1),
(96, 'Wellington Importadora', 'Paula Parente', 'Rua do Mercado, 12', 'Resende', 'Brasil', '(14) 555-8122', '', 1),
(97, 'White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S.\nSuite 3B', 'Seattle', 'Estados Unidos', '(206) 555-4112', '', 1),
(98, 'Wilman Kala', 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', 'Finlandia', '90-224 8858', '', 1),
(99, 'Wolski  Zajazd', 'Zbyszek Piestrzeniewicz', 'ul. Filtrowa 68', 'Warszawa', 'Polonia', '(26) 642-7012', '', 1),
(100, 'Gourmet Lanchonetes', 'André Fonseca', 'Av. Brasil, 442', 'Campinas', 'Brasil', '(11) 555-9482', '', 1),
(282, 'jaens', 'jaens', 'juan pablo', 'la paz', 'bolivia', '123443', '12312-123123-343', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `venta_id` int(11) DEFAULT NULL,
  `precio` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cantidad` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `importe` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `cantidad` varchar(30) NOT NULL,
  `precio_por_unidad` double NOT NULL,
  `stock` int(11) NOT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `proveedor`, `categoria`, `cantidad`, `precio_por_unidad`, `stock`, `estado`) VALUES
(1, 'Té Dharamsala', 'Coca Cola', 'Bebidas', '1 botellas', 18, 50, 1),
(2, 'Cerveza tibetana Barley', 'Exotic Liquids', 'Bebidas', '24 - bot. 12 l', 19, 17, 1),
(3, 'Sirope de regaliz', 'Exotic Liquids', 'Condimentos', '12 - bot. 550 ml', 10, 13, 1),
(4, 'Especias Cajun del chef Anton', 'New Orleans Cajun Delights', 'Condimentos', '48 - frascos 6 l', 22, 53, 1),
(5, 'Mezcla Gumbo del chef Anton', 'New Orleans Cajun Delights', 'Condimentos', '36 cajas', 21, 0, 1),
(6, 'Mermelada de grosellas de la abuela', 'Exotic Liquids', '1', '', 25, 120, 1),
(7, 'Peras secas orgánicas del tío Bob', 'Grandma Kelly\'s Homestead', 'Frutas/Verduras', '12 - paq. 1 kg', 30, 15, 1),
(8, 'Salsa de arándanos Northwoods', 'Grandma Kelly\'s Homestead', 'Condimentos', '12 - frascos 12 l', 40, 6, 1),
(9, 'Buey Mishi Kobe', 'Tokyo Traders', 'Carnes', '18 - paq. 500 g', 97, 29, 1),
(10, 'Pez espada', 'Tokyo Traders', 'Pescado/Marisco', '12 - frascos 200 ml', 31, 31, 1),
(11, 'Queso Cabrales', 'Cooperativa de Quesos \'Las Cabras\'', 'Lácteos', 'paq. 1 kg', 21, 22, 1),
(12, 'Queso Manchego La Pastora', 'Cooperativa de Quesos \'Las Cabras\'', 'Lácteos', '10 - paq. 500 g', 0, 86, 1),
(13, 'Algas Konbu', 'Mayumi\'s', 'Pescado/Marisco', 'caja 2 kg', 6, 24, 1),
(14, 'Cuajada de judías', 'Mayumi\'s', 'Frutas/Verduras', '40 - paq. 100 g', 23, 35, 1),
(15, 'Salsa de soja baja en sodio', 'Mayumi\'s', 'Condimentos', '24 - bot. 250 ml', 15, 39, 1),
(16, 'Postre de merengue Pavlova', 'Pavlova, Ltd.', 'Repostería', '32 - cajas 500 g', 17, 29, 1),
(17, 'Cordero Alice Springs', 'Pavlova, Ltd.', 'Carnes', '20 - latas 1 kg', 39, 0, 1),
(18, 'Langostinos tigre Carnarvon', 'Pavlova, Ltd.', 'Pescado/Marisco', 'paq. 16 kg', 62, 42, 1),
(19, 'Pastas de té de chocolate', 'Specialty Biscuits, Ltd.', 'Repostería', '10 cajas x 12 piezas', 9, 25, 1),
(20, 'Mermelada de Sir Rodney\'s', 'Specialty Biscuits, Ltd.', 'Repostería', '30 cajas regalo', 81, 40, 1),
(21, 'Bollos de Sir Rodney\'s', 'Specialty Biscuits, Ltd.', 'Repostería', '24 paq. x 4 piezas', 10, 3, 1),
(22, 'Pan de centeno crujiente estilo Gustaf\'s', 'PB Knäckebröd AB', 'Granos/Cereales', '24 - paq. 500 g', 21, 104, 1),
(23, 'Pan fino', 'PB Knäckebröd AB', 'Granos/Cereales', '12 - paq. 250 g', 9, 61, 1),
(24, 'Refresco Guaraná Fantástica', 'Refrescos Americanas LTDA', 'Bebidas', '12 - latas 355 ml', 4, 20, 1),
(25, 'Crema de chocolate y nueces NuNuCa', 'Heli Süßwaren GmbH & Co. KG', 'Repostería', '20 - vasos  450 g', 14, 76, 1),
(26, 'Ositos de goma Gumbär', 'Heli Süßwaren GmbH & Co. KG', 'Repostería', '100 - bolsas 250 g', 31, 15, 1),
(27, 'Chocolate Schoggi', 'Heli Süßwaren GmbH & Co. KG', 'Repostería', '100 - piezas 100 g', 43, 49, 1),
(28, 'Col fermentada Rössle', 'Plutzer Lebensmittelgroßmärkte AG', 'Frutas/Verduras', '25 - latas 825 g', 45, 26, 1),
(29, 'Salchicha Thüringer', 'Plutzer Lebensmittelgroßmärkte AG', 'Carnes', '50 bolsas x 30 salch', 123, 0, 1),
(30, 'Arenque blanco del noroeste', 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Pescado/Marisco', '10 - vasos 200 g', 25, 10, 1),
(31, 'Queso gorgonzola Telino', 'Formaggi Fortini s.r.l.', 'Lácteos', '12 - paq. 100 g', 12, 0, 1),
(32, 'Queso Mascarpone Fabioli', 'Formaggi Fortini s.r.l.', 'Lácteos', '24 - paq. 200 g', 32, 9, 1),
(33, 'Queso de cabra', 'Norske Meierier', 'Lácteos', '500 g', 2, 112, 1),
(34, 'Cerveza Sasquatch', 'Bigfoot Breweries', 'Bebidas', '24 - bot. 12 l', 14, 111, 1),
(35, 'Cerveza negra Steeleye', 'Bigfoot Breweries', 'Bebidas', '24 - bot. 12 l', 18, 20, 1),
(36, 'Escabeche de arenque', 'Svensk Sjöföda AB', 'Pescado/Marisco', '24 - frascos 250 g', 19, 112, 1),
(37, 'Salmón ahumado Gravad', 'Svensk Sjöföda AB', 'Pescado/Marisco', '12 - paq. 500 g', 26, 11, 1),
(38, 'Vino Côte de Blaye', 'Aux joyeux ecclésiastiques', 'Bebidas', '12 - bot. 75 cl', 263, 17, 1),
(39, 'Licor verde Chartreuse', 'Aux joyeux ecclésiastiques', 'Bebidas', '750 cc por bot.', 18, 69, 1),
(40, 'Carne de cangrejo de Boston', 'New England Seafood Cannery', 'Pescado/Marisco', '24 - latas 4 l', 18, 123, 1),
(41, 'Crema de almejas estilo Nueva Inglaterra', 'New England Seafood Cannery', 'Pescado/Marisco', '12 - latas 12 l', 9, 85, 1),
(42, 'Tallarines de Singapur', 'Leka Trading', 'Granos/Cereales', '32 - 1 kg paq.', 14, 26, 1),
(43, 'Café de Malasia', 'Leka Trading', 'Bebidas', '16 - latas 500 g', 46, 17, 1),
(44, 'Azúcar negra Malacca', 'Leka Trading', 'Condimentos', '20 - bolsas 2 kg', 19, 27, 1),
(45, 'Arenque ahumado', 'Lyngbysild', 'Pescado/Marisco', 'paq. 1k', 9, 5, 1),
(46, 'Arenque salado', 'Lyngbysild', 'Pescado/Marisco', '4 - vasos 450 g', 12, 95, 1),
(47, 'Galletas Zaanse', 'Zaanse Snoepfabriek', 'Repostería', '10 - cajas 4 l', 9, 36, 1),
(48, 'Chocolate holandés', 'Zaanse Snoepfabriek', 'Repostería', '10 paq.', 12, 15, 1),
(49, 'Regaliz', 'Karkki Oy', 'Repostería', '24 - paq. 50 g', 20, 10, 1),
(50, 'Chocolate blanco', 'Karkki Oy', 'Repostería', '12 - barras 100 g', 16, 65, 1),
(51, 'Manzanas secas Manjimup', 'G\'day, Mate', 'Frutas/Verduras', '50 - paq. 300 g', 53, 20, 1),
(52, 'Cereales para Filo', 'G\'day, Mate', 'Granos/Cereales', '16 - cajas 2 kg', 7, 38, 1),
(53, 'Empanada de carne', 'G\'day, Mate', 'Carnes', '48 porc.', 32, 0, 1),
(54, 'Empanada de cerdo', 'Ma Maison', 'Carnes', '16 tartas', 7, 21, 1),
(55, 'Paté chino', 'Ma Maison', 'Carnes', '24 cajas x 2 tartas', 24, 115, 1),
(56, 'Gnocchi de la abuela Alicia', 'Pasta Buttini s.r.l.', 'Granos/Cereales', '24 - paq. 250 g', 38, 21, 1),
(57, 'Raviolis Angelo', 'Pasta Buttini s.r.l.', 'Granos/Cereales', '24 - paq. 250 g', 19, 36, 1),
(58, 'Caracoles de Borgoña', 'Escargots Nouveaux', 'Pescado/Marisco', '24 porc.', 13, 62, 1),
(59, 'Raclet de queso Courdavault', 'Gai pâturage', 'Lácteos', 'paq. 5 kg', 55, 79, 1),
(60, 'Camembert Pierrot', 'Gai pâturage', 'Lácteos', '15 - paq. 300 g', 34, 19, 1),
(61, 'Sirope de arce', 'Forêts d\'érables', 'Condimentos', '24 - bot. 500 ml', 28, 113, 1),
(62, 'Tarta de azúcar', 'Forêts d\'érables', 'Repostería', '48 tartas', 49, 17, 1),
(63, 'Sandwich de vegetales', 'Pavlova, Ltd.', 'Condimentos', '15 - frascos 625 g', 43, 24, 1),
(64, 'Bollos de pan de Wimmer', 'Plutzer Lebensmittelgroßmärkte AG', 'Granos/Cereales', '20 bolsas x 4 porc.', 33, 22, 1),
(65, 'Salsa de pimiento picante de Luisiana', 'New Orleans Cajun Delights', 'Condimentos', '32 - bot. 8 l', 21, 76, 1),
(66, 'Especias picantes de Luisiana', 'New Orleans Cajun Delights', 'Condimentos', '24 - frascos 8 l', 17, 4, 1),
(67, 'Cerveza Laughing Lumberjack', 'Bigfoot Breweries', 'Bebidas', '24 - bot. 12 l', 14, 52, 1),
(68, 'Barras de pan de Escocia', 'Specialty Biscuits, Ltd.', 'Repostería', '10 cajas x 8 porc.', 12, 6, 1),
(69, 'Queso Gudbrandsdals', 'Norske Meierier', 'Lácteos', 'paq. 10 kg', 36, 26, 1),
(70, 'Cerveza Outback', 'Pavlova, Ltd.', 'Bebidas', '24 - bot. 355 ml', 15, 15, 1),
(71, 'Crema de queso Fløtemys', 'Norske Meierier', 'Lácteos', '10 - paq. 500 g', 21, 26, 1),
(72, 'Queso Mozzarella Giovanni', 'Formaggi Fortini s.r.l.', 'Lácteos', '24 - paq. 200 g', 34, 14, 1),
(73, 'Caviar rojo', 'Svensk Sjöföda AB', 'Pescado/Marisco', '24 - frascos150 g', 15, 101, 1),
(74, 'Queso de soja Longlife', 'Tokyo Traders', 'Frutas/Verduras', 'paq. 5 kg', 10, 4, 1),
(75, 'Cerveza Klosterbier Rhönbräu', 'Plutzer Lebensmittelgroßmärkte AG', 'Bebidas', '24 - bot. 0,5 l', 7, 125, 1),
(76, 'Licor Cloudberry', 'Karkki Oy', 'Bebidas', '500 ml', 18, 57, 1),
(77, 'Salsa verde original Frankfurter', 'Plutzer Lebensmittelgroßmärkte AG', 'Condimentos', '12 cajas', 13, 32, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` varchar(20) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `nombre_encargado` varchar(30) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `ciudad` varchar(20) NOT NULL,
  `telefono` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `marca`, `nombre_encargado`, `direccion`, `ciudad`, `telefono`) VALUES
('1', 'Exotic Liquids', 'Charlotte Cooper', '49 Gilbert St.', 'Londres', '(171) 555-2'),
('10', 'Refrescos Americanas', 'Carlos Diaz', 'Av. das Americanas 1', 'São Paulo', '(11) 555 46'),
('11', 'Heli Süßwaren GmbH &', 'Petra Winkler', 'Tiergartenstraße 5', 'Berlín', '(010) 99845'),
('12', 'Plutzer Lebensmittel', 'Martin Bein', 'Bogenallee 51', 'Frankfurt', '(069) 99275'),
('13', 'Nord-Ost-Fisch Hande', 'Sven Petersen', 'Frahmredder 112a', 'Cuxhaven', '(04721) 871'),
('14', 'Formaggi Fortini s.r', 'Elio Rossi', 'Viale Dante, 75', 'Ravenna', '(0544) 6032'),
('15', 'Norske Meierier', 'Beate Vileid', 'Hatlevegen 5', 'Sandvika', '(0)2-953010'),
('16', 'Bigfoot Breweries', 'Cheryl Saylor', '3400 - 8th Avenue\nSu', 'Bend', '(503) 555-9'),
('17', 'Svensk Sjöföda AB', 'Michael Björn', 'Brovallavägen 231', 'Stockholm', '08-123 45 6'),
('18', 'Aux joyeux eclésias', 'Guylène Nodier', '203, Rue des Francs-', 'París', '03.83.0'),
('19', 'New England Seafood ', 'Robb Merchant', 'Order Processing Dep', 'Boston', '(617) 555-3'),
('2', 'New Orleans Cajun De', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '(100) 555-4'),
('20', 'Leka Trading', 'Chandra Leka', '471 Serangoon Loop, ', 'Singapore', '555-8787'),
('21', 'Lyngbysild', 'Niels Petersen', 'Lyngbysild\nFiskebakk', 'Lyngby', '43844108'),
('22', 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Verkoop\nRijnweg 22', 'Zaandam', '(12345) 121'),
('23', 'Karkki Oy', 'Anne Heikkonen', 'Valtakatu 12', 'Lappeenranta', '(953) 10956'),
('24', 'G\'day, Mate', 'Wendy Mackenzie', '170 Prince Edward Pa', 'Sydney', '(02) 555-59'),
('25', 'Ma Maison', 'Jean-Guy Lauzon', '2960 Rue St. Laurent', 'Montréal', '(514) 555-9'),
('26', 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Via dei Gelsomini, 1', 'Salerno', '(089) 65476'),
('27', 'Escargots Nouveaux', 'Marie Delamare', '22, rue H. Voiron', 'Montceau', '85.57.00.07'),
('28', 'Gai pâturage', 'Eliane Noz', 'Bat. B\n3, rue des Al', 'Annecy', '38.76.98.06'),
('29', 'Forêts d\'érables', 'Chantal Goulet', '148 rue Chasseur', 'Ste-Hyacinthe', '(514) 555-2'),
('3', 'Grandma Kelly\'s Home', 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '(313) 555-5'),
('4', 'Tokyo Traders', 'Yoshi Nagase', '9-8 Sekimai\nMusashin', 'Tokyo', '(03) 3555-5'),
('5', 'Cooperativa de Queso', 'Antonio del Valle Saavedra ', 'Calle del Rosal 4', 'Oviedo', '(98) 598 76'),
('6', 'Mayumi\'s', 'Mayumi Ohno', '92 Setsuko\nChuo-ku', 'Osaka', '(06) 431-78'),
('7', 'Pavlova, Ltd.', 'Ian Devling', '74 Rose St.\nMoonie P', 'Melbourne', '(03) 444-23'),
('8', 'Specialty Biscuits, ', 'Peter Wilson', '29 King\'s Way', 'Manchester', '(161) 555-4'),
('9', 'PB Knäckebröd AB', 'Lars Peterson', 'Kaloadagatan 13', 'Göteborg', '031-987 65 '),
('', 'Pepsi', 'Henry Jaens', 'Juan  Pablo II Aveni', 'El Alto', '77285578'),
('4', 'Coca Cola', 'Juan Diego', 'Santa Cruz 89', 'La paz', '879'),
('032', 'Coca Cola', 'Juan Diego', 'Santa Cruz 89', 'La paz', '123443');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Superadmin', 'control total'),
(2, 'admin', 'control total'),
(3, 'usuario', 'ciertos modulos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cliente`
--

CREATE TABLE `tipo_cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `ci` int(11) NOT NULL,
  `nombres` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `username` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tarjeta_credito` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `ci`, `nombres`, `apellidos`, `telefono`, `email`, `username`, `password`, `tarjeta_credito`, `rol_id`, `estado`) VALUES
(1, 6793409, 'henry jaens ', 'mamani villa', '77285578', 'jaens@gmail.com', 'jaens', 'jaens', '123-123-123', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `subtotal` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `igv` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descuento` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `total` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tipo_documento_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `num_documento` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_venta_detalle_idx` (`venta_id`),
  ADD KEY `fk_producto_detalle_idx` (`producto_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_rol_usuarios_idx` (`rol_id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `num_documento_UNIQUE` (`num_documento`),
  ADD KEY `fk_usuario_venta_idx` (`usuario_id`),
  ADD KEY `fk_cliente_venta_idx` (`cliente_id`),
  ADD KEY `fk_tipo_documento_venta_idx` (`tipo_documento_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_producto_detalle` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_detalle` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_rol_usuarios` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_cliente_venta` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tipo_documento_venta` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_venta` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

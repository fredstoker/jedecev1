-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-02-2021 a las 21:29:03
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `seguridad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
`nit` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `gerente` varchar(100) NOT NULL,
  `servicos` varchar(200) NOT NULL,
  `telCel` int(11) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`nit`, `nombre`, `direccion`, `gerente`, `servicos`, `telCel`, `foto`) VALUES
(1, 'ARMUS LTDA', 'C/ SOTO MAYOR CASI ESQUINAS 6 DE OCTUBRE Nº 4501', 'Nicolas Raul Ganci Martinez', 'Seguridad Privada', 68211592, 'img/descarga (1).jpg'),
(2, 'Multiservicios "VARDEL"', 'Sotomayor Esq. Pagador nº 19-B', 'Maria L. Cruz A. Vda. de Vargas', 'Servicios de Vigilancia y Custodia', 61840350, 'img/descarga (3).jpg'),
(3, 'EMSEP-KM', 'Oblitas nº 610 esquina Vasquez', 'Jhorbi Nelson Mallcu Frias', 'Servicio de Vigilancia y Seguridad Privada Khana Marka', 71885204, 'img/descarga.jpg'),
(4, 'SECRET LINE', 'Velasco Galvarro nº 4916 Esq. Ave. Villarroel', 'Edwin Cesar Chacon Alanoca', 'Servicio de Vigilancia y Seguridad Privada', 76135140, 'img/descarga (4).jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `ci` int(11) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `celular` int(11) NOT NULL,
  `sexo` char(1) NOT NULL,
  `lugarSer` varchar(100) NOT NULL,
  `TDI` varchar(30) NOT NULL,
  `Foto` int(11) NOT NULL,
  `horarios` varchar(30) NOT NULL,
  `AP` varchar(10) NOT NULL,
  `empresa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`ci`, `apellidos`, `nombre`, `direccion`, `celular`, `sexo`, `lugarSer`, `TDI`, `Foto`, `horarios`, `AP`, `empresa`) VALUES
(1, 'Calle Queso', 'Saul', 'Calle litoral entre calle 2 y 3 barrio kantuta', 67250550, 'M', 'CLINICA UNIVERSITARIA', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(2, 'Canaza Ramos', 'Manuel', 'Av. Circunvalacion, santa barbara y 1ro de Mayo', 63642228, 'M', 'ENDE JERUYO', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(3, 'Caracilla Mamani', 'Jenrry Ronal', 'Zona franz tamayo entre 9', 67204507, 'M', 'ENDE ORURO', 'CREDENCIAL', 0, 'Semanal', 'Si', 'EMSEP-KM'),
(4, 'Catari Leon', 'Hector Jhonny', 'Urb. Huajara III', 69577234, 'M', 'ENDE UYUNI', 'CREDENCIAL', 0, '07:30-14:00', 'Si', 'EMSEP-KM'),
(5, 'Challa Calizata', 'Emily', 'Av. Avaroa entre Peru y Ecuador', 62791134, 'F', 'FRIGOR', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(6, 'Choque Quispe', 'Juan Carlos', 'Urb. Carmen zona este', 73559033, 'M', 'ENDE ORURO', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(7, 'Choque Tupa', 'Andrea', 'Av. del minero y final cochabamba', 67223998, 'F', 'ENDE VINTO', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(8, 'Choqueticlla Ticona', 'Wilma', 'Calle rengel behene zona sud', 62772686, 'F', 'PLASTICOS AIC', 'CREDENCIAL', 0, 'Semanal', 'Si', 'EMSEP-KM'),
(9, 'Coca Santos', 'Alejandra Paola', 'Calle campo jordan y calle 4', 71186098, 'F', 'PLASTICOS AIC', 'CREDENCIAL', 0, 'Semanal', 'Si', 'EMSEP-KM'),
(10, 'Colque Escobar', 'Edwin', 'Calle porvenir y calle 10 zona alto oruro', 69586550, 'M', 'BANCO UNION T. QUEMADO', 'CREDENCIAL', 0, '07:45-16:00', 'Si', 'EMSEP-KM'),
(11, 'Coronel Acero', 'Omar', 'Calle catacora y 12 de octubre', 72336841, 'M', 'ENDE CATARICAGUA', 'CREDENCIAL', 0, 'Semanal', 'Si', 'EMSEP-KM'),
(12, 'Cruz Morales', 'Camila Jhenny', 'Presidente montes esq. leon', 61813678, 'F', 'ENDE VINTO', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(13, 'Fernandez Ramirez', 'Pamela', 'Pagador y campo jordan', 61662353, 'F', 'BANCO UNION AGENCIA CENTRAL', 'CREDENCIAL', 0, '07:30-19:00', 'Si', 'EMSEP-KM'),
(14, 'Garcia Yupa', 'Juan Carlos', 'Calle loa s/n 9 de abril y ecuador', 68281764, 'M', 'ENDE ORURO', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(15, 'Gomez Hurtado', 'Elmer', 'de lozada s/n a', 75424641, 'M', 'AFP', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(16, 'Gomez Hurtado', 'Raul', 'Av. Tomas barron entre 7 y 8', 68319332, 'M', 'AFP', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(17, 'Gutierrez Pava', 'Ivan', 'Calle 4 y Av. Tomas barron', 61815824, 'M', 'BANCO UNION PISIGA', 'CREDENCIAL', 0, '', 'Si', 'EMSEP-KM'),
(18, 'Jaita Gutierrez', 'Guido Ariel', 'Resd. Huanuni y calle camacho', 68582447, 'M', 'BASE CENTRAL', 'CREDENCIAL', 0, '08:00-14:00', 'Si', 'EMSEP-KM'),
(19, 'Lutina Garcia', 'Peter', 'Resd. En quintana prov mercado', 72347376, 'M', 'ENDE OCTAVI', 'CREDENCIAL', 0, 'Semanal', 'Si', 'EMSEP-KM'),
(20, 'Mamani Mollo', 'Justino', 'Tiahuanacu, coro', 69595493, 'M', 'CORINSA', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(21, 'Mamani Vallejos', 'Carol Deysi', 'Huanuni Villa vinto', 69577045, 'F', 'ENDE VINTO', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(22, 'Martinez Villalta', 'Williams', 'lava lava-sacar', 77141428, 'M', 'ENDE ORURO', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(23, 'Mitma Huarayo', 'Segundino', 'Barrio Miraflores cajo c/d entre calle 8 y 9', 74802846, 'M', 'ENDE CATARICAGUA', 'CREDENCIAL', 0, 'Semanal', 'Si', 'EMSEP-KM'),
(24, 'Ortega Choque', 'Elmer', 'Cañada Strongest nº 750', 73312042, 'M', 'ENDE LUCIANITA', 'CREDENCIAL', 0, 'Semanal', 'Si', 'EMSEP-KM'),
(25, 'Padilla Matias', 'Alberto', 'Final petot, corazon de jesus', 68469209, 'M', 'EMBOL', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(26, 'Quelca Llave', 'Israel', 'Pdte. Montes entre ayacucho y cochabamba', 67131612, 'M', 'CARBORGAS', 'CREDENCIAL', 0, '19:00-07:00', 'Si', 'EMSEP-KM'),
(27, 'Ramirez Fernandez', 'Richard Palta', 'Av. Avaroa Av. del maestro', 63667641, 'M', 'ENDE OCOTAVI', 'CREDENCIAL', 0, 'Semanal', 'Si', 'EMSEP-KM'),
(28, 'Rios Choque', 'Cilbina', 'zona sud barrio', 74149445, 'F', 'ENDE VINTO', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(29, 'Romero Moya', 'Edwin', 'Resd en caracollo', 68294818, 'M', 'ENDE UYUNI', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(30, 'Santos Figueredo', 'Ximena', 'Zona alto oruro', 68353161, 'F', 'ENDE VINTO', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(31, 'Tapia Calle', 'Romario', 'Barrio pumas andinos', 62374323, 'M', 'BANCO UNION P. GRANDE', 'CREDENCIAL', 0, '08:00-16:00', 'Si', 'EMSEP-KM'),
(32, 'Teran Ledezma', 'Miguel Angel', 'Calle j. lechin oquendo entre calle mamani calle q', 71188153, 'M', 'BANCO UNION C. PADILLA', 'CREDENCIAL', 0, '07:00-19:00', 'Si', 'EMSEP-KM'),
(33, 'Tomas Condori', 'Jessica Naida', 'Av. España esq. Illampu', 67226874, 'F', 'ENDE VINTO', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(34, 'Velasquez Salgado', 'Jhonathan V.', 'Resd. En challapata calle 9 de abril', 68307407, 'M', 'ENDE LUCIANITA', 'CREDENCIAL', 0, 'Semanal', 'Si', 'EMSEP-KM'),
(35, 'Villca Caqueta', 'Jhimy Kevin', 'Calle capital barrio entre av. españa', 65432059, 'M', 'ENDE PAGADOR', 'CREDENCIAL', 0, 'Semanal', 'Si', 'EMSEP-KM'),
(36, 'Villca Caqueta', 'Juan Carlos', 'Av. 24 de julio nº 231', 60477298, 'M', 'BANCO UNION AG. CENTRAL', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(37, 'Zenteno Huanca', 'Gustavo Carlos', 'Av. la paz, oblitas y soria galvarro', 74461718, 'M', 'SEGUROS FORTALEZA', 'CREDENCIAL', 0, '24 hrs', 'Si', 'EMSEP-KM'),
(735413, 'Antonio Lopez', 'Jherson Lucio', 'Campo Jordan nº 11 y soldado bolivar', 0, 'M', 'EMISA', 'CREDENCIAL', 0, '24 hrs', 'Si', 'SECRET LINE'),
(1317912, 'Chapana Mamani', 'Felipe', 'BARRIO SAN JOSES Y ALONSO DE IVAÑEZ Nº 100', 69802875, 'M', 'ALMACEN ORURO MONOPOL', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(2741277, 'Ganci Martinez', 'Nicolas Raul', 'AV. DHENE Nº 68 AMERICA Y COLON', 68211592, 'M', 'JEFATURA REGIONAL ARMUS LTDA', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(3072201, 'Montecinos Muñoz', 'Rodolfo Gustavo', 'AROMA Y SORIA GALVARRO Nº 5008', 69802632, 'M', 'AGENCIA SEBASTIAN PAGADOR BANCO FIE', 'CREDENCIAL', 0, 'Diurno', 'renovacion', 'ARMUS LTDA'),
(3087985, 'Ramos Solorzano', 'Edwin', 'C/SUCRE Y F. LAS AMERICAS B. SAN MIGUEL', 69802994, 'M', 'DEPOSITO ORURO MEDLOG', 'CREDENCIAL', 0, 'Nocturno', 'Si', 'ARMUS LTDA'),
(3104967, 'Canaviri Chambi', 'Vilmar Rolando', 'C/ ADOLFO MIER Nº 114 Y BAPISTA', 78978454, 'M', 'ALMACEN ORURO ALICORP', 'CREDENCIAL', 0, 'Nocturno', 'Si', 'ARMUS LTDA'),
(3502462, 'Fuentes Gabriel', 'Valerio', 'Calle U Calle V', 74728092, 'M', 'IMBA 6 DE AGOSTO', 'CREDENCIAL', 0, '20:00-08:00', 'No', 'Multiservicios "VARDEL"'),
(4041599, 'Chuca Coquecalla', 'Luis Alberto', 'Urb. Huajara M30-LT10', 0, 'M', 'UPDS', 'CREDENCIAL', 0, '24 hrs', 'Si', 'SECRET LINE'),
(4067013, 'Acha Chaca', 'Ruben', 'C/ ECUADOR S/N Y EJERCITO  CHALLAPATA', 69802656, 'M', 'AGENCIA CHALLAPATA BANCO FIE', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(4079149, 'Valdez Jhon', 'Henry', 'C/CAMACHO Nº 1328 Y AYACUCHO', 74261277, 'M', 'OFICINA CENTRAL TIGO', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(4249056, 'Pimentel Daza', 'Saul Leonar', 'URB. ANGOSTURA MZN.6 LOTE 42', 69802719, 'M', 'AGENCIA EXPRESS NORTE (SEBASTIAN PAGADOR) BNB', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(5740153, 'Tupa Villarte', 'Jorge', 'Calle america y 1ro de mayo nº 2219', 0, 'M', 'UPDS', 'CREDENCIAL', 0, '24 hrs', 'Si', 'SECRET LINE'),
(5763579, 'Zenteno Vargas', 'Andres', 'Av. Ejercito y circunvalacion', 78603503, 'M', 'IMBA CAMPERO', 'CREDENCIAL', 0, '09:00-14:00', 'No', 'Multiservicios "VARDEL"'),
(5775988, 'Choque Ayza', 'Cesar Ivan', 'Av. velasco galvarro y starset nº 3', 0, 'M', 'OFICINA CENTRAL', 'CREDENCIAL', 0, '12 hrs', 'Si', 'SECRET LINE'),
(5777183, 'Soliz Castro', 'Ariel', 'GENRAL ACHA Nº 8 Y AMERICA', 69802898, 'M', 'PUNTO DE DISTRIBUCION 16', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(5777480, 'Chambi Albino', 'Felix', 'C/ 1 DE MAYO Y TARIJA  HUARI', 69802946, 'M', 'PUERTA DESPACHOS CBN HUARI', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7266599, 'Mollo Chayña', 'Luis Alvaro', 'C/ F. BALLON Nº 15 Y OBLITAS', 71547263, 'M', 'PLANTA TIGO', 'CREDENCIAL', 0, 'Nocturno', 'Si', 'ARMUS LTDA'),
(7278776, 'Montaño Jacinto', 'Juan Carlos', 'URB. FRANZ TAMAYO CALLE 9 ENTE C/T Y C/U', 69802875, 'M', 'ALMACEN ORURO MONOPOL', 'CREDENCIAL', 0, 'Nocturno', 'Si', 'ARMUS LTDA'),
(7280884, 'Torrico Sarmiento', 'Moises Agustin', 'AV. 6 DE AGOSTO S/N C/ TENIENTE VILLA Y POTOSI', 69802898, 'M', 'PUNTO DE DISTRIBUCION 16', 'CREDENCIAL', 0, 'Nocturno', 'Si', 'ARMUS LTDA'),
(7282404, 'Espinoza Chavez', 'Juan Pablo', 'C/USTARIS Nº22 ENTRE C. STRONGUEST Y 6 DE OCTUBRE', 69802922, 'M', 'SALA VENTAS CBN', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7282817, 'Pinaya Poma', 'Fanor Franklin', 'C/HEROHINAS SECRETARIO Nº 283 Y PASAJE EL SAPO', 69802922, 'M', 'SALA VENTAS CBN', 'CREDENCIAL', 0, 'Nocturno', 'Si', 'ARMUS LTDA'),
(7286441, 'Colque Caceres', 'Jose Luis', 'Calle zaconeta nº 755 y rafael pabon', 0, 'M', 'EMISA', 'CREDENCIAL', 0, '24 hrs', 'Si', 'SECRET LINE'),
(7290110, 'Lopez Tola', 'Elvis Oscar', 'AV. AL VALLE BARRIO MINERO  JAPO Nº 86', 69802985, 'M', 'ALMACEN EVENTOS CBN', 'CREDENCIAL', 0, 'Nocturno', 'renovacion', 'ARMUS LTDA'),
(7290685, 'Condori Tito', 'Eudis Jhoel', 'URB. HUAJARA MZ 4B LOTE 6 ORURO', 69802673, 'M', 'AUTOBANCO BNB', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7295816, 'caro coca', 'freddy', 'DEMETRIO CANELAS Nª 833 ENTRE WASHIGTONG Y CAMACHO', 70430048, 'F', 'Policica', 'CREDENCIAL', 0, 'Semanal', 'Si', 'EMSEP-KM'),
(7302810, 'Magne Villca ', 'Ariel Ricardo', 'Pdte. Montes entre washintong y Vallivian nº 190', 74261277, 'M', 'OFICINA CENTRAL TIGO', 'CREDENCIAL', 0, 'Diurno', 'renovacion', 'ARMUS LTDA'),
(7302921, 'Quispe Condori', 'Alex Wilfredo', 'Urb. Huajara 2 nº 56', 60425129, 'M', 'EDIFICIO FETSUCO', 'CREDENCIAL', 0, '07:00-17:00', 'No', 'Multiservicios "VARDEL"'),
(7309199, 'Flores Quenaya', 'Manfred Reimar', 'C/ ECUADOR S/N ZONA SUR', 69802976, 'M', 'PLANTA ENALBO', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7310949, 'Copacaba Lazaro', 'Nilton Benito', '12 de octubre y america', 65421622, 'M', 'TELEFERICO SUPERIOR', 'CREDENCIAL', 0, '08:00-20:00', 'No', 'Multiservicios "VARDEL"'),
(7312220, 'Flores Caceres', 'Jeher Richard', 'Av. del maestro nº 800', 79401306, 'M', 'CAMARA DE COMERCIO', 'CREDENCIAL', 0, '09:00-21:00', 'No', 'Multiservicios "VARDEL"'),
(7312380, 'Daza Ramos', 'Oscar', 'Urb. Milenium Fase I', 73845111, 'M', 'IMBA 6 DE AGOSTO', 'CREDENCIAL', 0, '14:00-20:00', 'No', 'Multiservicios "VARDEL"'),
(7313813, 'Llanque Blas', 'Brayan Gerson', 'Urb. Huajara', 71103353, 'M', 'PREVISION', 'CREDENCIAL', 0, '09:00-17:00', 'No', 'Multiservicios "VARDEL"'),
(7314735, 'Flores Yana', 'Cristhian', 'TOMAS BARRON Nº 10 ENTRE F HEROES DEL CHACO', 69802898, 'M', 'PUNTO DE DISTRIBUCION 16 CBN', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7316287, 'Sanchez Martinez', 'Rosbert Anderson', 'Calle petot nº 1680 sucre y bolivar', 65422442, 'M', 'TELEFERICO INFERIOR', 'CREDENCIAL', 0, '08:00-20:00', 'No', 'Multiservicios "VARDEL"'),
(7319143, 'Gomez Jorge', 'Ruben Aquin Dersi', 'AV. L CABRERA Y COCHABAMBA S/N CHALLAPATA', 69802946, 'M', 'PUERTA DESPACHOS CBN HUARI', 'CREDENCIAL', 0, 'Nocturno', 'Si', 'ARMUS LTDA'),
(7319639, 'Jurado Salvador', 'Aldo', 'TARAPACA Nº 17 ENTRE LEON Y 1º DE NOV.', 69802897, 'M', 'SHOW ROOM NISSAN', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7320857, 'Aicahuara Choque', 'Jose Manuel', 'URB. 7 DE MARZO MZ B19 LOTE 2 ', 69802976, 'M', 'PLANTA ENALBO CBN', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7321113, 'Risco Sanchez', 'Italo Ivanof', 'CAMPO JORDAN CALLE 3 Nº 8 ORURO', 69802712, 'M', 'AGENCIA EXPRESS 6 DE OCTUBRE BNB', 'CREDENCIAL', 0, 'Diurno', 'tramite', 'ARMUS LTDA'),
(7337296, 'Vega Parrado', 'Vincent Rair', 'AV. DEHENE Nº 68 AMERICA Y COLON', 71551493, 'M', 'SUPERVISOR  ARMUS LTDA.', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7339012, 'Pinaya Ramos', 'Omar Gustavo', 'Av. Del deportista zona norte', 74467044, 'M', 'COOPERATIVA DE AHORRO PAULO VI', 'CREDENCIAL', 0, '18:00-08:00', 'No', 'Multiservicios "VARDEL"'),
(7342314, 'Ajata Solares', 'Miguel Angel', 'Calle pagador nº 601 y calle C', 0, 'M', 'LAS LOMAS', 'CREDENCIAL', 0, '24 hrs', 'Si', 'SECRET LINE'),
(7343755, 'Rocha Choque', 'Ruddy Raul', 'RUMMY CAMPANA CIRCUNVALACION Nº 5 FERRARI ZONA NORTE', 74120232, 'M', 'APOYO DESCANSERO NOCTURNO CBN NISSAN MEDLOG ARMUS LTDA', 'CREDENCIAL', 0, 'Nocturno', 'Si', 'ARMUS LTDA'),
(7343756, 'Rocha Choque', 'Cristhian Ulises', 'B/ RUMMY CAMPANA Y CIRCUNVALACION Nº 5', 69802897, 'M', 'SHOW ROOM NISSAN', 'CREDENCIAL', 0, 'Nocturno', 'Si', 'ARMUS LTDA'),
(7350418, 'Atanacio Isnado', 'Miguel Angel', 'Urb. Aurora', 75700043, 'M', 'IMBA CAMPERO', 'CREDENCIAL', 0, '09:00-15:00', 'No', 'Multiservicios "VARDEL"'),
(7351053, 'Canaza Mamani', 'Marvin Ademar', 'Urb. Los pinos', 65404185, 'M', 'COOPERATIVA DE AHORRO PAULO VI', 'CREDENCIAL', 0, '08:00-18:00', 'No', 'Multiservicios "VARDEL"'),
(7351642, 'Chuquichambi Pereira', 'Ramiro', 'C/ 12 de octubre esq. Topater nº- 4', 69802976, 'M', 'PLANTA ENALBO CBN', 'CREDENCIAL', 0, 'Nocturno', 'Si', 'ARMUS LTDA'),
(7356400, 'Catari Vasquez', 'Francisco Javier', 'C/ ATAHUALPA Nº 595 PLAN 500', 74261277, 'M', 'OFICINA CENTRAL TIGO', 'CREDENCIAL', 0, 'Nocturno', 'Si', 'ARMUS LTDA'),
(7361047, 'Quispe Cuizara', 'Iver', 'AV. GERMAN BUSCH S/N ENTRE M DORADO CHALLAPTA', 69805442, 'M', 'AGENCIA CHALLAPATA BANCO CIDRE', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7365527, 'Acha Chaca', 'Marcelo', 'Z SUR VILLA NUEVA AMERICA S/N CHALLAPATA', 69802970, 'M', 'PUERTA PEATONAL CBN HUARI', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7365623, 'Mamani Ari', 'Wilder Alvaro', 'PSJ SAN FRANCISCO S/N C LA PAZ CHALLAPARA ORURO', 69802970, 'M', 'PUERTA PEATONAL CBN HUARI', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7366264, 'Perez Cena', 'Alvaro', 'Urb. San miguel M4-LT4', 0, 'M', 'LAS LOMAS', 'CREDENCIAL', 0, '24 hrs', 'Si', 'SECRET LINE'),
(7366793, 'Flores Yucra', 'Gerson Ruben', 'Calle alonso ibañez y agusto bletran', 77144334, 'M', 'TELEFERICO INFERIOR', 'CREDENCIAL', 0, '08:00-20:00', 'No', 'Multiservicios "VARDEL"'),
(7369797, 'Aranibar Reynaga', 'Alex Antonio', 'Calle antofagasta nº 1100 ayacucho', 65421622, 'M', 'COOPERATIVA DE AHORRO CACEF', 'CREDENCIAL', 0, '08:15-16:00', 'No', 'Multiservicios "VARDEL"'),
(7371582, 'Caceres Choque', 'Elias', 'C/ORURO S/N PAZ DEL CHACO CHALLAPTA', 69802970, 'M', 'PUERTA PEATONAL CBN HUARI', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7373591, 'Panama Acha', 'Roberto Carlos', 'Calle pagador y sotomayor', 65430043, 'M', 'TELEFERICO SUPERIOR', 'CREDENCIAL', 0, '08:00-20:00', 'No', 'Multiservicios "VARDEL"'),
(7374091, 'Rufino Villanueva', 'Joel Brayan', 'VILLA CHALLACOLLO C/J.ENVIS Nº 1250 Y SANTA CRUZ', 69576993, 'M', 'APOYO DESCANSERO CBN, NISSAN Y MEDLOG', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7380144, 'Salamanca Condori', 'Daniel', 'Urb. los pinos M10-LT10', 0, 'M', 'LAS LOMAS', 'CREDENCIAL', 0, '12 hrs', 'Si', 'SECRET LINE'),
(7388790, 'Mercado Tococosi', 'Edson', 'Calle la paz nº 24 y beni', 61836464, 'M', 'UNIVERSIDAD UPAL', 'CREDENCIAL', 0, '07:00-14:30', 'No', 'Multiservicios "VARDEL"'),
(7394733, 'Gutierrez Choque', 'Adrian Daniel', 'Zona huayrapata nº 2230', 67210187, 'M', 'COOPERATIVA DE AHORRO PAULO VJ', 'CREDENCIAL', 0, '08:20-17:00', 'No', 'Multiservicios "VARDEL"'),
(7403582, 'Lucana Lapaca', 'Ariel', 'Av.dehene y 12 de octubre nº3', 0, 'M', 'EMISA', 'CREDENCIAL', 0, '24 hrs', 'Si', 'SECRET LINE'),
(7450510, 'Pareyra Goytia', 'Jaime Andres', 'Urb. Sierra Mier nº6', 65414725, 'M', 'IMBA 6 DE AGOSTO', 'CREDENCIAL', 0, '09:00-14:00', 'No', 'Multiservicios "VARDEL"'),
(7453808, 'Calani Gonzales', 'Ever Jaime', 'C/ TARAPACA Y ALDANA Nº 1903', 71547263, 'M', 'PLANTA TIGO', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7453820, 'Calani Gonzales', 'Jhon Brayan', 'URB. EMO BOLIVAR ZONA SUR', 65441855, 'M', 'APOYO DESCANSERO TIGO OFICINA, PLANTA Y ALICORP', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(7458666, 'Chambi Chambi', 'Abel Wilson', 'TARIJA Nº 118 Y VILLAZON ORURO', 61810874, 'M', 'VIGILANTE BAUCHERO NOCTURNO', 'CREDENCIAL', 0, 'Nocturno', 'Si', 'ARMUS LTDA'),
(8297787, 'Rios Aguilar', 'Elio Javier', 'C Nº 3 Nº 752 SANTIAGO II', 69805485, 'M', 'AGENCIA CENTRAL BANCO CIDRE', 'CREDENCIAL', 0, 'Diurno', 'tramite', 'ARMUS LTDA'),
(8629462, 'Ortiz Vargas', 'Olker', 'C/CARO ENTRE ARICA E IQUIQUE Nº 750', 78978454, 'M', 'ALMACEN ORURO ALICORP', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(9132257, 'Acha', 'Paulino', 'Colon unio y camacho', 74078364, 'M', 'COOPERATIVA DE AHORRO PAULO VI', 'CREDENCIAL', 0, '08:20-17:00', 'No', 'Multiservicios "VARDEL"'),
(10096210, 'Navia Susaño', 'Henry Raith', 'RENGEL Nº 132 ENTRE 6 DE AGOSTO Y CAYACORA', 89802653, 'M', 'AGENCIA MERCADO BOLIVAR BANCO FIE', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(12519041, 'Ramos Zambrana', 'Jimmy', 'Urb. Itos nº 5', 0, 'M', 'EMISA', 'CREDENCIAL', 0, '24 hrs', 'Si', 'SECRET LINE'),
(12549994, 'Martinez Tapia', 'Brayan', 'C/ FINAL CHARCAS Nº 74 Y SEVERO DURAN', 69802985, 'M', 'ALMACEN EVENTOS CBN', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(12580945, 'Huarachi Cahuana', 'Rodrigo', 'PJE Acha nº 179 entre colon y villazon', 79417340, 'M', 'IMBA 6 DE AGOSTO', 'CREDENCIAL', 0, '08:00-14:00', 'No', 'Multiservicios "VARDEL"'),
(12613316, 'Ahujacho Nogales', 'Franz Williams', 'C/SUCRE Y F. LAS AMERICAS B. SAN MIGUEL', 69802994, 'M', 'DEPOSITO ORURO MEDLOG', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(12741300, 'Herrera Salvador', 'Jorge Andree', 'BARRIO LITORAL TACNA Y CAMPO JORDAN Nº 2', 69802673, 'M', 'AUTOBANCO BNB', 'CREDENCIAL', 0, 'Nocturno', 'Si', 'ARMUS LTDA'),
(12805530, 'Aica Marcos', 'Erwin', 'VILLA VERDE PROV. SEBASTIAN PAGADOR ORURO', 69802946, 'M', 'PUERTA PEATONAL CBN HUARI', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(13934829, 'Belzu Alban', 'Ronald', 'C/ LA PAZ Nº 5081 Y RODRIGUEZ', 74261277, 'M', 'OFICINA CENTRAL TIGO', 'CREDENCIAL', 0, 'Diurno', 'Si', 'ARMUS LTDA'),
(65422442, 'Yucar Alejo', 'Daniel Simon', 'Calle Ballivian nº 775 plata', 65422442, 'M', 'ALS BOLIVIA', 'CREDENCIAL', 0, '18:30-08:30', 'No', 'Multiservicios "VARDEL"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE IF NOT EXISTS `reporte` (
  `idreporte` int(11) NOT NULL,
  `nombreUsu` varchar(30) NOT NULL,
  `fechaRep` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `observaciones` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `ci` int(11) NOT NULL,
  `apPaterno` varchar(20) NOT NULL,
  `apMaterno` varchar(20) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `telCel` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `contraseña` varchar(200) NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ci`, `apPaterno`, `apMaterno`, `nombres`, `direccion`, `cargo`, `telCel`, `usuario`, `contraseña`, `rol`) VALUES
(6852159, 'Pinto', 'L.', 'Jessenia Ochoa', '', 'Secretaria', 67241702, 'pinto', '152dd661da76621366f5e3275c33ea86', 2),
(6995741, 'Mallcu', 'Frias', 'Jhorbi Nelson', '', 'Responsable empresa', 71885204, 'mallcu', '23eb0015a80f619bb57f68e4ed0a0ad1', 3),
(7295816, 'Caro', 'Coca', 'Freddy Leon', 'Demetrio canelas nº 833 entre aldana y camacho', 'Programador', 70430048, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(7415369, 'Magne', 'Quispe', 'Abel', '', 'Sargento', 67109333, 'magne', 'a6cd39ee5b1d8276f6bc716b3f7881b7', 2),
(7894561, 'Vargas', '', 'Edson', '', 'Sargento', 73810685, 'vargas', 'cd4fbce046c46f107e45ae0ddd0db7d3', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
 ADD PRIMARY KEY (`nit`), ADD UNIQUE KEY `nit` (`nit`), ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
 ADD PRIMARY KEY (`ci`), ADD KEY `FK` (`empresa`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
 ADD PRIMARY KEY (`idreporte`), ADD KEY `FK` (`nombreUsu`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`ci`), ADD UNIQUE KEY `usuario` (`usuario`), ADD UNIQUE KEY `usuario_2` (`usuario`), ADD UNIQUE KEY `usuario_3` (`usuario`), ADD UNIQUE KEY `usuario_4` (`usuario`), ADD UNIQUE KEY `usuario_5` (`usuario`), ADD UNIQUE KEY `ci` (`ci`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
MODIFY `nit` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `personal`
--
ALTER TABLE `personal`
ADD CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
ADD CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`nombreUsu`) REFERENCES `usuarios` (`usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

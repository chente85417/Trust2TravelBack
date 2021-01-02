-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-01-2021 a las 21:08:51
-- Versión del servidor: 8.0.22
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trust2traveldb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `ACTID` smallint NOT NULL COMMENT 'Clave primaria de la tabla. Acepta hasta 65535 actividades',
  `NOMBRE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Nombre de la actividad. Obligatorio',
  `LONGITUD` float DEFAULT NULL COMMENT 'Coordenada de longitud de la actividad',
  `LATITUD` float DEFAULT NULL COMMENT 'Coordenada de latitud de la actividad',
  `DIRECCION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Dirección de la actividad',
  `LOCALIDAD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Localidad de la actividad',
  `PROVINCIA` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Provincia de la actividad',
  `COMUNIDAD` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Comunidad de la actividad',
  `PAIS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'País de la actividad',
  `TELEFONO` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'Teléfonos de contacto de la actividad',
  `WEBSITE` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Url del sitio web de la actividad',
  `EMAIL` varchar(512) DEFAULT NULL COMMENT 'Dirección de email de contacto de la actividad',
  `IMAGEN` varchar(1024) DEFAULT NULL COMMENT 'Url de la imagen de la actividad',
  `DESCRIPCION` text COMMENT 'Texto descriptivo de la actividad'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena las actividades disponibles';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alojamientos`
--

CREATE TABLE `alojamientos` (
  `ALID` int NOT NULL COMMENT 'Clave primaria de la tabla. Acepta hasta 2^32 establecimientos',
  `NOMBRE` varchar(128) NOT NULL COMMENT 'Nombre del establecimiento. Obligatorio',
  `LONGITUD` float NOT NULL COMMENT 'Coordenada longitud del establecimiento. Obligatorio',
  `LATITUD` float NOT NULL COMMENT 'Coordenada latitud del establecimiento. Obligatorio',
  `DIRECCION` varchar(255) NOT NULL COMMENT 'Dirección del establecimiento. Obligatorio',
  `LOCALIDAD` varchar(128) DEFAULT NULL COMMENT 'Localidad o entorno de localización del establecimiento. Opcional',
  `PROVINCIA` varchar(50) DEFAULT NULL COMMENT 'Provincia del establecimiento. Opcional',
  `COMUNIDAD` varchar(50) DEFAULT NULL COMMENT 'Comunidad autónoma o región del establecimiento. Opcional',
  `PAIS` varchar(50) DEFAULT NULL COMMENT 'País del establecimiento. Opcional',
  `TELEFONO` longtext COMMENT 'Teléfonos de contacto del establecimiento en formato JSON. Opcional',
  `WEBSITE` varchar(255) DEFAULT NULL COMMENT 'Url del sitio web del establecimiento. Opcional',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT 'Dirección de email de contacto del establecimiento. Opcional',
  `LOGO` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Ruta al archivo del logo del establecimiento en el servidor. Opcional',
  `DESCRIPCION` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'Texto descriptivo del alojamiento'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena los establecimientos localizados por la aplicación';

--
-- Volcado de datos para la tabla `alojamientos`
--

INSERT INTO `alojamientos` (`ALID`, `NOMBRE`, `LONGITUD`, `LATITUD`, `DIRECCION`, `LOCALIDAD`, `PROVINCIA`, `COMUNIDAD`, `PAIS`, `TELEFONO`, `WEBSITE`, `EMAIL`, `LOGO`, `DESCRIPCION`) VALUES
(100, 'Hotel Gran Rey', -17.3389, 28.089, 'Avda. Marítima 1, 38870 Valle Gran Rey, La Gomera', 'La Gomera', 'Santa Cruz de Tenerife', 'Canarias', 'España', '+34 922 805 859', 'https://hotelgranrey.es/', '', 'https://www.biospheretourism.com/es/image/arxiu/0a6dbdf12e4a21417ddc6ab3e3bf2907.jpg?w=1140&h=392', ''),
(101, 'Hotel Jardín Tecina', -17.1894, 28.0307, 'Lomada de Tecina, s/n, Playa de Santiago, La Gomera', 'La Gomera', 'Santa Cruz de Tenerife', 'Canarias', 'España', '+34 922 245 101', 'https://www.jardin-tecina.com/es/', 'tecina@fredolsen.es', 'https://www.biospheretourism.com/es/image/arxiu/3703f0a5c3f8e1f9cb6637f9ba2b3681.jpg?w=1140&h=392', ''),
(102, 'Hotel Botánico The Oriental Spa Garden', -16.5381, 28.4111, 'Avenida Richard J Yeoward 1, 38400 Puerto de la Cruz', 'Puerto de la Cruz', 'Santa Cruz de Tenerife', 'Canarias', 'España', '+34 922 381 512', 'https://hotelbotanico.com/', 'reservas@hotelbotanico.com', 'https://www.biospheretourism.com/es/image/arxiu/c2e800e110482136d707940bd93c5ea1.jpg?w=1140&h=392', ''),
(103, 'H10 Tenerife Playa', -16.5426, 28.4187, 'Av. de Colón, 12, Puerto de la Cruz, E-38400 · Tenerife', 'Puerto de la Cruz', 'Santa Cruz de Tenerife', 'Canarias', 'España', '+34 900 444 466', 'https://www.h10hotels.com/es/hoteles-tenerife/h10-tenerife-playa', 'h10.tenerife.playa@h10hotels.com', 'https://cmspro.h10hotels.com/ImagenesHotel/hotel%20(3).jpg?RenditionID=16', ''),
(104, '11 Holiday Homes Tenerife', -16.6046, 28.0263, 'C/ San Miguel s/n, Golf del Sur - 38369 - Tenerife', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife', 'Canarias', 'España', '+34 922 938 510', 'https://www.11holidayhomestenerife.com/cas/bienvenido', 'info@los11.es', 'https://www.biospheretourism.com/es/image/arxiu/6dedfb8c2ee50afc5d798bc692b0c1ec.jpg?w=280&h=211', ''),
(105, 'H10 Big Sur Boutique Hotel', -16.7127, 28.049, 'Av. Juan Carlos I, 28, Los Cristianos, E-38650 Tenerife', 'Los Cristianos', 'Santa Cruz de Tenerife', 'Canarias', 'España', '+34 922 79 03 66', 'https://www.h10hotels.com/es/hoteles-tenerife/h10-big-sur', 'h10.big.sur@h10hotels.com', 'https://www.biospheretourism.com/es/image/arxiu/f34997ac181651048d6d7808f06dc1a8.jpg?w=1140&h=392', ''),
(106, 'H10 Conquistador', -16.7335, 28.0601, 'Av. Rafael Puig, 36 - E-38660, Tenerife', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife', 'Canarias', 'España', '+34 922 75 30 00', 'https://www.h10hotels.com/es/hoteles-tenerife/h10-conquistador', 'h10.conquistador@h10hotels.com', 'https://www.biospheretourism.com/es/image/arxiu/76b873403b27946819781b2aef2b71c4.jpg?w=1140&h=392', ''),
(107, 'H10 Las Palmeras', -16.7317, 28.0658, 'Av. Rafael Puig Lluvina, 28 · Playa de las Américas · E-38660 · Tenerife', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife', 'Canarias', 'España', '+34 922 79 09 91', 'https://www.h10hotels.com/es/hoteles-tenerife/h10-las-palmeras', 'h10.las.palmeras@h10hotels.com', 'https://www.biospheretourism.com/es/image/arxiu/67908580203de0d9a78d848d4a884ac8.jpg?w=1140&h=392', ''),
(108, 'H10 Gran Tinerfe', -16.7323, 28.0722, 'Av. Rafael Puig Lluvina 13, Costa Adeje, E-38660 Tenerife', 'Costa Adeje', 'Santa Cruz de Tenerife', 'Canarias', 'España', '+34 922 791 200', 'https://www.h10hotels.com/es/hoteles-tenerife/h10-gran-tinerfe', 'h10.gran.tinerfe@h10hotels.com', 'https://www.biospheretourism.com/es/image/arxiu/7b37135b6509fb78882fce58ef273045.jpg?w=1140&h=392', ''),
(109, 'H10 Costa Adeje Palace', -16.7492, 28.0972, 'Playa La Enramada, La Caleta, Costa Adeje, E-38679 Tenerife', 'Costa Adeje', 'Santa Cruz de Tenerife', 'Canarias', 'España', '+34 922 714 171', 'https://www.h10hotels.com/es/hoteles-tenerife/h10-costa-adeje-palace?gclid=CPSYkq3XnscCFSTItAodds4Daw', 'h10.costa.adeje.palace@h10hotels.com', 'https://www.biospheretourism.com/es/image/arxiu/b25cc34287908e0e2bf38e8bc5fc8869.jpg?w=1140&h=392', ''),
(110, 'H10 Estepona Palace', -5.15495, 36.4177, 'Av. del Carmen 99, E-29680-Estepona', 'Estepona', 'Málaga', 'Andalucía', 'España', '+34 952 79 00 40', 'https://www.h10hotels.com/es/hoteles-costa-del-sol/h10-estepona-palace', 'reservas.hes@h10hotels.com', 'https://cmspro.h10hotels.com/ImagenesHotel/11-3-17_Vista-general-piscina-hotel_0019hes.jpg?RenditionID=16', ''),
(111, 'H10 Andalucía Plaza', -4.96139, 36.4895, 'Urb. Nueva Andalucía s/n, E-29660-Marbella', 'Marbella', 'Málaga', 'Andalucía', 'España', '+34 952 81 20 00', 'https://www.h10hotels.com/es/hoteles-costa-del-sol/h10-andalucia-plaza', 'h10.andalucia.plaza@h10hotels.com', 'https://cmspro.h10hotels.com/ImagenesHotel/Fachada-de-dia0.jpg?RenditionID=16', ''),
(112, 'APARTAMENTOS SEVILLA CENTRO', -5.99748, 37.3907, 'C. San Pablo, 4, 41001 Sevilla', 'Sevilla', 'Sevilla', 'Andalucía', 'España', '+34 661 701 709', 'http://apartamentosevillacentro.com/', 'gestion@apartamentosevillacentro.com', 'https://www.biospheretourism.com/es/image/arxiu/86bb3f8559bfc08b425e1220a4304467.png?w=1140&h=392', ''),
(113, 'KOBA HOSTEL', -1.97288, 43.3228, 'Karkizano Kalea, 5, 20002 Donostia, Gipuzkoa', 'Donostia', 'Gipuzkoa', 'País Vasco', 'España', '+34 943 165 817', 'http://www.kobahostel.com/', 'info@kobahostel.com', 'https://www.biospheretourism.com/es/image/arxiu/01006880dc56ced15f15c23abda35729.jpg?w=1140&h=392', ''),
(114, 'LA SIESTA SALOU RESORT & CAMPING', 2.17555, 41.3766, 'La Siesta Salou, Resort & Camping, Carrer del Nord 37 - 43840 SALOU', 'Salou', 'Tarragona', 'Cataluña', 'España', '+34 977 380 852', 'https://www.camping-lasiesta.com/', 'info@lasiestasalou.com', 'https://www.biospheretourism.com/es/image/arxiu/07435d3b24ebdc22919aa27d25c4fb98.jpg?w=280&h=211', ''),
(115, 'MAS DE L\'ALEIX', 1.31949, 41.217, 'Celler Sui Generis SCCL, Mas de l\'Aleix s/n, 43886 Renau', 'Renau', 'Tarragona', 'Cataluña', 'España', '+34 670 265 764', 'https://www.celler-suigeneris.com/el-mas-de-l-aleix/', 'info@celler-suigeneris.com', 'https://www.biospheretourism.com/es/image/arxiu/9318402c91a1e6c30eff487e61216291.jpg?w=1140&h=392', ''),
(116, 'MASIA SPA CAN PASCOL CASA RURAL ECOLOGICA', 1.53, 41.4209, 'Masia Spa Can Pascol-Casa Ecológica, C/Masia Can Pascol 28, 08738 Pontons', 'Pontons', 'Barcelona', 'Cataluña', 'España', '+34 618 316 394', 'https://masiacanpascol.com/', 'info@masiacanpascol.com', 'https://www.biospheretourism.com/es/image/arxiu/d166983bfbcb507e417029cc9e175d09.JPG?w=1140&h=392', ''),
(117, 'Andante Hotel', 2.17268, 41.3765, 'Av. Drassanes 23-25, 08001 Barcelona', 'Barcelona', 'Barcelona', 'Cataluña', 'España', '+34 902 222 103', 'https://www.andantehotel.com/es', 'reservas@andantehotel.com', 'https://www.biospheretourism.com/es/image/arxiu/bb74c4671d14e560517b279f2453dca2.jpg?w=1140&h=392', ''),
(118, 'Hotel Pulitzer Barcelona', 2.16834, 41.3861, 'Calle Bergara 8, 08002 - Barcelona', 'Barcelona', 'Barcelona', 'Cataluña', 'España', '+34 934 816 767', 'https://www.hotelpulitzer.es/es/', 'bookings@hotelpulitzer.es', 'https://www.biospheretourism.com/es/image/arxiu/89d917ca184a57aadc4c3d7c6bddcc9e.jpg?w=1140&h=392', ''),
(119, 'Twentytú Hi-Tech Hostel', 2.18796, 41.3992, 'Carrer de Pamplona  114, 08018 Barcelona', 'Barcelona', 'Barcelona', 'Cataluña', 'España', '+34 932 387 185', 'https://twentytu.com/es/tarifas-y-ofertas-grupo/', 'reservas@twentytu.com', 'https://www.biospheretourism.com/es/image/arxiu/08a40bee54209cb00e87b21f4db51e8a.jpg?w=1140&h=392', ''),
(120, 'Hotel Golden Tulip Barcelona', 2.19062, 41.4006, 'CALLE AVILA, 135-139, 8018 BARCELONA', 'Barcelona', 'Barcelona', 'Cataluña', 'España', '+34 934 833 876', 'https://barcelona.goldentulip.com/', 'info@goldentulipbarcelona.com', 'https://www.biospheretourism.com/es/image/arxiu/a044112b523efbdcd80d8c76b6f02d8e.jpg?w=1140&h=392', ''),
(121, 'Hotel Barcelona 1882', 2.16929, 41.4039, 'Corsega, 482 Barcelona 08025', 'Barcelona', 'Barcelona', 'Cataluña', 'España', '+34 933 478 486', 'https://www.hotelbarcelona1882.com/', 'info@hotel1882.com', 'https://www.biospheretourism.com/es/image/arxiu/e1e143bac8e5dbb67711e6ecb06255ec.jpg?w=1140&h=392', ''),
(122, 'Hotel Ciutat de Girona', 2.62057, 41.9683, 'Carrer Nord 2, 17001 Girona', 'Girona', 'Girona', 'Cataluña', 'España', '+34 972 483 038', 'https://www.hotelciutatdegirona.com/es', 'info@hotelciutatdegirona.com', 'https://www.biospheretourism.com/es/image/arxiu/de804159b4a585c08b51017d0963d18f.jpg?w=1140&h=392', ''),
(123, 'Alemanys 5', 2.82684, 41.9863, 'Carrer Alemanys 5, 17004 Girona', 'Girona', 'Girona', 'Cataluña', 'España', '+34 649 885 136', 'https://alemanys5.com/', 'mribera@alemanys5.com', 'https://www.biospheretourism.com/es/image/arxiu/8ce77aaac205c4514abd9af93467f831.jpg?w=1140&h=392', ''),
(124, 'Camping Begur', 3.20284, 41.9428, 'Ctra. d’Esclanyà Km.2, 17255 Begur', 'Begur', 'Girona', 'Cataluña', 'España', '+34 972 623 201', 'https://campingbegur.com/', 'info@campingbegur.com', 'https://www.biospheretourism.com/es/image/arxiu/3e16cbf7745d2578e48c571a573e1092.jpg?w=280&h=211', ''),
(125, 'H10 Blue Mar (Boutique Hotel)', 2.42399, 39.5354, 'Camí des Salinar 8, E-07160-Camp de Mar- Andratx', 'Mallorca', 'Baleares', 'Baleares', 'España', '+34 971 235 100', 'https://www.h10hotels.com/es/hoteles-mallorca/h10-blue-mar', 'h10.blue.mar@h10hotels.com', 'https://cmspro.h10hotels.com/ImagenesHotel/16-5-19_Vistas-generales-piscina-de-dia_0004.jpg?RenditionID=16', ''),
(126, 'H10 Casa del Mar', 2.4848, 39.5186, 'Gran Via del Puig Major 2, E-07180-Santa Ponça', 'Mallorca', 'Baleares', 'Baleares', 'España', '+34 971 693 366', 'https://www.h10hotels.com/es/hoteles-mallorca/h10-casa-del-mar', 'h10.casa.delmar@h10hotels.com', 'https://cmspro.h10hotels.com/ImagenesHotel/6-7-17_Vista-piscina-de-dia_0012 - retocada.jpg?RenditionID=16', ''),
(127, 'H10 Punta Negra (Boutique Hotel)', 2.55292, 39.5267, 'C/ Punta Negra 12, E-07181-Costa d\'en Blanes', 'Mallorca', 'Baleares', 'Baleares', 'España', '+34 971 680 762', 'https://www.h10hotels.com/es/hoteles-mallorca/h10-punta-negra', 'h10.puntanegra@h10hotels.com', 'https://cmspro.h10hotels.com/ImagenesHotel/hpn_261513509.jpg?RenditionID=16', ''),
(200, 'Abuela Benita', -4.4672, 40.4561, 'C/ Adolfo Suárez 3  ', '05260 Cebreros', 'Ávila', 'Castilla y León', 'España', '678 555 248', 'https://www.casaruralabuelabenita.es/', 'info@abuelabenita.es', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=FACHADA4945.125.jpg&c=2527', ''),
(201, 'Agroturismo Arkaia', -2.63439, 42.8418, 'Arkaia, 13 C  ', '01193 Arkaia', 'Álava', 'País Vasco', 'España', '635 733 704', 'www.agroturismoarkaia.com', 'info@agroturismoarkaia.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=Agroturismo_Arkaia9.jpg&c=22244', ''),
(202, 'Agroturismo El Mirador de la Cigüeña', -4.03248, 40.9762, 'C/ Cigüeña, 6 Bis  ', '40160 Cabanillas del Monte (Torrecaballeros)', 'Segovia', 'Castilla y León', 'España', '660 267 905', 'https://www.xn--elmiradordelacigea-30b2t.es/', 'info@elmiradordelacigüeña.es', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=IMG_20180621_1058207663.jpg&c=21490', ''),
(203, 'Agroturismo Maricruz', -1.37147, 42.9304, 'C/ San Andrés 23 ', '31438 Villanueva de Arce', 'Navarra', 'Navarra', 'España', '649 219 858', 'www.casaruralennavarra.com', 'ecoagroturismomaricruz@gmail.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=cabana_en_el_arbol62.jpg&c=540', ''),
(204, 'Aldea do Portomartiño', -8.3716, 42.3915, ' Portomartiño  Xesta ', '36836 A Lama', 'Pontevedra', 'Galicia', 'España', '607869956', 'https://portomartinho.webnode.es/', 'info@portomartino.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=portomartino80051.jpg&c=28031', ''),
(205, 'Alojamiento Rural Viña y Rosales', -3.04285, 37.0045, 'C/ Iglesia, 14 ', '18494 Mairena', 'Granada', 'Andalucía', 'España', '958760177', 'https://www.alpujarras.alojamiento.raya.org/index_esp.htm', 'VyR@raya.org', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=vina_y_rosales85.jpg&c=497', ''),
(206, 'Alvarella Ecoturismo', -8.14888, 43.3744, ' Breanca nº 4  Doroña   ', '15615 Vilarmaior', 'Coruña', 'Galicia', 'España', '981 784 563', 'www.alvarella.com', 'info@alvarella.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=alvarella1029.jpg&c=5046', ''),
(207, 'Casa Mario', -6.6122, 43.0539, 'Posada de Rengos, 17  ', '33811 Cangas del Narcea', 'Asturias', 'Asturias', 'España', '985 911 198', 'www.casamario.net', 'info@casamario.net', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=Casa_Mario72.jpg&c=4162', ''),
(208, 'Casa Rural Melones', -3.487, 40.8533, 'Avda. de Madrid, 109  ', '28189 Patones', 'Madrid', 'Madrid', 'España', '659 545 084', 'https://casaruralmelones.com', 'info@casaruralmelones.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=zonas_comun419422.jpg&c=29425', ''),
(209, 'Casa rural Santa Barbara', -4.69053, 40.1367, 'Calle Juan de Dios Díaz, 67 ', '45640 El Real de San Vicente', 'Toledo', 'Castilla-La Mancha', 'España', '619292642', 'https://casaruralsantabarbara.es/', '', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=casa_189086.jpg&c=30939', ''),
(210, 'Casas rurales Iris de Paz', -5.33104, 43.3341, '', '33583 Piloña', 'Asturias', 'Asturias', 'España', '682 076 475', 'www.casasruralesip.com', 'disfruta@casasruralesip.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=iris60.png&c=30905', ''),
(211, 'Ekolanda', -1.42142, 42.9361, 'Calle San Martín, 27 ', '31697 Esnotz', 'Navarra', 'Navarra', 'España', '682106417', 'https://ekolanda.com/', 'ekolanda@ekolanda.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=1_9643.50031.jpg&c=2527', ''),
(212, 'El Gran Sueño', -5.35193, 43.3812, 'Caspio la Vega ', '33534 Pintueles. Piloña', 'Asturias', 'Asturias', 'España', '985 710650', 'www.elgransueno.es', 'info@elgransueno.es', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=gran_sueno20004894.jpg&c=24783', ''),
(213, 'Hotel Meridional', -0.648774, 38.079, 'Av. de la Libertad, 64  ', '03140 Guardamar del Segura', 'Alicante', 'Valencia', 'España', '965 728 340', 'www.hotelmeridional.es', 'info@hotelmeridional.es', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=_DSC5489.15001598.jpg&c=23681', ''),
(214, 'Hotel Mundaka', -2.69846, 43.4071, 'C/ Florentino Larrinaga, 9  ', '48360 Mundaka', 'Vizcaya', 'País Vasco', 'España', '946 876 700', 'www.hotelmundaka.com', 'info@hotelmundaka.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=mundaka4.jpg&c=23012', ''),
(215, 'Kaaño Etxea', -1.81102, 43.0305, 'Kaaño Etxea  ', '31866 Arrarats', 'Navarra', 'Navarra', 'España', '948 396 010', 'www.kaanoetxea.com', 'info@kaanoetxea.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=kaanoetxea8.jpg&c=539', ''),
(216, 'La Casa del Naturalista', -5.4693, 43.5362, 'Argüerín 24 ', '33314 Argüeru', 'Asturias', 'Asturias', 'España', '985 999 004', 'www.casadelnaturalista.com', 'info@casadelnaturalista.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=1fachada3295.jpg&c=550', ''),
(217, 'La Casina de Noriega', -4.57402, 43.3641, 'La Carrera, s/n.  ', 'Noriega', 'Asturias', 'Asturias', 'España', '676 538 245', 'https://www.casasdeandriz.com/', 'contacto@casasdeandriz.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=CasinaNoriega7753.jpg&c=24245', ''),
(218, 'La Posada de Caseres / Lo Niu', 0.251356, 41.0407, 'C/ Major, 10  ', '43787 Caseres', 'Tarragona', 'Cataluña', 'España', '977431861', 'https://www.laposadacaseres.com/', 'info@laposadacaseres.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=enoturismeterraalta9786.jpg&c=31895', ''),
(219, 'La Posada del Valle', -5.19261, 43.4082, 'Collía ', '33549 Arriondas', 'Asturias', 'Asturias', 'España', '985841157', 'https://www.posadadelvalle.es', 'hotel@posadadelvalle.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=Hotel_Posada_del_Valle_-1224.jpg&c=514', ''),
(220, 'Marem - casa rural sostenible', -2.69867, 42.1947, 'C/ Julio Castroviejo, 10  ', '26124 El Rasillo de Cameros L', 'Rioja', 'La Rioja', 'España', '699 169 816', 'www.casaruralmarem.com', 'hola@casaruralmarem.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=CASA-_RURAL-_MAREM_-_EL_RASILLO_565976.jpg&c=30871', ''),
(221, 'Mirador de Babia', -6.07442, 42.9477, 'Riolago de Babia  ', '24144 Riolago de Babia', 'León', 'Castilla y León', 'España', '657 853 965', 'www.miradordebabia.com', 'maripazbecerravillamor@gmail.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=Jardin60070.jpg&c=30856', ''),
(222, 'Sabinares del Arlanza', -3.58536, 42.0428, 'C/ Las Turriendas 70 ', '09347 Puentedura.', 'Burgos', 'Castilla y León', 'España', '947 616 908', 'www.sabinaresdelarlanza.com', 'info@sabinaresdelarlanza.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=12196252_904666452915943_68537316567.jpg&c=18489', ''),
(223, 'Sele - Casa d\'Aldea', -5.3224, 43.394, 'Samartín, s/n ', '33583 Borines. Piloña', 'Asturias', 'Asturias', 'España', '985707587', 'www.sele.com.es', 'info@sele.com.es', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=Casa_Sele_entrada_(1)2153.jpg&c=20107', ''),
(224, 'Turismo Rural La Ojinegra', -0.529734, 40.9691, 'C/ La Iglesia nº 21  ', '44509 Alloza', 'Teruel', 'Aragón', 'España', '696816138', 'laojinegra.com', 'info@laojinegra.com', 'https://www.ecotur.es/v_portal/inc/imagen.asp?f=Restaurante-km08964.jpg&c=15818', ''),
(400, 'Ulle Gorri', -2.94448, 42.9732, 'Apregindana Lekua , San Lorenzo 2', '01449 Untza- Apregindana', 'Álava', 'País Vasco', 'España', '+34 647 712 806', 'https://ullegorri.com/', 'contact@ullegorri.com', 'https://ullegorri.com/wp-content/uploads/2020/06/ULLE-GORRI_WEB_001-scaled-1.jpg', ''),
(401, 'La Posada de San Marcos, Millán Arkwright SL', -6.66455, 37.8732, 'Calle Colon 12', '21340 Alajar', 'Huelva', 'Andalucía', 'España', '+34 959 125 712', 'http://www.sanmarcosalajar.com', 'info@posadasalajar.com', 'https://sanmarcosalajar.com/wp-content/uploads/2017/09/san-marcos-alajar-rural-hotel-andalucia-garden-2.jpg', ''),
(402, 'TAKE HOSTEL CONIL', -6.0874, 36.2734, 'Calle Almadraba N9 Locales 9', '11140 Conil De La Frontera', 'Cádiz', 'Andalucía', 'España', '+34 605 462 884', 'http://WWW.TAKEHOSTELCONIL.COM', 'reservas@takehostelconil.com', 'https://takehostelconil.com/wp-content/uploads/2019/07/DSC5028jpg_1920x1080.jpg', ''),
(403, 'TECNIBER, SA', 1.99393, 42.0526, 'C/ Rasa Dels Molins 24', '08600 Berga', 'Barcelona', 'Cataluña', 'España', '+34 938 220 634', 'http://www.mateus.cat', 'ruralmateus@gmail.com', 'http://www.mateus.cat/new/wp-content/uploads/porxo-de-mateus.jpg', ''),
(405, 'Agroturismo Bisalde', -2.80377, 43.4194, 'Barrio Zubiaurrealde 39-A', '48130 Bakio', 'Vizcaya', 'País Vasco', 'España', '+34 639 212 355', 'http://www.facebook.com/BISALDEAGROTURISMO/', '', 'https://www.planrural.com/imagenesbd/69295664_b.jpg', ''),
(406, 'Agroturismo Madarian', -2.41088, 43.2312, 'Barrio Aretxalde 88 B', '48196 Lezama', 'Vizcaya', 'País Vasco', 'España', '+34 944 554 427', 'http://www.madarian.com', 'madarian.agroturismo@gmail.com', 'http://www.madarian.com/irudiak/Zaldi-etxe.png', ''),
(407, 'Apartamentos Rurales Casa Lafuente', -2.8582, 42.9314, 'San Roque 3', '01139 Lukiano', 'Álava', 'País Vasco', 'España', '+34 679 080 440', 'http://www.casalafuente.com', 'info@casalafuente.com', 'https://static.wixstatic.com/media/b48834_016657676ad349d2a66e455be327a7d3~mv2.jpg/v1/fill/w_960,h_640,al_c,q_85,usm_0.66_1.00_0.01/b48834_016657676ad349d2a66e455be327a7d3~mv2.webp', ''),
(408, 'Arrizurieta', -2.77088, 43.3932, 'Mañu Auzoa 43', '48370 Bermeo', 'Vizcaya', 'País Vasco', 'España', '+34 607 482 700', 'http://www.arrizurieta.es', 'info@arrizurieta.es', 'https://www.arrizurieta.eus/wp-content/themes/arrizurieta/img/fotos-despues/4.jpg', ''),
(409, 'Casa Rural Errotabarri', -2.82432, 43.3804, 'Zumetzaga Bidea 6', '48120 Mungia', 'Vizcaya', 'País Vasco', 'España', '946150143', 'http://www.errota-barri.com', 'info@errota-barri.com', 'https://errota-barri.com/wp-content/uploads/Exteriores_ErrotaBarri_Alta_00041.jpg', ''),
(410, 'Casa Rural Etxegorri', -2.84427, 43.0881, 'Barrio Urigoiti 10', '48410 Orozko', 'Vizcaya', 'País Vasco', 'España', '682 672 431', 'http://www.casaruraletxegorri.com', 'info@casaruraletxegorri.com', 'https://static.wixstatic.com/media/13ae87_11997e1862164c9392a78d0120b505c3~mv2.jpg/v1/fill/w_1897,h_709,al_c,q_85/13ae87_11997e1862164c9392a78d0120b505c3~mv2.webp', ''),
(411, 'Zadorra Etxea', -2.39218, 42.854, 'Zadorra Kalea 21', '01200 Agurain', 'Álava', 'País Vasco', 'España', '945 31 24 27', 'http://www.zadorraetxea.com', 'info@zadorraetxea.com', 'http://www.zadorraetxea.com/images/h_g2.jpg', ''),
(412, 'DOLAREA', -2.20813, 43.048, 'Avenida Navarra 57', '20200 Beasain', 'Gipuzkoa', 'País Vasco', 'España', '943 889 888', 'https://www.hoteldolarea.com/', 'info@dolareahotela.com', 'https://www.hoteldolarea.com/muestras/2016/03/209-vistas.jpg', ''),
(413, 'Hotel Amalurra', -3.22042, 43.2354, 'Barrio La Reneja 35', '48879 Artzentales', 'Vizcaya', 'País Vasco', 'España', '946109540', 'http://www.amalurra.com', 'amalurra@amalurra.com', 'https://amalurra.com/wp-content/uploads/2018/11/Amalurra-8639-copy-1600x900.jpg', ''),
(414, 'HOTEL APARTAMENTO RURAL ATXURRA', -2.76016, 43.3892, 'Barrio Arronategi S/N', '48370 Bermeo', 'Vizcaya', 'País Vasco', 'España', '944654404', 'http://www.hotelatxurra.com', 'info@hotelatxurra.com', 'https://www.hotelatxurra.com/wp-content/uploads/2016/01/el-hotel-rural-atxurra.jpg', ''),
(415, 'Hotel Imaz', -2.25351, 43.0084, 'Kale Nagusia 27', '20214  Segura', 'Gipuzkoa', 'País Vasco', 'España', '943 80 10 25', 'http://www.hotelimaz.com', '', 'http://www.hotelimaz.com/img/lightslider-img/01.jpg', ''),
(416, 'Hotel Rural Aribe - Arrigorri Restauracion', -1.26305, 42.9436, 'Santa Maria 33', '31671 Aribe', 'Navarra', 'Navarra', 'España', '948764466', 'http://www.hotelaribe.com', 'hotelaribe@gmail.com', 'https://www.hotelaribe.com/wp-content/uploads/2020/06/hotel-rural-aribe-habitacion-doble-2.jpg', ''),
(417, 'Hotel Urune', -2.69917, 43.2752, 'Barrio Txakale, 8', '48392 Muxika', 'Vizcaya', 'País Vasco', 'España', '944 651 663', 'http://www.urunehotela.com', 'urune@urunehotela.com', 'http://www.urunehotela.com/wp-content/uploads/2016/02/slow-life-1.jpg', ''),
(418, 'LA CASA DE MADERA', -2.7834, 43.3375, 'Barrio Zameza 52A', '48114 Arrieta', 'Vizcaya', 'País Vasco', 'España', '946153657', 'http://lacasademadera.wordpress.com', '', 'https://lacasademadera.files.wordpress.com/2012/03/cropped-panoramica.jpg', ''),
(419, 'Legaire Etxea', -2.27761, 42.8619, 'San ´Martín 4', '01260 Asparrena', 'Álava', 'País Vasco', 'España', '607547916', 'http://www.legaireetxea.com', 'info@legaireetxea.com', 'http://www.legaireetxea.com/uploads/fotografias/fot12.jpg', ''),
(420, 'Lete Apartamentuak', -2.11013, 43.1726, 'Lete Baserria S/N', '20494 Alkiza', 'Gipuzkoa', 'País Vasco', 'España', '0034943691264', 'http://www.letealkiza.com/', 'info@letealkiza.com', 'http://www.letealkiza.com/index_html_files/571.jpg', ''),
(421, 'Albergue Juvenil Ulia', -1.96287, 43.3287, 'Paseo De Ulia 297', '20013 San Sebastián', 'Gipuzkoa', 'País Vasco', 'España', '0034943483480', 'http://www.donostia.eus/albergues', 'ulia@donostia.eus', 'https://www.donostia.eus/info/visitante/albergues.nsf/0/9a34587ab5067d9ec1257f92002a2a93/contenido_cas/0.160?OpenElement&FieldElemFormat=jpg', ''),
(422, 'Casa rural Tierra y Madera', -3.08795, 42.8088, 'La Iglesia 10', '01423 Barrio', 'Álava', 'País Vasco', 'España', '34600549529', 'http://www.tierraymadera.com', 'tierraymadera.casarural@gmail.com', 'https://le-cdn.website-editor.net/8854e19914e24e0da329e814b61cc83d/dms3rep/multi/opt/IMG-20180901-WA0009-1920w.jpg', ''),
(423, 'HOTEL ZERUPE', -2.17376, 43.2852, 'Zigordia 24', '20800 Zarautz', 'Gipuzkoa', 'País Vasco', 'España', '943508582', 'http://www.hotelzerupe.com', 'reservas@hotelzerupe.com', 'http://www.hotelzerupe.com/images/portfolio/galeria/hotel-zerupe-galeria-habitacion-3-g.jpg', ''),
(424, 'Agroturismo Lurdeia', -2.7372, 43.3834, 'Artike Auzoa 60', '48370 Bermeo', 'Vizcaya', 'País Vasco', 'España', '666 477 665', 'http://www.lurdeia.com', 'lurdeia@lurdeia.com', 'https://lurdeia.com/wp-content/uploads/sites/16/2020/05/lur11.jpeg', ''),
(425, 'Azala', -2.87557, 42.7965, 'Lasierra 15', '01428 Lasierra', 'Álava', 'País Vasco', 'España', '665705136', 'http://www.azala.es', '', 'http://www.azala.es/images_secciones/grandes/1297337506p.jpg', ''),
(426, 'Agroturismo Iabiti-Aurrekoa', -2.85753, 43.283, 'Arteaga Auzoa 13', '48170 Zamudio', 'Vizcaya', 'País Vasco', 'España', '944522370', 'https://turismo.euskadi.eus/es/alojamientos/agroturismo-iabiti-aurrekoa/aa30-12375/es/', 'agroturismo.iabiti@gmail.com', 'https://media-cdn.tripadvisor.com/media/photo-m/1280/15/90/08/3c/agroturismo-iabiti-aurrekoa.jpg', ''),
(427, 'Hotel Casa del Patrón', -2.82005, 42.9569, 'San Martin 2', '01130 Murgia', 'Álava', 'País Vasco', 'España', '34945462528', 'https://www.casadelpatron.com', 'hotel@casadelpatron.com', 'https://casadelpatron.com/wp-content/uploads/exterior_01-768x511.jpg', ''),
(429, 'AGROTURISMO IBARRE', -2.377, 43.0969, 'Irimoegi Auzoa 1', '20577 Antzuola', 'Gipuzkoa', 'País Vasco', 'España', '00 34 660732615', 'http://www.ibarre.com', 'info@ibarre.com', 'https://ibarre.com/wp-content/uploads/2020/06/agroturismo-IBARRE.jpg', ''),
(430, 'Urresillo Landetxea', -2.78284, 43.3592, 'Barrio Meñakabarrena 27', '48120 Meñaka', 'Vizcaya', 'País Vasco', 'España', '688802467', 'http://ec.europa.eu/ecat/hotels/en-1310100-urresillo-landetxea-menaka', '', 'https://p.bookcdn.com/data/Photos/r1536x522/5223/522303/522303141/Casa-Rural-Urresillo-Landetxea-photos-Exterior.JPEG', ''),
(431, 'Gorosarri Landetxea', -2.56317, 42.9948, 'Barrio Zarimutz, 32 --', '20540 Eskoriatza', 'Vizcaya', 'País Vasco', 'España', '688800479', 'http://www.gorosarri.com/', '', 'https://gorosarri.com/wp-content/uploads/2016/02/AGP60091500x516px1.jpg', ''),
(433, 'CAMPING EL BERGUEDA', 1.83575, 42.2181, 'Ctra. B-400 Km 3,5', '08694 Guardiola De Berguedà', 'Barcelona', 'Cataluña', 'España', '0034 937 22 74 32', 'http://www.campingbergueda.com', 'info@campingbergueda.com', 'http://www.campingbergueda.com/wp-content/uploads/2015/12/IMG_4864-1-e1449937133927.jpg', ''),
(434, 'CAMPS DE VILARRASA-CAL CANDI', 1.92239, 42.1314, 'Carrer Clotassos, 18', '08613 Vilada', 'Barcelona', 'Cataluña', 'España', '0034 93 823 83 13', 'https://calcandi.simdif.com/', 'calcandi.vilada@gmail.com', 'https://calcandi.simdif.com/images/public/sd_5daee1dee8ecc.jpg?nocache=1606908994', ''),
(435, 'MIREIA FONT I VIDAL', 0.936635, 42.3247, 'C/La Bedoga 2', '25514 Senterada', 'Lerida', 'Cataluña', 'España', '34 973 661 787', 'https://www.casaleonardo.net/', '', 'https://www.casaleonardo.net/wp-content/uploads/DSC_0340.jpg', ''),
(436, 'HOTEL ES BAULÓ', 3.15916, 39.7599, 'Av. Santa Margalida, 28', '7458 Can Picafort', 'Baleares', 'Baleares', 'España', '34 971456281', 'http://www.esbaulo.com', 'info@esbaulo.com', 'https://www.esbaulo.com/cache/d3/85/d3859d67fe4d15777bfb4f0495b28a62.jpg', ''),
(437, 'Ellauri Hotel', -2.74118, 43.0927, 'Altzusta 38', '48144 Zeanuri', 'Vizcaya', 'País Vasco', 'España', '34686 07 77 96', 'https://www.ellauri.com', 'info@ellauri.com', 'https://www.ellauri.com/wp-content/uploads/revslider/ellaurihotela/Ellau_Hotela_Landscape_Hotel_Slider1.jpg', ''),
(438, 'Hotel Restaurant l\'Algadir del Delta', 0.687757, 40.6471, 'Ronda Dels Pins, 27', '43549 Poble Nou', 'Tarragona', 'Cataluña', 'España', '34 977 744 559', 'https://www.hotelalgadirdelta.com/', 'gerencia@hotelalgadirdelta.com', 'https://www.hotelalgadirdelta.com/wp-content/uploads/2015/03/Hotel_Algadir_Delta-30-de-103.jpg', ''),
(439, 'SOMLOM', 2.43527, 41.7056, 'C/ Oratge 11', '08461 Sant Esteve De Palautordera', 'Barcelona', 'Cataluña', 'España', '34 938 48 20 73', 'http://www.somlom.com', 'info@somlom.com', 'https://www.somlom.com/FitxersWeb/25473/banner-generic-somlom-1.jpg', ''),
(440, 'Hotel Arbe', -2.36352, 43.3045, 'Barrio Laranga Auzoa, S/N', '20830 Mutriku', 'Gipuzkoa', 'País Vasco', 'España', '943 60 47 49', 'https://hotelarbe.com/es/', 'info@hotelarbe.com', 'https://hotelarbe.com/wp-content/uploads/2018/11/hotel-arbe-026-mutriku-deba-ondarroa-romantico-habitacion-encanto-costa-pais-vasco-webcam-playa-alkolea-piscina-terraza-balcon-cesped-mar-cantabrico-acantilado-2-33x.jpg', ''),
(441, 'L\'Avenc de Tavertet, Apartaments i casetes', 2.44165, 42.0056, 'Mas L\'avenc, S/N Camí Rural', '08511 Tavertet', 'Barcelona', 'Cataluña', 'España', '34 93 881 61 59', 'http://www.avenc.com/', 'info@avenc.com', 'http://www.avenc.com/wp-content/uploads/2020/05/sliderhome4-1.jpg', ''),
(442, 'masCorbella', 1.12677, 41.2651, 'Camí De L\'albiol S/N', '43460 Alcover', 'Tarragona', 'Cataluña', 'España', '34 689 16 12 52', 'http://www.mascorbella.com', 'mascorbella@mascorbella.com', 'https://www.mascorbella.com/wp-content/uploads/2014/10/MC_foto40.jpg', ''),
(443, 'MAS LLAGOSTERA', 1.4637, 41.2732, 'Ctra. T-240 Km 0,5', '43717 La Bisbal Del Penedès', 'Tarragona', 'Cataluña', 'España', '34 635 55 69 55', 'https://www.masllagostera.com/ca/', 'info@masllagostera.com', 'https://www.masllagostera.com/templates/yootheme/cache/3n-6dbe4497.jpeg', ''),
(444, 'Sleep Green', 2.16585, 41.3868, 'Ronda De La Universitat, 15', '08007 Barcelona', 'Barcelona', 'Cataluña', 'España', '34 635 669 021', 'https://sleepgreenbarcelona.com/de/sleep-green-homepage/', 'info@sleepgreenbarcelona.com', 'https://74130-283776-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2015/01/Sleep-Green-Gallery-Image-6.jpg', ''),
(445, 'Cabañas en los arboles', -2.69589, 43.0506, 'Carretera, N-240,Entre Km 26 Y 27, Desvío Otxandio', '48044 Zeanuri', 'Vizcaya', 'País Vasco', 'España', '34692738920', 'http://cabanasenlosarboles.com/es', 'info@cabanasenlosarboles.com', 'http://cabanasenlosarboles.com/files/images/galeria2/photo_033.jpg', ''),
(446, 'Camping & Bungalows Zumaia', -2.24788, 43.2899, 'Basusta Bidea 16', '20750, Zumaia', 'Vizcaya', 'País Vasco', 'España', '943860475', 'https://www.campingzumaia.com', '', 'https://www.campingzumaia.com/images/camping-zumaia/vistas/camping-zumaia-vistas-01.jpg', ''),
(447, 'Camping el Roble Verde', -2.87936, 42.7955, 'Nuvilla 99', '01428 Nuvilla', 'Álava', 'País Vasco', 'España', '945063350', 'http://www.campingelrobleverde.com', 'info@campingelrobleverde.com', 'https://campingelrobleverde.com/wp-content/uploads/2015/02/parque-infantil-2-570x455.jpg', ''),
(448, 'Camping Angosto', -3.06868, 42.8425, 'Villanañe-Angosto 2, BIS', '01426 Valdegovía', 'Álava', 'País Vasco', 'España', '945353271', 'http://www.camping-angosto.com', 'info@camping-angosto.com', 'https://www.camping-angosto.com/images/galeria/cabanas-4-personas-villanane/camping-en-anana-4PAX-01.jpg', ''),
(600, 'Apartamento Mirador de la Luna', -2.71963, 38.2176, 'C/ San Bartolomé, s/n', 'Hornos', 'Jaén', 'Andalucía', 'España', '953 496 163', 'www.lalunarural.es', 'reservas@lalunarural.es', 'https://lalunarural.es/sites/default/files/styles/alto600/public/001131399327047.jpg?itok=pw1hKkX4', ''),
(601, 'Apartamentos Cal Carter', 1.97619, 41.6995, 'Pl. Tomàs Viver, 1', 'Mura', 'Barcelona', 'Cataluña', 'España', '938 317 036', 'www.calcarter.es', 'apartaments@calcarter.es', 'http://www.calcarter.es/img/CC1.jpg', ''),
(602, 'Area Camper Massís del Montgrí', 3.09741, 42.0762, 'camí vell d\'Ulla, 21', 'Bellcaire d\'Empordà', 'Girona', 'Cataluña', 'España', '633 436 314', 'https://massisdelmontgri.cat/es/', 'info@massisdelmontgri.cat', 'https://massisdelmontgri.cat/images/fotos-area/foto1.jpg', ''),
(603, 'Aula de Naturaleza Ermita Vieja', -3.5614, 37.0629, 'Apdo. Correos 776', 'Dilar', ' Granada', 'Andalucía', 'España', '958 228 496', 'www.huertoalegre.com', 'roser@huertoalegre.com', 'https://www.huertoalegre.com/wp-content/uploads/2020/02/p_patio3p.jpg', ''),
(604, 'Barraca Vilbor', 0.718289, 40.7063, 'Sant Jaume d\'enveja', 'Sant Jaume d\'enveja', 'Tarragona', 'Cataluña', 'España', '633 778 593', 'https://casesdeltaebre.com/es/', 'barracavilbor@gmail.com', 'https://casesdeltaebre.com/wp-content/uploads/2018/10/Casetes.jpeg', ''),
(605, 'Camping La Aldea', -6.48474, 37.1307, 'Ctra. del Rocío Km 25 ', 'El Rocío', 'Huelva', 'Huelva', 'España', '687 987 633', 'www.campinglaaldea.com', 'info@campinglaaldea.com', 'https://campinglaaldea.com/wp-content/uploads/2020/05/choza-marismena-9.jpg', ''),
(606, 'Camping Ons', -8.78552, 42.3211, 'Ramón Bares, 45', 'Bueu', 'Pontevedra', 'Galicia', 'España', '986 229 235', 'www.campingisladeons.com', 'susuions@isladeons.net', 'https://www.campingisladeons.com/wp-content/uploads/2019/02/Camping-Ons-23-4.jpg', ''),
(607, 'Casa de Gloria', -2.9954, 37.0308, 'Calle Ancha, 9', 'Bayárcal', 'Almeria', 'Andalucía', 'España', '950 343 919', 'www.lacasadegloria.es', 'lopezgloria@gmail.com', 'http://www.lacasadegloria.es/mediapool/122/1225414/resources/29030846.JPG', ''),
(608, 'Casa Diversa-touristic services', -17.1883, 28.1702, 'C/Los Gomeros,12', 'Hermigua ', 'Santa Cruz de Tenerife ', '', 'España', '660 921 809', 'www.casadiversa.com ', 'casadiversa@hotmail.com', 'http://www.casadiversa.com/resCache/site13582/res615873_fit_398x356_0MC0x399x8380x9968x2.jpg', ''),
(609, 'Casa rural Abuela María', -4.36723, 39.2582, 'Ronda de la Vega, 20', 'Santa Quiteria', 'Ciudad Real', 'Castilla-La Mancha', 'España', '666 202 139', 'www.abuelamaria.es', 'info@abuelamaria.es', 'http://www.hgsitebuilder.com/files/writeable/uploads/hostgator543123/image/patio-1.jpg', ''),
(610, 'Casa Rural Don Jaime', -4.25646, 39.3035, 'Calle Panaderos, 1', 'Pueblo Nuevo del Bullaque', 'Ciudad Real', 'Castilla-La Mancha', 'España', '695 014 831', 'www.casaruraldonjaime.com', 'info.casaruraldonjaime@gmail.com', 'http://www.casaruraldonjaime.com/assets/images/101703363-3384662101579059-243750127171272704-o-576x432.jpg', ''),
(611, 'Casa rural El Olivar del Puerto', -4.6501, 39.3264, 'C/ Real, 59', 'Horcajo de los Montes', 'Ciudad Real', 'Castilla-La Mancha', 'España', '607 526 555', 'www.elolivardelpuerto.com', 'casarural@elolivardelpuerto.com', 'https://images.trvl-media.com/hotels/34000000/33220000/33212800/33212714/1aada4c4_b.jpg', ''),
(612, 'CORTIJO EL CAMPILLO', -2.09614, 36.8598, 'El Campillo de Doña Francisca', 'Los Albaricoques', 'Almería', 'Andalucía', 'España', '950 525 779', 'www.elcampillo.info', 'annika@elcampillo.info', 'https://www.elcampillo.info/assets/habitaciones10.jpg', ''),
(613, 'CORTIJO LOS MALENOS', -1.93403, 36.9399, 'Agua Amarga', 'Níjar', 'Almería', 'Andalucía', 'España', '618 286 260', 'www.cortijolosmalenos.com', 'contactar@cortijolosmalenos.com', 'https://www.cortijolosmalenos.com/wp-content/uploads/2019/03/Cortijo-los-malenos-exterior2.jpg', ''),
(614, 'El Boquerón de Estena', -4.52101, 39.4944, 'Camino del río, km. 1,5', 'Navas de Estena', 'Ciudad Real', 'Castilla-La Mancha', 'España', '689 125 108', 'www.boquerondestena.com', 'boquerondestena@boquerondestena.com', 'http://www.boquerondestena.com/bde/wp-content/uploads/2011/07/P2-304_Fotograf%C3%ADa_baja-31-400x264-350x231.jpg', ''),
(615, 'El Descansillo', -2.02661, 40.7704, 'C/ Valhermoso, 4', 'Escalera', 'Guadalajara', 'Castilla-La Mancha', 'España', '949 831 252', 'www.eldescansillo.net', 'informacion@eldescansillo.net', 'http://www.eldescansillo.com/wp-content/uploads/2017/03/s1.jpg', ''),
(616, 'Hacienda Olontigi', -6.24709, 37.303, 'C/ Ventorro, 23', 'Aznalcázar', 'Sevilla', 'Andalucía', 'España', '955 751 976', 'www.olont.com', 'recepcion@olont.com', 'http://hacienda-olontigi.com/wp-content/uploads/2015/04/farola3-585x277.png', ''),
(617, 'Hostal Arenal SL', -5.08191, 40.2679, 'C/Carretera de Mombeltran, 23', 'El Arenal', 'Ávila', 'Castilla y León', 'España', '647 543 675', 'www.hotelrurallosmolinillos.com', 'losmolinillos@gmail.com', 'https://www.hotelrurallosmolinillos.com/public/images/sites/2118-114426.jpg', ''),
(618, 'Hostal Restaurante Labella', -3.0633, 37.1783, 'Carretera de Aldeire, 1', 'La Calahorra', 'Granada', 'Andalucía', 'España', '958 677 000', 'https://www.hostallabella.com/', 'labellahrr@gmail.com', 'https://www.hostallabella.com/sites/default/files/styles/dossier/public/page/17/terraza-h-108.jpg?itok=34cYFZM2', ''),
(619, 'Hotel Borrel', 2.48186, 42.1909, 'Calle Nonet Escubos, 8', 'Olot', 'Girona', 'Cataluña', 'España', '972 27 61 61', 'https://www.hotelborrell.com/', 'info@hotelborrell.com', 'https://www.hotelborrell.com/wp-content/uploads/2014/05/recepcio-hotel-borrell-olot_banner.jpg', ''),
(620, 'Hotel Don Cándido', 2.0086, 41.5506, 'Rambleta Pare Alegre, 98', 'Terrassa', 'Barcelona', 'Cataluña', 'España', '937 333 300', 'www.hoteldoncandido.com', 'info@hoteldoncandido.com', 'http://www.hoteldoncandido.com/cache/files/Imatges/W1920H0N_MG_0365-1.jpg', ''),
(621, 'Hotel Perla d\'Olot', 2.47907, 42.169, 'Ctra. De la Deu, 9', 'Olot', 'Girona', 'Cataluña', 'España', '', 'www.laperlahotels.com', 'info@laperlahotels.com', 'https://www.hotellaperlaolot.com/wp-content/uploads/2019/01/parc-infantil.jpg', ''),
(622, 'Hotel SPA Sierra de Cazorla', -2.99157, 37.9221, 'Ctra. de la Sierra, s/n', 'La Iruela', 'Jaén', 'Andalucía', 'España', '953 720 015', 'www.hotelsierradecazorla.com', 'info@hotelsierradecazorla.com', 'https://lh3.googleusercontent.com/VHOIH5tZQgdU2rYU0QH26yQaaK0_s4M_tfXKWHVRbAz1AxaKIAAhrnaXu0MwUmGNfAiqIqumYgowlR_2xe_yVaM=s400', ''),
(623, 'Hotel Zuhayra', -4.31527, 37.5443, 'C/ Mirador, 10', 'Zuheros', 'Córdoba', 'Andalucía', 'España', '957 694 693', 'https://zercahoteles.com/', 'hotelzuhayra@zercahoteles.com', 'https://zercahoteles.com/wp-content/uploads/2018/09/2B5A2285-HDR.jpg', ''),
(624, 'La Almunia del Valle ', -3.53193, 37.1192, 'Camino de la Umbría, s/n.', 'Monachil', 'Granada', 'Andalucía', 'España', '958 308 010', 'www.laalmuniadelvalle.com', 'info@laalmuniadelvalle.com', 'https://www.laalmuniadelvalle.com/wp-content/uploads/2016/09/FACHADA-ORIGINAL-DEL-HOTEL-639x426.jpg', ''),
(625, 'Los Telares', -17.1978, 28.1553, 'Carretera General, 10', 'Hermigua', 'Santa Cruz de Tenerife', '', 'España', '922 880 781', 'www.apartamentosgomera.com', 'info@apartamentosgomera.com', 'https://lagomera.apartments/wp-content/uploads/sites/8/2019/11/CasaElPatio-barrio1.jpg', ''),
(626, 'Miraltajo', -1.98036, 40.8443, 'C/ Eras del Río, s/n', 'Corduente', 'Guadalajara', 'Castilla-La Mancha', 'España', '949 832 030', 'www.miraltajo.com', 'reservas@miraltajo.com', 'http://www.miraltajo.com/foto/2.jpg', ''),
(627, 'Parador de Turismo Cazorla', -2.96214, 37.9035, 'Ctra. Sierra s/n', 'Cazorla', 'Jaén', 'Andalucía', 'España', '953 707 075', 'www.parador.es', 'cazorla@parador.es', 'https://www.parador.es/sites/default/files/styles/900x900/public/galerias/img/2013/08/exterior_01_36.jpg?itok=tiZPWO_y', ''),
(628, 'Pensión Guerrero S.L.L.', -4.43994, 37.4722, 'C/ Pepita Jiménez, 7', 'Cabra', 'Córdoba', 'Andalucía', 'España', '957 520 507', 'www.actiweb.es/pensionguerrero/', 'pensionguerrero_s.l.l@hotmail.com ', 'http://www.actiweb.es/pensionguerrero/imagen46.jpg?1210161344', ''),
(629, 'VTAR Los Arrayanes', -5.1623, 36.7425, 'Plaza de la Oscuridad 6, 7 y 8', 'Ronda', 'Malaga', 'Andalucía', 'España', '914 514 138', 'https://www.los-arrayanes.com/', 'los_arrayanes2006@yahoo.es', 'https://www.los-arrayanes.com/wp-content/uploads/exterior_apartamentos.jpg', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `CATID` smallint NOT NULL COMMENT 'Clave primaria de la tabla. Acepta hasta 65535 categorías',
  `NOMBRE` varchar(128) NOT NULL COMMENT 'Nombre de la categoría de búsqueda. Obligatorio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena las categorías para búsquedas';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificados`
--

CREATE TABLE `certificados` (
  `CERTID` smallint NOT NULL COMMENT 'Clave primaria de la tabla. Acepta hasta 65535 certificados',
  `NOMBRE` varchar(128) NOT NULL COMMENT 'Nombre del certificado. Obligatorio',
  `WEBSITE` varchar(255) DEFAULT NULL COMMENT 'Url del sitio web de la entidad certificadora. Opcional',
  `DESCRIPCION` text COMMENT 'Texto descriptivo de las características del certificado. Opcional',
  `ORGANISMO` varchar(255) DEFAULT NULL COMMENT 'Nombre del organismo o entidad certificadora. Obligatorio',
  `LOGO` varchar(255) DEFAULT NULL COMMENT 'Ruta al archivo del logo del certificado en el servidor. Opcional',
  `ETIQUETA` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena los certificados de los que se hace seguimiento en la aplicación';

--
-- Volcado de datos para la tabla `certificados`
--

INSERT INTO `certificados` (`CERTID`, `NOMBRE`, `WEBSITE`, `DESCRIPCION`, `ORGANISMO`, `LOGO`, `ETIQUETA`) VALUES
(1, 'Certificación Biosphere', 'https://www.biospheretourism.com/en', 'Programa de certificación sostenible diseñado para la industria turística, promovido por Naciones Unidas que incorpora los 17 Objetivos de Desarrollo Sostenible de Naciones Unidas y las directrices emanadas de la Cumbre del Clima de París” Cambio Climático\r ODS 7: Garantizar el acceso a la energía sostenible\r ODS 13: Adoptar medidas urgentes para combatir el cambio climático\r Medioambiente\r ODS 6: Uso y gestión sostenible del agua\r ODS 12: Producción y consumo responsable\r ODS 14: Usos sostenibles de los ecosistemas acuáticos y los recursos marinos para el desarrollo sostenible\r ODS 15: Biodiversidad y protección de los ecosistemas terrestres y de los paisajes naturales urbanos\r Social\r ODS 1: Crecimiento económico inclusivo y erradicación de la pobreza\r ODS 3: Bienestar, seguridad y salud\r ODS 4: Promoción de la educación y la formación inclusiva y de calidad\r ODS 5: Igualdad de género y empoderamiento femenino\r ODS 17: Cooperación en turismo sostenible\r Economía\r ODS 2: Seguridad y calidad alimentaria\r ODS 8: Promover el crecimiento económico sostenible, inclusivo y sostenible y el empleo digno\r ODS 9: Infraestructuras turísticas sostenibles y resilientes, y fomento de la innovación\r ODS 10: Reducción de la desigualdad\r Cultura\r ODS 11: Destinos turísticos sostenibles y patrimonio\r ODS 16: Promover sociedades pacíficas e inclusivas para el desarrollo sostenible y el turismo en las ciudades', ' Instituto  de  Turismo  Responsable  (ITR).', 'https://www.biospheretourism.com/assets/img/bio2/logo-biosphere-header.svg\r', 'Biosphere Tourism'),
(2, ' ECEAT QUALITY LABEL ', 'http://www.eceat.org/', 'provide relevant \"eco\" information to its guests support of environmental friendly agriculture use water and energy in an efficient and conscious/responsible way follow the green building policy reduce production of waste support soft mobility contribute to nature protection contribute to sustain cultural heritage contribute to support the local economy improve the environmental performance', 'European Centre for Ecological\r and Agricultural Tourism ', 'https://greendestinations.org/wp-content/uploads/2019/04/eceat-280x300.png\r', 'Eceat Rural Tourism'),
(3, 'Certificación Green Globe 21', 'https://greenglobe.com/', 'The Green Globe certification is a structured assessment of the sustainability performance of travel and tourism businesses and their supply chain partners. ', 'Green Globe', 'https://greenglobe.com/wp-content/uploads/2014/10/green-globe-logo-120.png\r', 'Green Globe 21'),
(4, 'ECOLABEL UE; Catálogo de Alojamientos Turísticos ', 'http://ec.europa.eu/ecat/hotels-campsites/en', ' Energy use  Water use  Waste production  Detergents and disinfectants use  Other services (e.g. food service and access to public transport)  General management (e.g. staff training/establishing environmental targets)', 'UE', 'http://ec.europa.eu/ecat/images/ecolabel-logo.gif\r', 'Ecolabel EU'),
(5, 'EarthCheck', 'https://earthcheck.org/', '. El programa requiere que los negocios midan, monitoreen y realice continuas mejoras en las áreas clave de rendimiento detalladas a continuación:   1.Emisiones de Efecto Invernadero 2.Eficiencia Energética, Conservación & Gestión  3.Gestión de Recursos de Agua Dulce 4.Conservación y Gestión de Ecosistemas 5.Gestión Social y Cultural  6.Planificación y Gestión del Uso de la Tierra 7.Protección de la Calidad del Aire 8.Gestión de Aguas Residuales 9.Gestión de Desechos Solidos 10.Sustancias Nocivas para el Medio Ambiente ', 'EarthCheck Pty Limited ', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/EC_large_Word.png/300px-EC_large_Word.png\r', 'Earth Check'),
(6, 'Carta Europea Turismo Sostenible', 'http://www.redeuroparc.org/actividades/carta-europea-turismo-sostenible', 'La CETS es un método y un compromiso voluntario para aplicar los principios de turismo sostenible, orientando a los gestores de los espacios naturales protegidos y a las empresas para definir sus estrategias de forma participada.', 'EUROPARC ESPAÑA', 'http://www.redeuroparc.org/system/files/shared/logo-europarc.png', 'Europarc Turismo Sostenible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `EXT_USRID` int NOT NULL COMMENT 'Clave del usuario. Obligatorio',
  `EXT_ALID` int NOT NULL COMMENT 'Clave del establecimiento seleccionado como favorito por el usuario. Obligatorio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena las asignaciones de alojamientos como favoritos para los usuarios';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `EXT_USRID` int NOT NULL COMMENT 'Clave externa correspondiente a la clave primaria de la tabla de usuarios',
  `PERFIL` enum('registrado','oauth') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Se asignan dos perfiles, uno para los usuarios registrados y otro para los que acceden mediante OAuth',
  `PASS` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Contraseña como cadena encriptada en backend para los perfiles registrados'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla de los perfiles de los usuarios tanto registrados como de OAuth';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `TAGID` smallint NOT NULL COMMENT 'Clave primaria de la tabla. Acepta hasta 65535 tags',
  `NOMBRE` varchar(128) NOT NULL COMMENT 'Nombre del tag de búsqueda. Obligatorio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena los tags o keywords para búsquedas';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `union_alojamientos_certificados`
--

CREATE TABLE `union_alojamientos_certificados` (
  `EXT_ALID` int NOT NULL COMMENT 'Clave del establecimiento. Obligatorio',
  `EXT_CERTID` smallint NOT NULL COMMENT 'Clave del certificado asignado al establecimiento. Obligatorio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena las asignaciones de certificados a los alojamientos';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `union_alojamientos_tags`
--

CREATE TABLE `union_alojamientos_tags` (
  `EXT_ALID` int NOT NULL COMMENT 'Clave del establecimiento. Obligatorio',
  `EXT_TAGID` smallint NOT NULL COMMENT 'Clave del tag asignado al establecimiento. Obligatorio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena las asignaciones de tags a los alojamientos';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `union_certificados_categorias`
--

CREATE TABLE `union_certificados_categorias` (
  `EXT_CERTID` smallint NOT NULL COMMENT 'Clave del certificado. Obligatorio',
  `EXT_CATID` smallint NOT NULL COMMENT 'Clave de la categoría a la que pertenece el certificado. Obligatorio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena las asignaciones de categorías a los certificados';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `USRID` int NOT NULL COMMENT 'Clave primaria de la tabla. Acepta hasta 2^32 usuarios',
  `EMAIL` varchar(255) NOT NULL COMMENT 'Nombre de usuario basado en email. Obligatorio',
  `PASS` varchar(128) NOT NULL COMMENT 'Contraseña como cadena encriptada en backend. Obligatorio',
  `FECHAREGISTRO` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha y hora de registro del usuario. Puede usarse para comprobar la antigüedad del usuario',
  `FECHANACIMIENTO` date DEFAULT NULL COMMENT 'Fecha de nacimiento del usuario sin hora. Puede emplearse para conocer su edad',
  `GENERO` enum('Hombre','Mujer') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena los usuarios registrado';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`ACTID`);

--
-- Indices de la tabla `alojamientos`
--
ALTER TABLE `alojamientos`
  ADD PRIMARY KEY (`ALID`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`CATID`);

--
-- Indices de la tabla `certificados`
--
ALTER TABLE `certificados`
  ADD PRIMARY KEY (`CERTID`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`EXT_USRID`,`EXT_ALID`),
  ADD KEY `EXT_ALID` (`EXT_ALID`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`EXT_USRID`,`PERFIL`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`TAGID`);

--
-- Indices de la tabla `union_alojamientos_certificados`
--
ALTER TABLE `union_alojamientos_certificados`
  ADD PRIMARY KEY (`EXT_ALID`,`EXT_CERTID`),
  ADD KEY `EXT_CERTID` (`EXT_CERTID`);

--
-- Indices de la tabla `union_alojamientos_tags`
--
ALTER TABLE `union_alojamientos_tags`
  ADD PRIMARY KEY (`EXT_ALID`,`EXT_TAGID`),
  ADD KEY `EXT_TAGID` (`EXT_TAGID`);

--
-- Indices de la tabla `union_certificados_categorias`
--
ALTER TABLE `union_certificados_categorias`
  ADD PRIMARY KEY (`EXT_CERTID`,`EXT_CATID`),
  ADD KEY `EXT_CATID` (`EXT_CATID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`USRID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `ACTID` smallint NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria de la tabla. Acepta hasta 65535 actividades';

--
-- AUTO_INCREMENT de la tabla `alojamientos`
--
ALTER TABLE `alojamientos`
  MODIFY `ALID` int NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria de la tabla. Acepta hasta 2^32 establecimientos', AUTO_INCREMENT=630;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `CATID` smallint NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria de la tabla. Acepta hasta 65535 categorías';

--
-- AUTO_INCREMENT de la tabla `certificados`
--
ALTER TABLE `certificados`
  MODIFY `CERTID` smallint NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria de la tabla. Acepta hasta 65535 certificados', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `TAGID` smallint NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria de la tabla. Acepta hasta 65535 tags';

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `USRID` int NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria de la tabla. Acepta hasta 2^32 usuarios';

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`EXT_USRID`) REFERENCES `usuarios` (`USRID`) ON DELETE CASCADE,
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`EXT_ALID`) REFERENCES `alojamientos` (`ALID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD CONSTRAINT `perfiles_ibfk_1` FOREIGN KEY (`EXT_USRID`) REFERENCES `usuarios` (`USRID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `union_alojamientos_certificados`
--
ALTER TABLE `union_alojamientos_certificados`
  ADD CONSTRAINT `union_alojamientos_certificados_ibfk_1` FOREIGN KEY (`EXT_ALID`) REFERENCES `alojamientos` (`ALID`) ON DELETE CASCADE,
  ADD CONSTRAINT `union_alojamientos_certificados_ibfk_2` FOREIGN KEY (`EXT_CERTID`) REFERENCES `certificados` (`CERTID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `union_alojamientos_tags`
--
ALTER TABLE `union_alojamientos_tags`
  ADD CONSTRAINT `union_alojamientos_tags_ibfk_1` FOREIGN KEY (`EXT_ALID`) REFERENCES `alojamientos` (`ALID`) ON DELETE CASCADE,
  ADD CONSTRAINT `union_alojamientos_tags_ibfk_2` FOREIGN KEY (`EXT_TAGID`) REFERENCES `tags` (`TAGID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `union_certificados_categorias`
--
ALTER TABLE `union_certificados_categorias`
  ADD CONSTRAINT `union_certificados_categorias_ibfk_1` FOREIGN KEY (`EXT_CERTID`) REFERENCES `certificados` (`CERTID`) ON DELETE CASCADE,
  ADD CONSTRAINT `union_certificados_categorias_ibfk_2` FOREIGN KEY (`EXT_CATID`) REFERENCES `categorias` (`CATID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-01-2021 a las 22:08:00
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

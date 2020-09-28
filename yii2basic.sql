-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2020 a las 21:53:43
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `yii2basic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Id` int(11) NOT NULL,
  `Producto` varchar(50) NOT NULL,
  `Descripcion` varchar(60) NOT NULL,
  `id_prove` varchar(20) NOT NULL,
  `Existencia` varchar(80) NOT NULL,
  `Precio_venta` varchar(60) NOT NULL,
  `Autorizado` varchar(80) NOT NULL,
  `Iva` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Id`, `Producto`, `Descripcion`, `id_prove`, `Existencia`, `Precio_venta`, `Autorizado`, `Iva`) VALUES
(1, 'patilla', 'comer', '21', 'si', '5000', 'si', '2'),
(2, 'guayaba', 'furta ', '22', 'si', '3000k', 'si', 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(250) NOT NULL,
  `authKey` varchar(250) NOT NULL,
  `accessToken` varchar(250) NOT NULL,
  `activate` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `authKey`, `accessToken`, `activate`) VALUES
(1, '1234567', 'dawinalmanza09@gmail.com', 'fsbqobwqC.aMo', '0898162df84a7fc200bc8a377695b1317c180dcaeae7702942330ce5e99ba2c2b28d6fb5ebba76ab565fe6e12c46b2031140ee1201e007b8fdcd5bacd308cae283eecc83f849398787b5fd8ef3ca7d1d8ab83bc6994c543b349c18fb9c53ef5b8a7ce629', '2afc7b2bbca98e18bc642510ed5cdb412c8dc9c041d541b50e70ae6bafe9bb9b3bd632aefe549c04b2c26fa39bc37b9b50c14aa40a86e420d87f6afbdb0525825d53b44af6e19653bc9825c3c72ae9257c24dd58fa9f2db2a4a9ea144d3dcc54aa42d057', 0),
(3, '73189258', 'riodavid82@hotmail.com', 'fsbqobwqC.aMo', '01bd734395dcfb375e716854bbd3874d0d13a26e2141a14430aa686e4adb2418c8c34495aa9efd0c6fe9def92253b358f6af8e990c54c1ba62fc479f397959c7b9e63d410182da1e6eb304bf05e224b12477d004ec100cd51ed543bb1d0c3c87b62d275e', '52672b620d64625890b51676f8066d077558c53a04452f8d3881b904cfe1ea461f331141b5a5142b25682ec7bc14bda4bffb45fe7f36e31ed51c424a0cc590d9ff32a2b2000171d1ff690c8352a96769a0971803b70a051b9aa80c50f83f73b2687adbe9', 0),
(4, '00000', 'danieldiazcuello@hotmail.com', 'fsQonrB5FXZgQ', 'd50c5fb4fd8065e23d8bd7db1e9d30f41cbcd4370684197c3f86d882a7227cfeff0bb7a302699b0cd1474f84079e9dd32b1adebb301e6fdf3a87d8ed9544d8873a2c7ba7555298d6ee0cb83a924db49a99712a831d827279dd569396ca55a93b60ef06f9', '1144217270ee3886b7abd1aceb93ec14a3badc6c4ecbad63512b774e8f985ef62fce285ebc4e343bf97365a12831978f137880191802bcb2eabb010a09280d1ff28e59819762723f8bd3b1b6c8162991f4c8475c25fd7ec88ad8b6ed8de6cd00e9b0adbd', 0),
(0, 'marco', 'marchm121201@gmail.com', 'fsbqobwqC.aMo', '3987fe9189daaa6b193eb4c806bf7df73004a97571165888ba2a0b2f0b3e9e25a3729a2fb09ae90851ca12e0ca15f8a3f894dffbab86cc6a8ef991e8faf4bfe370da96b31922b02bd04aa5d49c4b703464836bc5c39f460de8725f340b2a5171ea9292b8', 'e880233cd0f135d40e906aa9b25aa1b41319dbe34a6fed990e2bc07f8025d5af85f5dcb49ec6d49e4cf5035f1c8b211ea9a51b71ce61e0478a4a322d17159b41cf7d3739e92ab691e78ec8836eb1ba2b329782abf761a4f97b140ec32926ce0d182359af', 0),
(0, 'julio', 'andregar@gmail.com', 'fsbqobwqC.aMo', '0f1844eb67f4ca5dfd7cce8e2ba09a01e539b922d140ca0e78f698aaea6185af7347973c5b4f96dbe15ae05d1d4909fc507c600fe6170c00ddf5a46e1843a8132a5bc07ba184b3fe391a9314087475a4f578e898d84a1ab8c07871b662743fff461d3757', '84321dda46d9b4559a1c9cc893e8efc1195cf9a9bc3123945f062361169078b4761e1519aedb3a6c8f77747e5bc4fda93fd2b30e3a12c80449357d3867249e90b0f169b35a523ba4d39452942afd2bf36830bd6f32acb8d29cf4899c76ff77bec52af41f', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

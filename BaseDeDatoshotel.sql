-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.4.3 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para db_hotel
CREATE DATABASE IF NOT EXISTS `db_hotel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_hotel`;

-- Volcando estructura para tabla db_hotel.autos
CREATE TABLE IF NOT EXISTS `autos` (
  `auto_id` bigint NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `marca` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `modelo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `valor` int NOT NULL,
  `activo` bit(1) NOT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla db_hotel.autos: ~7 rows (aproximadamente)
INSERT INTO `autos` (`auto_id`, `tipo`, `marca`, `modelo`, `descripcion`, `valor`, `activo`) VALUES
	(1, 'Auto', 'Mercedez', 'accent', 'con asientos malos', 3000, b'1'),
	(2, ' Auto pequeño', 'Chevrolet', 'Spark', 'es un auto pequeño, ideal para la ciudad. Es fácil de manejar, gasta poca gasolina y es económico', 35000, b'1'),
	(3, 'Auto compacto', 'Suzuki', 'Alto', 'pequeño y económico, ideal para moverse por la ciudad y encontrar estacionamiento con facilidad.', 33000, b'1'),
	(4, 'Sedán', 'Nissan', 'Versa', 'cómodo y amplio, perfecto para viajes largos y uso familiar con buen rendimiento de combustible.', 40000, b'1'),
	(5, 'auto', 'toyota', 'yaris', 'toyota sedan de 4 puertas', 30000, b'1'),
	(6, 'auto', 'hyundai', 'accent 2024', 'hyundai accent de 4 puertas', 30000, b'1'),
	(7, 'auto', 'Kia', 'Rio', 'Kia Rio compacto de 5 puertas, ideal para la ciudad.', 32000, b'1');

-- Volcando estructura para tabla db_hotel.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `cliente_id` bigint NOT NULL AUTO_INCREMENT,
  `run` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `contrasena` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `activo` bit(1) NOT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla db_hotel.clientes: ~6 rows (aproximadamente)
INSERT INTO `clientes` (`cliente_id`, `run`, `nombres`, `apellidos`, `telefono`, `email`, `contrasena`, `activo`) VALUES
	(1, '2222222-2', 'Tomas Alonso', 'Garrido Aguilera', '+56923425435', 'tom.garridoa@duocuc.cl', '1234', b'1'),
	(2, '111111-1', 'Juan diego', 'Herrera Campos ', '+5699324234', 'Juan54@gmail.com', '14535', b'1'),
	(3, '33333333-3', 'Ana María', 'López Díaz', '+56945323456', 'Maria1234@gmail.com', '4321', b'1'),
	(4, '66666666-6', 'Sofía Alejandra', 'Silva Campos', '+56983325230', 'Sofia732@gmail.com', '4444', b'1'),
	(5, '7777777-7', 'Mario Esteban', 'Rojas Morales', '+5695324952', 'Mario840@gmail.com', '8888', b'1'),
	(6, '2248423-4', 'Pedro Ignacio', 'Vargas Castro', '+5694234664', 'Pedro91@gmail.com', '3232', b'1');

-- Volcando estructura para tabla db_hotel.habitaciones
CREATE TABLE IF NOT EXISTS `habitaciones` (
  `habitacion_id` bigint NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `numero` int NOT NULL,
  `valor_por_dia` int NOT NULL,
  `activo` bit(1) NOT NULL,
  PRIMARY KEY (`habitacion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla db_hotel.habitaciones: ~3 rows (aproximadamente)
INSERT INTO `habitaciones` (`habitacion_id`, `descripcion`, `numero`, `valor_por_dia`, `activo`) VALUES
	(1, 'habitación 4 personas', 1, 70000, b'1'),
	(2, 'habitación 2 personas', 2, 40000, b'1'),
	(3, 'habitación 3 personas', 3, 50000, b'1');

-- Volcando estructura para tabla db_hotel.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `valor` int NOT NULL,
  `activo` bit(1) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla db_hotel.menus: ~5 rows (aproximadamente)
INSERT INTO `menus` (`menu_id`, `nombre`, `descripcion`, `valor`, `activo`) VALUES
	(1, 'Parrillada', 'Parrillada para 2 personas', 4000, b'1'),
	(2, 'Cazuela', 'el sabor del hogar en cada cucharada, con cariño y tradición chilena.', 4000, b'1'),
	(3, 'Lasaña', 'un abrazo cálido en cada capa, horneado con amor y sabor.', 6000, b'1'),
	(4, 'Pizza Margarita', 'una mezcla simple pero deliciosa de queso, tomate y albahaca fresca, horneada a la perfección.', 7500, b'1'),
	(5, 'Pollo al Curry', 'sabores intensos de especias suaves que envuelven el pollo en una deliciosa salsa cremosa.', 7900, b'1'),
	(6, 'Pastel de Choclo', 'una capa dorada de choclo molido sobre un sabroso pino de carne, huevo y aceitunas, hecho al horno.', 6800, b'1');

-- Volcando estructura para tabla db_hotel.menusdetalles
CREATE TABLE IF NOT EXISTS `menusdetalles` (
  `menu_detalle_id` bigint NOT NULL AUTO_INCREMENT,
  `menu_id` bigint NOT NULL,
  `reserva_id` bigint NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`menu_detalle_id`),
  KEY `menudetalle_menu_FK` (`menu_id`),
  KEY `menudetalle_reserva_FK` (`reserva_id`),
  CONSTRAINT `menudetalle_menu_FK` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`menu_id`),
  CONSTRAINT `menudetalle_reserva_FK` FOREIGN KEY (`reserva_id`) REFERENCES `reservas` (`reserva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla db_hotel.menusdetalles: ~25 rows (aproximadamente)
INSERT INTO `menusdetalles` (`menu_detalle_id`, `menu_id`, `reserva_id`, `fecha`, `cantidad`) VALUES
	(1, 1, 1, '2025-06-01', 3),
	(2, 1, 1, '2025-06-02', 3),
	(3, 1, 1, '2025-06-03', 3),
	(4, 1, 1, '2025-06-04', 3),
	(5, 1, 1, '2025-06-09', 3),
	(6, 1, 1, '2025-06-10', 3),
	(7, 1, 1, '2025-06-11', 3),
	(8, 1, 1, '2025-06-02', 3),
	(9, 1, 1, '2025-06-02', 5),
	(10, 2, 1, '2025-06-02', 5),
	(11, 1, 1, '2025-06-09', 3),
	(12, 1, 1, '2025-06-10', 3),
	(13, 1, 1, '2025-06-11', 3),
	(14, 3, 1, '2025-05-24', 2),
	(46, 1, 1, '2025-05-24', 6),
	(47, 2, 1, '2025-05-24', 1),
	(48, 3, 1, '2025-05-24', 5),
	(49, 1, 2, '2025-05-24', 3),
	(50, 2, 2, '2025-05-25', 3),
	(51, 3, 2, '2025-05-26', 3),
	(52, 1, 2, '2025-06-04', 3),
	(53, 2, 3, '2025-06-25', 3),
	(54, 2, 3, '2025-06-26', 3),
	(55, 3, 3, '2025-06-27', 3),
	(56, 1, 3, '2025-06-28', 3);

-- Volcando estructura para tabla db_hotel.pagos
CREATE TABLE IF NOT EXISTS `pagos` (
  `pago_id` bigint NOT NULL AUTO_INCREMENT,
  `medio_pago` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `total_pago` int NOT NULL,
  `pagado` bit(1) NOT NULL,
  PRIMARY KEY (`pago_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla db_hotel.pagos: ~11 rows (aproximadamente)
INSERT INTO `pagos` (`pago_id`, `medio_pago`, `total_pago`, `pagado`) VALUES
	(1, 'tarjeta', 1078000, b'1'),
	(2, 'Efectivo', 1055000, b'1'),
	(3, 'Tarjeta', 115000, b'1'),
	(4, 'tarjeta', 2654000, b'0'),
	(5, 'tarjeta', 2657000, b'0'),
	(6, 'tarjeta', 2140000, b'0'),
	(7, 'tarjeta', 3774600, b'0'),
	(8, 'tarjeta', 3774600, b'0'),
	(9, 'tarjeta', 3747600, b'0'),
	(10, 'tarjeta', 2214600, b'0'),
	(11, 'tarjeta', 3774600, b'0'),
	(12, 'tarjeta', 3774600, b'0');

-- Volcando estructura para tabla db_hotel.reservas
CREATE TABLE IF NOT EXISTS `reservas` (
  `reserva_id` bigint NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint NOT NULL,
  `habitacion_id` bigint NOT NULL,
  `auto_id` bigint DEFAULT NULL,
  `pago_id` bigint NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `anulado` bit(1) NOT NULL,
  PRIMARY KEY (`reserva_id`),
  KEY `reserva_cliente_FK` (`cliente_id`),
  KEY `reserva_habitacion_FK` (`habitacion_id`),
  KEY `reserva_auto_FK` (`auto_id`),
  KEY `reserva_pago_FK` (`pago_id`),
  CONSTRAINT `reserva_auto_FK` FOREIGN KEY (`auto_id`) REFERENCES `autos` (`auto_id`),
  CONSTRAINT `reserva_cliente_FK` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`),
  CONSTRAINT `reserva_habitacion_FK` FOREIGN KEY (`habitacion_id`) REFERENCES `habitaciones` (`habitacion_id`),
  CONSTRAINT `reserva_pago_FK` FOREIGN KEY (`pago_id`) REFERENCES `pagos` (`pago_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla db_hotel.reservas: ~9 rows (aproximadamente)
INSERT INTO `reservas` (`reserva_id`, `cliente_id`, `habitacion_id`, `auto_id`, `pago_id`, `fecha_inicio`, `fecha_fin`, `anulado`) VALUES
	(1, 1, 1, 1, 1, '2025-06-01', '2025-06-25', b'0'),
	(2, 2, 3, 4, 5, '2025-07-04', '2025-08-24', b'1'),
	(3, 3, 2, 3, 6, '2025-07-04', '2025-08-24', b'0'),
	(4, 4, 1, 6, 7, '2025-07-04', '2025-08-24', b'0'),
	(5, 4, 1, 6, 8, '2025-07-04', '2025-08-24', b'1'),
	(6, 4, 1, 3, 9, '2025-07-04', '2025-08-24', b'1'),
	(7, 4, 2, 6, 10, '2025-07-04', '2025-08-24', b'1'),
	(8, 4, 1, 6, 11, '2025-07-04', '2025-08-24', b'1'),
	(9, 6, 1, 6, 12, '2025-07-04', '2025-08-24', b'0');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

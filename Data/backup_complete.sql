-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hotels
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_hotel` varchar(80) NOT NULL,
  `addres_hotel` varchar(80) NOT NULL,
  `country` varchar(30) DEFAULT NULL,
  `description_hotel` varchar(2000) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `img` varchar(2000) NOT NULL,
  `stars` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Hotel Estrellas','Avenida Principal, 456','Fantasilandia','Descubre la magia en cada rincón de Hotel Estrella. Con una arquitectura única y elegante, este hotel de 5 estrellas ofrece habitaciones lujosas con vistas impresionantes. Relájate en nuestro spa de clase mundial o disfruta de la cocina gourmet en nuestros exclusivos restaurantes. La atención al detalle y el servicio excepcional hacen de Hotel Estrella el destino perfecto para una experiencia inolvidable.','+789 012 345','info@hotelestrella.com','',4),(2,'Amanecer Lodge','Ruta del Sol, 789','Amanecerlandia','Experimenta la belleza del amanecer en Amanecer Lodge, un refugio encantador en la costa. Este lodge de 3 estrellas ofrece habitaciones acogedoras con balcones privados y vistas al océano. Disfruta de la playa privada, participa en actividades acuáticas y relájate en nuestro bar con cócteles artesanales mientras disfrutas del espectacular amanecer.','+789 012 345','info@amanecerlodge.com','https://amanecer.com/imagenhotel.jpg',3),(3,'Hotel del Bosque','Camino del Silencio, 789','Bosquelandia','Bienvenido a Hotel del Bosque, donde la elegancia se encuentra con la naturaleza. Este encantador hotel de 4 estrellas está ubicado en el corazón de un exuberante bosque, ofreciendo a los huéspedes una escapada tranquila. Las habitaciones cuentan con comodidades modernas y balcones con vistas panorámicas. Disfruta de paseos por el bosque, relájate en la piscina al aire libre y saborea la deliciosa cocina local en nuestro restaurante.','+234 567 890','info@hoteldelbosque.com','https://bosque.com/imagenhotel.jpg',4),(21,'Aventura Palace','Calle de la Aventura, 210','Aventuralandia','Bienvenido a Aventura Palace, el lugar donde la emoción nunca termina. Este hotel de 4 estrellas es el sueño de los amantes de la aventura, con habitaciones temáticas, piscinas con toboganes emocionantes y actividades para toda la familia. Disfruta de la adrenalina en nuestro parque de aventuras interno y relájate en nuestras cómodas habitaciones después de un día lleno de diversión.','+678 901 234','info@aventurapalace.com','https://aventura.com/imagenhotel.jpg',4),(22,'Sereno Bay Resort','Bahía Tranquila, 55','Relajolandia','Descubre la serenidad en Sereno Bay Resort, un refugio tranquilo en medio de la naturaleza. Con suites elegantes y una playa privada, este resort de 5 estrellas es el lugar perfecto para escapar del ajetreo diario. Relájate en nuestras piscinas infinity, disfruta de la cocina gourmet y deja que nuestro personal te consienta con un servicio excepcional.','+345 678 901','info@serenobayresort.com','https://sereno.com/imagenhotel.jpg',5),(23,'Vista Montaña Lodge','Carretera Panorámica, 123','Montañalandia','Experimenta la majestuosidad de la naturaleza en Vista Montaña Lodge. Situado en lo alto de las montañas, este lodge de 4 estrellas ofrece vistas panorámicas impresionantes. Disfruta de actividades al aire libre, senderismo y deliciosa gastronomía regional. Nuestras acogedoras habitaciones te brindarán comodidad y calidez después de un día explorando la belleza natural que Montañalandia tiene para ofrecer.','+456 789 012','info@vistamontañalodge.com','https://vista.com/imagenhotel.jpg',4),(24,'Palacio Dorado','Calle de la Elegancia, 789','Elegancialandia','Sumérgete en el lujo y la opulencia en Palacio Dorado, un hotel de 5 estrellas que redefine la elegancia. Desde habitaciones decoradas con gusto hasta servicios exclusivos, cada detalle ha sido cuidadosamente seleccionado para brindar a nuestros huéspedes una experiencia inigualable. Relájate en nuestro spa de clase mundial o disfruta de la alta cocina en nuestros restaurantes galardonados.','+567 890 123','info@palaciodorado.com','https://dorado.com/imagenhotel.jpg',5),(25,'Tranquilidad Resort','Camino de la Serenidad, 456','Tranquilolandia','En Tranquilidad Resort, la paz y la comodidad se encuentran en perfecta armonía. Este resort de 4 estrellas, ubicado en un entorno sereno, ofrece amplias habitaciones con vistas al jardín y a la piscina. Sumérgete en nuestras aguas termales, disfruta de la gastronomía local y relájate en un entorno donde la tranquilidad es la prioridad.','+678 901 234','info@tranquilidadresort.com','https://tranquilidad.com/imagenhotel.jpg',4),(26,'Amanecer Lodge','Ruta del Sol, 789','Amanecerlandia','Experimenta la belleza del amanecer en Amanecer Lodge, un refugio encantador en la costa. Este lodge de 3 estrellas ofrece habitaciones acogedoras con balcones privados y vistas al océano. Disfruta de la playa privada, participa en actividades acuáticas y relájate en nuestro bar con cócteles artesanales mientras disfrutas del espectacular amanecer.','+789 012 345','info@amanecerlodge.com','https://amanecer.com/imagenhotel.jpg',3);
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-20 15:51:31

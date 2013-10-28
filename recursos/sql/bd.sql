-- TABLA DE LAS EMPRESAS

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `eid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `provincia` varchar(255) DEFAULT NULL,
  `cp` int DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `latitud` float(10,6) DEFAULT '0.000000',
  `longitud` float (10,6) DEFAULT '0.000000',
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1001 ;


-- TABLA DE TELEFONOS DE LAS EMPRESAS

DROP TABLE IF EXISTS `tlf_e`;
CREATE TABLE IF NOT EXISTS `tlf_e` (
  `tid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) NOT NULL,
  `telefono` int NOT NULL,
  `empresa` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`tid`),
  --INDEX (empresa),
  CONSTRAINT fk_tlf_empresa FOREIGN KEY (empresa)
    REFERENCES empresa (eid)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1001 ;


-- TABLA DE EMAILS DE LAS EMPRESAS

DROP TABLE IF EXISTS `mail_e`;
CREATE TABLE IF NOT EXISTS `mail_e` (
  `mid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `empresa` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`tid`),
  --INDEX (empresa),
  CONSTRAINT fk_mail_empresa FOREIGN KEY (empresa)
    REFERENCES empresa (eid)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1001 ;


-- TABLA DE 


-- 
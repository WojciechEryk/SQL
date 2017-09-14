drop database if exists przychodnia;

CREATE DATABASE `przychodnia` ;
use przychodnia;

CREATE TABLE IF NOT EXISTS `pacjent` (
  `idpacjenta` int(11) NOT NULL AUTO_INCREMENT,
  `imiepacjenta` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwiskopacjenta` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `telefon` int(15),
  `adres` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  PRIMARY KEY (`idpacjenta`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `lekarz` (
  `idlekarza` int(11) NOT NULL AUTO_INCREMENT,
  `imielekarza` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwiskolekarza` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`idlekarza`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `Wizyta` (
  `idwizyta` int(11) NOT NULL AUTO_INCREMENT,
  `idpacjenta` int(11) NOT NULL,
  `idlekarza` int(11) NOT NULL,
  `data` date NOT NULL,
  `godzina` time not null,
  PRIMARY KEY (`idwizyta`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `recepty` (
  `idrecepta` int(11) NOT NULL AUTO_INCREMENT,
  `idpacjenta` int(11) NOT NULL,
  `idlekarza` int(11) NOT NULL,
  `idwizyta` int(11) NOT NULL,
  `idleku` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`idrecepta`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `leki` (
  `idleku` int(11) NOT NULL AUTO_INCREMENT,
  `nazwaleku` text CHARACTER SET utf8 COLLATE utf8_polish_ci,
  PRIMARY KEY (`idleku`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;
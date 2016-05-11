-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema PSPFoward
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema PSPFoward
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `PSPFoward` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema test
-- -----------------------------------------------------
USE `PSPFoward` ;

-- -----------------------------------------------------
-- Table `PSPFoward`.`Estudiante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`Estudiante` (
  `idEstudiante` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `Nombre` VARCHAR(25) NOT NULL COMMENT '',
  `ApellidoPaterno` VARCHAR(20) NOT NULL COMMENT '',
  `ApellidoMaterno` VARCHAR(20) NOT NULL COMMENT '',
  `Telefono` INT NULL COMMENT '',
  `FechaNacimiento` DATE NULL COMMENT '',
  PRIMARY KEY (`idEstudiante`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PSPFoward`.`Instructor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`Instructor` (
  `idInstructor` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `Nombre` VARCHAR(25) NOT NULL COMMENT '',
  `ApellidoPaterno` VARCHAR(20) NOT NULL COMMENT '',
  `ApellidoMaterno` VARCHAR(20) NOT NULL COMMENT '',
  `Telefono` INT NULL COMMENT '',
  `FechaNacimiento` DATE NULL COMMENT '',
  PRIMARY KEY (`idInstructor`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PSPFoward`.`Fase`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`Fase` (
  `idFase` INT NOT NULL AUTO_INCREMENT COMMENT '',
  PRIMARY KEY (`idFase`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PSPFoward`.`PSP_Defect_Recording_Log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`PSP_Defect_Recording_Log` (
  `idPSP_Defect_Recording_Log` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `Fecha` DATE NOT NULL COMMENT '',
  PRIMARY KEY (`idPSP_Defect_Recording_Log`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PSPFoward`.`PSP_Time_Recording_Log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`PSP_Time_Recording_Log` (
  `idPSP_Time_Recording_Log` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `StartAndDateTime` DATE NOT NULL COMMENT '',
  `InterruptionTime` DATE NULL COMMENT '',
  `StopAndDateTime` DATE NOT NULL COMMENT '',
  `DeltaTime` DOUBLE NULL COMMENT '',
  `Comments` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`idPSP_Time_Recording_Log`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PSPFoward`.`PSP`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`PSP` (
  `idPSP` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `Estudiante_idEstudiante` INT NOT NULL COMMENT '',
  `Instructor_idInstructor` INT NOT NULL COMMENT '',
  `Fase_idFase` INT NOT NULL COMMENT '',
  `PSP_Defect_Recording_Log_idPSP_Defect_Recording_Log` INT NOT NULL COMMENT '',
  `PSP_Time_Recording_Log_idPSP_Time_Recording_Log` INT NOT NULL COMMENT '',
  PRIMARY KEY (`idPSP`)  COMMENT '',
  INDEX `fk_PSP_Estudiante_idx` (`Estudiante_idEstudiante` ASC)  COMMENT '',
  INDEX `fk_PSP_Instructor1_idx` (`Instructor_idInstructor` ASC)  COMMENT '',
  INDEX `fk_PSP_Fase1_idx` (`Fase_idFase` ASC)  COMMENT '',
  INDEX `fk_PSP_PSP_Defect_Recording_Log1_idx` (`PSP_Defect_Recording_Log_idPSP_Defect_Recording_Log` ASC)  COMMENT '',
  INDEX `fk_PSP_PSP_Time_Recording_Log1_idx` (`PSP_Time_Recording_Log_idPSP_Time_Recording_Log` ASC)  COMMENT '',
  CONSTRAINT `fk_PSP_Estudiante`
    FOREIGN KEY (`Estudiante_idEstudiante`)
    REFERENCES `PSPFoward`.`Estudiante` (`idEstudiante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PSP_Instructor1`
    FOREIGN KEY (`Instructor_idInstructor`)
    REFERENCES `PSPFoward`.`Instructor` (`idInstructor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PSP_Fase1`
    FOREIGN KEY (`Fase_idFase`)
    REFERENCES `PSPFoward`.`Fase` (`idFase`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PSP_PSP_Defect_Recording_Log1`
    FOREIGN KEY (`PSP_Defect_Recording_Log_idPSP_Defect_Recording_Log`)
    REFERENCES `PSPFoward`.`PSP_Defect_Recording_Log` (`idPSP_Defect_Recording_Log`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PSP_PSP_Time_Recording_Log1`
    FOREIGN KEY (`PSP_Time_Recording_Log_idPSP_Time_Recording_Log`)
    REFERENCES `PSPFoward`.`PSP_Time_Recording_Log` (`idPSP_Time_Recording_Log`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PSPFoward`.`Programa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`Programa` (
  `idPrograma` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `Nombre` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`idPrograma`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PSPFoward`.`PSP_has_Programa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`PSP_has_Programa` (
  `PSP_idPSP` INT NOT NULL COMMENT '',
  `Programa_idPrograma` INT NOT NULL COMMENT '',
  
  PRIMARY KEY (`PSP_idPSP`, `Programa_idPrograma`)  COMMENT '',
  
  INDEX `fk_PSP_has_Programa_Programa1_idx` (`Programa_idPrograma` ASC)  COMMENT '',
  INDEX `fk_PSP_has_Programa_PSP1_idx` (`PSP_idPSP` ASC)  COMMENT '',
  
  CONSTRAINT `fk_PSP_has_Programa_PSP1`
   
   FOREIGN KEY (`PSP_idPSP`)
    REFERENCES `PSPFoward`.`PSP` (`idPSP`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  
  CONSTRAINT `fk_PSP_has_Programa_Programa1`
    FOREIGN KEY (`Programa_idPrograma`)
    REFERENCES `PSPFoward`.`Programa` (`idPrograma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PSPFoward`.`Lenguaje_Programacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`Lenguaje_Programacion` (
  `idLenguaje_Programacion` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `Nombre` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`idLenguaje_Programacion`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PSPFoward`.`Lenguaje_Programacion_has_Programa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`Lenguaje_Programacion_has_Programa` (
  `Lenguaje_Programacion_idLenguaje_Programacion` INT NOT NULL COMMENT '',
  `Programa_idPrograma` INT NOT NULL COMMENT '',
  PRIMARY KEY (`Lenguaje_Programacion_idLenguaje_Programacion`, `Programa_idPrograma`)  COMMENT '',
  INDEX `fk_Lenguaje_Programacion_has_Programa_Programa1_idx` (`Programa_idPrograma` ASC)  COMMENT '',
  INDEX `fk_Lenguaje_Programacion_has_Programa_Lenguaje_Programacion_idx` (`Lenguaje_Programacion_idLenguaje_Programacion` ASC)  COMMENT '',
  CONSTRAINT `fk_Lenguaje_Programacion_has_Programa_Lenguaje_Programacion1`
    FOREIGN KEY (`Lenguaje_Programacion_idLenguaje_Programacion`)
    REFERENCES `PSPFoward`.`Lenguaje_Programacion` (`idLenguaje_Programacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Lenguaje_Programacion_has_Programa_Programa1`
    FOREIGN KEY (`Programa_idPrograma`)
    REFERENCES `PSPFoward`.`Programa` (`idPrograma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PSPFoward`.`Defect`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`Defect` (
  `idPSP_Time_Recording_Log` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `Nombre` VARCHAR(45) NOT NULL COMMENT '',
  `Descripcion` TINYTEXT NULL COMMENT '',
  PRIMARY KEY (`idPSP_Time_Recording_Log`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PSPFoward`.`alumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`alumno` (
  `idAlumno` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `Nombre` VARCHAR(25) NOT NULL COMMENT '',
  `ApellidoPaterno` VARCHAR(20) NOT NULL COMMENT '',
  `ApellidoMaterno` VARCHAR(20) NOT NULL COMMENT '',
  `Carrera` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`idAlumno`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `PSPFoward`.`curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`curso` (
  `idCurso` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `Nombre` VARCHAR(45) NOT NULL COMMENT '',
  `Créditos` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`idCurso`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `PSPFoward`.`alumno_has_curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`alumno_has_curso` (
  `Alumno_idAlumno` INT(11) NOT NULL COMMENT '',
  `Curso_idCurso` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`Alumno_idAlumno`, `Curso_idCurso`)  COMMENT '',
  INDEX `fk_Alumno_has_Curso_Curso1_idx` (`Curso_idCurso` ASC)  COMMENT '',
  INDEX `fk_Alumno_has_Curso_Alumno_idx` (`Alumno_idAlumno` ASC)  COMMENT '',
  CONSTRAINT `fk_Alumno_has_Curso_Alumno`
    FOREIGN KEY (`Alumno_idAlumno`)
    REFERENCES `PSPFoward`.`alumno` (`idAlumno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Alumno_has_Curso_Curso1`
    FOREIGN KEY (`Curso_idCurso`)
    REFERENCES `PSPFoward`.`curso` (`idCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `PSPFoward`.`profesor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PSPFoward`.`profesor` (
  `idProfesor` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `Nombre` VARCHAR(25) NOT NULL COMMENT '',
  `ApellidoPaterno` VARCHAR(20) NOT NULL COMMENT '',
  `ApellidoMaterno` VARCHAR(20) NOT NULL COMMENT '',
  `Curso_idCurso` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`idProfesor`)  COMMENT '',
  INDEX `fk_Profesor_Curso1_idx` (`Curso_idCurso` ASC)  COMMENT '',
  CONSTRAINT `fk_Profesor_Curso1`
    FOREIGN KEY (`Curso_idCurso`)
    REFERENCES `PSPFoward`.`curso` (`idCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

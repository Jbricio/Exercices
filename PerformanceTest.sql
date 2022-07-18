CREATE DATABASE dbperformance;
use dbperformance;

CREATE TABLE Users
(
u_Id int not null auto_increment,
u_Name varchar(50) not null,
u_FechaNacimiento date not null,
u_Edad int,
u_CreationDate date,
primary key(u_id)
);

CREATE TABLE Roles
(
r_Id int not null auto_increment,
r_ProfileName varchar(50),
primary key(r_Id)
);

CREATE TABLE UserRole
(
ur_Id int not null auto_increment,
IdUser int,
IdRole int,
primary key(ur_Id),
foreign key(IdUser) REFERENCES Users(u_Id),
foreign key(IdRole) REFERENCES Roles(r_Id)
);

DELIMITER//
CREATE PROCEDURE SP_Insert_Users()
BEGIN
INSERT INTO Users 
(u_Name,u_FehcaNacimiento,u_CreationDate)
VALUES
('Daniel Sebastiao', '1-May-1984',curdate()),
('Edwin Julian','1May-1992',curdate()),
('Mariano Pacienza','1-May-1972',curdate()),
('Saulo Villasenor','1-May-1985',curdate()),
('Hector Cisnero','1-May1985',curdate()),
('Horeb Gastelum','1-May-1992',curdate())
END//
DELIMITER ;

DELIMITER//
CREATE PROCEDURE SP_Insert_Roles()
BEGIN
INSERT INTO Roles
(r_PorfileName)
VALUES
('Admin'),
('RH'),
('Student'),
('Squad')
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE SP_Insert_UserRole()
BEGIN
INSERT INTO UserRole
(IdUser,IdRole)
VALUES
(1,1),
(2,1),
(3,2),
(5,4),
(6,3);
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE GetUsers()
BEGIN
SELECT*FROM Users;
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE GetRoles()
BEGIN
SELECT*FROM Users;
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE RolNoAsigned()
BEGIN
SELECT u_Name FROM Users WHERE u_Id=UserRole.IdUser AND UserRole.IdRole=null;
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE AtLeastOneRoll()
BEGIN
SELECT u_Name,r_profileName FROM Users u, Roles WHERE u.u_Id= ur.IdUser; 
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE UserWithNoRoll()
BEGIN
SELECT u_Name FROM Users u WHERE UserRol.IdUser= u.u_Id AND UserRol.IdRol=Roles.r_Id; 
END//
DELIMITER ;

DELIMITER //
CREATE TRIGGER AddAge
AFTER INSERT ON Users FOR EACH ROW
BEGIN
DECLARE age int;
SELECT u_FechNacimiento,curdate(), timestampdiff(YEAR,u_FechaNacimiento,CURDATE()) INTO age;
 INSERT INTO Users (u_Edad)
 values (age);
END//
DELIMITER ;

DELIMITER//
CREATE PROCEDURE SP_SumaEdades
BEGIN
SELECT sum(u_Edad) FROM Users
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE SP_SumaRegistro
(
OUT tabla varchar(50)
)
BEGIN
SELECT COUNT(*) FROM tabla;
END//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE SP_GetUsersById
(
IN IngresedId int
)
IF((SELECT u_Id FROM Users)=IngresedId)
THEN
SELECT u_Id FROM Users WHERE u_Id=IngreseId;
ELSEIF IngresedId!=u_Id THEN
SELECT*FROM Users;
END IF;
END//
DELIMITER ;

DELIMITER //
CREATE TRIGGER ModifyAge
AFTER INSERT ON Users FOR EACH ROW
BEGIN
IF((SELECT u_Edad FROM Users)>=18 AND (SELECT u_Edad FROM Users)<=180)
THEN
INSERT INTO Users (u_Edad)
value(0);
end if;
END//
DELIMITER ;


CREATE VIEW Vista AS
SELECT u_Id,u_Name,u_Edad,sum(IdRole) FROM Users u, UserRole WHERE Users.u_Id=UserRole.IdUser;











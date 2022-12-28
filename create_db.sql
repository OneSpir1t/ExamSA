create schema my_bd;
use my_bd;

create table `UserRole`(
ID int primary key auto_increment,
`Name` varchar(100)
);

create table `Users`(
ID int primary key auto_increment,
`Name` varchar(100),
`Login` varchar(100),
`Password` varchar(100),
`UserRoleID` int,
constraint FK_Users_UserRole foreign key Users(UserRoleID) references UserRole(ID)
);

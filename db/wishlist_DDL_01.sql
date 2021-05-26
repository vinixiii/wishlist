-- CREATE DATABASE Senai_Wishlist;
USE Senai_Wishlist;
GO

CREATE TABLE Usuarios
(
	IdUsuario			INT PRIMARY KEY IDENTITY,
	Email				VARCHAR(100) UNIQUE NOT NULL,
	Senha				VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Desejos
(
	IdDescricao			INT PRIMARY KEY IDENTITY,
	Descricao			VARCHAR(300) NOT NULL,
	DataCriacao			DATE NOT NULL,
	IdUsuario			INT FOREIGN KEY REFERENCES Usuarios (IdUsuario)
);
GO
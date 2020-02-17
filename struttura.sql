DROP DATABASE IF EXISTS Universiadi;

CREATE DATABASE Universiadi;

USE Universiadi;

/*per una creazione corretta delle tabelle, pulisco eventuale memoria*/

DROP TABLE IF EXISTS Sponsor;
DROP TABLE IF EXISTS Sponsorizza;
DROP TABLE IF EXISTS Finanzia;
DROP TABLE IF EXISTS Squadra;
DROP TABLE IF EXISTS Partecipa;
DROP TABLE IF EXISTS FaParte;
DROP TABLE IF EXISTS Atleta;
DROP TABLE IF EXISTS Studia;
DROP TABLE IF EXISTS CorsoDiLaurea;
DROP TABLE IF EXISTS Nazionalità;
DROP TABLE IF EXISTS Disciplina;
DROP TABLE IF EXISTS Competizione;
DROP TABLE IF EXISTS Nazione-Olimpiade;
DROP TABLE IF EXISTS Città;
DROP TABLE IF EXISTS Università;
DROP TABLE IF EXISTS Nazione;
DROP TABLE IF EXISTS OlimpiadeUniversitaria;

CREATE TABLE Sponsor (
	Nome
	Telefono
	Indirizzo
);

CREATE TABLE Sponsorizza (
	Sponsor
	Squadra
);

CREATE TABLE Finanzia (
	Sponsor
	Sesso
	Disciplina
	Sport
	Olimpiade
);

CREATE TABLE Squadra (
	Id
	Nazione
);

CREATE TABLE Partecipa (
	Squadra
	Sesso
	Disciplina
	Sport
	Olimpiade
	PosizioneClassifica
);

CREATE TABLE FaParte (
	Squadra
	Atleta
);

CREATE TABLE Atleta (
	Id
	Nome
	Cognome
	Sesso
	DataNascita
);

CREATE TABLE Studia (
	Atleta
	NomeCorso
	Università
	AnnoAccademico
);

CREATE TABLE CorsoDiLaurea (
	Nome
	Università
	Indirizzo
);

CREATE TABLE Nazionalità (
	Atleta
	Nazione
);

CREATE TABLE Disciplina (
	Nome
	Sport
	Regolamento
);

CREATE TABLE Competizione (
	Sesso
	Disciplina
	Sport
	Olimpiade
);

CREATE TABLE Nazione-Olimpiade (
	Nazione
	Olimpiade
	Ori
	Argenti
	Bronzi
);

CREATE TABLE Città (
	Id
	Nome
	Nazione
);

CREATE TABLE Università (
	Nome
	Telefono
	Città
	Ori
	Argenti
	Bronzi
);

CREATE TABLE Nazione (
	Nome
);

CREATE TABLE OlimpiadeUniversitaria (
	Anno
	Città
);

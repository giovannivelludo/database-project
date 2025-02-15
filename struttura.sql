/*per una creazione corretta delle tabelle, pulisco eventuale memoria*/

drop table if exists Nazione_Olimpiade;
drop table if exists Nazionalità;
drop table if exists Studia;
drop table if exists CorsoDiLaurea;
drop table if exists Università;
drop table if exists Partecipa;
drop table if exists Finanzia;
drop table if exists Competizione;
drop table if exists OlimpiadeUniversitaria;
drop table if exists Città;
drop table if exists FaParte;
drop table if exists Sponsorizza;
drop table if exists Squadra;
drop table if exists Nazione;
drop table if exists Disciplina;
drop table if exists Atleta;
drop table if exists Sponsor;

create table Sponsor (
	Nome varchar(100) primary key,
	Telefono varchar(15) unique
);

create table Atleta (
	Id bigserial primary key,
	Nome varchar(50) not null,
	Cognome varchar(50) not null,
	Sesso char(1) not null
		check (Sesso='M' or Sesso='F'),
	DataNascita date not null
);

create table Disciplina (
	Nome varchar(50),
	Sport varchar(50),
	Regolamento TEXT not null,
	primary key (Nome, Sport)
);

create table Nazione (
	Nome varchar(100) primary key
);

create table Squadra (
	Id bigserial primary key,
	Nazione varchar(100) not null,
	foreign key (Nazione) references Nazione(Nome)
		on delete restrict on update cascade
);

create table Sponsorizza (
	Sponsor varchar(100),
	Squadra bigint,
	foreign key (Sponsor) references Sponsor(Nome)
		on delete restrict on update cascade,
	foreign key (Squadra) references Squadra(Id)
		on delete restrict on update cascade,
	primary key (Sponsor, Squadra)
);

create table FaParte (
	Squadra bigint,
	Atleta bigint,
	foreign key (Squadra) references Squadra(Id)
		on delete restrict on update cascade,
	foreign key (Atleta) references Atleta(Id)
		on delete restrict on update cascade,
	primary key (Squadra, Atleta)
);

create table Città (
	Id serial primary key,
	Nome varchar(100) not null,
	Nazione varchar(100) not null,
	foreign key (Nazione) references Nazione(Nome)
		on delete restrict on update cascade
);

create table OlimpiadeUniversitaria (
	Anno smallint primary key
		check(Anno >= 1959),
	Città int not null,
	foreign key (Città) references Città(Id)
		on delete restrict on update cascade
);

create table Competizione (
	Sesso char(1)
		check (Sesso='M' or Sesso='F' or Sesso='E'), -- 'E' sta per entrambi
	Disciplina varchar(50),
	Sport varchar(50),
	Olimpiade smallint,
	foreign key (Disciplina, Sport) references Disciplina(Nome, Sport)
		on delete restrict on update cascade,
	foreign key (Olimpiade) references OlimpiadeUniversitaria(Anno)
		on delete restrict on update cascade,
	primary key (Sesso, Disciplina, Sport, Olimpiade)
);

create table Finanzia (
	Sponsor varchar(100),
	Sesso char(1),
	Disciplina varchar(50),
	Sport varchar(50),
	Olimpiade smallint,
	foreign key (Sponsor) references Sponsor(Nome)
		on delete restrict on update cascade,
	foreign key (Sesso, Disciplina, Sport, Olimpiade) references Competizione(Sesso, Disciplina, Sport, Olimpiade)
		on delete restrict on update cascade,
	primary key (Sponsor, Sesso, Disciplina, Sport, Olimpiade)
);

create table Partecipa (
	Squadra bigint,
	Sesso char(1),
	Disciplina varchar(50),
	Sport varchar(50),
	Olimpiade smallint,
	PosizioneClassifica smallint,
	foreign key (Squadra) references Squadra(Id)
		on delete restrict on update cascade,
	foreign key (Sesso, Disciplina, Sport, Olimpiade) references Competizione(Sesso, Disciplina, Sport, Olimpiade)
		on delete restrict on update cascade,
	primary key (Squadra, Sesso, Disciplina, Sport, Olimpiade)
);

create table Università (
	Nome varchar(100) primary key,
	Telefono varchar(15) unique,
	Città int not null,
	Ori int default 0 not null
		check (Ori >= 0),
	Argenti int default 0 not null
		check (Argenti >= 0),
	Bronzi int default 0 not null
		check (Bronzi >= 0),
	foreign key (Città) references Città(Id)
		on delete restrict on update cascade
);

create table CorsoDiLaurea (
	Nome varchar(100),
	Università varchar(100),
	foreign key (Università) references Università(Nome)
		on delete restrict on update cascade,
	primary key (Nome, Università)
);

create table Studia (
	Atleta bigint,
	NomeCorso varchar(100),
	Università varchar(100),
	AnnoAccademico smallint not null -- anno in cui termina l'anno accademico
		check (AnnoAccademico >= 1959),
	foreign key (Atleta) references Atleta(Id)
		on delete restrict on update cascade,
	foreign key (NomeCorso, Università) references CorsoDiLaurea(Nome, Università)
		on delete restrict on update cascade,
	primary key (Atleta, NomeCorso, Università)
);

create table Nazionalità (
	Atleta bigint,
	Nazione varchar(100),
	foreign key (Atleta) references Atleta(Id)
		on delete restrict on update cascade,
	foreign key (Nazione) references Nazione(Nome)
		on delete restrict on update cascade,
	primary key (Atleta, Nazione)
);

create table Nazione_Olimpiade (
	Nazione varchar(100),
	Olimpiade smallint,
	Ori int default 0 not null
		check (Ori >= 0),
	Argenti int default 0 not null
		check (Argenti >= 0),
	Bronzi int default 0 not null
		check (Bronzi >= 0),
	foreign key (Nazione) references Nazione(Nome)
		on delete restrict on update cascade,
	foreign key (Olimpiade) references OlimpiadeUniversitaria(Anno)
		on delete restrict on update cascade,
	primary key (Nazione, Olimpiade)
);

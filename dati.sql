insert into Sponsor values
('Nike, Inc.', '18003446453'),
('Qiaodan Sports Company', '00864007032333'),
('Danone S.p.A.', '0039800804037'),
('Kia Motors America, Inc.', '18003334542'),
('Stokely-Van Camp, Inc.', '18008842867');

insert into Atleta(Nome,Cognome,Sesso,DataNascita) values
('Livio', 'Cenni', 'M', '1999-05-23'),
('Sara', 'Zaggia', 'F', '1198-09-03'),
('Anna', 'Barbon', 'F', '1995-12-31'),
('Mario', 'Rossi', 'M', '1995-02-12'),
('Pedro', 'Hernández', 'M', '2000-04-28'),
('Cristina', 'Mardones', 'F', '1997-07-17'),
('David', 'Bartolomé', 'M', '1995-07-15'),
('Sara', 'Saenz de Navarrete', 'F', '1995-03-11'),
('Hans', 'Bugenhagen', 'M', '1996-10-23'),
('Heidi', 'Schwartz', 'F', '1997-07-01'),
('Georg', 'Goebbels', 'M', '1998-04-14'),
('Anika', 'Schmidt', 'F', '2000-01-07'),
('John', 'Doe', 'M', '1997-11-30'),
('Jane', 'Bloggs', 'F', '1996-05-11'),
('Edward', 'Cook', 'M', '1995-08-31');

insert into Nazione values
('Italia'),
('Regno Unito'),
('Francia'),
('Germania'),
('Spagna'),
('Taipei Cinese'),
('Corea del Sud');

insert into Città(Nome,Nazione) values
('Roma', 'Italia'),
('Padova', 'Italia'),
('Londra', 'Regno Unito'),
('Parigi', 'Francia'),
('Berlino', 'Germania'),
('Madrid', 'Spagna'),
('Napoli', 'Italia'),
('Taipei', 'Taipei Cinese'),
('Gwangju', 'Corea del Sud');

insert into Squadra(Nazione) values
('Italia'),
('Regno Unito'),
('Francia'),
('Germania'),
('Spagna'),
('Germania');

insert into Sponsorizza values
('Nike, Inc.', 2),
('Danone S.p.A.', 1);

insert into OlimpiadeUniversitaria values
('2019', 7),
('2017', 8),
('2015', 9);

insert into Disciplina values
('Nuoto', '50 m stile libero', pg_read_binary_file('./regolamenti/napoli_2019_swimming.pdf')::bytea),
('Pallavolo', 'Pallavolo', pg_read_binary_file('./regolamenti/napoli_2019_volleyball.pdf')::bytea),
('Atletica', '100 metri', pg_read_binary_file('./regolamenti/napoli_2019_athletics.pdf')::bytea);
/*
insert into Università values
('Università degli Studi di Padova', '0498275111', 'Padova', '3','4','5'),
();

insert into CorsoDiLaurea values
('Ingegneria Informatica', 'Università degli Studi di Padova');

insert into Competizione values
('M', 'Pallavolo', 'Pallavolo', '2018')
('F', 'Nuoto', 'Stile Libero', '2016');
*/

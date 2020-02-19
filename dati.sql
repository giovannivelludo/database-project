insert into Sponsor values
('Nike, Inc.', '18003446453'),
('Qiaodan Sports Company', '00864007032333'),
('Danone S.p.A.', '0039800804037'),
('Kia Motors America, Inc.', '18003334542'),
('Trops S.p.A.', '00390498989900'),
('Stokely-Van Camp, Inc.', '18008842867');
 
insert into Atleta(Nome, Cognome, Sesso, DataNascita) values
('Livio', 'Cenni', 'M', '1999-05-23'),
('Sara', 'Zaggia', 'F', '1998-09-03'),
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
('John', 'Doe', 'M', '1994-11-30'),
('Jane', 'Bloggs', 'F', '1996-05-11'),
('Edward', 'Cook', 'M', '1995-08-31'),
('Francois', 'La Manche', 'M', '1989-12-25'),
('Mathieu', 'Choir', 'M', '1999-05-12'),
('Andre', 'Garcia', 'M', '1992-03-10');

insert into Nazione values
('Italia'),
('Regno Unito'),
('Francia'),
('Germania'),
('Spagna'),
('Taipei Cinese'),
('Corea del Sud');

insert into Città(Nome, Nazione) values
('Roma', 'Italia'),
('Padova', 'Italia'),
('Londra', 'Regno Unito'),
('Parigi', 'Francia'),
('Berlino', 'Germania'),
('Madrid', 'Spagna'),
('Napoli', 'Italia'),
('Taipei', 'Taipei Cinese'),
('Gwangju', 'Corea del Sud'),
('Manchester', 'Regno Unito');

insert into Squadra(Nazione) values
('Italia'),
('Italia'),
('Regno Unito'),
('Francia'),
('Germania'),
('Spagna'),
('Germania'),
('Italia'),
('Spagna'),
('Germania'),
('Regno Unito'),
('Spagna');

insert into Sponsorizza values
('Nike, Inc.', 2),
('Danone S.p.A.', 1),
('Qiaodan Sports Company', 3),
('Kia Motors America, Inc.', 4),
('Stokely-Van Camp, Inc.', 5);

insert into OlimpiadeUniversitaria values
(2019, 7),
(2017, 8),
(2015, 9);

insert into Disciplina values
('50 m stile libero', 'Nuoto', 'Regolamento 50 m stile libero nuoto'),
('6x6', 'Pallavolo', 'Regolamento pallavolo'),
('100 m', 'Atletica', 'Regolamento 100m atletica');

insert into FaParte(Squadra, Atleta) values
(1, 1),
(2, 4),
(3, 13),
(3, 15),
(5, 9),
(7, 11),
(8, 2),
(8, 3),
(6, 5),
(9, 6),
(4, 7),
(9, 8),
(10, 10),
(10, 12),
(11, 14),
(4, 16),
(4, 17),
(12, 18);

insert into Competizione values
('M', '50 m stile libero', 'Nuoto', 2019),
('F', '100 m', 'Atletica', 2017),
('M', '6x6', 'Pallavolo', 2015);

insert into Finanzia values
('Danone S.p.A.', 'M', '50 m stile libero', 'Nuoto', 2019),
('Nike, Inc.', 'M', '50 m stile libero', 'Nuoto', 2019);

insert into Partecipa values
(1, 'M', '50 m stile libero', 'Nuoto', 2019, 2),
(2, 'M', '50 m stile libero', 'Nuoto', 2019, 1),
(3, 'M', '6x6', 'Pallavolo', 2015, 1),
(4, 'M', '50 m stile libero', 'Nuoto', 2019, 3),
(5, 'M', '6x6', 'Pallavolo', 2015, 2),
(6, 'M', '50 m stile libero', 'Nuoto', 2019, 5),
(7, 'M', '50 m stile libero', 'Nuoto', 2019, 4),
(8, 'F', '100 m', 'Atletica', 2017, 1),
(9, 'F', '100 m', 'Atletica', 2017, 2),
(10, 'M', '50 m stile libero', 'Nuoto', 2019, 6),
(11, 'F', '100 m', 'Atletica', 2017, 3),
(12, 'M', '6x6', 'Pallavolo', 2015, 3);

insert into Università values
('Università degli Studi di Padova', '00390498275111', 2, 2, 1, 0),
('ESMT Berlin', '00491439223455', 5, 0, 1, 0),
('Universidad Complutense de Madrid', '00914520400', 6, 0, 2, 1),
('Università degli Studi di Napoli Federico II', '00390812531111', 7, 0, 0, 0),
('Université de Paris', '0033157275727', 4, 0, 0, 3),
('The University of Manchester', '00441613066000', 10, 2, 0, 1),
('University of London', '00442078628000', 3, 1, 0, 0);

insert into CorsoDiLaurea values
('Ingegneria informatica', 'Università degli Studi di Padova'),
('Filosofia', 'Università degli Studi di Padova'),
('Psicopedagogia', 'Università degli Studi di Padova'),
('Psicopedagogia', 'University of London'),
('Economia aziendale', 'ESMT Berlin'),
('Computer Science', 'Universidad Complutense de Madrid'),
('Marketing', 'Universidad Complutense de Madrid'),
('Design', 'Universidad Complutense de Madrid'),
('Computer Science', 'Université de Paris'),
('Physiotherapy', 'Université de Paris'),
('Architecture', 'Université de Paris'),
('Architecture', 'ESMT Berlin'),
('Design', 'The University of Manchester'),
('Computer Science', 'The University of Manchester'),
('Psychology', 'The University of Manchester'),
('Finanza', 'ESMT Berlin');

insert into Studia values
(1, 'Ingegneria informatica', 'Università degli Studi di Padova', 2019),
(2, 'Psicopedagogia', 'Università degli Studi di Padova', 2019),
(3, 'Psicopedagogia', 'University of London', 2019),
(4, 'Filosofia', 'Università degli Studi di Padova', 2019),
(5, 'Computer Science', 'Universidad Complutense de Madrid', 2019),
(6, 'Design', 'Universidad Complutense de Madrid', 2019),
(7, 'Computer Science', 'Université de Paris', 2019),
(8, 'Marketing', 'Universidad Complutense de Madrid', 2019),
(9, 'Economia aziendale', 'ESMT Berlin', 2019),
(10, 'Economia aziendale', 'ESMT Berlin', 2019),
(11, 'Finanza', 'ESMT Berlin', 2019),
(12, 'Architecture', 'ESMT Berlin', 2019),
(13, 'Psychology', 'The University of Manchester', 2019),
(14, 'Computer Science', 'The University of Manchester', 2019),
(15, 'Design', 'The University of Manchester', 2019),
(16, 'Physiotherapy', 'Université de Paris', 2019),
(17, 'Architecture', 'Université de Paris', 2019),
(18, 'Design', 'Universidad Complutense de Madrid', 2019);

insert into Nazionalità values
(1, 'Italia'),
(1, 'Regno Unito'),
(2, 'Italia'),
(3, 'Italia'),
(4, 'Italia'),
(5, 'Spagna'),
(6, 'Spagna'),
(7, 'Francia'),
(8, 'Spagna'),
(9, 'Germania'),
(10, 'Germania'),
(10, 'Francia'),
(11, 'Germania'),
(12, 'Germania'),
(13, 'Regno Unito'),
(14, 'Regno Unito'),
(15, 'Regno Unito'),
(16, 'Francia'),
(17, 'Francia'),
(18, 'Spagna');

insert into Nazione_Olimpiade values
('Italia', 2019, 1, 1, 0),
('Regno Unito', 2015, 1, 0, 0),
('Francia', 2019, 0, 0, 1),
('Germania', 2015, 0, 1, 0),
('Spagna', 2019, 0, 0, 0),
('Germania', 2019, 0, 0, 0),
('Italia', 2017, 1, 0, 0),
('Spagna', 2017, 0, 1, 0),
('Regno Unito', 2017, 0, 0, 1),
('Spagna', 2015, 0, 0, 1);

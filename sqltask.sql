CREATE DATABASE sirket
USE sirket

CREATE TABLE Vezife(
Id int PRIMARY KEY identity ,
Vezife nvarchar(70),
)
INSERT INTO Vezife
values('satici')
INSERT INTO Vezife
values('mudur')
INSERT INTO Vezife
values('ceo')

CREATE TABLE Filial(
Id int PRIMARY KEY identity ,
Filial nvarchar(70),
)
drop table Filial
INSERT INTO Filial
values('qarayev')
INSERT INTO Filial
values('elmler')
INSERT INTO Filial
values('nerimanov')
INSERT INTO Filial
values('genclik')
INSERT INTO Filial
values('28 may')

CREATE TABLE Mehsul(
Id int PRIMARY KEY identity ,
ad nvarchar(70),
alisqiymeti float,
satisqiymeti float,
)
INSERT INTO Mehsul
values('notebook',60,80)
INSERT INTO Mehsul
values('defter',70,90)
INSERT INTO Mehsul
values('qelem',10,20)

CREATE TABLE Isci(
Id int PRIMARY KEY identity ,
SAA nvarchar(25) ,--adi
VezifeId int,
Maas float,
);
CREATE TABLE Satis(
Id int PRIMARY KEY identity ,
MehsulId int references Mehsul(Id) ,
IsciId int references Isci(Id),
FilialId int references Filial(Id),
satistarixi date,
)
select * from Isci
select * from Vezife
select * from Filial
select * from Mehsul
select * from Satis

INSERT INTO Isci
values('sirket1','gunay',500)
INSERT INTO Isci
values('sirket2','fatime',600)
INSERT INTO Isci
values('sirket3','eli',700)
INSERT INTO Isci
values('sirket4','Veli',300)





INSERT INTO Satis
values(1,1,2,1,2013-01-01)
INSERT INTO Satis
values(2,3,1,2,2020-01-01)


--1
SELECT Isci.SAA AS 'ISCI' , Mehsul.ad AS 'MEHSUL' , Filial.Filial, MEHSUL.alisqiymeti,Mehsul.satisqiymeti FROM Satis
INNER JOIN Mehsul
ON mehsul.mehsulId=Satis.Id
JOIN Filial
ON Filial.Id=Satis.Id
JOIN Isci
ON Isci.Id = Satis.IsciId

--2 satis cemini tap






--SELECT (SAA) 
--AS IsciSay FROM Isci

--SELECT * FROM Isci
--ORDER BY MAAS DESC

--SELECT * FROM Mehsul
--ORDER BY alisqiymeti DESC

--SELECT * FROM Satis
--ORDER BY satistarixi
--mehsul satisindan gelen gelir

create database odev

use odev



create table Musteri(
MusteriID int identity(1,1) primary key not null,
MusteriAdi nvarchar(30) not null,
MusteriTel int not null,
);

create table Urun(
UrunID int identity(1,1) primary key not null,
UrunAdi nvarchar(30) not null,
UrunFiyat money not null,
SirketMiktari int not null,
);

create table Tedarikci(
TedarikciID int identity(1,1) primary key not null,
TedarikciAdi nvarchar(40) not null,
TedarikciTel int not null,
TedarikciMail nvarchar(40) not null,
);

create table SatinAlma(
SatinAlmaID int identity(1,1) primary key not null,
OdemeDurum nvarchar(40) not null,
Adet int not null,
SatisFiyati money not null,
);

ALTER TABLE Urun ADD CONSTRAINT fk FOREIGN KEY (TedarikciID) REFERENCES Tedarikci(TedarikciID)


ALTER TABLE SatinAlma ADD CONSTRAINT fk FOREIGN KEY (SatinAlmaID) REFERENCES SatinAlma(SatinAlmaID)

ALTER TABLE Musteri ADD CONSTRAINT fk FOREIGN KEY (MusteriID) REFERENCES Musteri(MusteriD)
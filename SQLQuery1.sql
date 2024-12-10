--create database ödev
--use database ödev



create table Calisan(
CalisanID int identity(1,1) primary key not null,
CalisanAdi nvarchar(30) not null,
CalisanPoz nvarchar(35) not null,
CalisanTel int not null,
CalisanMail nvarchar(40) not null,
);

create table Sirket(
SirketID int identity(1,1) primary key not null,
SirketAdi nvarchar(30) not null,
SirketTel int not null,
SirketMail nvarchar(40) not null,
);

create table proje(
ProjeID int identity(1,1) primary key not null,
ProjeAdi nvarchar(40) not null,
ProjeBasTarihi date not null,
ProjeBitisTarihi date not null,
ProjeButce money not null
);

ALTER TABLE proje ADD CONSTRAINT fk FOREIGN KEY (CalisanID) REFERENCES Calisan(CalisanID)


ALTER TABLE proje ADD CONSTRAINT fk FOREIGN KEY (SirketID) REFERENCES Sirket(SirketID)
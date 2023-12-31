--drop table Kitap;
--drop table Ogrenci;
--drop table Kutuphane;

create table Kutuphane(
id INTEGER,
adi TEXT,
adres Text,
tel text,
PRIMARY key (id AUTOINCREMENT)
);

create table Ogrenci(
id INTEGER,
adi TEXT,
soyadi Text,
tcno TEXT,
primary key(id AUTOINCREMENT)
);

CREATE table Kitap(
id INTEGER,
kutuphane_id INTEGER,
kitap_adi TEXT,
sayfa_sayisi INTEGER,
ogrenci_id INTEGER,
alim_tarihi TEXT,
primary key (id AUTOINCREMENT),
FOREIGN Key (kutuphane_id) REFERENCES Kutuphane(id) 
on update CASCADE on delete CASCADE,
FOREIGN key (ogrenci_id) REFERENCES Ogrenci(id)
on update cascade on delete CASCADE
);





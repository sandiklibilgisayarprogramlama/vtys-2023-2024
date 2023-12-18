create table Musteri(
id INTEGER,
ad Text,
soyad text,
email text,
telefon text,
sehir_id INTEGER,
adres text,
PRIMARY key (id AUTOINCREMENT),
FOREIGN key (sehir_id) REFERENCES Sehir(id)
 on delete set null on update set null
);

create table Ulke(
id INTEGER,
ulke_adi text,
PRIMARY key (id AUTOINCREMENT)
);

create table Sehir (
id INTEGER,
sehir_adi TEXT,
ulke_id INTEGER,
PRIMARY key (id AUTOINCREMENT),
foreign key (ulke_id) REFERENCES Ulke(id)
 on delete CASCADE on update CASCADE
);

create table Siparis(
id INTEGER,
musteri_id INTEGER,
urun_id INTEGER,
adet INTEGER,
tarih TEXT,
PRIMARY key (id AUTOINCREMENT),
FOREIGN key (musteri_id) REFERENCES Musteri(id)
on update CASCADE on delete CASCADE,
FOREIGN key (urun_id) REFERENCES Urun(id)
on delete CASCADE on update CASCADE
);

create table Urun(
id INTEGER,
urun_adi TEXT,
urun_fiyat NUMERIC,
PRIMARY key (id AUTOINCREMENT)
);
create table Personel(
id INTEGER,
ad TEXT,
soyad text,
yas INTEGER,
unvan_id INTEGER,
maas NUMERIC,
PRIMARY key(id AUTOINCREMENT),
FOREIGN key (unvan_id) REFERENCES Unvan(id)
 on update set null on DELETE set null
);

create table Unvan(
id Integer,
unvan_adi TEXT,
primary key(id AUTOINCREMENT)

);
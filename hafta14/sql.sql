--Insert into Ogrenci (adi,soyadi,tcno) values ("Cemil","Bak","56889212333")

--Insert Into Kutuphane (adi,adres,tel) values ("Konak Kütüphanesi","İzmir","05435345345")

--select * from Kutuphane

--Insert into Ogrenci (adi,soyadi,tcno) values ("İbrahim","can","314252342656");
--Insert into Kutuphane (adi,adres,tel) values ("Merkez","Konya","03457345309");
--Insert into Kitap (kutuphane_id,kitap_adi,sayfa_sayisi) values 
--(select id from Kutuphane order by id desc limit 1,"Körlük",340);

--Insert into Ogrenci (adi) values ("İbrahim");

/*
update tablo_ismi set 
degistirilecek_alan_adi = deger,
degistirilecek_diger_alan_adi = deger2
where 
koşul
*/

--update Ogrenci set soyadi = "Uzun" 

--update Ogrenci set tcno="14456789000" where adi like "İ%"

--insert into Ogrenci (tcno) values("34633454331");


---delete from Kutuphane where adres = "İzmir"

/*
delete from tablo_ismi where kosul
*/

--delete from Kitap where 


insert into Ogrenci (adi,soyadi,tcno) values ("ahmet","taş","42423423432");
insert into Kutuphane (adi,adres,tel) values ("merkez","afyon","4324242342");
insert into Kitap (kitap_adi,kutuphane_id,sayfa_sayisi) 
values("Cin ali",(select id from Kutuphane order by id desc limit 1),400);



-- sistem bulunan şehirleri gösteren kod
--select * from sehir;
-- musterileri ada göre sıralayıp tum bilgilerini ekrana yazdıran kod
--select * from Musteri order by ad;
-- telefonu 545 ile başlayan kişilerin ad ve soyad bilgilerini getiren kod
--select ad,soyad from Musteri where telefon like "545%"
-- afyonkarahisar şehrine yapılan şiparişleri gösteren kodu yazınız
/*
-- 1. yol
select * from Siparis where musteri_id in 
(select id from Musteri where sehir_id =
 (select id from Sehir where sehir_adi="Afyonkarahisar") )
 
 join 
 tablo birleştirme işlemleri gerçekleştirilir.
 
 inner join 
 birleştirilecek alan tablolarda dolu bir şekilde ise birleştirme yapılır.

 kalıp :
 select * from birinci_tablo inner join 
 ikinci_tablo on birinci_tablo.id = ikinci_tablo.id 
 
 */
 
 -- 15 aralık 2023 tarihinde sipariş yapan kişinin adı ve soyadı
 /*
 select Musteri.ad,Musteri.soyad from Musteri inner join 
 Siparis on Musteri.id = Siparis.musteri_id
 where Siparis.tarih = "15.12.2023"
 */
 -- 2. yol
 -- afyonkarahisar şehrine yapılan şiparişleri gösteren kodu yazınız
/*
select Musteri.ad, Musteri.soyad,
Siparis.adet, Siparis.tarih,Ulke.ulke_adi, 
Urun.urun_fiyat, Urun.urun_adi
 from Siparis 
inner join Musteri on Musteri.id = Siparis.musteri_id
inner join Sehir on Musteri.sehir_id = Sehir.id
inner join Ulke on sehir.ulke_id= ulke.id
inner join Urun on Siparis.urun_id = Urun.id
where Sehir.sehir_adi = "Afyonkarahisar"
 */
-- adeti 1 den fazla olan siparişlerin hangi ülkeye yapıldığını ekrana getiren 
-- kod

select Ulke.ulke_adi from Ulke
inner join Sehir on sehir.ulke_id = Ulke.id
inner join Musteri on Musteri.sehir_id = Sehir.id
inner join Siparis on Siparis.musteri_id = Musteri.id
where Siparis.adet>1

 
 
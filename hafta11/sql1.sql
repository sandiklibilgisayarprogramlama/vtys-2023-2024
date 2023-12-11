--select -> tabloda veri görüntülemek amaçlı kullanılan sql kodudur.

--select * from Personel;
--select * from Unvan;

-- order by
-- belirli bir alanı sıralamak için kullanılır.
-- asc -> küçükten büyüye
-- desc -> büyükten küçüge

-- maasa göre küçükten büyüge sıralama
--select * from Personel order by maas asc 


-- maasa göre büyükten kucuge sıralama
--select * from Personel order by maas desc 


-- yasa göre büyükten kucuge sıralama
--select * from Personel order by yas desc

-- * tüm sutunları getir
-- tek tek sutunlari getirmek için sutun ismini virgulle ayırarak yazmak gerekir
--select soyad,ad from Personel order by yas desc 

--select ad,soyad from Personel order by ad desc;

-- DISTINCT : aynı sutunda bulunan tekrarlayan yapılardan sadece önce geleni getir.

-- SELECT DISTINCT ad from Personel;


-- where -> koşul belirtmek için kullanılır.

-- personel tablosunda maasi 25 000 e eşit ve yüksek olanların ad ve soyadlarını gösteriniz.
--select ad,soyad from Personel where maas >=25000 

-- yaşı 30 dan buyuk 50 den kucuk olanların ad, soyad ve maas bilgilerini ekrana yazdırın.
-- 1. yol
--select ad,soyad,maas from Personel where  yas >=30 and yas<=50
-- 2. yol
--select ad,soyad,maas from Personel where yas between 30 and 50

--like -> arama yapma amaçlı kullanılır.

-- adı a ile başlayan kişilerin tüm bilgilerini ekrana yazdırınız.
--select * from Personel where ad like "a%"

-- soyadının sonu ş harfi ile bitenleri
--select * from Personel where soyad like "%ş"

-- adının 1. harfi a ikinci harfi y olanları getiriniz.
--select * from Personel where ad like "ay%"

-- adının 2. harfi y olanları getiriniz.

--select * from Personel where ad like "_y%";

-- like "_" tek bir karakter anlamına gelir.
-- like "%" çoklu karakter anlamına gelir.


-- unvanı mudur yada mudur yardımcısı olan kişileri getiriniz.
--1. yol
--select * from Personel where unvan_id = 1 or unvan_id = 2
-- 2. yol
--select * from Personel where unvan_id in (1,2);
-- 3. yol
-- select içinde select sorgusu yazılabilir
--select * from Personel where unvan_id in (select id from Unvan where unvan_adi like "M%" )

-- müdürlerin tüm bilgilerini ekrana getiren sql kodunu yazınız.
--select * from Personel where unvan_id = (select id from Unvan where unvan_adi = "Müdür")

-- limit
-- eğer sorgu sonucun hepsini değilde üstten bir kısmını getirmek istiyorsak kullanılır.

-- maasi en yüksek olan kişinin adını ve soyadını getiriniz.

--select ad,soyad from Personel order by maas desc limit 1;


-- sorgu sonrasında gelen satır sayısını öğrenmek için count kullanılır.

select count(*) from Personel;











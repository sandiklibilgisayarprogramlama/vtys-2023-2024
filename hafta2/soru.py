"""
klavyeden alınan kullanıcı adı ve
şifre bilgilerine göre adsoyad.txt içerisinde
bulunan bilgiler dogruyla ekrana
hoşgeldin adsoyad şekilde çıktı veren
programı kodlayınız.
"""

kullanici_adi=input("Kullanıcı adınızı giriniz: ")
sifre=input("Şifrenizi giriniz: ")

with open("adsoyad.txt","r") as dosya:
    veriler=dosya.readlines()
    dosya.close()

for satir in veriler:
    alanlar=satir.split(";")
    if alanlar[0]==kullanici_adi and alanlar[1]==sifre:
        print("Hoşgeldin",alanlar[2])
        break
    

print("program sonlandı")
ad="ali"
soyad="uzun"
yas=20

# github copilot

# w -> yazma - eğer dosya yoksa oluşturur varsa üzerine yazar
# r -> okuma
# a -> ekleme

#\n -> alt satıra geçme

with open("veri.txt","w") as dosya:
    dosya.write("ad,soyad,yas\n")
    dosya.write(ad+","+soyad+","+str(yas)+"\n")
    dosya.write("ahmet,yılmaz,20\n")
    dosya.write("ali,yılmaz,30\n")
    dosya.close()

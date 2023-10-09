with open("veri.txt","r") as dosya:
    veriler=dosya.readlines()
    dosya.close()

# ['ad,soyad,yas\n', 'ali,uzun,20\n',
#  'ahmet,yılmaz,20\n']
# adı ali olan kişilerin yasını ekrana yaz
for eleman in veriler:
    sutunlar=eleman.split(",")
    if sutunlar[0]=="ahmet":
        print(sutunlar[1])


# SQL
# Structured Query Language
# Sqlite
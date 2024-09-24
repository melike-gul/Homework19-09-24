SELECT Ogrenciler.Ad, Ogrenciler.Soyad, Bolumler.BolumAdi, Dersler.DersAdi, OgrenciNotları.Notu
FROM OgrenciNotlari
JOIN Ogrenciler ON OgrenciNotlari.OgrenciID = Ogrenciler.OgrenciID
JOIN Dersler On OgrenciNotlari.DersID = Dersler.DersID
JOIN Bolumler ON Ogrenciler.BolumID = Bolumler.BolumID
WHERE OgrenciNotlari.Notu = (SELECT MAX(Notu) FROM OgrenciNotlari);
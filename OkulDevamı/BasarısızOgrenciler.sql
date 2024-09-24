SELECT Ogrenciler.Ad, Ogrenciler.Soyad, Bolumler.BolumAdi, Dersler.DersAdi, OgrenciNotlari.Notu
FROM OgrenciNotlari
JOIN Ogrenciler ON OgrenciNotlari.OgrenciID = Ogrenciler.OgrenciID
JOIN Dersler ON OgrenciNotlari.DersID = Dersler.DersID
JOIN Bolumler ON Ogrenciler.BolumID = Bolumler.BolumID
WHERE OgrenciNotlari.Notu < 50;
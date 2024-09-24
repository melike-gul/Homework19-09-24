SELECT Ogretmenler.Ad As OgretmenAdi, Dersler.DersAdi, Ogrenciler.Ad AS OgrenciAdi
FROM OgretmenDersler
JOIN Ogretmenler ON OgretmenDersler.OgretmenID = Ogretmenler.OgretmenID
JOIN Dersler ON OgretmenDersler.DersID = Dersler.DersID
JOIN OgrenciNotlari ON Dersler.DersID = OgrenciNotlari.DersID
JOIN Ogrenciler ON OgrenciNotlari.OgrenciID = Ogrenciler.OgrenciID;
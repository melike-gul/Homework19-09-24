SELECT KitapAdi, Yazar, YayınYılı
FROM Kitaplar;

SELECT KitapAdi, Yazar
FROM Kitaplar
WHERE YayınYılı > 2000;

SELECT Ogrenciler.Ad, Ogrenciler.Soyaf, Kitaplar.KitapAdi
FROM OduncAlmalar
JOIN Ogrenciler ON OduncAlmalar.OgrenciID = Ogrenciler.OgrenciID
JOIN Kitaplar ON OduncAlmalar.KitapID = Kitaplar.KitapID;

SELECT TOP 5 KitapAdi, SayfaSayisi
FROM Kitaplar
ORDER  BY SayfaSayisi DESC


SELECT KitapAdi
FROM Kitaplar
WHERE Yazar = 'Orhan Pamuk';

SELECT Ogrenciler.Ad, Ogrenciler.Soyad, Dergiler.DergiAdi, Dergiler.Yayınci
FROM OduncAlmalar
JOIN Ogrenciler ON OduncAlmalar.OgrenciID = Ogrenciler.OgrenciID
JOIN Dergiler ON OduncAlmalar.DergiID = Dergiler.DergiID;

SELECT Ogrenciler.Ad, Ogrenciler.Soyad
FROM Ogrenciler
LEFT JOIN OduncAlmalar ON Ogrenciler.OgrenciID = OduncAlmalar.OgrenciID
WHERE OduncAlmalar.OgrenciID IS NULL;

SELECT KitapID, COUNT(*) AS OduncSayisi
FROM OduncAlmalar
WHERE KitapID IS NOT NULL
GROUP BY KitapID
UNION
SELECT DergiID, COUNT(*) AS OduncSayisi
FROM OduncAlmalar
WHERE DergiID IS NOT NULL
GROUP BY DeegiID
UNION
SELECT DVDID, COUNT(*) AS OduncSayisi
FROM OduncAlmalar
WHERE DVDID IS NOT NULL
GROUP BY DVDID;

SELECT TOP 3 KitapAdi, YayınYılı
FROM Kitaplar
ORDER BY YayınYılı ASC;

SELECT Kitaplar.KitapAdi, Dergiler.DergiAdi, DVDler.DVDAdi 
FROM Ogrenciler 
JOIN OduncAlmalar ON Ogrenciler.OgrenciID = OduncAlmalar.OgrenciID 
LEFT JOIN Kitaplar ON OduncAlmalar.KitapID = Kitaplar.KitapID 
LEFT JOIN Dergiler ON OduncAlmalar.DergiID = Dergiler.DergiID 
LEFT JOIN DVDler ON OduncAlmalar.DVDID = DVDler.DVDID 
WHERE Ogrenciler.Ad = 'Ali' AND Ogrenciler.Soyad = 'Yılmaz';
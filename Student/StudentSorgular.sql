SELECT o.OgrenciID, o.Ad, o.Soyad, k.KulupAdi
FROM OgrenciKulup ok
JOIN Kulupler k ON ok.KulupID = k.KulupID
JOIN Ogrenciler o ON ok.OgrenciID = o.OgrenciID;

SELECT o.Ad, o.Soyad, ok.Rol
FROM OgrenciKulup ok
JOIN Kulupler k ON ok.KulupID = k.KulupID
JOIN Ogrenciler o ON ok.OgrenciID = o.OgrenciID
WHERE k.KulupAdi = 'Tiyatro Kulübü';

SELECT o.Ad, o.Soyad
FROM OgrenciKulup ok
JOIN Ogrenciler o ON ok.OgrenciID = o.OgrenciID
WHERE ok.Rol = 'Başkan';

SELECT k.KulupAdi, COUNT(*) AS UyeSayisi
FROM OgrenciKulup ok
JOIN Kulupler k ON ok.KulupID = k.KulupID
GROUP BY k.KulupAdi;
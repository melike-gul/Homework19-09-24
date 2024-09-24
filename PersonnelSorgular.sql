SELECT p.Ad, p.Soyad, p.Pozisyon, m.MaasMiktari
FROM Personel p 
JOIN Maaslar m ON p.PersonelID = m.PersonelID
WHERE m.GuncellemeTarihi = (
    SELECT MAX(GuncellemeTarihi)
    FROM Maaslar
    WHERE PersonelID = p.PersonelID
);

SELECT AVG(MaasMiktari) AS OrtalamaMaas
From Maaslar
WHERE GuncellemeTarihi IN (
    SELECT MAX(GuncellemeTarihi)
    FROM Maaslar
    GROUP BY PersonelID
);

SELECT Pozisyon, MAX(MaasMiktari) AS EnYuksekMaas, MIN(MaasMiktari) AS EnDusukMaas
FROM Personel p 
JOIN Maaslar m ON p.PersonelID = m.PersonelID
WHERE GuncellemeTarihi IN (
    SELECT MAX(GuncellemeTarihi) FROM Maaslar GROUP BY PersonelID
)
GROUP BY Pozisyon;

SELECT Ad, Soyad, Pozisyon
FROM Personel;

SELECT Pozisyon, COUNT(*) AS PersonelSayisi
FROM Personel
Group BY Pozisyon;

SELECT p.Ad, p.Soyad, m.MaasMiktari, m.GuncellemeTarihi
FROM Personel p 
JOIN Maaslar m ON p.PersonelID = m.PersonelID
WHERE m.GuncellemeTarihi = (
    SELECT MAX(GuncellemeTarihi)
    FROM Maaslar
    WHERE PersonelID = p.PersonelID
);

SELECT Ad, Soyad
FROM Personel
WHERE Pozisyon = 'Öğretmen';

SELECT AVG(MaasMiktari) AS OrtalamaMaas
FROM Maaslar
WHERE GuncellemeTarihi IN (
    SELECT MAX(GuncellemeTarihi) FROM Maaslar GROUP BY PersonelID
);

SELECT TOP 1 p.Ad, p.Soyad, m.MaasMiktari
FROM Personel p
JOIN Maaslar m ON p.PersonelID = m.PersonelID
WHERE m.GuncellemeTarihi = (
    SELECT MAX(GuncellemeTarihi) 
    FROM Maaslar 
    WHERE PersonelID = p.PersonelID
)
ORDER BY m.MaasMiktari DESC;

SELECT MaasMiktari, GuncellemeTarihi
FROM Maaslar
WHERE PersonelID = 2
ORDER BY GuncellemeTarihi ASC;

SELECT Pozisyon, MAX(MaasMiktari) AS EnYuksekMaas, MIN(MaasMiktari) AS EnDusukMaas
FROM Personel p 
JOIN Maaslar m ON p.PersonelID = m.PersonelID
WHERE m.GuncellemeTarihi = (
    SELECT MAX(GuncellemeTarihi)
    FROM Maaslar
    WHERE PersonelID = p.PersonelID
)
GROUP BY Pozisyon;

SELECT p.Ad, P.Soyad, m.GuncellemeTarihi
FROM Personel p 
JOIN Maaslar m ON p.PersonelID = m.PersonelID
WHERE m.GuncellemeTarihi >= DATEADD(MONTH, -6, GETDATE());

SELECT p.Ad, p.Soyad, COUNT(m.MaasID) AS MaasGuncellemeSayisi
FROM Personel p 
JOIN Maaslar m ON p.PersonelID = m.PersonelID
GROUP BY p.PersonelID, p.Ad, p.Soyad
HAVING COUNT(m.MaasID) >= 2;
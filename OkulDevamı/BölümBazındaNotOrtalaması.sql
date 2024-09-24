SELECT BolumID, AVG(Notu) AS OrtalamaNot
FROM OgrenciNotlari
GROUP BY BolumID;
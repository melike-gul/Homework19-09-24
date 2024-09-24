
CREATE TABLE Kitaplar(
    KitapID INT PRIMARY KEY,
    KitapAdi VARCHAR(100),
    Yazar VARCHAR(100),
    YayınYılı INT,
    SayfaSayisi INT,
    ISBN VARCHAR(13)
);

CREATE TABLE DERGİLER (
    DergiID INT PRIMARY KEY,
    DergiAdi VARCHAR(255),
    Yayınci VARCHAR(255),
    YayınTarihi DATE,
    Sayi INT
);

CREATE TABLE DVDler (
    DVDID INT PRIMARY KEY,
    DVDAdi VARCHAR(100),
    Yönetmen VARCHAR(100),
    YayınYılı INT,
    Süre INT 
);

CREATE TABLE OduncAlmalar(
    OgrenciID INT,
    KitapID INT,
    DergiID INT,
    DVDID INT,
    OduncTarihi DATE,
    PRIMARY KEY (OgrenciID, KitapID, DergiID, DVDID)
);
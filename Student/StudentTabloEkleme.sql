CREATE TABLE Kulupler (
    KulupID INT PRIMARY KEY ,
    KulupAdi VARCHAR(70),
    KurulusYili INT
);

CREATE TABLE OgrenciKulup (
    OgrenciID INT,
    KulupID INT,
    Rol VARCHAR(20),
    KatilimTarihi DATE,
    PRIMARY KEY (OgrenciID, KulupID),
    FOREIGN KEY (KulupID) REFERENCES Kulupler(KulupID)
);

CREATE TABLE Ogrenciler (
    OgrenciID INT PRIMARY KEY,
    Ad VARCHAR(50),
    Soyad VARCHAR(50)
);
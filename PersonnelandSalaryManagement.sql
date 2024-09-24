CREATE TABLE Personel (
    PersonelID INT PRIMARY KEY IDENTITY(1,1),
    Ad VARCHAR(50),
    Soyad VARCHAR(50),
    Pozisyon VARCHAR(50),
    BaslangicTarihi DATE
);

CREATE TABLE Maaslar (
    MaasID INT PRIMARY KEY IDENTITY(1,1),
    PersonelID INT,
    MaasMiktari DECIMAL(10, 2),
    GuncellemeTarihi DATE,
    FOREIGN KEY (PersonelID) REFERENCES Personel(PersonelID)
);
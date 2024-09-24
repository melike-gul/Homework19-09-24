INSERT INTO Kulupler (KulupID, KulupAdi, KurulusYili)
VALUES 
    (1, 'Tiyatro Kulübü', 2010),
    (2, 'Müzik Kulübü', 2012),
    (3, 'Spor Kulübü', 2015),
    (4, 'Bilim Kulübü', 2018),
    (5, 'Sanat Kulübü', 2019);


INSERT INTO OgrenciKulup (OgrenciID, KulupID, Rol, KatilimTarihi)
VALUES
(101, 1, 'Başkan', '2023-01-15'),
(102, 1, 'Üye', '2023-02-10'),
(103, 1, 'Sekreter', '2023-03-05'),
(104, 2, 'Başkan', '2023-01-20'),
(105, 2, 'Üye', '2023-02-15'),
(106, 2, 'Üye', '2023-03-10'),
(107, 3, 'Başkan', '2023-01-25'),
(108, 3, 'Üye', '2023-02-20'),
(109, 3, 'Sekreter', '2023-03-15'),
(110, 4, 'Başkan', '2023-01-30'),
(111, 4, 'Üye', '2023-02-25'),
(112, 5, 'Üye', '2023-03-20'),
(113, 5, 'Sekreter', '2023-01-05'),
(114, 2, 'Üye', '2023-01-12'),
(115, 4, 'Üye', '2023-02-28');

INSERT INTO Ogrenciler (OgrenciID, Ad, Soyad)
VALUES
    (101, 'Ahmet', 'Yılmaz'),
    (102, 'Ayşe', 'Kaya'),
    (103, 'Mehmet', 'Ali'),
    (104, 'Fatma', 'Çelik'),
    (105, 'Ali', 'Veli'),
    (106, 'Zeynep', 'Gül'),
    (107, 'Mustafa', 'Kemal'),
    (108, 'Elif', 'Demir'),
    (109, 'Deniz', 'Akbaş'),
    (110, 'Can', 'Yılmaz'),
    (111, 'Su', 'Kaya'),
    (112, 'Toprak', 'Ali'),
    (113, 'Gökçe', 'Çelik'),
    (114, 'Efe', 'Veli'),
    (115, 'Nazlı', 'Gül');
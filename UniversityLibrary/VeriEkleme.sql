INSERT INTO Kitaplar (KitapID, KitapAdi, Yazar, YayınYılı, SayfaSayisi, ISBN)
VALUES 
(1, 'Masumiyet Müzesi', 'Orhan Pamuk',2008, 592,'978975081299'),
(2, 'Kürk Mantolu Madonna', 'Sabahattin Ali', 1943, 160,'9789750806357'),
(3, ' Tutunamayanlar', 'Oğuz Atay', 1972,724,'9789750805183'),
(4, 'Benim Adım Kırmızı', 'Orhan Pamuk', 1998, 463,'9789754700118'),
(6, ' Kayıp Zamanın İzinde', 'Marcel Proust',1913, 468,'9789754700176'),
(5, 'Bülbülü Öldürmek', 'Haper Lee',1960, 336,'9789754700152'),
(6, 'Saatleri Ayarlama Enstitüsü', 'Ahmet Hamdi Tanpınar', 1961,376,'9789750807798'),
(7, 'Anayurt Oteli', 'Yusuf Atılgan', 1973,119,'9789754700118'),
(8, 'Tehlikeli Oyunlar', 'Oğuz Atay',1973,432,'9789754700446'),
(9, 'İnce Memed', 'Yaşar Kemal',1864,136,'9789750800744'),
(10, 'Yeraltından Notlar ', 'Fyodor Dostoyevski ',1864, 136,'9789750806654'),
(11, 'Kavgam', 'Adolf Hitler ',1925, 832,'9789756698108'),
(12, 'Suç ve Ceza', 'Fyodor Dostoyevski',1866, 704,'9789750701161'),
(13, 'Beyaz Kale', 'Orhan Pamuk',1985, 187,'9789754700118'),
(14, 'Yaban', 'Yakuo Kadri Karaosmanoğlu',1932,214,'9789754700248'),
(15, 'Denemeler', 'Michel de Montaigne',1580, 538,'9789754701085'),
(16, 'Sineklerin Tanrısı', 'Wiliam Golding',1954, 261,'9789754700134'),
(17, 'Körlük', 'Jose Saramago', 1995,352,'9789754700034'),
(18, 'Dönüşüm', ' Franz Kafka', 1915, 104,'9789754700127'),
(19, 'Hayvan Çiftliği', ' George Orwell', 1945, 152,'9789754700293'),
(20, '1984', 'George Orwell ', 1949, 352,'9789754700286');

INSERT INTO Dergiler (DergiID, DergiAdi, Yayınci, YayınTarihi, Sayi)
VALUES
(1, 'Bilim ve Teknik', 'TÜBİTAK', '2023-01-15',791),
(2, 'Atlas', 'Doğan Burda', '2023-02-01',329),
(3, 'National Geographic Türkiye', 'National Georaphic', '2023-03-01',279),
(4, 'Popular cience Türkiye ', 'GEO Türkiye', '2023-04-10',97),
(5, 'Leman', 'Leman Yayıncılık', '2023-05-01',1224);

INSERT INTO DVDLer (DVDID, DVDAdi, Yönetmen, YayınYılı, Süre)
VALUES
(1, 'Babam ve Oğlum', 'Çağan Irmak', 2005,112),
(2, 'Ayla', 'Can Ulkay',2017, 125),
(3, 'Kış Uykusu', 'Nuri Bilge Ceylan', 2014, 196),
(4, 'G.O.R.A', 'Ömer Faruk Sorak', 2004, 127),
(5, 'Vizontele', 'Yılmaz Erdoğan', 2001, 110);

INSERT INTO OduncAlmalar (OgrenciID, KitapID, DergiID, DVDID, OduncTarihi)
VALUES
(1, 1, NULL, NULL, '2023-09-10'),
(2, NULL, 1, NULL, '2023-09-12'),
(3, NULL, NULL, 1, '2023-09-15'),
(4, 2, NULL, NULL, '2023-09-18'),
(5, NULL, 2, NULL, '2023-09-19'),
(6, NULL, NULL, 2, '2023-09-20'),
(7, 3, NULL, NULL, '2023-09-22'),
(8, NULL, 3, NULL, '2023-09-23'),
(9, NULL, NULL, 3, '2023-09-24'),
(10, 4, NULL, NULL, '2023-09-25');
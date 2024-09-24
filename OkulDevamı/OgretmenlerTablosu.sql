CREATE TABLE OgretmenDersler (
    OgretmenID INT,
    DersID INT,
    PRIMARY KEY (OgretmenID, DersID)
);

INSERT INTO OgretmenDersler (OgretmenID, DersID)
VALUES
(1, 101),
(1, 102),
(2, 103),
(2, 104),
(3, 105),
(3, 106),
(4, 107),
(5, 108);
-- Legg til nye rader i tabellen okt, med oktID som starter på 1
INSERT INTO okt (oktID, oktType, brukerID, dato) VALUES
(1, 'Styrkeøkt', 1, '2024-03-10'),
(2, 'Kondisjonsøkt', 1, '2024-03-11'),
(3, 'Aktiv-hviledag', 1, '2024-03-12'),
(4, 'Styrkeøkt', 1, '2024-03-13'),
(5, 'Kondisjonsøkt', 1, '2024-03-14'),
(6, 'Aktiv-hviledag', 1, '2024-03-15'),
(7, 'Konkurranse', 1, '2024-03-16'),
(8, 'Kondisjonsøkt', 2, '2024-03-10'),
(9, 'Styrkeøkt', 2, '2024-03-11'),
(10, 'Konkurranse', 2, '2024-03-12'), -- Endret fra 'Aktiv-hviledag' til 'Konkurranse'
(11, 'Kondisjonsøkt', 2, '2024-03-13'),
(12, 'Styrkeøkt', 2, '2024-03-14'),
(13, 'Konkurranse', 2, '2024-03-15'), -- Endret fra 'Aktiv-hviledag' til 'Konkurranse'
(14, 'Styrkeøkt', 2, '2024-03-16'),
(15, 'Styrkeøkt', 3, '2024-03-10'),
(16, 'Kondisjonsøkt', 3, '2024-03-11'),
(17, 'Konkurranse', 3, '2024-03-12'), -- Endret fra 'Aktiv-hviledag' til 'Konkurranse'
(18, 'Styrkeøkt', 3, '2024-03-13'),
(19, 'Kondisjonsøkt', 3, '2024-03-14'),
(20, 'Konkurranse', 3, '2024-03-15'), -- Endret fra 'Aktiv-hviledag' til 'Konkurranse'
(21, 'Konkurranse', 3, '2024-03-16');
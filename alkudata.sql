-- User-tauluun esimerkkidataa
INSERT INTO user (id, fname, lname, token, is_using_drone) VALUES
(1, 'Matti', 'Meikäläinen', 'abc123', 0),
(2, 'Kaisa', 'Virtanen', 'def456', 1),
(3, 'Pekka', 'Korhonen', 'ghi789', 0),
(4, 'Sanna', 'Lehtinen', 'jkl012', 1),
(5, 'Tuomas', 'Laine', 'mno345', 0),
(6, 'Emma', 'Salonen', 'pqr678', 1),
(7, 'Antti', 'Heikkinen', 'stu901', 0);

-- Drone-tauluun esimerkkidataa
INSERT INTO drone (id, brand, model) VALUES
(1, 'DJI', 'Phantom 4'),
(2, 'Parrot', 'Anafi'),
(3, 'Autel', 'EVO II'),
(4, 'DJI', 'Mavic Air 2'),
(5, 'Yuneec', 'Typhoon H'),
(6, 'Skydio', '2+'),
(7, 'DJI', 'Inspire 2');

-- Drone Usage -tauluun esimerkkidataa
INSERT INTO drone_usage (id, start_time, end_time, drone_id, user_id) VALUES
(1, '2024-11-01 10:00:00', '2024-11-01 12:00:00', 1, 2),
(2, '2024-11-02 09:00:00', NULL, 2, 1),
(3, '2024-11-03 14:00:00', '2024-11-03 16:00:00', 3, 4),
(4, '2024-11-04 11:00:00', '2024-11-04 13:00:00', 4, 5),
(5, '2024-11-05 15:00:00', '2024-11-05 17:00:00', 5, 6),
(6, '2024-11-06 08:00:00', '2024-11-06 10:00:00', 6, 7),
(7, '2024-11-07 13:00:00', NULL, 7, 3);

-- Picture-tauluun esimerkkidataa
INSERT INTO picture (id, name, analysis, lat, lon, datetime, drone_id, user_id) VALUES
(1, 'Kuva1', 'Analysis of field', 60.1699, 24.9384, '2024-11-01 10:30:00', 1, 2),
(2, 'Kuva2', 'Tree health analysis', 60.1921, 24.9458, '2024-11-01 11:00:00', 1, 2),
(3, 'Kuva3', 'Building inspection', 60.2037, 24.9613, '2024-11-02 09:30:00', 2, 1),
(4, 'Kuva4', 'Bridge stability check', 60.2200, 24.9300, '2024-11-03 14:30:00', 3, 4),
(5, 'Kuva5', 'Forest survey', 60.2500, 24.8900, '2024-11-04 11:45:00', 4, 5),
(6, 'Kuva6', 'Road condition analysis', 60.2700, 24.8500, '2024-11-05 15:30:00', 5, 6),
(7, 'Kuva7', 'Power line inspection', 60.3000, 24.8200, '2024-11-06 08:45:00', 6, 7)
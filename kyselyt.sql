-- 1. Kuka käyttää dronea
SELECT u.fname, u.lname, d.brand, d.model
FROM drone_usage du
JOIN user u ON du.user_id = u.id
JOIN drone d ON du.drone_id = d.id
WHERE du.end_time IS NULL;

-- 2. Onko drone vapaana
SELECT d.id, d.brand, d.model
FROM drone d
LEFT JOIN drone_usage du ON d.id = du.drone_id AND du.end_time IS NULL
WHERE du.id IS NULL;

-- 3. Dronen ottamat kuvat ja niiden käyttäjät
SELECT p.name AS picture_name, p.datetime, u.fname, u.lname, d.brand, d.model
FROM picture p
JOIN user u ON p.user_id = u.id
JOIN drone d ON p.drone_id = d.id;

-- 4. Kuvan ottanut drone, kuvan analyysi, käyttäjä, ajankohta ja paikkatiedot
SELECT p.name AS picture_name, p.analysis, p.datetime, p.lat, p.lon, u.fname, u.lname, d.brand, d.model
FROM picture p
JOIN user u ON p.user_id = u.id
JOIN drone d ON p.drone_id = d.id;

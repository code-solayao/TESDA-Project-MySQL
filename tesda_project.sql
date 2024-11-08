/* CREATE TABLE IF NOT EXISTS initial_records (
	id INT AUTO_INCREMENT, 
	last_name VARCHAR(50) NOT NULL, 
    first_name VARCHAR(50) NOT NULL, 
    middle_initial CHAR(10), 
    suffix CHAR(10), 
    sex VARCHAR(50) NOT NULL, 
    birthdate DATE, 
    address VARCHAR(255), 
    qualification VARCHAR(255) NOT NULL, 
    tvi_name VARCHAR(255) NOT NULL, 
    district VARCHAR(255) NOT NULL, 
    city VARCHAR(255) NOT NULL, 
    scholarship_type VARCHAR(255) NOT NULL, 
    graduation_year INT NOT NULL, 
    PRIMARY KEY(id)
);
*/

/*
DELIMITER //
CREATE PROCEDURE check_fullname(IN _last VARCHAR(50), IN _first VARCHAR(50), IN _middle CHAR(10), IN _suffix CHAR(10))
BEGIN
	SELECT UPPER(last_name), UPPER(first_name), UPPER(middle_initial), UPPER(suffix) FROM initial_records 
    WHERE last_name = _last AND first_name = _first AND middle_initial = _middle AND suffix = _suffix;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE submit_data(IN _lastname VARCHAR(50), IN _firstname VARCHAR(50), IN _middleinitial CHAR(10), IN _suffix CHAR(10), IN _sex VARCHAR(50), IN _birthdate DATE, 
								IN _address VARCHAR(255), IN _qualification VARCHAR(255), IN _tviname VARCHAR(255), IN _district VARCHAR(255), IN _city VARCHAR(255), 
                                IN _scholarshiptype VARCHAR(255), IN _graduationyear INT)
BEGIN
	INSERT INTO initial_records (last_name, first_name, middle_initial, suffix, sex, birthdate, address, qualification, tvi_name, district, city, scholarship_type, graduation_year) 
    VALUES (_lastname, _firstname, _middleinitial, _suffix, _sex, _birthdate, _address, _qualification, _tviname, _district, _city, _scholarshiptype, _graduationyear);
END//
DELIMITER ;
*/

/*
RENAME TABLE scholarship_employment TO initial_records;
ALTER TABLE initial_records ADD verification_status VARCHAR(50);
ALTER TABLE initial_records ADD contact_number INT AFTER birthdate;
ALTER TABLE initial_records DROP COLUMN verification_status;
ALTER TABLE initial_records CHANGE middle_initial middle_name VARCHAR(50);
ALTER TABLE initial_records MODIFY COLUMN qualification VARCHAR(50);
*/

-- CALL update_data(1, "Solayao", "Dave Andrew", "A.", "", "Male", "2001-07-03", "Blk. 21 Lot 15, Berkeley Heights Subd., Brgy. Pulong Sta. Cruz, Sta. Rosa City, Laguna", "BSIT", "STI College Sta. Rosa", "N/A", "Santa Rosa", "PWSP", 2024);

-- TRUNCATE TABLE initial_records;
-- DROP TABLE initial_records;

-- SET AUTOCOMMIT = ON;
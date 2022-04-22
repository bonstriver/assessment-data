CREATE TABLE `Animals` (
	`animal_id` INT NOT NULL AUTO_INCREMENT,
	`animal_name` varchar(50) NOT NULL,
	`species` varchar(50) NOT NULL,
	`animal_age` INT NOT NULL,
	`adopted_by` INT,
	`location` INT,
	PRIMARY KEY (`animal_id`)
);

CREATE TABLE `Species` (
	`species_id` INT NOT NULL AUTO_INCREMENT,
	`species_name` varchar(50) NOT NULL,
	`about_species` varchar(200) NOT NULL,
	PRIMARY KEY (`species_id`)
);

CREATE TABLE `Applicants` (
	`applicant_id` INT NOT NULL AUTO_INCREMENT,
	`applicant_name` varchar(50) NOT NULL,
	`applicant_age` INT NOT NULL,
	`looking_for` INT NOT NULL,
	PRIMARY KEY (`applicant_id`)
);

CREATE TABLE `Shelters` (
	`shelter_id` INT NOT NULL AUTO_INCREMENT,
	`shelter_name` varchar(50) NOT NULL,
	`shelter_location` varchar(75) NOT NULL,
	PRIMARY KEY (`shelter_id`)
);

ALTER TABLE `Animals` ADD CONSTRAINT `Animals_fk0` FOREIGN KEY (`species`) REFERENCES `Species`(`species_id`);

ALTER TABLE `Animals` ADD CONSTRAINT `Animals_fk1` FOREIGN KEY (`adopted_by`) REFERENCES `Applicants`(`applicant_id`);

ALTER TABLE `Animals` ADD CONSTRAINT `Animals_fk2` FOREIGN KEY (`location`) REFERENCES `Shelters`(`shelter_id`);

ALTER TABLE `Applicants` ADD CONSTRAINT `Applicants_fk0` FOREIGN KEY (`looking_for`) REFERENCES `Species`(`species_id`);





DROP DATABASE drugdb;
CREATE DATABASE drugdb;
USE drugdb;


CREATE TABLE centers (
	location		VARCHAR(50)		NOT NULL PRIMARY KEY)
DEFAULT CHARACTER SET utf8;

CREATE TABLE managers (
	mid			VARCHAR(15)		NOT NULL PRIMARY KEY,
	email		VARCHAR(50),
	ctr_loc		CHAR(32)		NOT NULL,
	FOREIGN KEY (ctr_loc) REFERENCES centers (location)
		ON DELETE CASCADE	ON UPDATE CASCADE)
DEFAULT CHARACTER SET utf8;

CREATE TABLE drugs (
	dname		VARCHAR(50)		NOT NULL PRIMARY KEY)
DEFAULT CHARACTER SET utf8;

CREATE TABLE  local_stocks (
	ctr_loc		VARCHAR(50)		NOT NULL,
	dname		VARCHAR(50)		NOT NULL,
	par_lvl		INT				DEFAULT 30,
	flag		CHAR(5)			DEFAULT FALSE,
	PRIMARY KEY (ctr_loc, dname),
	FOREIGN KEY (ctr_loc) REFERENCES centers (location)
		ON DELETE CASCADE	ON UPDATE CASCADE,
	FOREIGN KEY (dname) REFERENCES drugs (dname)
		ON DELETE CASCADE	ON UPDATE CASCADE)
DEFAULT CHARACTER SET utf8;

CREATE TABLE data_points (
	ctr_loc	VARCHAR(50)			NOT NULL,
	dname		VARCHAR(50)		NOT NULL,
	time_stamp	TIMESTAMP		NOT NULL,
	count		CHAR(32)		DEFAULT NULL,
	PRIMARY KEY(ctr_loc, dname, time_Stamp),
	FOREIGN KEY (ctr_loc) REFERENCES centers (location)
		ON DELETE CASCADE	ON UPDATE CASCADE,
	FOREIGN KEY (dname) REFERENCES drugs (dname)
		ON DELETE CASCADE	ON UPDATE CASCADE)
DEFAULT CHARACTER SET utf8;

CREATE TABLE batches (
	dname		VARCHAR(50)		NOT NULL,
	bid			INT				NOT NULL,
	ctr_loc	VARCHAR(50)			NOT NULL,
	exp_date	DATE,
	PRIMARY KEY (dname, bid, ctr_loc),
	FOREIGN KEY (ctr_loc) REFERENCES centers (location)
		ON DELETE CASCADE	ON UPDATE CASCADE,
	FOREIGN KEY (dname) REFERENCES drugs (dname)
		ON DELETE CASCADE	ON UPDATE CASCADE)
DEFAULT CHARACTER SET utf8;

INSERT INTO centers SET
	location = 'Sarasota';

INSERT INTO managers SET
	mid = 'Manager01',
	email = 'example@example.com',
	ctr_loc = 'Sarasota';

INSERT INTO drugs SET 
	dname = 'Asprin';

INSERT INTO local_stocks SET
	ctr_loc = 'Sarasota',
	dname = 'Asprin';

INSERT INTO data_points SET
	ctr_loc = 'Sarasota',
	dname = 'Asprin',
	time_stamp = '2014-02-25 03:14:07',
	count = 1;
	
INSERT INTO data_points SET
	ctr_loc = 'Sarasota',
	dname = 'Asprin',
	time_Stamp = '2014-01-25 03:14:07',
	count = 2;

INSERT INTO data_points SET
	ctr_loc = 'Sarasota',
	dname = 'Asprin',
	time_stamp = '2013-12-25 03:14:07',
	count = 3;

INSERT INTO batches SET
	dname = 'Asprin',
	ctr_loc = 'Sarasota',
	bid = 1,
	exp_date = '2014-02-28';

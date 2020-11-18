-- Description: This is users sql file which will be helpful to store the
--              information such as id, password, first name, last name
--              email address, last access, enrol date, enabled type and
--              user type.


-- Create extension if not exists pgcrypto;

DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Faculty;
DROP TABLE IF EXISTS Users;
CREATE TABLE users(

	Id BIGINT PRIMARY KEY not null,
	Password VARCHAR(40),
	FirstName VARCHAR(30),
	LastName VARCHAR(30),
	EmailAddress VARCHAR(50),
	LastAccess DATE,
	EnrolDate DATE,
	Enabled BOOLEAN,
	Type CHAR(1)
);
ALTER TABLE users OWNER TO webd4201_admin;

INSERT INTO users(Id , Password, FirstName, LastName, EmailAddress,
		LastAccess, EnrolDate, Enabled, Type)
    VALUES (100648840, ENCODE(DIGEST('password1','sha1'), 'hex'),
		'Vishwa', 'Bhavsar', 'vishwa.bhavsar@dcmail.ca',
		'2018/06/05', '2019/01/30', true, 's');

INSERT INTO users(Id , Password, FirstName, LastName, EmailAddress,
		LastAccess, EnrolDate, Enabled, Type)
    VALUES (100111112, ENCODE(DIGEST('password','sha1'), 'hex'),
		'Mike', 'Jones', 'mike.jones@dcmail.ca',
		'2018/09/11', '2019/01/23', true, 's');

INSERT INTO users(Id , Password, FirstName, LastName, EmailAddress,
		LastAccess, EnrolDate, Enabled, Type)
    VALUES (100111110, ENCODE(DIGEST('password','sha1'), 'hex'),
		'Nitya', 'Savaliya', 'nitya.savaliya@dcmail.ca',
		'2019/01/01', '2019/01/30', true, 's');

INSERT INTO users(Id , Password, FirstName, LastName, EmailAddress,
		LastAccess, EnrolDate, Enabled, Type)
    VALUES (100111001, ENCODE(DIGEST('password1','sha1'), 'hex'),
		'Darren', 'Puffer', 'darren.puffer@dcmail.ca',
		'2003/01/01', '2019/01/31', true, 'f');

INSERT INTO users(Id , Password, FirstName, LastName, EmailAddress,
		LastAccess, EnrolDate, Enabled, Type)
    VALUES (100001011, ENCODE(DIGEST('password2','sha1'), 'hex'),
		'Thom', 'MacDonald', 'thom.macdonald@dcmail.ca',
		'2004/12/01', '2019/01/27', true, 'f');



--SELECT * FROM users;

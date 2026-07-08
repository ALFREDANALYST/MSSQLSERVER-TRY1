USE SQL1;

CREATE TABLE students (
	student_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstName varchar(30),
    lastName varchar(30),
    address1 varchar(100),
    city varchar(50),
    state varchar(2),
    zipCode varchar(5),
    email varchar(50),
    phone varchar(12)
);

CREATE TABLE grades (
	student_id int,
    semester_id int,
    subject int,
    grade varchar(1)
);

CREATE TABLE semesters (
	semester_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    semesterName varchar(20)
);

CREATE TABLE demerits (
	student_id int,
    semester_id int,
    reason varchar(50),
    parentSignedSlip varchar(2)
);

CREATE TABLE subjects (
	subject_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    subjectName varchar(30)
);

INSERT INTO subjects VALUES
	(DEFAULT, 'History'),
    (DEFAULT, 'English'),
    (DEFAULT, 'Foreign Language'),
    (DEFAULT, 'Science'),
    (DEFAULT, 'Math'),
    (DEFAULT, 'Art');

INSERT INTO semesters VALUES
	(DEFAULT, 'Fall'),
    (DEFAULT, 'Spring');

INSERT INTO students VALUES
	(DEFAULT, 'Jean', 'King', '8489 Strong St.', 'Las Vegas', 'NV',
     '83030', 'jking@school.org', '7025551838'),
	(DEFAULT, 'Kwai', 'Lee', '897 Long Airport Road', 'Las Vegas', 'NV',
     '83030', 'klee@school.org', '7025553456'),
	(DEFAULT, 'Juri', 'Hashimoto', '9408 Furth Circle', 'Genoa', 'NV',
     '83031', 'jhashimoto@school.org', '7025562839'),
	(DEFAULT, 'Michael', 'Frick', '2678 Kingston Road', 'Ely', 'NV',
     '83029', 'mfrick@school.org', '7025573974'),
	(DEFAULT, 'Rosa', 'Salazar', '11328 Douglas Av.', 'Las Vegas', 'NV',
     '83030', 'rsalazar@school.org', '7025558765');
    
INSERT INTO demerits VALUES
	(1, 2, 'Excessive tardiness.', 'Y'),
    (2, 1, 'Skippd class.', 'Y'),
    (3, 1, 'Unexcused absence.', 'N'),
    (4, 2, 'Disruptive in class.', 'N'),
    (5, 2, 'Unexcused absence.', 'Y');

INSERT INTO grades VALUES
	(1,1,1,'A'),
	(1,1,2,'B'),
	(1,1,3,'A'),
	(1,1,4,'C'),
	(1,1,5,'B'),
	(1,2,1,'A'),
	(1,2,2,'B'),
	(1,2,3,'B'),
	(1,2,4,'C'),
	(1,2,5,'B'),
	(2,1,1,'A'),
	(2,1,2,'B'),
	(2,1,4,'C'),
	(2,5,5,'B'),
	(2,1,6,'D'),
	(2,2,1,'A'),
	(2,2,2,'B'),
	(2,2,4,'C'),
	(2,2,5,'A'),
	(2,2,6,'C'),
	(3,1,1,'D'),
	(3,1,2,'A'),
	(3,1,3,'A'),
	(3,1,4,'A'),
	(3,1,5,'B'),
	(3,2,1,'B'),
	(3,2,2,'B'),
	(3,2,3,'A'),
	(3,2,4,'A'),
	(3,2,5,'B'),
	(4,1,1,'C'),
	(4,1,2,'C'),
	(4,1,4,'B'),
	(4,5,5,'B'),
	(4,1,6,'A'),
	(4,2,1,'B'),
	(4,2,2,'C'),
	(4,2,4,'B'),
	(4,2,5,'B'),
	(4,2,6,'D'),
	(5,1,1,'C'),
	(5,1,2,'C'),
	(5,1,3,'B'),
	(5,1,4,'A'),
	(5,1,5,'B'),
	(5,2,1,'A'),
	(5,2,2,'C'),
	(5,2,3,'B'),
	(5,2,4,'A'),
	(5,2,5,'D');









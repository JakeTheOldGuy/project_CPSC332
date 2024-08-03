-- Insert sample data into Professors table
INSERT INTO professors (ssn, name, street, city, state, zipcode, areacode, sevendigit, sex, title, salary, teaches_snum)
VALUES
('888-12-1456', 'Charles Sputnick', '1 Spalding Way', 'Newport', 'CA', '92660', '714', '5552121', 'M', 'Teacher', 180000.00, '10132'),
('756-12-3456', 'Sarah Curie', '275 Gold Cir', 'Long Beach', 'CA', '90803', '760', '5554242', 'F', 'Professor', 206000.00, '10165'),
('602-10-1141', 'Nolan Wright', '919 Powerball Dr', 'Tustin', 'CA', '92780', '949', '5558484', 'M', 'Chair', 212000.00, '10168');

-- Insert sample data into Department table
INSERT INTO department (dnum, dname, dtelephone, dofficeloc, chairpersonssn)
VALUES
(500, 'Mathematics', '657-278-3631', '154 McCarthy Hall, Fullerton', '756-12-3456'),
(400, 'Computer Science', '657-278-3362', '1010 Arduino Blvd, Fullerton', '602-10-1141');

-- Insert sample data into Course table
INSERT INTO course (cnum, ctitle, textbook, units, dno)
VALUES
('MATH370', 'Advanced Calculus', 'Calculus Vol. 2 by Apostol', 3, 500),
('CPSC332', 'File Structures and Database Systems', 'Database Systems by Elmasri', 3, 400),
('CPSC356', 'Mobile Application Development', 'Android Programming by Phillips', 3, 400),
('MATH170', 'Introduction to Linear Algebra', 'Linear Algebra by Lay', 3, 500);

-- Insert sample data into Student table
INSERT INTO student (campusid, fname, lname, saddress, stelephone, dnomajor)
VALUES
('1000', 'Jackson', 'Bustamante', '137 Las Palmas, Irvine', '949-361-2130', 500),
('0100', 'Carlos', 'Chang', '247 Calle Sombra, San Clemente', '949-786-7297', 400),
('1100', 'Natalie', 'Mckenzie', '349 W Culver, Mission Viejo', '949-581-2960', 400),
('0010', 'Phillip', 'Ybarra', '453 Brookline Dr, Tustin', '760-315-4575', 400),
('1010', 'Lisa', 'Ciulla', '559 Avenida Navarro, Irvine', '714-641-9007', 400),
('0110', 'Shellie', 'Yoshihara', '6052 Lewis Drive, Tustin', '310-535-3500', 400),
('1110', 'Forest', 'Lee', '32067 E Nine Dr, Laguna Niguel', '949-361-8729', 400),
('0001', 'Bailey', 'Mulligan', '888 Forest Glen Dr, Lake Forest', '949-492-1648', 400);

-- Insert sample data into Section table
INSERT INTO section (snum, coursenum, classroom, seatnum, begintime, endtime)
VALUES
('10132', 'CPSC356', 'Room 103', 35, '11:00:00', '11:50:00'),
('10165', 'MATH370', 'Room 101', 30, '09:00:00', '09:50:00'),
('10168', 'CPSC332', 'Room 102', 40, '10:00:00', '11:15:00'),
('10187', 'MATH170', 'Room 107', 33, '15:00:00', '17:50:00');

-- Insert sample data into EnrollmentRecord table
INSERT INTO enrollmentrecord (grade, stucampusid, coursenum)
VALUES
('B+', '0010', 'MATH370'),
('C', '1010', 'CPSC332'),
('A+', '0100', 'CPSC356'),
('B', '1100', 'CPSC332'),
('D', '0110', 'MATH370'),
('A-', '1110', 'MATH370');

-- Insert sample data into HasPrerequisite table
INSERT INTO hasprerequisite (prereqcno, cno)
VALUES
('MATH170', 'MATH370'),
('CPSC332', 'CPSC356');

-- Insert sample data into Minors_in table
INSERT INTO minors_in (stucampusid, dno)
VALUES
('1000', 400),
('1100', 500);

-- Insert sample data into CollegeDegrees table
INSERT INTO collegedegrees (profssn, degreename)
VALUES
('888-12-1456', 'PhD Computer Science'),
('756-12-3456', 'PhD Mathematics'),
('602-10-1141', 'PhD Computer Science');

-- Insert sample data into MeetingDays table
INSERT INTO meetingdays (snum, dayname)
VALUES
('10132', 'Monday'),
('10132', 'Wednesday'),
('10132', 'Friday'),
('10165', 'Tuesday'),
('10165', 'Thursday'),
('10168', 'Monday'),
('10168', 'Wednesday'),
('10168', 'Friday');

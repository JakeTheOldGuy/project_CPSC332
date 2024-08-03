CREATE DATABASE cs332s11_new;

USE cs332s11_new;

-- Create Professors table
CREATE TABLE professors (
    ssn CHAR(11) PRIMARY KEY,
    name VARCHAR(100),
    street VARCHAR(255),
    city VARCHAR(100),
    state CHAR(2),
    zipcode VARCHAR(10),
    areacode VARCHAR(3),
    sevendigit VARCHAR(7),
    sex CHAR(1),
    title VARCHAR(50),
    salary DECIMAL(10,2),
    teaches_snum VARCHAR(10)
);

-- Create Department table
CREATE TABLE department (
    dnum INT PRIMARY KEY,
    dname VARCHAR(100),
    dtelephone VARCHAR(15),
    dofficeloc VARCHAR(255),
    chairpersonssn CHAR(11),
    FOREIGN KEY (chairpersonssn) REFERENCES professors(ssn)
);

-- Create Course table
CREATE TABLE course (
    cnum VARCHAR(10) PRIMARY KEY,
    ctitle VARCHAR(100),
    textbook VARCHAR(255),
    units INT,
    dno INT,
    FOREIGN KEY (dno) REFERENCES department(dnum)
);

-- Create Student table
CREATE TABLE student (
    campusid VARCHAR(4) PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    saddress VARCHAR(255),
    stelephone VARCHAR(15),
    dnomajor INT,
    FOREIGN KEY (dnomajor) REFERENCES department(dnum)
);

-- Create Section table
CREATE TABLE section (
    snum VARCHAR(10) PRIMARY KEY,
    coursenum VARCHAR(10),
    classroom VARCHAR(50),
    seatnum INT,
    begintime TIME,
    endtime TIME,
    FOREIGN KEY (coursenum) REFERENCES course(cnum)
);

-- Create EnrollmentRecord table
CREATE TABLE enrollmentrecord (
    grade VARCHAR(2),
    stucampusid VARCHAR(4),
    coursenum VARCHAR(10),
    PRIMARY KEY (stucampusid, coursenum),
    FOREIGN KEY (stucampusid) REFERENCES student(campusid),
    FOREIGN KEY (coursenum) REFERENCES course(cnum)
);

-- Create HasPrerequisite table
CREATE TABLE hasprerequisite (
    prereqcno VARCHAR(10),
    cno VARCHAR(10),
    PRIMARY KEY (prereqcno, cno),
    FOREIGN KEY (prereqcno) REFERENCES course(cnum),
    FOREIGN KEY (cno) REFERENCES course(cnum)
);

-- Create Minors_in table
CREATE TABLE minors_in (
    stucampusid VARCHAR(4),
    dno INT,
    PRIMARY KEY (stucampusid, dno),
    FOREIGN KEY (stucampusid) REFERENCES student(campusid),
    FOREIGN KEY (dno) REFERENCES department(dnum)
);

-- Create CollegeDegrees table
CREATE TABLE collegedegrees (
    profssn CHAR(11),
    degreename VARCHAR(100),
    PRIMARY KEY (profssn, degreename),
    FOREIGN KEY (profssn) REFERENCES professors(ssn)
);

-- Create MeetingDays table
CREATE TABLE meetingdays (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    snum VARCHAR(10),
    dayname VARCHAR(10),
    FOREIGN KEY (snum) REFERENCES section(snum)
);

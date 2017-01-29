set colsep '|'
set linesize 150

-- Instructor Table
CREATE TABLE Instructor (
  iid INTEGER,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  PRIMARY KEY (iid)
);


-- Course Table
CREATE TABLE Course (
  cid INTEGER,
  course_name VARCHAR(100),
  PRIMARY KEY (cid)
);


-- Teaches Table
CREATE TABLE Teaches (
  iid INTEGER,
  cid INTEGER,
  PRIMARY KEY (iid, cid),
  FOREIGN KEY (iid) REFERENCES Instructor(iid) ON DELETE CASCADE,
  FOREIGN KEY (cid) REFERENCES Course(cid) ON DELETE CASCADE
);

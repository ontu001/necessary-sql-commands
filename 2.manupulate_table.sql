--To insert data into an exsiting table
INSERT INTO students
(sid, sname, semester, courseid,credit)
VALUES 
(2020688, 'ROHANUR RAHMAN ONTU', 'SUMMER', 'CEN201', 3),
(2020699, 'Lamia Alif Rouza', 'WINTER', 'CSE301L', 1),
(2020711, 'SNIRA SUCHI', 'AUTUMN', 'ANT101', 3);


--To update any secific column's value
UPDATE students
SET courseid = 'ECE200' , credit = 3
WHERE sid= 2020699 --It should be the primary key to identify the specific coloumn



--To delete any specific row
DELETE FROM students
WHERE sid = 2020711


--To add any additional column into an existig table
ALTER TABLE students
ADD COLUMN duration INT;

--To delete any specific column
ALTER TABLE students
DROP duration 

--To change data types for any specific coloumn
ALTER TABLE students
ALTER COLUMN credit TYPE int;


--TO ERAGE ALL THE ROWS FROM A TABLE
TRUNCATE TABLE students



--To Delete The Table
Drop TABLE students

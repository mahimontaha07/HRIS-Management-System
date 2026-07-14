CREATE TABLE Departments(
Department_ID INT PRIMARY KEY,
Department_Name VARCHAR(100)
);

CREATE TABLE Employees(
Employee_ID INT PRIMARY KEY,
Name VARCHAR(100),
Email VARCHAR(100),
Phone VARCHAR(20),
Department_ID INT,
Position VARCHAR(100),
FOREIGN KEY (Department_ID)
REFERENCES Departments(Department_ID)
);

CREATE TABLE Attendance(
Attendance_ID INT PRIMARY KEY,
Employee_ID INT,
Attendance_Date DATE,
Status VARCHAR(20),
FOREIGN KEY(Employee_ID)
REFERENCES Employees(Employee_ID) 
);

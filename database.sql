-- Create User Table
CREATE TABLE User (
    ID INT PRIMARY KEY,
    First_name VARCHAR(255),
    Last_name VARCHAR(255),
    Gender VARCHAR(10),
    Subject VARCHAR(255),
    Photo BLOB,
    Type ENUM('user', 'admin')
);

-- Create Login Table
CREATE TABLE Login (
    ID INT PRIMARY KEY,
    User_id INT,
    Username VARCHAR(255),
    Email VARCHAR(255),
    Password VARCHAR(255),
    Date_time DATETIME,
    FOREIGN KEY (User_id) REFERENCES User(ID)
);

-- Create Codes Table
CREATE TABLE Codes (
    ID INT PRIMARY KEY,
    Lg_id INT,
    Email VARCHAR(255),
    Code VARCHAR(255),
    Expire DATETIME,
    FOREIGN KEY (Lg_id) REFERENCES Login(ID)
);

-- Create Feedback Table
CREATE TABLE Feedback (
    ID INT PRIMARY KEY,
    User_id INT,
    Comments TEXT,
    Date_time DATETIME,
    FOREIGN KEY (User_id) REFERENCES User(ID)
);

-- Create Lab Table
CREATE TABLE Lab (
    ID INT PRIMARY KEY,
    Name_lab VARCHAR(255),
    Time DATETIME
);

-- Create Session Table
CREATE TABLE Session (
    ID INT PRIMARY KEY,
    Sessions VARCHAR(255),
    Number_Sessions INT,
    Time DATETIME
);

-- Create Information Table
CREATE TABLE Information (
    ID INT PRIMARY KEY,
    User_id INT,
    Date DATE,
    Lab_id INT,
    Generation VARCHAR(255),
    Session_id INT,
    App VARCHAR(255),
    Number_students INT,
    Subject VARCHAR(255),
    Other TEXT,
    FOREIGN KEY (User_id) REFERENCES User(ID),
    FOREIGN KEY (Lab_id) REFERENCES Lab(ID),
    FOREIGN KEY (Session_id) REFERENCES Session(ID)
);

-- Dtabase 
CREATE DATABASE MAILS_ORDER;
USE MAILS_ORDER;

CREATE TABLE CUSTOMER (
    Cus_Id INT PRIMARY KEY AUTO_INCREMENT,
    F_Name VARCHAR(50),
    L_Name VARCHAR(50),
    ZipCode VARCHAR(10)
);

CREATE TABLE EMPLOYEE (
    Emp_Id INT PRIMARY KEY AUTO_INCREMENT,
    F_Name VARCHAR(50),
    L_Name VARCHAR(50),
    Zip_Code VARCHAR(10)
);

CREATE TABLE PART (
    PartID INT PRIMARY KEY AUTO_INCREMENT,
    PartName VARCHAR(100),
    Price DECIMAL(10,2),
    QuantityStock INT
);

CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY AUTO_INCREMENT,
    PaymentReceived DATE,
    ExpectedShipDate DATE,
    ActualShipDate DATE,
    Cus_Id INT,
    Emp_Id INT,
    CONSTRAINT fk_order_customer 
        FOREIGN KEY (Cus_Id) 
        REFERENCES CUSTOMER(Cus_Id)
        ON DELETE SET NULL 
        ON UPDATE CASCADE,
    CONSTRAINT fk_order_employee 
        FOREIGN KEY (Emp_Id) 
        REFERENCES EMPLOYEE(Emp_Id)
        ON DELETE SET NULL 
        ON UPDATE CASCADE
);

CREATE TABLE ORDER_PART (
    OrderID INT,
    PartID INT,
    QuantityOrd INT,
    CONSTRAINT fk_orderpart_order 
        FOREIGN KEY (OrderID) 
        REFERENCES Orders(Order_Id)
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    CONSTRAINT fk_orderpart_part 
        FOREIGN KEY (PartID) 
        REFERENCES PART(PartID)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);


-- INSERT INTO CUSTOMER
INSERT INTO CUSTOMER VALUES
(1, 'Ali', 'Hassan', '1123'),
(2, 'Fatma', 'Saeed', '1145'),
(3, 'Mohammed', 'Salim', '1156'),
(4, 'Sara', 'Nasser', '1139');

-- INSERT INTO EMPLOYEE
INSERT INTO EMPLOYEE VALUES
(1, 'Omar', 'Rashid', '1201'),
(2, 'Aisha', 'Khalid', '1202'),
(3, 'Yusuf', 'Hamad', '1203'),
(4, 'Layla', 'Said', '1204');

-- INSERT INTO PART
INSERT INTO PART VALUES
(101, 'Engine Filter', 25.50, 120),
(102, 'Brake Pad', 45.00, 80),
(103, 'Oil Pump', 75.00, 40),
(104, 'Radiator', 120.00, 30);

-- INSERT INTO ORDERS
INSERT INTO Orders VALUES
(1001, '2025-10-10', '2025-10-15', '2025-10-16', 1, 1),
(1002, '2025-10-11', '2025-10-16', '2025-10-17', 2, 2),
(1003, '2025-10-12', '2025-10-18', '2025-10-18', 3, 3),
(1004, '2025-10-13', '2025-10-19', '2025-10-20', 4, 4);

-- INSERT INTO ORDER_PART
INSERT INTO ORDER_PART VALUES
(1001, 101, 2),
(1001, 102, 1),
(1002, 103, 3),
(1003, 104, 1);

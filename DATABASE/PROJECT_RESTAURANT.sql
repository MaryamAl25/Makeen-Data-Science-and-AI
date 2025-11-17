-- 1. Create Database
CREATE DATABASE GreenBiteDB;
USE GreenBiteDB;

-- 2. Create Tables
-- STAFF TABLE
CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL,
    Gender ENUM('Male', 'Female'),
    Age INT,
    Position ENUM('Chef', 'Waiter', 'Manager') NOT NULL,
    Salary DECIMAL(10,2) CHECK (Salary >= 0),
    Contact_Number VARCHAR(20),
    Email VARCHAR(30) UNIQUE,
    Hire_Date DATE NOT NULL,
    Status ENUM('Active', 'Inactive') DEFAULT 'Active'
);

-- CUSTOMER TABLE
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL,
    Phone VARCHAR(20) UNIQUE,
    Email VARCHAR(30) UNIQUE,
    Gender ENUM('Male', 'Female'),
    Membership_Level ENUM('Regular', 'Silver', 'Gold') DEFAULT 'Regular'
);

-- MENU_ITEM TABLE
CREATE TABLE Menu_Item (
    Item_ID INT PRIMARY KEY AUTO_INCREMENT,
    Item_Name VARCHAR(20) NOT NULL,
    Category ENUM('Salad', 'Main Course', 'Smoothie', 'Dessert') NOT NULL,
    Calories INT CHECK (Calories >= 0),
    Price DECIMAL(8,2) CHECK (Price > 0),
    Description TEXT
);

-- ORDER TABLE
CREATE TABLE Order_r (
    Order_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Staff_ID INT,
    Order_Timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    Payment_Method ENUM('Cash', 'Card') NOT NULL,
    Payment_Status ENUM('Paid', 'Unpaid') DEFAULT 'Unpaid',
    Order_Status ENUM('Pending', 'Preparing', 'Ready', 'Delivered', 'Cancelled') DEFAULT 'Pending',
    Notes TEXT,
    CONSTRAINT fk_order_customer FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
        ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT fk_order_staff FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- BILL TABLE
CREATE TABLE Bill (
    Bill_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT,
    Bill_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    Total_Amount DECIMAL(10,2) CHECK (Total_Amount >= 0),
    CONSTRAINT fk_bill_order FOREIGN KEY (Order_ID) REFERENCES Order_r (Order_ID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table_info TABLE
CREATE TABLE Table_info (
    Table_ID INT PRIMARY KEY AUTO_INCREMENT,
    Number_of_Guests INT CHECK (Number_of_Guests > 0),
    Staff_ID INT,
    Serving_Time DATETIME,
    Order_ID INT,
    CONSTRAINT fk_dinein_staff FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID)
        ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT fk_dinein_order FOREIGN KEY (Order_ID) REFERENCES Order_r(Order_ID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Order_Item (
    OrderItem_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT,
    Item_ID INT,
    Quantity INT CHECK (Quantity > 0),
    CONSTRAINT fk_orderitem_order FOREIGN KEY (Order_ID) REFERENCES Order_r(Order_ID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_orderitem_item FOREIGN KEY (Item_ID) REFERENCES Menu_Item(Item_ID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

---------------------------------------
---------------------------------------
-- Insert into Staff 
INSERT INTO Staff (Name, Gender, Age, Position, Salary, Contact_Number, Email, Hire_Date, Status) VALUES
('Ahmed Al-Balushi', 'Male', 32, 'Chef', 850.00, '91234567', 'ahmed.b@resto.com', '2020-05-12', 'Active'),
('Fatma Al-Harthy', 'Female', 27, 'Waiter', 450.00, '92876543', 'fatma.h@resto.com', '2021-03-15', 'Active'),
('Salim Al-Maskari', 'Male', 41, 'Manager', 1200.00, '92112233', 'salim.m@resto.com', '2018-07-01', 'Active'),
('Huda Al-Kindi', 'Female', 30, 'Chef', 820.00, '93654321', 'huda.k@resto.com', '2022-02-20', 'Active'),
('Rashid Al-Hinai', 'Male', 25, 'Waiter', 420.00, '93456789', 'rashid.h@resto.com', '2023-01-10', 'Active'),
('Maryam Al-Shibli', 'Female', 29, 'Waiter', 430.00, '92233445', 'maryam.s@resto.com', '2021-09-18', 'Active'),
('Talib Al-Busaidi', 'Male', 38, 'Chef', 880.00, '91998877', 'talib.b@resto.com', '2019-06-07', 'Active'),
('Aisha Al-Lawati', 'Female', 26, 'Waiter', 410.00, '93887766', 'aisha.l@resto.com', '2022-12-11', 'Active'),
('Khalid Al-Rashdi', 'Male', 33, 'Chef', 870.00, '93778899', 'khalid.r@resto.com', '2020-09-14', 'Active'),
('Sara Al-Siyabi', 'Female', 35, 'Manager', 1150.00, '93556677', 'sara.s@resto.com', '2019-03-03', 'Active'),
('Ali Al-Mahrouqi', 'Male', 28, 'Waiter', 440.00, '93990011', 'ali.m@resto.com', '2021-07-19', 'Active'),
('Layla Al-Habsi', 'Female', 31, 'Chef', 890.00, '92775533', 'layla.h@resto.com', '2020-11-05', 'Active'),
('Hassan Al-Shanfari', 'Male', 36, 'Manager', 1220.00, '93332244', 'hassan.s@resto.com', '2017-10-10', 'Active'),
('Maha Al-Mamari', 'Female', 23, 'Waiter', 400.00, '92998800', 'maha.m@resto.com', '2023-04-22', 'Active'),
('Yousef Al-Bahrani', 'Male', 29, 'Waiter', 430.00, '93992211', 'yousef.b@resto.com', '2022-06-17', 'Active'),
('Reem Al-Mahdi', 'Female', 33, 'Chef', 860.00, '93445522', 'reem.m@resto.com', '2021-02-02', 'Active'),
('Salma Al-Khalili', 'Female', 40, 'Manager', 1180.00, '93669988', 'salma.k@resto.com', '2019-09-12', 'Active'),
('Nasser Al-Amri', 'Male', 27, 'Waiter', 420.00, '93882233', 'nasser.a@resto.com', '2023-03-01', 'Active'),
('Zahra Al-Saadi', 'Female', 34, 'Chef', 900.00, '93774455', 'zahra.s@resto.com', '2020-08-25', 'Active'),
('Ibrahim Al-Araimi', 'Male', 39, 'Chef', 910.00, '93223344', 'ibrahim.a@resto.com', '2018-05-15', 'Active');


-- Insert into customer
INSERT INTO Customer (Name, Phone, Email, Gender, Membership_Level) VALUES
('Hassan Said', '91111111', 'hassan.s@example.com', 'Male', 'Gold'),
('Aisha Al-Habsi', '92222222', 'aisha.h@example.com', 'Female', 'Regular'),
('Ahmed Nasser', '93333333', 'ahmed.n@example.com', 'Male', 'Silver'),
('Maryam Saif', '94444444', 'maryam.s@example.com', 'Female', 'Gold'),
('Yousef Ali', '95555555', 'yousef.a@example.com', 'Male', 'Regular'),
('Fatma Rashid', '96666666', 'fatma.r@example.com', 'Female', 'Silver'),
('Salim Khalid', '97777777', 'salim.k@example.com', 'Male', 'Gold'),
('Mona Talib', '98888888', 'mona.t@example.com', 'Female', 'Regular'),
('Ali Hamad', '99999999', 'ali.h@example.com', 'Male', 'Silver'),
('Sara Fahad', '91010101', 'sara.f@example.com', 'Female', 'Gold'),
('Layla Khalil', '92020202', 'layla.k@example.com', 'Female', 'Regular'),
('Khalid Salim', '93030303', 'khalid.s@example.com', 'Male', 'Silver'),
('Fatma Zayed', '94040404', 'fatma.z@example.com', 'Female', 'Gold'),
('Nasser Saeed', '95050505', 'nasser.s@example.com', 'Male', 'Regular'),
('Amina Juma', '96060606', 'amina.j@example.com', 'Female', 'Gold'),
('Mohammed Said', '97070707', 'mohammed.s@example.com', 'Male', 'Silver'),
('Reem Ahmed', '98080808', 'reem.a@example.com', 'Female', 'Regular'),
('Rashid Khalifa', '99090909', 'rashid.k@example.com', 'Male', 'Silver'),
('Huda Salim', '90101010', 'huda.s@example.com', 'Female', 'Gold'),
('Talal Ali', '91212121', 'talal.a@example.com', 'Male', 'Regular');


-- insert into menu-item 
INSERT INTO Menu_Item (Item_Name, Category, Calories, Price, Description) VALUES
('Greek Salad', 'Salad', 250, 2.800, 'Fresh lettuce, feta, olives'),
('Fruit Smoothie', 'Smoothie', 180, 3.200, 'Mixed tropical fruits'),
('Veggie Burger', 'Main Course', 450, 4.800, 'Plant-based burger with fries'),
('Mango Lassi', 'Smoothie', 200, 2.500, 'Mango yogurt drink'),
('Falafel Wrap', 'Main Course', 420, 3.600, 'Falafel with tahini sauce'),
('Pasta Primavera', 'Main Course', 480, 4.500, 'Vegetables and olive oil pasta'),
('Caesar Salad', 'Salad', 310, 3.000, 'Crisp romaine with dressing'),
('Avocado Toast', 'Main Course', 370, 2.900, 'Avocado and tomato toast'),
('Strawberry Milkshake', 'Smoothie', 250, 3.400, 'Fresh strawberries and milk'),
('Chocolate Cake', 'Dessert', 520, 4.200, 'Rich chocolate slice'),
('Fruit Salad', 'Dessert', 220, 2.700, 'Seasonal fruit mix'),
('Lemon Mint Juice', 'Smoothie', 150, 2.300, 'Refreshing lemon mint blend'),
('Mushroom Soup', 'Main Course', 290, 3.800, 'Creamy mushroom base'),
('Pancakes', 'Dessert', 410, 3.900, 'Served with maple syrup'),
('Grilled Veg Sandwich', 'Main Course', 330, 3.500, 'Grilled veggies and cheese'),
('Banana Smoothie', 'Smoothie', 200, 2.600, 'Banana and milk blend'),
('Oat Bowl', 'Dessert', 340, 2.900, 'Healthy oats with honey'),
('Quinoa Salad', 'Salad', 260, 3.300, 'Quinoa with mixed veggies'),
('Fruit Tart', 'Dessert', 400, 4.000, 'Custard tart topped with fruits'),
('Veg Lasagna', 'Main Course', 490, 4.900, 'Layers of veggies and cheese');


-- insert into Order_r
INSERT INTO Order_r (Customer_ID, Staff_ID, Payment_Method, Payment_Status, Order_Status, Notes) VALUES
(1, 2, 'Card', 'Paid', 'Delivered', 'No onions please'),
(2, 5, 'Cash', 'Paid', 'Delivered', 'Extra napkins'),
(3, 6, 'Card', 'Paid', 'Delivered', 'Add extra sauce'),
(4, 8, 'Card', 'Paid', 'Ready', 'Deliver to table 4'),
(5, 11, 'Cash', 'Paid', 'Delivered', 'No ice in drink'),
(6, 12, 'Card', 'Paid', 'Pending', 'Less spicy please'),
(7, 15, 'Card', 'Paid', 'Delivered', 'Cold Water'),
(8, 18, 'Cash', 'Paid', 'Delivered', 'Add extra cheese'),
(9, 14, 'Card', 'Paid', 'Delivered', 'Deliver fast please'),
(10, 9, 'Cash', 'Paid', 'Preparing', 'Include dessert'),
(11, 16, 'Card', 'Paid', 'Delivered', 'For birthday'),
(12, 17, 'Cash', 'Paid', 'Delivered', 'No garlic'),
(13, 13, 'Card', 'Paid', 'Delivered', 'Family table'),
(14, 19, 'Cash', 'Paid', 'Delivered', 'More napkins'),
(15, 10, 'Card', 'Paid', 'Delivered', 'Extra sauce'),
(16, 7, 'Card', 'Paid', 'Delivered', 'Add smoothie'),
(17, 3, 'Cash', 'Paid', 'Delivered', 'Fast service please'),
(18, 1, 'Card', 'Paid', 'Delivered', 'NO Onions'),
(19, 4, 'Cash', 'Paid', 'Delivered', 'No salt'),
(20, 20, 'Card', 'Paid', 'Delivered', 'For two guests');


-- Insert into bill
INSERT INTO Bill (Order_ID, Total_Amount) VALUES
(1, 8.900),(2, 6.200),(3, 7.300),(4, 9.000),(5, 5.800),
(6, 10.200),(7, 8.000),(8, 9.100),(9, 7.700),(10, 6.800),
(11, 9.400),(12, 8.600),(13, 10.100),(14, 7.500),(15, 8.200),
(16, 6.900),(17, 7.800),(18, 9.300),(19, 8.700),(20, 9.500);


-- Insert into Table_info
INSERT INTO Table_info (Number_of_Guests, Staff_ID, Serving_Time, Order_ID) VALUES
(2, 2, '2025-11-01 13:00:00', 1),
(4, 5, '2025-11-01 13:10:00', 2),
(3, 6, '2025-11-01 13:20:00', 3),
(2, 8, '2025-11-01 13:30:00', 4),
(5, 11, '2025-11-01 13:40:00', 5),
(2, 12, '2025-11-01 13:50:00', 6),
(4, 15, '2025-11-01 14:00:00', 7),
(3, 18, '2025-11-01 14:10:00', 8),
(2, 14, '2025-11-01 14:20:00', 9),
(3, 9, '2025-11-01 14:30:00', 10),
(4, 16, '2025-11-01 14:40:00', 11),
(2, 17, '2025-11-01 14:50:00', 12),
(3, 13, '2025-11-01 15:00:00', 13),
(4, 19, '2025-11-01 15:10:00', 14),
(2, 10, '2025-11-01 15:20:00', 15),
(3, 7, '2025-11-01 15:30:00', 16),
(2, 3, '2025-11-01 15:40:00', 17),
(2, 1, '2025-11-01 15:50:00', 18),
(4, 4, '2025-11-01 16:00:00', 19),
(2, 20, '2025-11-01 16:10:00', 20);

-- INSERT INTO Order_Item 
INSERT INTO Order_Item (Order_ID, Item_ID, Quantity) VALUES
(1, 1, 2),
(1, 3, 1),
(2, 2, 1),
(2, 4, 2),
(3, 5, 1),
(3, 1, 1),
(4, 3, 3),
(4, 6, 2),
(5, 2, 1),
(5, 4, 1),
(6, 1, 1),
(6, 5, 2),
(7, 3, 1),
(7, 6, 1),
(8, 2, 2),
(8, 4, 2),
(9, 1, 1),
(9, 3, 1),
(10, 5, 2),
(10, 6, 1);


---------------------------------------
---------------------------------------
-- Get all active staff who are Chefs
SELECT * 
FROM Staff
WHERE Position = 'Chef' AND Status = 'Active';

-- Get all menu items that are Main Course and cost more than 4 OMR:
SELECT * 
FROM Menu_Item
WHERE Category = 'Main Course' AND Price > 4.00;

-- Get all customers who are Gold OR Silver members:
SELECT * 
FROM Customer
WHERE Membership_Level = 'Gold' OR Membership_Level = 'Silver';

-- Get all bills where the total amount is between 10 and 30 OMR:
SELECT * 
FROM Bill
WHERE Total_Amount BETWEEN 10 AND 30;

-- Get staff who have positions (Chef', 'Manager') in this list
SELECT * 
FROM Staff
WHERE Position IN ('Chef', 'Manager');

-- Update a staff member’s "Ahmed Al-Balushi" status to Inactive:
UPDATE Staff
SET Status = 'Inactive'
WHERE Name = 'Ahmed Al-Balushi';

SELECT * FROM Staff;

-- Update menu item details 'Veggie Burger' (price= 4.100 and description = Fresh vegetarian addition to our November special menu):
UPDATE Menu_Item
SET Price = 4.100,
    Description = 'Fresh vegetarian addition to our November special menu'
WHERE Item_Name = 'Veggie Burger';

-- Show orders with customer and staff names:
SELECT 
    o.Order_ID,
    c.Name AS Customer_Name,
    s.Name AS Staff_Name,
    o.Payment_Method,
    o.Order_Status
FROM Order_r o
INNER JOIN Customer c ON o.Customer_ID = c.Customer_ID
INNER JOIN Staff s ON o.Staff_ID = s.Staff_ID;

-- Show all customers, even those who have no orders:
SELECT 
    c.Customer_ID,
    c.Name AS Customer_Name,
    o.Order_ID,
    o.Order_Status
FROM Customer c
LEFT JOIN Order_r o ON c.Customer_ID = o.Customer_ID;

-- AGGREGATE Functions
-- Count total number of Waiter
SELECT COUNT(*) AS Total_Waiters
FROM Staff
WHERE Position = 'Waiter';

-- COUNT BY POSITION
SELECT Position, COUNT(*) AS Total
FROM Staff
GROUP BY Position;

-- Average salary by position
SELECT Position, AVG(Salary) AS Average_Salary
FROM Staff
GROUP BY Position;

-- Count of orders by payment method
SELECT Payment_Method, COUNT(*) AS Total_Orders
FROM Order_r
GROUP BY Payment_Method;

-- Day/Time with the highest total bill amount
SELECT 
    DATE(o.Order_Timestamp) AS Order_Date,
    HOUR(o.Order_Timestamp) AS Order_Hour,
    SUM(b.Total_Amount) AS Total_Amount,
    s.Name AS Staff_Name,
    c.Name AS Customer_Name,
    o.Payment_Method,
    o.Payment_Status
FROM Order_r o
JOIN Bill b ON o.Order_ID = b.Order_ID
LEFT JOIN Staff s ON o.Staff_ID = s.Staff_ID
LEFT JOIN Customer c ON o.Customer_ID = c.Customer_ID
GROUP BY DATE(o.Order_Timestamp), HOUR(o.Order_Timestamp), s.Name, c.Name, o.Payment_Method, o.Payment_Status, o.Notes
ORDER BY Total_Amount DESC
LIMIT 1;

-- Update orders 2, 4, 6 to be handled by waiter with Staff_ID = 2
UPDATE Order_r
SET Staff_ID = 2
WHERE Order_ID IN (2, 4, 6);

-- Update orders 5, 7 to be handled by waiter with Staff_ID = 5
UPDATE Order_r
SET Staff_ID = 5
WHERE Order_ID IN (5, 7);

-- Which waiter has the most orders
SELECT s.Name AS Waiter_Name,
       COUNT(o.Order_ID) AS Total_Orders
FROM Order_r o
JOIN Staff s ON o.Staff_ID = s.Staff_ID
WHERE s.Position = 'Waiter'
GROUP BY s.Staff_ID
ORDER BY Total_Orders DESC;

-- Which menu item was ordered the most
-- Order_Item(Order_ID, Item_ID, Quantity)
SELECT 
    mi.Item_ID,
    mi.Item_Name,
    mi.Category,
    SUM(oi.Quantity) AS Total_Ordered
FROM Order_Item oi
JOIN Menu_Item mi ON oi.Item_ID = mi.Item_ID
GROUP BY mi.Item_ID, mi.Item_Name, mi.Category
ORDER BY Total_Ordered DESC
LIMIT 1;

-- count each menu item and sum the total quantity ordered
SELECT m.Item_Name, SUM(oi.Quantity) AS Total_Quantity
FROM Order_Item oi
JOIN Menu_Item m ON oi.Item_ID = m.Item_ID
GROUP BY oi.Item_ID, m.Item_Name
ORDER BY Total_Quantity DESC;

-- Number of GOLD membership customers with their info
SELECT * 
FROM Customer
WHERE Membership_Level = 'Gold';

-- MAX and MIN total amount in bills
SELECT 
    b.Bill_ID,
    b.Total_Amount,
    b.Bill_Date,
    c.Name AS Customer_Name,
    s.Name AS Staff_Name,
    o.Payment_Method
FROM Bill b
JOIN Order_r o ON b.Order_ID = o.Order_ID
LEFT JOIN Customer c ON o.Customer_ID = c.Customer_ID
LEFT JOIN Staff s ON o.Staff_ID = s.Staff_ID
WHERE b.Total_Amount = (SELECT MAX(Total_Amount) FROM Bill)
   OR b.Total_Amount = (SELECT MIN(Total_Amount) FROM Bill);

-- Orders count per staff, only staff with more than 3 orders (HAVING)
SELECT s.Name AS Staff_Name,
       COUNT(o.Order_ID) AS Total_Orders
FROM Order_r o
JOIN Staff s ON o.Staff_ID = s.Staff_ID
GROUP BY s.Staff_ID
HAVING COUNT(o.Order_ID) > 3
ORDER BY Total_Orders DESC;

-- Menu items sorted by price ascending and descending
-- Ascending
SELECT Item_Name, Price
FROM Menu_Item
ORDER BY Price ASC;

-- Descending
SELECT Item_Name, Price
FROM Menu_Item
ORDER BY Price DESC;




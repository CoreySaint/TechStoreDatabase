
########################DATABASE INITIALIZATION##############################

#Creates database titled "Technology_Store_Database"
CREATE DATABASE Technology_Store_Database;

#Select Technology_Store_Database to use as database
USE Technology_Store_Database;

#######################TABLE INITIALIZATION##################################

#Create Products table with attributes: id, name, brand, storage, ram, dimensions, weight, os_id

#Creates OS table with attributes: id, brand, name, version, release_date
CREATE TABLE OS(
os_id INT AUTO_INCREMENT,
brand VARCHAR(255) NOT NULL,
name VARCHAR(255) NOT NULL,
version VARCHAR(255) NOT NULL,
release_date DATE NOT NULL,
PRIMARY KEY (os_id));

CREATE TABLE Products(
prod_id INT AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
brand VARCHAR(255) NOT NULL,
storage VARCHAR(255) NOT NULL,
ram VARCHAR(255) NOT NULL,
dimensions VARCHAR(255) NOT NULL,
weight DECIMAL(10,2) NOT NULL,
opsys_id INT NOT NULL,
PRIMARY KEY (prod_id),
FOREIGN KEY (opsys_id) REFERENCES OS(os_id)
);

#Creates Customers table with attributes: id, last_name, first_name, address, address2, city, state, zip_code, phone, email
CREATE TABLE Customers(
cust_id INT AUTO_INCREMENT,
last_name VARCHAR(255) NOT NULL,
first_name VARCHAR(255) NOT NULL,
address VARCHAR(255) NOT NULL,
address2 VARCHAR(255) DEFAULT (NULL),
city VARCHAR(255) NOT NULL,
state CHAR(2) NOT NULL,
zip_code INT NOT NULL,
phone BIGINT NOT NULL,
email VARCHAR(255) NOT NULL,
PRIMARY KEY (cust_id)
);

#Creates employees table with attributes: id, last_name, first_name, address, address2, city, state, zip_code, phone, email, position
CREATE TABLE Employees(
emp_id INT AUTO_INCREMENT,
last_name VARCHAR(255) NOT NULL,
first_name VARCHAR(255) NOT NULL,
address VARCHAR(255) NOT NULL,
address2 VARCHAR(255) DEFAULT (NULL),
city VARCHAR(255) NOT NULL,
state CHAR(2) NOT NULL,
zip_code INT NOT NULL,
phone BIGINT NOT NULL,
email VARCHAR(255) NOT NULL,
position VARCHAR(255) NOT NULL,
PRIMARY KEY (emp_id)
);

#Creates Orders table with attributes: id, product_id, customer_id, count, employee_id
CREATE TABLE Orders(
order_id INT AUTO_INCREMENT,
product_id INT NOT NULL,
customer_id INT NOT NULL,
count SMALLINT NOT NULL DEFAULT 1,
employee_id INT NOT NULL,
PRIMARY KEY (order_id),
FOREIGN KEY (product_id) REFERENCES Products(prod_id),
FOREIGN KEY (customer_id) REFERENCES Customers(cust_id),
FOREIGN KEY (employee_id) REFERENCES Employees(emp_id) 
);

##########################DATA INSERTION################################

#Insertion of data into Customer table (20 rows)
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES ('Amina', 'Ariel', '12 Bacon St.', 'Houston', 'TX', 77007, 7136575546, 'ariel.amina@gmail.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES ('Stephanos', 'Milo', '1850 NW 5th St.', 'Tampa', 'FL', 33602, 8136573476, 'MS1829@aol.com');
INSERT INTO Customers(last_name, first_name, address, address2, city, state, zip_code, phone, email)
VALUES ('Harrison', 'Max', '58390 Baxter Cir.', 'Apt. 425', 'Lexington', 'KY', 40509, 8590908465, 'Marrson.Hax@icloud.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES ('Quinn', 'Alexander', '8879 E. Golden Ter.', 'Riverside', 'CA', 92517, 9514568911, 'AlexanderQ23@gmail.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES ('Williams', 'Jacob', '2020 Jackson St.', 'Jacksonville', 'FL', 33208, 9049426658, 'JacobWillWin@yahoo.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES ('Davis', 'Jack', '18 Seymore Ln.', 'Chicago', 'IL', 60603, 3129830056, 'Davis.J1999@gmail.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES ('William', 'Jackson', '82040 Sycamore St.', 'Houston', 'TX', 77003, 7136653323, 'JackWill.i.am@gmail.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES ('Monroe', 'Ethan', '152A 18th Ave.', 'Stockton', 'CA', 95208, 2094877787, 'emmegaman@yahoo.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES ('Roberson', 'Richard', '8998 West St.', 'Oklahoma City', 'OK', 73083, 5727879950, 'RandRandR1988@aol.com');
INSERT INTO Customers(last_name, first_name, address, address2, city, state, zip_code, phone, email)
VALUES ('Matthews', 'Troy', '1689 Kansas Way', 'Building B', 'Henderson', 'NV', 89077, 7026325665, 'TJMatthews0@gmail.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES ('Fuller', 'Sky', '589 NW Cornerstone St.', 'Los Angeles', 'CA', 90210, 2134561234, 'FullSky9009@yahoo.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES ('Allen', 'Rohan', '5 Method Rd.', 'Oakland', 'CA', 94660, 5106455466, 'Rohana200@gmail.com');
INSERT INTO Customers(last_name, first_name, address, address2, city, state, zip_code, phone, email)
VALUES ('Sullivan', 'Roxanne', '82 Quincy St.', 'Apt. 119', 'Chesapeake', 'VA', 23327, 7579891005, 'Roxannesully@gmail.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES ('Rosario', 'Scott', '78593 5th St.', 'Rochester', 'NY', 14620, 8136301254, 'Scottyro@yahoo.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES ('Ward', 'Tim', '1525 Theden St.', 'Plano', 'TX', 75252, 9726459013, 'Tima800@gmail.com');
INSERT INTO Customers(last_name, first_name, address, address2, city, state, zip_code, phone, email)
VALUES ('Howe', 'Maddy', '8920 Hollingsworth Rd.', 'Apt. 301', 'Wichita', 'KS', 67213, 3167582983, 'Maddyhowey@gmail.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES ('Young', 'Phoebe', '94570 Robin Cir.', 'New York', 'NY', 10101, 2128034572, 'Phoung44@aol.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES('Dean', 'Malik', '294 University Ave.', 'Charlotte', 'NC', 28134, 9133657548, 'Malikdeedee@gmail.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES('Tran', 'Lilli', '59397 Center St.', 'Indianapolis', 'IN', 46077, 3170349609, 'LilliTra00@gmail.com');
INSERT INTO Customers(last_name, first_name, address, city, state, zip_code, phone, email)
VALUES ('McDowell', 'Elijah', '234 Main St.', 'St. Louis', 'MO', 63109, 3148375002, 'EliMickeyDowell@aol.com');

#Insertion of data into Employees table (10 rows)
INSERT INTO Employees(last_name, first_name, address, city, state, zip_code, phone, email, position)
VALUES ('Smith', 'Christian', '57893 NE Webb Rd.', 'Louisville', 'KY', 40206, 5024798824, 'Christian@Tech4Sale.com', 'CEO');
INSERT INTO Employees(last_name, first_name, address, city, state, zip_code, phone, email, position)
VALUES ('Peterson', 'Brent', '857 125th St.', 'Jeffersonville', 'IN', 47111, 5028902638, 'bpeterson78@yahoo.com', 'Office Manager');
INSERT INTO Employees(last_name, first_name, address, city, state, zip_code, phone, email, position)
VALUES ('McKinney', 'George', '29457 S. Lexington Ave.', 'Louisville', 'KY', 40289, 5028493029, 'GMCK1983@icloud.com', 'Inventory Manager');
INSERT INTO Employees(last_name, first_name, address, city, state, zip_code, phone, email, position)
VALUES ('Oliveria', 'Sharna', '1992 Broadway St.', 'Louisville', 'KY', 40255, 5025467854, 'Sharna@Tesh4Sale.com', 'HR');
INSERT INTO Employees(last_name, first_name, address, city, state, zip_code, phone, email, position)
VALUES ('Stanton', 'Elizabeth', '1090 S. Cornerstone Pkwy.', 'Prairie Village', 'KY', 47144, 5020046653, 'estanton7@yahoo.com', 'Fulfillment Manager');
INSERT INTO Employees(last_name, first_name, address, address2, city, state, zip_code, phone, email, position)
VALUES ('Michaels', 'Spencer', '2847 Flint Ave.', 'Apt. 534', 'Heritage Creek', 'KY', 40229, 5028493384, 'spencemichaels@gmail.com', 'Order Fulfiller');
INSERT INTO Employees(last_name, first_name, address, city, state, zip_code, phone, email, position)
VALUES ('Oscar', 'James', '97 Oak Rd.', 'Lyndon', 'KY', 40223, 5022536674, 'jamoscar@gmail.com', 'Order Fulfiller');
INSERT INTO Employees(last_name, first_name, address, city, state, zip_code, phone, email, position)
VALUES ('Freeman', 'Maria', '397 Pratt St.', 'Shively', 'KY', 40256, 5023957735, 'freeman88@outlook.com', 'Sales Manager');
INSERT INTO Employees(last_name, first_name, address, address2, city, state, zip_code, phone, email, position)
VALUES ('Turner', 'Oliver', '90987 Orange Way', 'Apt. 217', 'Clarksville', 'IN', 47129, 5029948322, 'turner.olly99@gmail.com', 'Sales Representative');
INSERT INTO Employees(last_name, first_name, address, address2, city, state, zip_code, phone, email, position)
VALUES ('George', 'Gregg', '5904 Stream St.', 'Apt. 205', 'Prairie Village', 'KY', 47172, 5026646637, 'ggeorgeg@yahoo.com', 'Sales Representative');

#Insertion of data into OS table (3 rows)
INSERT INTO OS(brand, name, version, release_date)
VALUES ('Apple', 'MacOS Sonoma', '14.5', '2024-05-13');
INSERT INTO OS(brand, name, version, release_date)
VALUES ('Microsoft', 'Windows 11 Home', '23H2', '2023-10-31');
INSERT INTO OS(brand, name, version, release_date)
VALUES ('Microsoft', 'Windows 11 Pro', '23H2', '2023-10-31');

#Insertion of data into Product table (20 rows)
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('16" Macbook Pro', 'Apple', '1TB', '18GB', '9.77x14.01x0.66', 4.70, 1);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('14" Macbook Pro', 'Apple', '512GB', '18GB', '8.71x12.31x0.61', 3.40, 1);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('15" Macbook Air', 'Apple', '512GB', '16GB', '9.35x13.40x0.45', 3.30, 1);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('13" Macbook Air', 'Apple', '256GB', '8GB', '8.46x11.97x0.44', 2.70, 1);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('iMac', 'Apple', '1TB', '8GB', '5.80x21.50x18.10', 9.87, 1);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('Mac Mini', 'Apple', '512GB', '8GB', '7.75x7.75x1.41', 2.60, 1);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('Mac Studio', 'Apple', '2TB', '32GB', '7.70x7.70x3.70', 5.90, 1);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('XPS 14', 'Dell', '512GB', '16GB', '8.50x12.60x0.71', 3.80, 2);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('XPS 15', 'Dell', '1TB', '16GB', '9.06x13.57x0.71', 4.21, 2);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('XPS 16', 'Dell', '1TB', '32GB', '9.50x14.10x0.74', 4.80, 3);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('Inspiron 14', 'Dell', '512GB', '16GB', '8.90x12.36x0.74', 3.44, 2);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('Inspiron 15', 'Dell', '512GB', '16GB', '9.27x14.11x0.83', 3.65, 2);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('Inspiron 16', 'Dell', '1TB', '16GB', '9.82x14.05x0.75', 4.12, 3);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('ProBook 445', 'HP', '256GB', '16GB', '8.42x12.67x0.78', 3.05, 2);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('ProBook 450', 'HP', '512GB', '16GB', '9.20x14.14x0.78', 3.94, 2);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('250', 'HP', '512GB', '16GB', '9.53x14.09x0.78', 3.84, 2);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('255', 'HP', '512GB', '16GB', '9.53x14.09x0.79', 3.84, 2);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('Zbook Firefly', 'HP', '1TB', '16GB', '9.89x14.12x0.76', 3.96, 2);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('Surface Studio 2', 'Microsoft', '256GB', '16GB', '9.06x12.72x0.86', 4.18, 2);
INSERT INTO products(name, brand, storage, ram, dimensions, weight, opsys_id)
VALUES ('ThinkBook 16', 'Lenovo', '1TB', '16GB', '9.98x14.01x0.69', 3.75, 2);

#Insertion of data into Orders table (20 rows)
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (18, 13, 1, 5);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (3, 6, 3, 7);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (8, 12, 4, 10);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (8, 7, 5, 6);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (17, 6, 1, 7);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (4, 14, 1, 8);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (13, 8, 1, 5);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (4, 10, 1, 10);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (1, 3, 2, 10);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (2, 8, 2, 9);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (16, 5, 1, 8);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (12, 16, 4, 9);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (2, 11, 2, 9);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (19, 3, 1, 6);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (11, 18, 1, 5);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (4, 7, 1, 7);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (3, 20, 7, 7);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (11, 15, 3, 6);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (15, 16, 1, 5);
INSERT INTO orders(product_id, customer_id, count, employee_id)
VALUES (3, 1, 1, 9);

#############################QUERIES############################################

#Query 1: Return all information from the products database.

SELECT * FROM products;

#Query 2: Return all employees in a position of leadership (managers, CEO), their position, their email, and their phone number.

SELECT first_name AS 'First Name', last_name AS 'Last Name', position, email, phone AS 'Phone Number' FROM employees 
WHERE position = 'CEO' OR position LIKE '%Manager';

#Query 3: Return all information from the product table with all relevent OS information included as well.

SELECT * FROM products JOIN os ON os.os_id = products.opsys_id;

#Query 4: Return all customers who have placed an order, the name of the product they ordered, and the amount ordered

SELECT customers.first_name AS 'Customer First Name', customers.last_name AS 'Customer Last Name', products.name AS Product, orders.count AS Count FROM orders
JOIN customers ON orders.customer_id = customers.cust_id
JOIN products ON orders.product_id = products.prod_id;

#Query 5: Return all employees who should be packing orders, the product to be packed, the quantity, and the address to ship it to.

SELECT employees.first_name AS 'Employee First Name', employees.last_name AS 'Employee Last Name', products.name AS 'Product', orders.count AS 'Count' FROM orders
JOIN employees ON orders.employee_id = employees.emp_id
JOIN products ON orders.product_id = products.prod_id;

#Query 6: Return all products being ordered currently and their OS information

SELECT products.name AS Product, os.brand AS 'OS Brand', os.name AS 'OS Name', os.release_date AS 'OS Release Date', os.version AS 'OS Version' FROM orders
JOIN products ON orders.product_id = products.prod_id
JOIN OS ON products.opsys_id = os.os_id;

##################################################################################################
# CREATED BY COREY STJEAN
# JULY 7, 2024
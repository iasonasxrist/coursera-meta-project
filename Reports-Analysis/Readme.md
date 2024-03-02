# LittleDB Analysis for Sales 

** Database Clients Project* wth Python **

The following Software and Packages are installed for completing this project : 

1. Python

2. MySQL server

3. Jupyter notebook

4. MySQL Connector/Python API


## About the Project:**

Little Lemon is a restaurant. They are developing a Python-based application that needs to connect with the MySQL database so that the booking, menu, and order data can be stored in the respective tables. 

The restaurant owner wants to use the stored data to make data-driven decisions to increase their revenue. Establishing a database is one of their key objectives. 

The given steps are used to set up the Little Lemon database: 

## Step 1: Establish a connection:

Open a new Jupyter notebook and import the MySQL Connector/Python API to establish a connection between Python and MySQL database.

## Step 2: Create a cursor:

Once the connection between Python and MySQL database is successfully established, you need a cursor object to communicate with MySQL. 

## Step 3: Create the database and set it for use:

Now that you have a connection and a cursor, create a new database LittleDB, and set the database for use.

## Step 4: Create tables and Insert data:

Create and populate the tables in the LittleDB database: MenuItems table, Menu table, Bookings table, Orders table, and Employees table.

**Step 5: Implement and query stored procedures:**

Create a pool of connections and get a connection from the pool to implement the stored procedures to complete the following tasks:

1. Establish a connection by importing MySQLConnectionPool and creating a pool with two connections.

2. Create and call a stored procedure named PeakHours that identifies the peak, or busiest hour, for the restaurant based on the number of bookings.

3. Create and call a stored procedure named GuestStatus that outputs the status of each guest’s order based on which employee is assigned to the order.

## Stored procedures are created to carry out routine operations on MySQL databases. They are consistent and make sure that the written SQL queries in the procedures are executed in the same way every time you call the stored procedure. A stored procedure is created only once, and you store it in the MySQL database. You can call the stored procedures as many times as you need in a Python-based application.

The tasks and the steps that you must follow to complete each one are as follows:

## Tasks Overview

### Task 1: Establish Connection

1. Import MySQLConnectionPool and Error.
2. Create a pool named pool_a with two connections.
3. Handle errors using a try-except block.
4. Obtain a connection from pool_a and create a cursor object.

### Task 2: Implement PeakHours Stored Procedure

1. Write a SQL query to create the PeakHours stored procedure.
2. Execute the query using the cursor.
3. Call the stored procedure using callproc.
4. Fetch the results and print column names.
5. Print sorted data using a for loop.

### Task 3: Implement GuestStatus Stored Procedure

1. Write a SQL query to create the GuestStatus stored procedure.
2. Execute the query using the cursor.
3. Call the stored procedure using callproc.
4. Fetch the results and print column names.
5. Print sorted data using a for loop.

### Task 4: Establish Connection Pool

1. Import MySQLConnectionPool class and Error.
2. Define database configurations as dbconfig dictionary.
3. Create a connection pool named pool_b with two connections.
4. Handle connection errors using a try-except block.

### Task 5: Book Dinner Slots

1. Get connections from pool_b.
2. Insert data for three guests into the Bookings table.
3. Handle errors for exceeding connection pool size.

### Task 6: Create Report

1. Retrieve Little Lemon manager's name and EmployeeID.
2. Find the employee with the highest salary and get their name and role.
3. Count the number of guests booked between 18:00 and 20:00.
4. Get full names and BookingIDs of guests waiting to be seated, sorted by BookingSlot.

### Task 7: Basic Sales Report

1. Create BasicSalesReport stored procedure to calculate total sales, average sale, minimum, and maximum bill paid.

### Task 8: Display Upcoming Bookings

1. Get a connection from the pool.
2. Create a buffered cursor.
3. Retrieve data from Bookings and Employee tables, sort it, and display the first three upcoming bookings.
4. Return the connection back to the pool.

[BookingSlot]

[Guest_name]

[Assigned to: Employee Name [Employee Role]]






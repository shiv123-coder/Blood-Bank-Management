# 🩸 Blood Bank Management System

[](https://www.oracle.com/java/)
[](https://openjfx.io/)
[](https://www.mysql.com/)

A robust, scalable **JavaFX-based desktop application** designed to streamline blood bank operations. This system automates donor tracking, inventory management, and recipient requests with a focus on **performance, security, and clean architecture**.

-----

## 🚀 Key Features

  * 🔴 **Donor Management** – Full CRUD operations (Create, Read, Update, Delete) for donor profiles.
  * 🩸 **Real-time Inventory** – Live monitoring of blood units categorized by type ($A+$, $O-$, etc.).
  * 🧑‍⚕️ **Request Handling** – Efficient matching of recipients with available blood stock.
  * 👨‍⚕️ **Staff Administration** – Role-based management for doctors and operational staff.
  * 🎨 **Modern UI** – Responsive design built with JavaFX and CSS for a seamless user experience.
  * 🔐 **Secure Data Handling** – Implementation of JDBC with **parameterized queries** to prevent SQL injection.

-----

## 🧰 Tech Stack

  * **Language:** Java 17+
  * **UI Framework:** JavaFX
  * **Database:** MySQL 8+
  * **Connectivity:** JDBC (Java Database Connectivity)
  * **Build Tool:** CLI / IDE (IntelliJ/Eclipse)

-----

## ⚙️ Setup & Installation

### 1\. Prerequisites

Ensure you have the following installed:

  * **JDK 17** or higher
  * **JavaFX SDK**
  * **MySQL Server**

### 2\. Database Initialization

Create the database and import the schema:

```sql
CREATE DATABASE BloodManagement;
USE BloodManagement;
-- Run the provided SQL script
mysql -u root -p BloodManagement < database/bloodmanagement.sql
```

### 3\. Configuration

Create a `config.properties` file in the root directory to store your credentials securely:

```ini
db.url=jdbc:mysql://localhost:3306/BloodManagement
db.user=your_username
db.password=your_password
```

### 4\. Running the Application

You can launch the app using the provided batch file:

```bash
./run.bat
```

Alternatively, via terminal:

```bash
javac -cp ".;lib/*" -d out src/**/*.java
java -cp ".;out;lib/*" blood.management.BloodManagement
```

-----

## 🔐 Security Best Practices

  * **SQL Injection Prevention:** All database interactions use `PreparedStatement` to ensure data integrity.
  * **Environment Safety:** Sensitive credentials are externalized to `.properties` files.
  * **Recommendation:** Always add `config.properties` to your `.gitignore` to prevent leaking credentials to version control.

-----

## 👨‍💻 Author

**Shivshankar Mali** *Full Stack Developer*

  * **GitHub:** [@shiv123-coder](https://github.com/shiv123-coder)
  * **Project Link:** [Blood Bank Management System](https://www.google.com/search?q=https://github.com/shiv123-coder/Blood-Bank-Management)

-----

*Developed with ❤️ for better healthcare management.*

<<<<<<< HEAD
=======
<<<<<<< HEAD
# 🩸 Blood Bank Management System  
A complete **JavaFX-based Blood Bank Management System** designed to manage donors, blood inventory, receivers, doctors, and volunteers with a secure **MySQL backend**.  
This project features a modular structure, clean UI, and scalable design suitable for academic and real-world organizations.

---

## 🚀 Features

### 🔴 Donor Management
- Add, update, search, and delete donor records  
- Track age, weight, blood group, gender, and last donation date  

### 🩸 Blood Request / Receiver Management
- Manage blood request records  
- Check availability & update request status automatically  

### 🧑‍⚕️ Doctor Management
- Add and maintain doctor profiles  
- Assign responsibilities and roles  

### 🙋 Volunteer / Employee Management
- Add and manage volunteers or staff members  

### 🧪 Blood Inventory Module
- View available blood units by blood group  
- Auto-update inventory after donation or blood issue  

### 🎨 Modern JavaFX UI
- Smooth navigation  
- Dark-theme based UI with CSS  

### 🔗 MySQL Integration
- Secure & fast JDBC-based operations  
- Clean and optimized database schema  

---

## 🧰 Technologies Used

| Component | Version |
|----------|---------|
| **Java** | 22 |
| **JavaFX** | 24 |
| **MySQL** | 8+ |
| **MySQL JDBC Driver** | 9.2.0 |
| **IDE** | VS Code |

---

## 🗂️ Project Structure

Blood Management/
│── src/
│ ├── DB/ # Database handling classes
│ └── blood/management/ # Controllers & JavaFX logic
│
│── Images/ # UI images/icons
│── lib/ # MySQL JDBC Connector
│── out/ # Compiled class files
│── build/ # Optional build folder
│── DarkTheme.css # JavaFX UI styling
│── bloodmanagement.sql # Database schema
│── blood_SQL.txt # Optional SQL dump
│── compile.bat # Script to compile project
│── run.bat # Script to run project
└── README.md # Documentation

yaml
Copy code

---

## 🛠️ Setup Instructions (Windows)

### ✔️ Requirements
- Install **JDK 22+**
- Install **JavaFX SDK 24+**
- Install **MySQL Server + Workbench**
- Add Java & JavaFX to **system PATH** (recommended)

---

## 📥 Step 1: Import the Database

1. Open **MySQL Workbench**  
2. Go to **File → Open SQL Script**
3. Select:  
bloodmanagement.sql

yaml
Copy code
4. Run the script to generate all required tables.

---

## ▶️ Step 2: Run the Application

### **Option A — Using run.bat (Recommended)**
Simply double-click:
run.bat

yaml
Copy code

This auto-runs JavaFX with the correct modules.

---

## 📸 Screenshots  
(Add your PNG/JPG files here)

- 🧪 Available Blood  
- 🩸 Blood Receiver Management  
- 🧑‍⚕️ Doctor Details  
- 🧑‍💉 Donor Module  
- 🙋 Volunteer / Employee Module  

---

## 👨‍💻 Author
**Shivshankar Mali**  
_Blood Bank Management System — JavaFX + MySQL Project_

---
=======
>>>>>>> 4f506a4
# Blood Bank Management System

A comprehensive desktop application for managing blood bank operations including donor management, blood inventory tracking, recipient management, and staff administration.

## Description

The Blood Bank Management System is a JavaFX-based desktop application designed to streamline and automate blood bank operations. It provides an intuitive interface for managing blood donors, tracking blood inventory, handling recipient requests, and maintaining staff records. The system features a modern UI with efficient database integration for reliable data management.

## Features

- **Donor Management**: Register and manage blood donors with comprehensive details
- **Blood Inventory**: Real-time tracking of available blood units by type and group
- **Recipient Management**: Handle blood recipient requests and track distribution
- **Staff Administration**: Manage employee records and roles
- **Doctor Management**: Maintain doctor information and specialties
- **Modern UI**: Clean, responsive interface with smooth animations
- **Data Security**: Secure database connection with encrypted credentials
- **Search & Filter**: Quick access to records with advanced filtering options

## Tech Stack

### Frontend
- **JavaFX 17+**: Modern UI framework for desktop applications
- **FXML**: Declarative UI markup
- **CSS3**: Custom styling with modern design principles

### Backend
- **Java 17+**: Core application logic
- **MySQL 8.0+**: Relational database for data persistence
- **JDBC**: Database connectivity

### Development Tools
- **Scene Builder**: FXML design tool
- **MySQL Connector/J**: JDBC driver for MySQL

## Screenshots

*Note: Screenshots will be added after deployment*

- Main Dashboard
- Donor Registration Form
- Blood Inventory View
- Recipient Management
- Staff Administration

## Installation Steps

### Prerequisites
- Java Development Kit (JDK) 17 or higher
- MySQL Server 8.0 or higher
- MySQL Connector/J 9.2.0 (included)

### Database Setup

1. **Install MySQL Server** on your system
2. **Create Database**:
   ```sql
   CREATE DATABASE BloodManagement;
   ```
3. **Import Schema**:
   ```bash
   mysql -u root -p BloodManagement < database/bloodmanagement.sql
   ```

### Application Setup

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/shiv123-coder/Blood-Bank-Project.git
   cd Blood-Bank-Project
   ```

2. **Configure Database**:
   ```bash
   cd app
   cp .env.example config.properties
   ```
   Edit `config.properties` with your database credentials:
   ```properties
   db.url=jdbc:mysql://localhost:3306/BloodManagement?useSSL=false&allowPublicKeyRetrieval=true
   db.user=root
   db.password=your_mysql_password
   ```

3. **Compile and Run**:
   ```bash
   # Using the provided batch file (Windows)
   run-bloodbank.bat
   
   # Or manually compile and run
   javac -cp ".;lib/*" -d out src/**/*.java
   java -cp ".;out;lib/*" blood.management.BloodManagement
   ```

## Environment Variables

Create a `config.properties` file in the `app` directory based on `.env.example`:

```properties
# Database Configuration
db.url=jdbc:mysql://localhost:3306/BloodManagement?useSSL=false&allowPublicKeyRetrieval=true
db.user=root
db.password=your_secure_password_here

# Application Configuration
app.name=Blood Bank Management System
app.version=1.0.0
debug=false
```

**Security Notes:**
- Never commit `config.properties` to version control
- Use strong, unique passwords for production databases
- Consider using environment variables for additional security

## Project Structure

```
Blood Bank Management/
├── app/
│   ├── src/
│   │   ├── DB/                 # Database connection classes
│   │   ├── blood/management/   # Core application logic
│   │   ├── views/              # FXML UI files
│   │   └── styles/             # CSS styling
│   ├── lib/                    # External dependencies
│   ├── out/                    # Compiled classes
│   ├── .env.example           # Environment template
│   └── run-bloodbank.bat      # Windows startup script
├── database/
│   ├── bloodmanagement.sql    # Database schema
│   └── mysql-connector-j-9.2.0/ # JDBC driver
├── .gitignore                 # Git ignore rules
└── README.md                  # This file
```

## Deployment

### Windows
1. Package as executable JAR:
   ```bash
   jar cfe BloodBankManagement.jar blood.management.BloodManagement -C out .
   ```
2. Create installer using tools like:
   - **jpackage** (Java 17+)
   - **Inno Setup**
   - **WiX Toolset**

### Cross-Platform
- Use **jlink** to create runtime images
- Package with **Java Packager** for distribution

## Future Improvements

- [ ] Blood compatibility checking system
- [ ] SMS/email notifications for donors
- [ ] Advanced reporting and analytics
- [ ] Multi-user role-based access control
- [ ] Cloud database integration
- [ ] Mobile companion application
- [ ] Barcode scanning for blood bags
- [ ] Emergency request management
- [ ] Blood expiry tracking
- [ ] Donor health history management

## Author

**Shivshankar Mali**
- Email: [shivashankrmali7@gmail.com](mailto:shivashankrmali7@gmail.com)
- GitHub: [@shiv123-coder](https://github.com/shiv123-coder)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Support

For support and questions:
- Create an issue in the GitHub repository
- Email: shivashankrmali7@gmail.com

---

**Note**: This application is designed for educational and demonstration purposes. Please ensure compliance with local healthcare regulations and data protection laws when using in production environments.
<<<<<<< HEAD
=======
>>>>>>> f57eb35 (Updated project files)
>>>>>>> 4f506a4

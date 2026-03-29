@echo off
cd /d "%~dp0"

echo Compiling Java files...
if not exist "out" mkdir out

echo Copying resources...
xcopy /E /I /y "src\views" "out\views" >nul 2>nul
xcopy /E /I /y "src\styles" "out\styles" >nul 2>nul
xcopy /E /I /y "src\assets" "out\assets" >nul 2>nul
copy "config.properties" "out" >nul 2>nul

javac ^
  -cp "lib/mysql-connector-j-9.2.0.jar;C:\javafx-sdk-24\lib\*;src" ^
  -d out ^
  src\DB\DBConnection.java ^
  src\DB\DeleteDatabase.java ^
  src\DB\DisplayDatabase.java ^
  src\DB\QueryDatabase.java ^
  src\blood\management\AddbloodSence.java ^
  src\blood\management\AvailableSenceController.java ^
  src\blood\management\BloodManagement.java ^
  src\blood\management\bloodRecieversence.java ^
  src\blood\management\Doctor.java ^
  src\blood\management\EmployeeController.java ^
  src\blood\management\Employee.java ^
  src\blood\management\Mainpage.java

if errorlevel 1 (
  echo.
  echo Compilation failed. Please check the errors above.
  pause
  exit /b
)

echo.
echo Running application...
java ^
  --module-path "C:\javafx-sdk-24\lib" ^
  --add-modules javafx.controls,javafx.fxml ^
  -cp "out;lib/mysql-connector-j-9.2.0.jar" ^
  blood.management.BloodManagement

pause

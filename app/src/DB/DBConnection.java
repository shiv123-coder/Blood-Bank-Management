package DB;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBConnection {
  private static Connection conn = null;
  private static String url = null;
  private static String user = null;
  private static String password = null;

  static {
      Properties props = new Properties();
      try (FileInputStream in = new FileInputStream("config.properties")) {
          props.load(in);
          url = props.getProperty("db.url");
          user = props.getProperty("db.user");
          password = props.getProperty("db.password");
          
          // Validate required properties
          if (url == null || user == null || password == null) {
              throw new RuntimeException("❌ Missing required database configuration in config.properties");
          }
      } catch (IOException e) {
          System.err.println("❌ Critical Error: config.properties file not found or unreadable.");
          System.err.println("Please copy app/.env.example to app/config.properties and configure your database settings.");
          System.exit(1);
      }
  }

  public static Connection connect() {
    try {
      // Load MySQL JDBC Driver
      Class.forName("com.mysql.cj.jdbc.Driver");

      // Establish the connection with timeout
      conn = DriverManager.getConnection(url, user, password);
      // Remove production console log
    } catch (ClassNotFoundException e) {
      System.err.println("❌ JDBC Driver not found: " + e.getMessage());
      throw new RuntimeException("Database driver configuration error", e);
    } catch (SQLException e) {
      System.err.println("❌ Database connection failed: " + e.getMessage());
      throw new RuntimeException("Database connection error", e);
    }
    return conn;
  }

  public static Connection getConnection() {
    try {
      if (conn == null || conn.isClosed()) {
        connect();
      }
    } catch (SQLException e) {
      System.err.println("❌ Connection check failed: " + e.getMessage());
    }
    return conn;
  }
}

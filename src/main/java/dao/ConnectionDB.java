package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {

    private String url = "jdbc:postgresql://localhost:5432/masterannonce";
    private String user = "afivel";
    private String password = "rivvsQ7r";
    private static Connection connection;
    private ConnectionDB() throws ClassNotFoundException {
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static Connection getInstance() throws ClassNotFoundException {
        if(connection == null) {
            new ConnectionDB();
        }
        return connection;
    }

}

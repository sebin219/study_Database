package jdbc.common;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class JDBCUtil {

    // 싱글톤패턴
    static Connection conn = null;

    public static Connection getConnection() {

        // 이미 conn 객체가 있다면 존재하는 객체 반환
        if(conn!= null) return conn;

        // Properties  파일 읽어오기위한 객체 준비
        Properties prop = new Properties();

        try {
            // prop.load : key-value형태로 스트림으로 읽어온 데이터 저장
            // getResourceAsStream : 파일내용을 InputStream으로 가져옴
            prop.load(JDBCUtil.class.getResourceAsStream("/application.properties"));

            System.out.println("props" + prop);

            String driver = prop.getProperty("driver");
            String url = prop.getProperty("url");
            String user = prop.getProperty("user");
            String password = prop.getProperty("password");

            Class.forName(driver);

//            conn = DriverManager.getConnection(url, user, password);
            conn = DriverManager.getConnection(url, prop);

            System.out.println("연결성공 연결객체 : " + conn);

        } catch (IOException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return conn;
    }

    // 연결을 닫을때 사용하는 메서드
    public static void close() {
        try {
            if(conn != null) {
                conn.close();
                conn = null;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
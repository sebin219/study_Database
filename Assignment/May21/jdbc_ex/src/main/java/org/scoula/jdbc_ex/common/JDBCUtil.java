package org.scoula.jdbc_ex.common;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class JDBCUtil {
    private static Connection conn;

    public static Connection getConnection() throws Exception {
        if (conn != null && !conn.isClosed()) return conn;
        //Properties 클래스를 사용하여 application.properties 파일 로드
        Properties props = new Properties();
        props.load(new FileInputStream("src/main/resources/application.properties"));
        //필요한 정보 추출
        String driver = props.getProperty("driver");
        String url = props.getProperty("url");
        String username = props.getProperty("username");
        String password = props.getProperty("password");
        //드라이버를 메모리에 로드하고 연결
        Class.forName(driver);
        conn = DriverManager.getConnection(url, username, password);
        return conn;
    }
    // db 접속을 끊는 close() 메서드 정의
    public static void close() {
        try {
            if (conn != null && !conn.isClosed()) conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

package jdbc.common;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.*;

class JDBCUtilTest {

    @Test
    @DisplayName("db 접속 연습")
    void testConnection() {
        /*
        * 1. 연결 만들기
        * -> url, 사용자 계정(id), 비밀번호(password)
        * */

        String url = "jdbc:mysql://localhost:3306/testdb";
        String id = "root";
        String password = "1234";

//        Class.forName("com.mysql.cj.jdbc.Driver");  //jdbc안의 driver 클래스를 로드해서 메모리 상에 올리는 기능

        try(Connection conn = DriverManager.getConnection(url, id, password)) {
            System.out.println("연결 성공!");

            // 객체가 생성되었는지
            assertNotNull(conn);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
package jdbc.section02;

import jdbc.common.JDBCUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Application1 {
    public static void main(String[] args) {

        Connection conn = JDBCUtil.getConnection();

        // 쿼리문을 저장하고 실행하는 기능을 하는 용도의 인터페이스
        Statement stmt = null;

        // select 결과집합을 받아올 용도의 인터페이스
        ResultSet rset = null;

        try {
            // connection을 이용해 statement 객체 생성
            stmt = conn.createStatement();

            String query = "select * from usertbl";

            rset = stmt.executeQuery(query);

            while (rset.next()) {
                System.out.println(rset.getString("userId") +
                        ", " + rset.getString("name"));
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {

            try {
                if (rset != null) rset.close();
                if (stmt != null) stmt.close();

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            JDBCUtil.close();
        }

    }
}
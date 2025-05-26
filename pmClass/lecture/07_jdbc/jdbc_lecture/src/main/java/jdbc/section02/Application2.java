package jdbc.section02;

import jdbc.common.JDBCUtil;

import java.sql.*;

public class Application2 {
    public static void main(String[] args) {

        Connection conn = JDBCUtil.getConnection();

        /*
         * PreparedStatement
         * - Statement 를 상속한 interface
         * - 완성된 SQL과 미완성된 SQL 둘다 사용 가능
         *
         * 위치홀더(placeholder) : ?
         * - SQL문에서 실제 값이 들어갈 자리를 미리 표시해놓는 기호
         * */
        PreparedStatement pstmt = null;

        // select 결과집합을 받아올 용도의 인터페이스
        ResultSet rset = null;

        try {
            String query = "select * from usertbl where name = ?";

            // connection을 이용해 prepareStatement 객체 생성
            // sql문을 인자로 받는다.
            pstmt = conn.prepareStatement(query);

            String name = "김경호";

            // 첫번째 플레이스홀더에 "김경호" 삽입
            pstmt.setString(1, name);

            rset = pstmt.executeQuery();

            while (rset.next()) {
                System.out.println(rset.getString("userId") +
                        ", " + rset.getString("name"));
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {

            try {
                if (rset != null) rset.close();
                if (pstmt != null) pstmt.close();

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            JDBCUtil.close();
        }

    }
}
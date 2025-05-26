package org.scoula.jdbc_ex.test;

import org.junit.jupiter.api.Test;
import org.scoula.jdbc_ex.common.JDBCUtil;

import java.sql.Connection;

import static org.junit.jupiter.api.Assertions.assertNotNull;

public class ConnectionTest {

    @Test
    public void testConnection() throws Exception {
        Connection conn = JDBCUtil.getConnection();
        assertNotNull(conn);
        JDBCUtil.close();
    }

    @Test
    public void testConnection2() throws Exception {
        Connection conn = JDBCUtil.getConnection();
        System.out.println("연결 성공 여부: " + (conn != null));
        JDBCUtil.close();
    }
}
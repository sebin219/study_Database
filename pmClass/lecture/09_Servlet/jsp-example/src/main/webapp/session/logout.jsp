<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 세션 무효화
    session.invalidate();

    // 로그인 폼으로 이동
    response.sendRedirect("loginForm.html");
%>
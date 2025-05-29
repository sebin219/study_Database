<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // request 쿼리 파라미터에서 userId와 password 받아오기
    String userId = request.getParameter("userId");
    String password = request.getParameter("password");

    // session.Attribute에 저장
    session.setAttribute("userId", userId);
    session.setAttribute("password", password);

    //loginInfo.jsp로 이동
    response.sendRedirect("loginInfo.jsp");
%>
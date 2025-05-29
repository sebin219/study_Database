<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>방문자 수 보기</title>
</head>
<body>
<h2>현재 방문자 수</h2>
<%
    // Attribute : JSP/Servlet 간의 데이터 전달을 하기 위해 사용하는 key-value 저장소
    // application : 서버 전체 공유
    // session : 로그인 상태 유지
    // request : 요청 정보 전달
    Integer count = (Integer) application.getAttribute("count");

    if (count == null) {
        count = 0;
    }
%>
<p>총 방문자 수 : <%= count %>
</p>
</body>
</html>

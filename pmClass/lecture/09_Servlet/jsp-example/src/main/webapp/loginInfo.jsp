<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>입력한 로그인 정보</h2>
    <%--
    request --> 내장객체
    클라이언트가 보낸 요청 정보등을 담고 있음
    --%>
    <p>아이디 :<%= request.getParameter("userId")%> </p>
    <p>비밀번호 :<%= request.getParameter("password")%> </p>
</body>
</html>

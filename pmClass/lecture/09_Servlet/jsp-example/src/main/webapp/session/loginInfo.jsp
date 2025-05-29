<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String userId = (String) session.getAttribute("userId");
    String password = (String) session.getAttribute("password");

    String sessionInfo = String.valueOf(request.getSession());
    String sessionID = String.valueOf(request.getSession().getId());
%>

<p>아이디 : <%=userId%></p>
<p>비밀번호 : <%=password%></p><br/>
<p>세션 : <%=sessionInfo%></p>
<p>세션ID : <%=sessionID%></p>

<p><a href="logout.jsp">로그아웃</a></p>
</body>
</html>
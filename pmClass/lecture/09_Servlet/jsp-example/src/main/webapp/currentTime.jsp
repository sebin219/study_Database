<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%--현재 시간 출력--%>
<p><%
    Date now = new Date();
    out.println(now.toString());
%>
</p>
</body>
</html>

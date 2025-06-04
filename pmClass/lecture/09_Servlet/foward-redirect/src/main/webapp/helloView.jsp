<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
//    pageContext.setAttribute("username", "page");
%>
<%--
- EL
- JSP에서 자바 코드를 직접 작성하지 안호곧 속성을 출력할 수 있게 해주는 표현식 문법

- EL이 검색하는 순서
- page -> request -> session -> application

--%>
<p>안녕하세요, ${username}님!</p>
</body>
</html>

<%--
지시자 태그
- JSP 페이지에 대한 설정 정보를 지정할 때 사용하는 태그
- page : 인코딩, import, 오류처리 등등 설정할 때 사용
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP</title>
</head>
<body>
<!-- jsp 주석 -->
<%--
 jsp 주석
 - 서블릿으로 변환 시 클라이언트에게 노출되지 않음 (html 주석은 노출됨)
 --%>

<%--
 선언태그
 - 태그 안에 작성한 내용을 필드로 선언
--%>
<%!
    private String name;
    private int age;
%>

<%-- scriptlet 태그 --%>
<%
    // 자바코드를 작성할 수 있는 태그
    name = "홍길동";
    age = 20;

    System.out.println("name = " + name);
    System.out.println("age = " + age);
%>

<%-- expression 태그 --%>
name : <%= name %>
age : <%= age %>
</body>
</html>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %></h1>
<br/>
<form action="hello" method="get">
    이름: <input type="text" name="name"/>
    <input type="submit" value="인사하기"/>

</form>

</body>
</html>
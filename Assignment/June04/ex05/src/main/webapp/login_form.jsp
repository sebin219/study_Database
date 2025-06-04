<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>로그인 폼</title>
</head>
<body>
<div class="login-box">
  <h3>로그인 폼</h3>
  <ul>
    <li>아이디
      <input type="text" name="userid" form="loginForm" />
    </li>
    <li>비밀번호
      <input type="password" name="passwd" form="loginForm" />
    </li>
    <li>
      <form id="loginForm" action="login" method="get">
        <input type="submit" value="전송" />
      </form>
    </li>
  </ul>
</div>
</body>
</html>
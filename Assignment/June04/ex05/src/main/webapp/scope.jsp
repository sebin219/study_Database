<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>scope 데이터 보기</title>
</head>
<body>
<div class="scope-box">
    <h2>scope 데이터 보기</h2>

    <p><span class="label">pageScope의 속성값은:</span>
        ${pageScope.pageScopeName}
    </p>

    <p><span class="label">requestScope의 속성값은:</span>
        ${requestScope.requestScopeName}
    </p>

    <p><span class="label">sessionScope의 속성값은:</span>
        ${sessionScope.sessionScopeName}
    </p>

    <p><span class="label">applicationScope의 속성값은:</span>
        ${applicationScope.applicationScopeName}
    </p>

    <p><span class="label">scopeName 자동 찾기:</span>
        ${scopeName}
    </p>

    <p><span class="label">member:</span>
        ${member.name}(${member.userid})
    </p>
</div>
</body>
</html>
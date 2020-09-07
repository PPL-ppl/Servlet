<%--
  Created by IntelliJ IDEA.
  User: 19424
  Date: 2020/8/31
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    for (Cookie cookie : cookies) {
        if (cookie.getName().equals("name")) {
            out.print("hello"+cookie.getValue());
        }
    }
%>
<a href="/cookieLogout">退出</a>
</body>
</html>

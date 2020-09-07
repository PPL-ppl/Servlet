<%--
  Created by IntelliJ IDEA.
  User: 19424
  Date: 2020/8/30
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>wel</title>
</head>
<body>
<h1>
    hello:
    <%
        Object name = session.getAttribute("name");
    %>
    <%=name%>
    <%
        String id = session.getId();
        System.out.println(session.getMaxInactiveInterval());
    %>
    <%=id%>
    <a href="/logout">退出登录</a>
</h1>
</body>
</html>

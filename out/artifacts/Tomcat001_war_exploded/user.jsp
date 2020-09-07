<%@ page import="java.util.List" %>
<%@ page import="com.ms.ser.Entity.User" %><%--
  Created by IntelliJ IDEA.
  User: 19424
  Date: 2020/8/31
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th>姓名</th>
        <th>年龄</th>
    </tr>
<%--    <%
        List<User> list = (List<User>) request.getAttribute("list");
        for (User user : list) {
            request.setAttribute("user",user);
    %>
    <tr>
        <td>${requestScope.user.name}</td>
        <td>${requestScope.user.age}</td>
    </tr>
    <%
        }
    %>--%>

    <c:forEach items="${list}" var="user">
        <tr>
            <td>${user.name}</td>
            <td>${user.age}</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>

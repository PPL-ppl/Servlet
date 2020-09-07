<%--
  Created by IntelliJ IDEA.
  User: 19424
  Date: 2020/8/31
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Object name = pageContext.getAttribute("name");
    Object name1 = request.getAttribute("name1");
    Object name2 = session.getAttribute("name2");
    Object name3 = application.getAttribute("name3");
%>
<h1>后面是page:<%=name%></h1>
<h1>后面是request:<%=name1%></h1>
<h1>后面是session:<%=name2%></h1>
<h1>后面是application:<%=name3%></h1>
</body>
</html>

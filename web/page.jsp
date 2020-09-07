<%--
  Created by IntelliJ IDEA.
  User: 19424
  Date: 2020/8/31
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    pageContext.setAttribute("name","tom");
    request.setAttribute("name1","tom1");
    session.setAttribute("name2","tom2");
    application.setAttribute("name3","tom3");
%>
<%
    Object name = pageContext.getAttribute("name");
    //request.getRequestDispatcher("request.jsp").forward(request,response);
%>
<%=name%>
<a href="request.jsp">电竞</a>
</body>
</html>

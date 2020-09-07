<%--
  Created by IntelliJ IDEA.
  User: 19424
  Date: 2020/8/30
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>check</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(username.equals("admin")&password.equals("123456")){
        request.setAttribute("name",username);
        request.getRequestDispatcher("welcome.jsp").forward(request,response);
    }else {
        response.sendRedirect("login.jsp");
    }
%>
</body>
</html>

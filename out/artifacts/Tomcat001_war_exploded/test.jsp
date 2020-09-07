<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: 19424
  Date: 2020/8/30
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ss</title>
</head>
<body>
<h1>
    <%
        String id = request.getParameter("id");
        String[] names = request.getParameterValues("name");//得到多个同名的数据
        request.setCharacterEncoding("UTF-8");//设置编码
        Integer integer = Integer.valueOf(id);
        integer++;
        request.setAttribute("ia",integer);
        request.getRequestDispatcher("test2.jsp").forward(request,response);  //转发请求
    %>
    <%=id%>
    <%=Arrays.toString(names)%>
</h1>
</body>
</html>

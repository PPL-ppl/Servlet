<%--
  Created by IntelliJ IDEA.
  User: 19424
  Date: 2020/8/31
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>你是第
    <%
        Integer count = (Integer) application.getAttribute("count");
        if (count == null) {
            count = 1;
            application.setAttribute("count", count);
        }else{
            count ++;
            System.out.println(count);
            application.setAttribute("count", count);
        }
    %>
    <%=count%>个访问顾客
</h1>
</body>
</html>

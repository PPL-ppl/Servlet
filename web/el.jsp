<%@ page import="com.ms.ser.Entity.Stu" %>
<%@ page import="com.ms.ser.Entity.User" %><%--
  Created by IntelliJ IDEA.
  User: 19424
  Date: 2020/8/31
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    pageContext.setAttribute("name", "tom");
    request.setAttribute("name", "tom1");
    session.setAttribute("name", "tom2");
    application.setAttribute("name", "tom3");
%>
${pageScope.name}
${requestScope.name}
${sessionScope.name}
${applicationScope.name}
<%
    Stu stu = new Stu(2, "2",new User("张三",33));
    pageContext.setAttribute("stu", stu);
%>
<hr>
${stu}<%--实际就是通过实体类的set、get方法取值--%>
${stu.age}
${stu.name="222"}
<hr>
${stu.user}
${stu.user.name}
${stu.user["name"]}<%--与上同理--%>
${stu.user.age=333}
<%
    pageContext.setAttribute("num",22);
    pageContext.setAttribute("num1",23);
%>
${num>num1}
${num == num1}
${num < num1}
</body>
</html>

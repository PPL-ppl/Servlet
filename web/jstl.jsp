<%@ page import="com.ms.ser.Entity.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 19424
  Date: 2020/8/31
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    User user = new User("张三", 33);
    request.setAttribute("user", user);//先set
%>
${user.name}
<c:set target="${user}" property="name" value="李四"></c:set>
${user.name}
<c:out value="${name}" default="tom"></c:out>
<c:set var="name" value="t"></c:set>
<c:out value="${name}" default="tom"></c:out>
<c:remove var="name"></c:remove>
<c:out value="${name}" default="tom"></c:out>
<hr>
<c:catch var="error">
    <%
        int a = 10 / 0;
    %>
</c:catch>
${error}
<c:set var="num1" value="1"></c:set>
<c:set var="num2" value="2"></c:set>
<c:if test="${num1>num2}">OK</c:if>
<c:if test="${num1<num2}">fail</c:if>
<c:choose>
    <c:when test="${num1>num2}">OK</c:when>
    <c:otherwise>fail</c:otherwise>
</c:choose>
<%
    List<String> list = new ArrayList<>();
    list.add("a");
    list.add("a1");
    list.add("a2");
    list.add("a3");
    list.add("a4");
    request.setAttribute("list", list);
%>
<c:forEach items="${list}" var="list" begin="2" step="2" varStatus="sta">
    ${sta.count}
    ${list}<br/>
</c:forEach>
</body>
</html>

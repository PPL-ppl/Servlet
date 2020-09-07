<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 19424
  Date: 2020/9/1
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="cdd" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setAttribute("date", new Date());
    request.setAttribute("info", "Java,C");
%>
<cdd:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm:ss"></cdd:formatDate>
<%--<cdd:formatNumber value="${231123.2312}" maxIntegerDigits="2" maxFractionDigits="3"></cdd:formatNumber>--%>
${info}
${fn:contains(info,"python")}<%--是否存在python--%>
${fn:startsWith(info, "Java")}<%--是否java开头--%>
${fn:indexOf(info,"va")}<%--va的下标--%>
${fn:replace(info, "C","python")}<%--C替换为python--%>
${fn:substring(info, 2,4)}
${fn:split(info, ",")[0]}-${fn:split(info, ",")[1]}
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: 19424
  Date: 2020/9/2
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/upload" method="post" enctype="multipart/form-data">
    <input type="file" name="image">
    <input type="submit" value="提交">
</form>
</body>
</html>

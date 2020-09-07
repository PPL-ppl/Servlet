<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="com.ms.ser.Entity.User" %><%--
  Created by IntelliJ IDEA.
  User: 19424
  Date: 2020/8/30
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>

<body>
<h1>
    asdjoas
</h1>
<% //java脚本
    List<User> list = new LinkedList<>();
    list.add(new User("张三1", 22));
    list.add(new User("张三2", 22));
    list.add(new User("张三3", 22));
    System.out.println("hello world");//Java代码
%>
<%! //声明java方法
    public String test() {
        return "test";
    }
%>
<% //调用方法
    String test1 = test();
%>
<%=test1%><%--使用结果--%>
<table>
    <tr>
        <th>姓名</th>
        <th>年龄</th>
    </tr>
    <% //for开始
        for (int i = 0; i < list.size(); i++) {
    %>
    <tr>
        <td>
            <%=list.get(i).getName()%>
        </td>
        <td>
            <%=list.get(i).getAge()%>
        </td>
    </tr>
    <%
        }  //for结束
    %>
</table>
</body>
</html>
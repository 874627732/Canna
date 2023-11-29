<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 2023/11/23
  Time: 8:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page属性范围</title>
</head>
<body>
    <%
        //获取跳转前设置的Page范围的属性
        String name= (String)pageContext.getAttribute("name");

    %>

    <h1 >在当前页面获取设置为Page范围的属性：<%=name %></h1>
</body>
</html>

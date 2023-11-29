
<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 2023/11/23
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Application属性范围</title>
</head>
<body>
    <%
        //获取跳转前设置为application的属性值
        String name = (String) application.getAttribute("name");

    %>
    <h6>获取跳转前设置的属性值为:<%=name%></h6>


</body>
</html>

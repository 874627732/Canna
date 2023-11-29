<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 2023/11/23
  Time: 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Request属性范围</title>
</head>
<body>
  <%
      //获取跳转前设置为Request范围的属性
      String name = (String) request.getAttribute("name");

  %>
  <h6>获取跳转前设置为Request范围的属性：<%=name%></h6>

</body>
</html>

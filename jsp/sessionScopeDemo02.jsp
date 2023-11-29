<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 2023/11/23
  Time: 8:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session属性范围</title>
</head>
<body>
    <% 
            //获取跳转前设置为Session范围的属性
        Object school = session.getAttribute("school");

    %>
    <h6>获取跳转前设置为Session范围的属性: <%= school%>  </h6>



</body>
</html>

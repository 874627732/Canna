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
      //存在服务器中多个用户都可以使用
        //将属性值设置为application范围
          application.setAttribute("name","莫桑比克");

    %>
    <h6>application中的值为：<%=application.getAttribute("name")%></h6>
    <a href="../jsp/applicationScopeDemo02.jsp">跳转到applicationScopeDemo02.jsp</a>


</body>
</html>

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
            //将属性设置为session范围
        session.setAttribute("school","湖北师范大学");
        
    %>
    <h6>输出session中设置的属性值:<%=session.getAttribute("school") %></h6>
    <a href="../jsp/sessionScopeDemo02.jsp">跳转到sessionScopeDemo02.jsp</a>



</body>
</html>

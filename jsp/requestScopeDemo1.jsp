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
      //将一个属性设置为request范围
    request.setAttribute("name","chuan");

  %>
  <h6>在当前页面获取设置为Request范围的属性：<%=request.getAttribute("name")%></h6>
  <a href="../jsp/requestScopeDemo2.jsp">跳转到requestScopeDemo2.jsp</a>

<%--  <jsp:forward page="/jsp/requestScopeDemo2.jsp"/>--%>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 2023/11/16
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContextx对象</title>
</head>
<body>

<%--
    page范围  使用pageContext



--%>

    <h1>pageContextx作为域对象</h1>
    <%
        //  往pageContext域中存数据
        pageContext.setAttribute("username","川川");
        pageContext.setAttribute("age",18);

        request.setAttribute("username","川川1");
        session.setAttribute("username","川川2");
        application.setAttribute("username","川川3");

        //获取pageContest域中数据
        String username = (String)pageContext.getAttribute("username");
        int age = (int) pageContext.getAttribute("age");




        //查找数据
        String  name = (String)pageContext.findAttribute("username");


        //引入其他的jsp页面
        pageContext.include("/jsp/head.jsp");

        //跳转到其他页面
        pageContext.forward("/jsp/body.jsp");

    %>
    <h6>显示pageContext域中的数据username:</h6>   <%=username%>
    <h6>显示pageContext域中的数据age:</h6>   <%=age%>
    <h6>查找域中的数据username:</h6>   <%=name%>

</body>
</html>

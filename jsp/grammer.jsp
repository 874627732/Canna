
<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 2023/11/16
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>

<%--  指令前有@  指令可以分开写也可以合起来写--%>
<%--分开--%>
<%@ page import="java.sql.Date" %>       <%--导包时可以用逗号分隔，一次导多个包--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%--   一起
  <%@ page import="java.sql.Date"  contentType="text/html;charset=UTF-8" language="java" %>
--%>

<%--
    include引入其他jsp文件
    file中放引入文件的相对路径
    <%@include file="" %>
--%>



<html>
<head>
    <title>JSP语法</title>
</head>
<body>
    <h1>JSP表达式</h1>
    系统当前时间： <%= new java.util.Date() %>

    <h1>JSP脚本片段</h1>
    <%
        int sum = 0;
        for (int i = 0; i <= 100; i++) {
            sum+=i;
        }
        //系统自带out输出对象
        out.println("");
        out.print(sum);
    %>

    <%
        int a =0 ;


    %>


</body>
</html>

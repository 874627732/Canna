<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 2023/11/16
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" buffer="" %>
<html>
<head>
    <title>网页主题部分</title>
</head>
<body>
    <%--
    include引入其他jsp文件  静态包含     最终只会有一个servlet
    file中放引入文件的相对路径
    <%@include file="" %>
    <jsp:include page=""        动态包含   会有两个servlet
    --%>

    <%@include file="/jsp/head.jsp"%>
    <h1 align="center" style="color: aqua">网页主体部分</h1>
    <%@include file="/jsp/foot.jsp"%>
</body>
</html>

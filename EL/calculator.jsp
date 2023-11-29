<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 2023/11/23
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="calculator" class="com.EL.Calculator"/>
<jsp:setProperty name="calculator" property="*" />
<%
    calculator.compute();
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="calculator.jsp" method="post">
    <table >
        <tr>
            <td colspan="2">简单计算器</td>
        </tr>
        <tr>
            <td>第一个参数</td>
            <td><input type="text" name="firstNumber" ></td>
        </tr>
        <tr>
            <td>运算符</td>
            <td>
                <select name="operator" >
                    <option value="+">+</option>
                    <option value="-">-</option>
                    <option value="*">*</option>
                    <option value="/">/</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>第二个参数</td>
            <td><input type="text" name="secondNumber"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="计算"></td>
        </tr>
    </table>
</form>

<br>
<hr>
计算结果:
<jsp:getProperty name="calculator" property="firstNumber"/>
<jsp:getProperty name="calculator" property="operator"/>
<jsp:getProperty name="calculator" property="secondNumber"/>
=
<jsp:getProperty name="calculator" property="result"/>
</body>
</html>

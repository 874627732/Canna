<%@ page import="com.EL.Person" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 2023/11/23
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el表达式案例</title>
</head>
<body>
<h1>el表达式获取数据</h1>
<h3>1、获取JSP域中的数据</h3>
<%
    request.setAttribute("name", "川川");

    Object name1 = request.getAttribute("name");
%>
<h6>使用JSP表达式获取域中的数据：<%=name1%>
</h6>
<h6>使用EL表达式获取域中的数据：${name}</h6>
<h3>2、获取JavaBean中的数据</h3>
<%
    Person person = new Person();
    person.setName("川川");
    person.setAge(20);
    request.setAttribute("chuan", person);
%>
<h6>使用EL表达式获取JavaBean对象中的数据：${chuan.name}今年${chuan.age}岁</h6>
<h3>3、获取集合中的数据</h3>
<%
    List<String> arrayList = new ArrayList<>();
    arrayList.add("element6");
    arrayList.add("element2");
    arrayList.add("element4");
    request.setAttribute("list", arrayList);
%>
<h6>使用EL表达式获取集合中的元素:${list.get(0)}</h6>

<h1>使用EL表达式进行运算</h1>
<h5>关系运算</h5>
<h6>${9 == 8}</h6>
<h5>逻辑运算</h5>
<h6>${true && false}</h6>
<h5>empty运算</h5>
<h6>${empty(list)}</h6>
<h5>三目运算</h5>
<h6>${chuan==null?"空的":chuan.name}</h6>

<h1>使用EL表达式进行数据的回显</h1>
<input type="text" name="username" value="${chuan.name}">


</body>
</html>

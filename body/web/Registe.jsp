<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 2023/11/25
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册界面</title>
  <link rel="stylesheet" href="../css/public.css">
  <link rel="stylesheet" href="../css/Login.css" >
  <script src="../js/Rigiste.js"></script>
  <script>
    function receive(){
      console.log(time);
      var registerResult = <%= session.getAttribute("registerResult") %>;
      hello();
      if(registerResult=="true"||registerResult=="false"){
        if (registerResult) {
          // 注册成功，弹出提示窗口并跳转到其他页面或执行其他操作
          alert("注册成功！");
          // 跳转到其他页面或执行其他操作的代码...
          window.location.href="../web/Login.html"
          window.clearInterval(receive);
        } else {
          // 注册失败，显示错误信息或提示用户重新输入
          alert("注册失败！");
          window.clearInterval(receive);
        }
      }
    }

    function hello(){

      var hello = '${registerResult}';
      console.log(hello);

    }
  </script>
  <script>
    var result = ${sessionScope.registerResult};
    var registerPermission = ${sessionScope.registerPermission};
    if(registerPermission == true) {
      if(result == false ){
        alert("该账号已被注册！")
        registerPermission=false
        window.location.href="../web/Registe.jsp"
      }else {
        alert("注册成功!自动跳转至登陆页面")
        registerPermission=false
        <%
          session.setAttribute("registerPermission",false);
        %>
        window.location.href="../web/Login.jsp"
      }
    }

  </script>
</head>
<body>
<header>
  <div class="top">
    <div class="logo">
      <h1><a href="../web/index.html">Cannan</a></h1>
    </div>
    <div class="nav">
      <ul class="nav">
        <li><a href="../web/index.html">首页</a></li>
        <li><a href="../web/protest.html">赛事</a></li>
        <li><a href="../web/product.html">产品中心</a></li>
        <li><a href="../web/customer.html">客户服务</a></li>
        <li><a href="../web/about.html">关于我们</a></li>
        <li><a href="../web/contact.html">联系我们</a></li>

      </ul >
      <ul class="loginPage">
        <li><a href="../../Login.html">账户</a></li>
      </ul>
      <ul class="language">
        <li><a href="#">CN</a></li>
        <li><a href="#">EN</a></li>
      </ul>
    </div>
  </div>
</header>


<div class="login" >
  <h3>注册</h3>
  <form action="/RegisteServlet" method="post"  return="javascript:result()">
    <div class="inputBox">
      <i class="iconfont icon-wode"></i>
      <input type="text" class="name" name="username" autocomplete="off"  placeholder="请输入用户名">
      <label >用户名</label>
    </div>
    <div class="inputBox">
      <i class="iconfont icon-mima"></i>
      <input type="password" class="inputPassword" name="password" autocomplete="off"  placeholder="请输入密码">
      <label >密码</label>
    </div>
    <div class="submitButton" >
      <input type="submit" value="注册">
    </div>
  </form>
</div>




</body>
</html>

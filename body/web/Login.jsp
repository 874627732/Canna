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
    <title>登录界面</title>
    <link rel="stylesheet" href="../css/public.css">
    <link rel="stylesheet" href="../css/Login.css" >
    <script src="../js/Login.js"></script>
<%--    <script>--%>
<%--        var registerResult = ${sessionScope.registerResult};--%>
<%--        if(registerResult == false){--%>
<%--            alert("该账号已被注册！")--%>
<%--        }else {--%>
<%--            alert("注册成功!")--%>
<%--        }--%>
<%--    </script>--%>

    <script>
        var validateCodeResult = ${sessionScope.validateCodeResult};
        var validateCodePermission = ${sessionScope.validateCodePermission};
        if(validateCodeResult == false && validateCodePermission==true){
            alert("验证码错误！")
            <% session.setAttribute("validateCodePermission","false");%>
            validateCodePermission = false;
        }
    </script>
    <script>
        var LoginResult = ${sessionScope.LoginResult};
        var LoginPermission = ${sessionScope.LoginPermission};
        if(LoginPermission == true){
            if(LoginResult == false ){
                alert("账号或密码错误！")
                <% session.setAttribute("LoginPermission","false");%>
                LoginPermission = false;
            }else {
                alert("登陆成功!自动跳转至主页")
                <% session.setAttribute("LoginPermission","false");%>
                LoginPermission = false;
                window.location.href="../web/index.html";
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
    <h3>登录</h3>
    <form action="/ProjectLoginServlet" method="POST" >
        <div class="inputBox">
            <i class="iconfont icon-wode"></i>
            <input type="text" class="name" name="username" autocomplete="off"  placeholder="请输入用户名">
            <label for="">用户名</label>
        </div>
        <div class="inputBox">
            <i class="iconfont icon-mima"></i>
            <input type="password" class="inputPassword" name="password" autocomplete="off"  placeholder="请输入密码">
            <label for="">密码</label>
        </div>
        <!--            <input type="hidden" class="password" name="password">-->
        <div class="validateCode" >
            验证码: <input type="text" name="validateCode" >
        </div>
        <div class="validateCode" >
            <img src="/GenerateCode" alt="验证码未生成" id = "imageCode" onclick="changeImage()">
        </div>


        <div class="submitButton" >
            <input type="submit" value="登录">
        </div>
        <div class="registe">
            <input type="button" value="注册" onclick=javascrtpt:jump2()>
        </div>

    </form>
</div>
</body>
</html>

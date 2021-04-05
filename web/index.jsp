<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=drive-width,initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="login.css">
    <!-- font-awesome 图标字体 http://www.fontawesome.com.cn/faicons/#web-application -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" media="screen"
          rel="stylesheet" type="text/css">
    <!-- 引入 jquery、Bootstrap -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <title>登入界面</title>
</head>
<!--
<div id="login-box">
    <h1>登入</h1>
    <form class="form" action="/admin/login">
        <div class="item">
            <i class="fa fa-user-circle-o" aria-hidden="true"></i>
            <input type="text" placeholder="Username" name="username">
        </div>
        <div class="item">
            <i class="fa fa-key" aria-hidden="true"></i>
            <input type="text" placeholder="Password" name="password">
        </div>
        <input type="submit" value="登入">
    </form>

</div>
<body>
-->
<!-- 登录表单 -->
<div class="login-form">
    <center><span>管理系统</span></center>
    <form action="/admin/login">
        <div class="form-group">
            <%--@declare id="usernamel"--%>
            <label for="usernamel">用户名</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="请输入您的用户名">
        </div>
        <div class="form-group">
            <label for="password">密码</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="请输入您的密码">
        </div>
        <div class="c3-1">
            <center>
                <button id="login" class="btn btn-primary">登录</button>
            </center>
            <br/>
        </div>
    </form>
</div>
</body>
<style type="text/css">
    html body {
        background: url(img/back.jpg) no-repeat center;
        background-size: 100%;
    }

    span {
        font-family: "微软雅黑";
        font-size: 30px;
    }

    .login-form {
        width: 20%;
        margin: auto;
        margin-top: 15%;
    }

    #toRegister {
        float: right;
    }
</style>
</html>
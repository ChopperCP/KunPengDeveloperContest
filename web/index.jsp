<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <%--        <meta name="viewport" content="width=drive-width,initial-scale=1.0">--%>
    <%--        <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
    <!-- font-awesome 图标字体 http://www.fontawesome.com.cn/faicons/#web-application -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" media="screen"
          rel="stylesheet" type="text/css">
    <!-- 引入 jquery、Bootstrap -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>登入界面</title>
</head>

<body>
<div class="back">
    <div class="login-form">
        <span>管理系统</span>
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
                <button id="login" class="btn btn-primary">登录</button>
                <br/>
            </div>
        </form>
    </div>
</div>
</body>
<style type="text/css">

    html, body {
        margin: 0;
        padding: 0;
    }

    span {
        padding-top: 0;
        font-family: "微软雅黑";
        font-size: 30px;
    }

    .back {
        width: 100%;
        height: 100%;
        background: rgb(68, 68, 68) url(image/huawei.jpg) no-repeat fixed center center;
        background-size: 100% 100%;
    }

    .login-form {
        width: 20%;
        margin: auto auto;
        padding-top: 20%;
    }

    .form-group {
        margin-top: 10%;
    }

</style>
</html>
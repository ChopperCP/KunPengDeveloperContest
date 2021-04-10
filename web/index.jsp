<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=drive-width,initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <%--    <link rel="stylesheet" href="login.css">--%>
    <!-- font-awesome 图标字体 http://www.fontawesome.com.cn/faicons/#web-application -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" media="screen"
          rel="stylesheet" type="text/css">
    <!-- 引入 jquery、Bootstrap -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <title>登入界面</title>

</head>


<div class="login-form">
    <center>
        <div class="col-nd-12 column">
            <div class="page-header">
                <h1>
                    <small>管理系统</small>
                </h1>
            </div>
        </div>
    </center>
    <form action="${pageContext.request.contextPath}/admin/login">
        <div class="form-group">
            <label for="username">用户名</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="请输入您的用户名" required>
        </div>
        <div class="form-group">
            <label for="password">密码</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="请输入您的密码" required>
        </div>
        <div class="c3-1">
            <center>
                <button id="login" class="btn btn-primary">登入</button>
            </center>
            <br/>
        </div>
    </form>
</div>
</body>
</html>
<style type="text/css">
    html body {
        background: url(${pageContext.request.contextPath}/image/huawei.jpg) no-repeat fixed center center;
        background-size: 100% 100%;
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
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
    <title>登入界面</title>
</head>
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
</body>
</html>
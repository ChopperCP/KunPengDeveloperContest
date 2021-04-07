<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有用户</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="col-nd-12 column">
        <div class="page-header">
            <ul class="nav nav-tabs">
            <li role="presentation" >
                <a href="/admin/allRecord">所有进出记录</a>
            </li>
            <li role="presentation">
                <a href="/admin/allPort">查看所有地点</a>
            </li>
            <li role="presentation" class="active">
                <a>查看所有用户</a>
            </li>
            <div class="logo">
                <img src="../../image/logo.png">
            </div>
            <li role="presentation" class="Admin">
                <a href="/admin/toupdatePassword">修改密码</a><br/>
            </li>
        </ul>
        </div>
        <div class="row">
            <div class="col-md-4">
                <form action="${pageContext.request.contextPath}/admin/queryuserByname" method="post">
                    <input type="text" placeholder="请输入要查询用户的姓名" class="form-inline" name="real_name">
                    <input type="submit" value="查询" class="btn-primary">
                </form>
            </div>
        </div>
    </div>
</div>
<div class="row clearfix">
    <div class="col-md-12 column">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>用户微信ID</th>
                <th>用户权限</th>
                <th>用户二维码</th>
                <th>用户电话</th>
                <th>用户姓名</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${list}">
                <tr>
                    <td>${user.wechat_id}</td>
                    <td>${user.privilege}</td>
                    <td>${user.user_QR_str}</td>
                    <td>${user.phone_number}</td>
                    <td>${user.real_name}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/admin/toupdateUser?wechat_id=${user.wechat_id}">更改</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
<style type="text/css">
    body{
        width: 99.9%;
        margin: 0;
    }

    .container{
        margin: 0 auto;
        width: 100%;
    }

    .page-header{
        margin-top: 0;
        margin-left: 0;
        font-size: 20px;
        height: 50px;
        background-color: #282b33;
    }

    .nav .Admin{
        display: inline-block;
        margin-right:20px;
        float: right;
    }
    a{
        color: #fff;
    }
    img{
        width: 2.8%;
        float: right;
    }

    .nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
        color: #6c92fa;
        cursor: default;
        background-color: #282b33;
        border: 0;
        border-bottom-color: transparent;
    }
    .col-md-4{
        width: 100%;
        padding-left: 40%;
    }

    td a{
        color: #6c92fa;
    }

    td a:hover{
        background-color: #fff;
        color: #6c92fa;
        filter: brightness(1.2);
        text-decoration: none;
    }
</style>
</html>

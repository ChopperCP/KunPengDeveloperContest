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
            <a href="/admin/allRecord">查看所有记录</a>

            <h1>
                <small>所有用户</small>
            </h1>
        </div>
        <div class="row">
            <div class="col-md-4" column>
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
</html>

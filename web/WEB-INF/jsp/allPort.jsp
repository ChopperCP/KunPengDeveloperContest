<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有地点</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="col-nd-12 column">
        <div class="page-header">
            <a href="/admin/allRecord">查看所有记录</a>
            <h1>
                <small>所有地点</small>
            </h1>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a href="${pageContext.request.contextPath}/admin/toaddPort" class="btn-primary">增加地点</a>
            </div>
        </div>
    </div>
</div>
<div class="row clearfix">
    <div class="col-md-12 column">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>地点ID</th>
                <th>地点相关描述</th>
                <th>地点经度</th>
                <th>地点纬度</th>
                <th>地点出口二维码字符</th>
                <th>地点入口二维码字符</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="port" items="${list}">
                <tr>
                    <td>${port.port_id}</td>
                    <td>${port.description}</td>
                    <td>${port.longitude}</td>
                    <td>${port.latitude}</td>
                    <td>${port.port_QR_str_in}</td>
                    <td>${port.port_QR_str_out}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/admin/toupdatePort?port_id=${port.port_id}">更改</a>
                        &nbsp; | &nbsp;
                        <a href="${pageContext.request.contextPath}/admin/deletePort?port_id=${port.port_id}">删除</a>
                    </td>
                </tr>

            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>

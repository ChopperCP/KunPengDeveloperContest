<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>首页</title>
  <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
  <div class="col-nd-12 column">
    <div class="page-header">
      <h1>
        <small>所有进出记录</small>
      </h1>
    </div>
    <div class="row">
      <div class="col-md-4" column>
      </div>
    </div>
  </div>
</div>
<div class="row clearfix">
  <div class="col-md-12 column">
    <table class="table table-hover table-striped">
      <thead>
      <tr>
        <th>记录号</th>
        <th>微信ID</th>
        <th>名字</th>
        <th>电话号码</th>
        <th>地点ID</th>
        <th>地点描述</th>
        <th>时间</th>
        <th>状态</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="record" items="${allrecord}">
        <tr>
          <td>${record.record_id}</td>
          <td>${record.wechat_id}</td>
          <td>${record.real_name}</td>
          <td>${record.phone_number}</td>
          <td>${record.port_id}</td>
          <td>${record.description}</td>
          <td>${record.timestamp}</td>
          <td>${record.status}</td>
          <td>
            <a href="${pageContext.request.contextPath}/admin/toupdateRecord?record_id=${record.record_id}">更改记录</a>
              <%--            &nbsp; | &nbsp;--%>
              <%--            <a href="${pageContext.request.contextPath}/book/deleteBook?id=${book.bookID}">delete</a>--%>
          </td>
        </tr>

      </c:forEach>
      </tbody>
    </table>
  </div>
</div>
</body>
</html>

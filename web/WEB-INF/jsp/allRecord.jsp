<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>所有记录</title>
  <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
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
<style type="text/css">

    body{
      width: 99.9%;
      margin: 0;
    }
    .container{
    margin:0 auto;
    width: 100%;
    }
    .col-md-12{
      margin: 0 auto;
    }
    .page-header{
      width: 100%;
      margin-top: 0;
      margin-left: 0;
      font-size: 20px;
      height: 50px;
      background-color: #282b33;
      position: relative;
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

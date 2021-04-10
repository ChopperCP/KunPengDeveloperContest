<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

<nav class="navbar navbar-default">
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li><a href="${pageContext.request.contextPath}/admin/allRecord" target="iframe">所有记录</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/allPort" target="iframe">所有地点</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/toaddPort" target="iframe">增加地点</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/allUser" target="iframe">所有用户</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="${pageContext.request.contextPath}/admin/toupdatePassword">修改密码</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<iframe name="iframe" src="${pageContext.request.contextPath}/admin/allRecord" width="100%" height="100%"></iframe>

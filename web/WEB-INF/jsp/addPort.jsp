<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="padding-left:40%;padding-top: 15%; background: rgb(68, 68, 68) url(../../image/huawei.jpg) no-repeat fixed center center;background-size: 100% 100%">
<div class="container">
    <div class="col-nd-12 column">
        <div class="page-header">
            <h1>
                <small>增加地点</small>
            </h1>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/admin/addPort" method="post">
        地点经度：<input type="text" name="longitude" required><br><br><br>
        地点纬度：<input type="text" name="latitude" required><br><br><br>
        地点描述：<input type="text" name="description" required><br><br><br>
        <input type="submit" value="添加">
    </form>
</div>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加地点</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background: rgb(68, 68, 68) url(../../image/huawei.jpg) no-repeat fixed center center;background-size: 100% 100%">
<center>
    <div class="input-group">
        <div class="col-nd-12 column">
            <div class="page-header">
                <h1>
                    <small>增加地点</small>
                </h1>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/admin/addPort" method="post">
            地点经度：<input class="form-control" type="text" name="longitude" required><br><br><br>
            地点纬度：<input class="form-control" type="text" name="latitude" required><br><br><br>
            地点描述：<input class="form-control" type="text" name="description" required><br><br><br>
            <center>
                <button class="btn btn-primary" type="submit" value="">修改</button>
            </center>
        </form>
    </div>
</center>
</body>
</html>

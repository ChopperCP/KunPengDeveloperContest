<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<html>
<head>
    <title>Title</title>

    <script>
        function randomUUID(id) {
            $.get({
                url: "${pageContext.request.contextPath}/admin/randomUUID",
                // data:{'name':$("#txtName").val()},
                success: function (data, status) {
                    document.getElementById(id).setAttribute("value", id + data);
                }
            });
        }
    </script>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background: rgb(68, 68, 68) url(../../image/huawei.jpg) no-repeat fixed center center;background-size: 100% 100%">
<center>
    <div class="input-group">
        <div class="col-nd-12 column">
            <div class="page-header">
                <h1>
                    <small>修改地点</small>
                </h1>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/admin/updatePort" method="post">
            <input type="text" name="port_id" required hidden="hidden" value="${port.port_id}"><br><br><br>
            地点经度：<input class="form-control" type="text" name="longitude" value="${port.longitude}"
                        required><br><br><br>
            地点纬度：<input class="form-control" type="text" name="latitude" value="${port.latitude}" required><br><br><br>
            地点描述：<input class="form-control" type="text" name="description" value="${port.description}"
                        required><br><br><br>
            地点出口二维码字符：<input class="form-control" id="OUT_" aria-readonly="true" type="text" name="port_QR_str_out"
                             required
                             value="${port.port_QR_str_out}">
            <button type="button" onclick="randomUUID('OUT_')" class="btn btn-default">更换</button>
            <br><br><br>
            地点入口二维码字符：<input class="form-control" id="IN_" aria-readonly="true" type="text" name="port_QR_str_in"
                             required
                             value="${port.port_QR_str_in}">
            <button type="button" onclick="randomUUID('IN_')" class="btn btn-default">更换</button>
            <br><br><br>
            <center>
                <button class="btn btn-primary" type="submit" value="">修改</button>
            </center>
        </form>
    </div>
</center>
</body>
</html>

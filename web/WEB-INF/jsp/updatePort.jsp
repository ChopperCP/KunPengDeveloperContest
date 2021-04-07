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
<body style="padding-left:40%;padding-top: 15%; background: rgb(68, 68, 68) url(../../image/huawei.jpg) no-repeat fixed center center;background-size: 100% 100%">
<div class="container">
    <div class="col-nd-12 column">
    </div>
    <form action="${pageContext.request.contextPath}/admin/updatePort" method="post">
        <input type="text" name="port_id" required hidden="hidden" value="${port.port_id}"><br><br><br>
        地点经度：<input type="text" name="longitude" value="${port.longitude}" required><br><br><br>
        地点纬度：<input type="text" name="latitude" value="${port.latitude}" required><br><br><br>
        地点描述：<input type="text" name="description" value="${port.description}" required><br><br><br>
        地点出口二维码字符：<input id="OUT_" aria-readonly="true" type="text" name="port_QR_str_out" required
                         value="${port.port_QR_str_out}">
        <button type="button" onclick="randomUUID('OUT_')">更换</button>
        <br><br><br>
        地点入口二维码字符：<input id="IN_" aria-readonly="true" type="text" name="port_QR_str_in" required
                        value="${port.port_QR_str_in}">
        <button type="button" onclick="randomUUID('IN_')">更换</button>
        <br><br><br>
        <input type="submit" value="修改">
    </form>
</div>
</body>
</html>

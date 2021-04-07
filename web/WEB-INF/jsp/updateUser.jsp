<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="padding-left:40%;padding-top: 15%; background: rgb(68, 68, 68) url(../../image/huawei.jpg) no-repeat fixed center center;background-size: 100% 100%">
<div class="container">
    <form action="${pageContext.request.contextPath}/admin/updateUser" method="post">
        <input type="text" name="wechat_id" required hidden="hidden" value="${user.wechat_id}"><br><br><br>
        权限:<input type="text" name="privilege" value="${user.privilege}" required><br><br><br>
        用户二维码:<input type="text" name="user_QR_str" value="${user.user_QR_str}" required readonly><br><br><br>
        用户电话：<input type="text" name="phone_number" value="${user.phone_number}" required readonly><br><br><br>
        用户姓名:<input type="text" name="real_name" required
                    value="${user.real_name}" readonly><br><br><br>
        <input type="submit" value="修改">
    </form>
</div>
</body>
</html>

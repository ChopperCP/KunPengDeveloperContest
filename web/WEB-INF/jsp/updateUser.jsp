<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="col-nd-12 column">
        <div class="page-header">
            <h1>
                <small>修改用户权限</small>
            </h1>
        </div>
    </div>
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

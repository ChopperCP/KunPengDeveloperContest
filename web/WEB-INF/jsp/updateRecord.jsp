<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改记录</title>
</head>
<body style="padding-left:40%;padding-top: 10%; background: rgb(68, 68, 68) url(../../image/huawei.jpg) no-repeat fixed center center;background-size: 100% 100%">
<div class="container">
    <div class="col-nd-12 column">
    </div>
    <form action="${pageContext.request.contextPath}/admin/updateRecord" method="post">
        <input hidden="hidden" type="text" name="record_id" value="${record.record_id}"><br><br><br>
        微信ID：<input disabled="disabled" type="text" name="wechat_id" value="${record.wechat_id}"><br><br><br>
        名字：<input disabled="disabled" type="text" name="real_name" value="${record.real_name}"><br><br><br>
        电话：<input disabled="disabled" type="text" name="phone_number" value="${record.phone_number}"><br><br><br>
        地点ID：<input disabled="disabled" type="text" name="port_id" value="${record.port_id}"><br><br><br>
        地点描述:<input disabled="disabled" type="text" name="description" value="${record.description}"><br><br><br>
        时间：<input type="text" name="timestamp" value="${record.timestamp}" required><br><br><br>
        状态：<input type="text" name="status" value="${record.status}"><br><br><br>
        <input type="submit" value="修改">
    </form>
</div>
</body>
</html>
</html>

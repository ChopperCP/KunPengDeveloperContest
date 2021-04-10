<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<head>
    <title>修改记录</title>
</head>
<body style="background: rgb(68, 68, 68) url(../../image/huawei.jpg) no-repeat fixed center center;background-size: 100% 100%">
<center>
    <div class="input-group">
        <div class="col-nd-12 column">
            <div class="page-header">
                <h1>
                    <small>修改记录</small>
                </h1>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/admin/updateRecord" method="post">
            <input hidden="hidden" type="text" name="record_id" value="${record.record_id}"><br><br><br>
            微信ID：<input class="form-control" disabled="disabled" type="text" name="wechat_id"
                        value="${record.wechat_id}"><br><br><br>
            名字：<input class="form-control" disabled="disabled" type="text" name="real_name" value="${record.real_name}"><br><br><br>
            电话：<input class="form-control" disabled="disabled" type="text" name="phone_number"
                      value="${record.phone_number}"><br><br><br>
            地点ID：<input class="form-control" disabled="disabled" type="text" name="port_id"
                        value="${record.port_id}"><br><br><br>
            地点描述:<input class="form-control" disabled="disabled" type="text" name="description"
                        value="${record.description}"><br><br><br>
            时间：<input class="form-control" type="text" name="timestamp" value="${record.timestamp}"
                      required><br><br><br>
            状态：<input class="form-control" type="text" name="status" value="${record.status}"><br><br><br>
            <center>
                <button class="btn btn-primary" type="submit" value="">修改</button>
            </center>
        </form>
    </div>
</center>
</body>
</html>

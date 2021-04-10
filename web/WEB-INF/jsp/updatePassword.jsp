<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=drive-width,initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<%--    <link rel="stylesheet" href="login.css">--%>
    <!-- font-awesome 图标字体 http://www.fontawesome.com.cn/faicons/#web-application -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" media="screen"
          rel="stylesheet" type="text/css">
    <!-- 引入 jquery、Bootstrap -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

    <title>修改密码</title>
</head>

<div class="login-form">
    <center>
        <div class="col-nd-12 column">
            <div class="page-header">
                <h1>
                    <small>请修改密码</small>
                </h1>
            </div>
        </div>
    </center>
    <form onsubmit="return checkForm(this);" action="\" method="post">
        <div class="form-group">
            <%--@declare id="usernamel"--%>
            <label for="password1">密码</label>
            <input type="password" class="form-control" id="password1" name="password1" placeholder="请输入新的密码">
        </div>
        <div class="form-group">
            <%--@declare id="password"--%>
            <label for="password2">请再输入一次</label>
            <input type="password" class="form-control" id="password2" name="password2" placeholder="请输入再次确认您的密码">
        </div>
        <div class="c3-1">
            <center>
                <button id="login" class="btn btn-primary">确定修改</button>
            </center>
            <br/>
        </div>
    </form>
</div>
</body>
<style type="text/css">
    html body {
        background: url(../../image/huawei.jpg) no-repeat fixed center center;
        background-size: 100% 100%;
    }

    span {
        font-family: "微软雅黑";
        font-size: 30px;
    }

    .login-form {
        width: 20%;
        margin: auto;
        margin-top: 15%;
    }

    #toRegister {
        float: right;
    }
</style>
<script type="text/javascript">
    function checkForm(form) {
        if (form.password1.value != "" && form.password1.value == form.password2.value) {
            if (form.password1.value.length < 6) {
                alert("错误:密码必须至少包含六个字符!");
                from.password1.focus();
                return false;
            }
            re = /[0-9]/;
            if (!re.test(form.password1.value)) {
                alert("错误：密码必须包含至少一个数字（0至9）！");
                form.pwd1.focus();
                return false;
            }
            re = /[a-z]/;
            if (!re.test(form.password1.value)) {
                alert("错误：密码必须包含至少一个小写字母(a-z)!");
                form.pwd1.focus();
                return false;
            }
            re = /[A-Z]/;
            if (!re.test(form.password1.value)) {
                alert("错误：密码必须包含至少一个大写字母(A-Z)!");
                form.pwd1.focus();
                return false;
            }
        } else {
            alert("错误：请检查并确认您输入的密码是否一致！");
            form.pwd1.focus();
            return false;
        }
        $.get(
            "${pageContext.request.contextPath}/admin/updatePassword?password=" + form.password1.value,
        );
        return true;
    }

</script>
</html>
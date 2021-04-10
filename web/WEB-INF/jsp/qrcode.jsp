<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>二维码界面</title>
    <script src="https://cdn.bootcdn.net/ajax/libs/qrcodejs/1.0.0/qrcode.js"></script>
</head>
<body>
<div id="qrcode"></div>
</body>
<style type="text/css">
    #qrcode {
        padding-left: 40%;
        padding-top: 20%;
    }
</style>
<script>
    new QRCode(document.getElementById("qrcode"), "${qrcode}");
</script>
</html>

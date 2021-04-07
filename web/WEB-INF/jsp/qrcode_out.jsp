<html>
<head>
    <title>出口二维码</title>
    <script type="text/javascript" src="qrcode.js"></script>
</head>
<body>
<div id="qrcode_out"></div>
</body>
<style type="text/css">
    #qrcode_out{
        padding-left: 40%;
        padding-top: 20%;
    }
</style>
<script>
    new QRCode(document.getElementById("qrcode_out"), "http://jindo.dev.naver.com/collie");
</script>
</html>
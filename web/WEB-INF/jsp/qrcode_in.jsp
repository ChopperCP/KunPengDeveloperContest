<html>
<head>
    <title>入口二维码</title>
    <script type="text/javascript" src="qrcode.js"></script>
</head>
<body>
    <div id="qrcode_in"></div>
</body>
<style type="text/css">
	#qrcode_in{
		padding-left: 40%;
    	padding-top: 20%;
	}
</style>
<script>
    new QRCode(document.getElementById("qrcode_in"), "http://jindo.dev.naver.com/collie");
</script>
</html>

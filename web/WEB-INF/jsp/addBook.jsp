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
               <small>add book</small>
           </h1>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        书籍名称：<input type="text" name="bookName" required><br><br><br>
        书籍数量：<input type="text" name="bookCounts" required><br><br><br>
        书籍详情：<input type="text" name="detail" required><br><br><br>
        <input type="submit" value="添加">
    </form>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: rglkt
  Date: 2021/3/21
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>update</title>
</head>
<body>
<div class="container">
    <div class="col-nd-12 column">
        <div class="page-header">
            <h1>
                <small>updateBook</small>
            </h1>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <input type="hidden" name="bookID" value="${book.bookID}" required><br><br><br>
        书籍名称：<input type="text" name="bookName" value="${book.bookName}" required><br><br><br>
        书籍数量：<input type="text" name="bookCounts" value="${book.bookCounts}" required><br><br><br>
        书籍详情：<input type="text" name="detail" value="${book.detail}" required><br><br><br>
        <input type="submit" value="修改">
    </form>
</div>
</body>
</html>
</html>

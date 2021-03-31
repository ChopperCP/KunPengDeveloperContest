<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page of showing books</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="col-nd-12 column">
        <div class="page-header">
            <h1 >
                <small>Book list --- Showing all books</small>
            </h1>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a href="${pageContext.request.contextPath}/book/toAddBook" class="btn-primary">add Book</a>
            </div>
            <div class="col-md-4" column>
                <form action="${pageContext.request.contextPath}/book/queryBook" method="post">
                    <span style="color: red;font-weight: bold">${error}</span>
                    <input type="text" placeholder="请输入要查询的书籍名称" class="form-inline" name="queryBookName" >
                    <input type="submit" value="查询" class="btn-primary">
                </form>
            </div>
        </div>
    </div>
</div>
<div class="row clearfix">
    <div class="col-md-12 column">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>No.</th>
                <th>Name</th>
                <th>Num</th>
                <th>Description</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="book" items="${list}">
                <tr>
                <td>${book.bookID}</td>
                <td>${book.bookName}</td>
                <td>${book.bookCounts}</td>
                <td>${book.detail}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/book/toupdateBook?id=${book.bookID}">update</a>
                    &nbsp; | &nbsp;
                    <a href="${pageContext.request.contextPath}/book/deleteBook?id=${book.bookID}">delete</a>
                </td>
                </tr>

            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wanghan
  Date: 2017/6/6
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>This is home page, showing user lists.</h2>
<c:if test="${!empty userList}">
    <table class="table table-bordered table-striped">
        <tr>
            <th>ID</th>
            <th>姓名</th>
            <th>操作</th>
        </tr>

        <c:forEach items="${userList}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>
                    <a href="/showUser/${user.id}" type="button" class="btn btn-sm btn-success">详情</a>
                    <a href="/updateUser/${user.id}" type="button" class="btn btn-sm btn-warning">修改</a>
                    <a href="/deleteUser/${user.id}" type="button" class="btn btn-sm btn-danger">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>

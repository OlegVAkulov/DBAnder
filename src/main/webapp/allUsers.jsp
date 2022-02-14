<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Maxim
  Date: 13.02.2022
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Users</title>
</head>
<body>
<table>

    <tr>
        <th scope="row">ID</th>
        <th>NAME</th>
        <th>SURNAME</th>
        <th>AGE</th>
        <th>OPERATION</th>
<%--    </tr>--%>
    <c:forEach var="user" items="${usersList}">

        <c:url var="updateButton" value="/updateInfo">
            <C:param name="userId" value="${user.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteUser">
            <C:param name="userId" value="${user.id}"/>
        </c:url>
<%--        <tr>--%>
            <td scope="row">${user.id}</td>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.age}</td>
            <td>
            <input type="button" value="Update"
                   onclick="window.location.href = '${updateButton}'">
        </td>
            <td>
                <input type="button" value="Delete"
                       onclick="window.location.href = '${deleteButton}'">
            </td>
        </tr>
    </c:forEach>
</table>
</body>
<br>
<input type="button" value="Add"
       onclick="window.location.href = 'userInfo.jsp'"/>
</html>

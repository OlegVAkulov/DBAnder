<%--<%@ page import="org.example.entity.User" %>--%>


<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="form" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: Maxim--%>
<%--  Date: 12.02.2022--%>
<%--  Time: 0:20--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Update user</h1>--%>
<%--<% User userForUpdate = (User) session.getAttribute("user");%>--%>
<%--<form action="updateInfo" method="post">--%>

<%--    <table >--%>
<%--        <tr>--%>
<%--            <td><b>NAME</b></td>--%>
<%--            <td><input type="text" name="name"--%>
<%--                       value="${userForUpdate.getName()}" size = "65"/></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td><b>SURNAME</b></td>--%>
<%--            <td><input type="text" name="surname"--%>
<%--                       value="${userForUpdate.getSurname()}" size = "65"/></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td><b>AGE</b></td>--%>
<%--            <td><input type="text" name="age"--%>
<%--                       value="${userForUpdate.getAge()}" size="65"/></td>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>--%>
<%--                <input type="submit" value="Update"/>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </table>--%>
<%--</form>--%>

<%--</body>--%>
<%--</html>--%>






































<%@ page import="org.example.entity.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Maxim
  Date: 12.02.2022
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Add new user</h1>
<form action="updateInfo" method="post">
    <% User user = (User) request.getAttribute("user");%>
    <table>
        <tr>
            <td><b>ID</b></td>
            <td><input value="<%=user.getId()%>" name="id" type="hidden"/></td>
        </tr>
        <tr>
            <td><b>NAME</b></td>
            <td><input type="text" name="name"
                       value="<%=user.getName()%>" size="65"/></td>
        </tr>
        <tr>
            <td><b>SURNAME</b></td>
            <td><input type="text" name="surname"
                       value="<%=user.getSurname()%>" size="65"/></td>
        </tr>
        <tr>
            <td><b>AGE</b></td>
            <td><input type="text" name="age"
                       value="<%=user.getAge()%>" size="65"/></td>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Update"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>

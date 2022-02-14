<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Maxim
  Date: 12.02.2022
  Time: 0:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Add new user</h1>
<form action="addNewUser" method="post">
    <table>
        <tr>
            <td><b>NAME</b></td>
            <td><input type="text" name="name"
                       value="" size = "65"/></td>
        </tr>
        <tr>
            <td><b>SURNAME</b></td>
            <td><input type="text" name="surname"
                       value="" size = "65"/></td>
        </tr>
        <tr>
            <td><b>AGE</b></td>
            <td><input type="text" name="age"
                       value="" size="65"/></td>
            </td>
        </tr>
        <tr>
            <td>
            <input type="submit" value="Add"/>
            </td>
        </tr>
    </table>
</form>

</body>
</html>

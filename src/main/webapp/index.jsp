<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">--%>
<%--    <title>Intensive Task</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<nav class="navbar navbar-expand-lg bg-secondary navbar-dark py-3 fixed-top">--%>
<%--    <div class="container">--%>
<%--        <a href="#" class="navbar-brand"><span class="text-warning"><h5>Andersen Intensive</h5></span></a>--%>
<%--    </div>--%>
<%--    <a href="UsersServlet">Data Base</a>--%>
<%--    <input type="button" value="Add"--%>
<%--           onclick="window.location.href = 'allUser.jsp'"/>--%>
<%--</nav>--%>
<%--<a href="UsersServlet">Data Base</a>--%>
<%--<input type="button" value="Add"--%>
<%--       onclick="window.location.href = 'allUser.jsp'"/>--%>

<%--<section class="bg-dark text-light p-5 text-center text-sm-start">--%>
<%--    <div class="container">--%>
<%--        <div class="d-sm-flex align-items-center justify-content-between">--%>
<%--            <div>--%>
<%--                <h1>Even <span class="text-warning">Doge!</span></h1>--%>
<%--                <p class="lead my-4">Uses Jenkins with GitHub hook trigers.</p>--%>
<%--            </div>--%>
<%--            <img class="img-fluid w-50 d-none d-sm-block" src='<c:url value="/static/doge.jpg"></c:url>' alt="">--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>
<%--<section class="bg-dark text-light p-5 text-center text-sm-start">--%>
<%--<div class="container">--%>
<%--    <div class="d-sm-flex align-items-center justify-content-between">--%>
<%--        <div>--%>
<%--            <h1>Even <span class="text-warning">Doge!</span></h1>--%>
<%--            <p class="lead my-4">Uses Jenkins with GitHub hook trigers.</p>--%>
<%--        </div>--%>
<%--        <img class="img-fluid w-50 d-none d-sm-block" src='<c:url value="/static/doge.jpg"></c:url>' alt="">--%>
<%--    </div>--%>
<%--</div>--%>
<%--</section>--%>
<%--<section class="bg-secondary text-light p-4">--%>
<%--    <div class="container-fluid">--%>
<%--        <div class="d-md-flex justify-content-center align-items-center">--%>
<%--            <h4 class="mb-3 mb-md-0">--%>
<%--                Start Using Jenkins now and dont forget to use Relay Webhook;)--%>
<%--            </h4>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<%--</body>--%>
<%--</html>--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Users</title>
</head>
<body>
<table>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>SURNAME</th>
        <th>AGE</th>
        <th>OPERATION</th>
    </tr>
    <c:forEach var="user" items="${usersList}">

        <c:url var="updateButton" value="/updateInfo">
            <C:param name="userId" value="${user.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteUser">
            <C:param name="userId" value="${user.id}"/>
        </c:url>
        <tr>
            <td>${user.id}</td>
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
<a href=/users>>Data Base</a>
</html>

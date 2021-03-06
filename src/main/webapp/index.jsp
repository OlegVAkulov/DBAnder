<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Intensive Task</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-secondary navbar-dark py-3 fixed-top">
    <div class="container">
        <a href="#" class="navbar-brand"><span class="text-warning"><h5>Oleg Akulov</h5></span></a>
    </div>
</nav>
<section class="bg-dark text-light p-5 text-center text-sm-start">
    <div class="container">
        <div class="d-sm-flex align-items-center justify-content-between">
            <div>
                <h1>This is <span class="text-warning">Shark!</span></h1>
                <p class="lead my-4">Hello World!</p>
                <a href="/my-jenkins-project/users">Data Base</a>
            </div>
            <img class="img-fluid w-50 d-none d-sm-block" src='<c:url value="/static/shark.jpg"></c:url>' alt="">
        </div>
    </div>
</section>



</body>
</html>

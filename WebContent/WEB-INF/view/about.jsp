<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Us</title>

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/Semantic-UI-master/dist/semantic.min.css" />">
    <script src="<c:url value="/resources/Semantic-UI-master/dist/semantic.min.js" />"></script>
</head>
<body>
<div class="ui large top fixed secondary pointing menu" style="background-color: white">

    <div class="ui container">
        <div class="left menu">
            <a class=" blue item" href="index.html">Home</a>
            <a class="active blue item" href="about.html">About Us</a>
        </div>
        <div class="item">
            <img src="<c:url value="/resources/logo.jpeg" />">
        </div>
        <div class="right menu">
            <div class="item">
                <button class="ui blue button" id="compose">
                    <i class="write icon"></i>
                    Compose
                </button>
            </div>
        </div>
    </div>
</div>

<div class="ui one grid container">
    <div class="column">
        <div class="ui vertical segment">
            <p></p>
        </div>

        <div class="ui vertical segment">
            <p></p>
        </div>

        <div class="ui vertical segment">
            <p></p>
        </div>
    </div>

</div>
</body>
</html>
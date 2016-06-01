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

<div class="ui container aboutuscontent">
    <div class="column">
        <div class="ui vertical segment">
            <h1 class = "ui header blue">What is biting?</h1>
            <p>The customer is almost always completely right!</p>
            <p>We are a group of prosdev students making a blog site!</p>
        </div>

        <!-- <div class="ui vertical segment">
            <p>Vertical Segment 2</p>
        </div>

        <div class="ui vertical segment">
            <p>Vertical Segment 3</p>
        </div> -->
    </div>
</div>
<div class = "ui container">
    <div class = "column">
        <div class = "ui vertical segment">
            <h1 class = "ui header blue">Who Are We?</h1>
            <br/>
            <div class="ui five column grid">
                <div class="row">
                    <div class="column">
                        <img class="ui small circular image centered" src="avril.jpg">
                    </div>
                    <div class="column">
                        <img class="ui small circular image centered" src="rissa.jpg">
                    </div>
                    <div class="column">
                        <img class="ui small circular image centered" src="marc.jpg">
                    </div>
                    <div class="column">
                        <img class="ui small circular image centered" src="shayane.jpg">
                    </div>
                    <div class="column">
                        <img class="ui small circular image centered" src="stanley.jpg">
                    </div>
                </div>
                <div class="row">
                    <div class = "column">
                        <h3 class="ui center aligned icon header">Avril Fernandez</h3>
                    </div>
                    <div class = "column">
                        <h3 class="ui center aligned icon header">Rissa Quindoza</h3>
                    </div>
                    <div class = "column">
                        <h3 class="ui center aligned icon header">Marc San Pedro</h3>
                    </div>
                    <div class = "column">
                        <h3 class="ui center aligned icon header">Shayane Tan</h3>
                    </div>
                    <div class = "column">
                        <h3 class="ui center aligned icon header">Stanley Yu Galan</h3>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</div>
</body>
</html>
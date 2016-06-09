<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Us</title>

    <script src="<c:url value="/resources/jquery-1.11.3.min.js" />"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/Semantic-UI-master/dist/semantic.min.css" />">
    <script src="<c:url value="/resources/Semantic-UI-master/dist/semantic.min.js" />"></script>
	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/prosdev.css" />">
    
</head>
<body>
    <div class="ui inverted large top fixed menu">

    <div class="ui container">
    <!--<div class="item">-->
    <a href="index.html"><img id="logo" src="<c:url value="/resources/anonytwitter2.png" />"></a>
    <!--</div>-->
    <div class="right menu">
    <a class="item" href="index.html">Home</a>
    <a class="active item" href="about.html">About Us</a>
    </div>
    </div>
</div>
<div class="ui hidden divider"></div>
<div class="ui container postcontent2">
    <div class="column">
        <div class="ui vertical segment">
            <h1 class = "ui header blue">What is anonytwitter?</h1>
            <p>Anonytwitter is anonymous tweeting!</p>
            <p>Anonytwitter hopes to be a haven for society's outcasts.
            Users can freely share their ideas and experiences anonymously. </p>
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
                        <img class="ui small circular image centered" src="<c:url value="/resources/avril.jpg"/>">
                    </div>
                    <div class="column">
                        <img class="ui small circular image centered" src="<c:url value="/resources/rissa.jpg"/>">
                    </div>
                    <div class="column">
                        <img class="ui small circular image centered" src="<c:url value="/resources/marc.jpg"/>">
                    </div>
                    <div class="column">
                        <img class="ui small circular image centered" src="<c:url value="/resources/shayane.jpg"/>">
                    </div>
                    <div class="column">
                        <img class="ui small circular image centered" src="<c:url value="/resources/stanley.jpg"/>">
                    </div>
                </div>
                <div class="row">
                    <div class = "column">
                        <h3 class="ui center aligned icon header">Avril Fernandez
                        <div class="sub header">Developer</div></h3>
                    </div>
                    <div class = "column">
                        <h3 class="ui center aligned icon header">Rissa Quindoza
                        <div class="sub header">Developer</div></h3>
                    </div>
                    <div class = "column">
                        <h3 class="ui center aligned icon header">Marc San Pedro
                        <div class="sub header">Developer</div></h3>
                    </div>
                    <div class = "column">
                        <h3 class="ui center aligned icon header">Shayane Tan
                        <div class="sub header">Designer</div></h3>
                    </div>
                    <div class = "column">
                        <h3 class="ui center aligned icon header">Stanley Yu Galan
                        <div class="sub header">Designer</div></h3>
                    </div>
                </div>
                
                
            </div>
        </div>
    </div>
</div>
</body>
</html>
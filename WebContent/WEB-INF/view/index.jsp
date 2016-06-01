<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>COMET</title>

    <script src="<c:url value="/resources/jquery-1.11.3.min.js" />"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/Semantic-UI-master/dist/semantic.min.css" />">
    <script src="<c:url value="/resources/Semantic-UI-master/dist/semantic.min.js" />"></script>

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/prosdev.css" />">

    <script type="text/javascript">
        $(document).ready(function () {
            $("#compose").click(function () {
                $("#mod").modal('show');
            });

            $('.ui.sticky')
                    .sticky({
                        context: '.postcontent2'
                    })
            ;
        });
    </script>
</head>
<body>
<!--<div class="ui large top attached stackable secondary menu">-->

    <!--<div class="ui container">-->
        <!--<div class="item">-->
            <!--<img src="logo.jpeg">-->
        <!--</div>-->
        <!--<div class="right menu">-->
            <!--<a class="active blue item" href="index.html">Home</a>-->
            <!--<a class="blue item" href="about.html">About Us</a>-->
            <!--<div class="item">-->
                <!--<button class="ui blue button" id="compose">-->
                    <!--<i class="write icon"></i>-->
                    <!--Compose-->
                <!--</button>-->
            <!--</div>-->
        <!--</div>-->
    <!--</div>-->
<!--</div>-->

<div class="ui large top fixed secondary pointing menu" style="background-color: white">

    <div class="ui container">
        <div class="left menu">
            <a class="active blue item" href="index.html">Home</a>
            <a class="blue item" href="about.html">About Us</a>
        </div>
        <div class="item">
            <img src="<c:url value="resources/logo.jpeg"/>">
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
<div class="ui hidden divider"></div>
<div class="ui container postcontent2">

    <div style="min-height: 263px;" class="right ui rail">
        <div  class="ui sticky">
            <h3 class="ui header">Stuck Content</h3>
            <p>Te eum doming eirmod, nominati pertinacia argumentum ad his. Ex eam alia facete scriptorem, est autem
                aliquip detraxit at. Usu ocurreret referrentur at, cu epicurei appellantur vix. Cum ea laoreet recteque
                electram, eos choro alterum definiebas in. Vim dolorum definiebas an. Mei ex natum rebum iisque.</p>
            <p>Audiam quaerendum eu sea, pro omittam definiebas ex. Te est latine definitiones. Quot wisi nulla ex duo.
                Vis sint solet expetenda ne, his te phaedrum referrentur consectetuer. Id vix fabulas oporteat, ei quo
                vide phaedrum, vim vivendum maiestatis in.</p>
        </div>
    </div>

    <div class="column">
    	<c:forEach var="post" items="${posts }">
	        <div class="ui vertical segment">
	            <h1 class="ui header">
	                <div class="sub header">${post.datePosted }</div>
	            </h1>
	            <h1 class="ui header">${post.title }
	                <div class="sub header">${post.author }</div>
	            </h1>
	            ${post.content }
				<br/><br/>
	            <a class="blue seemore" href="post.html?id=${post.id }">See more...</a>
	        </div>
		</c:forEach>
    </div>
    <!--<div style="min-height: 263px;" class="right ui rail">-->
    <!--<div style="width: 272px ! important; height: 263px ! important; left: 1356.5px;" class="ui sticky">-->
    <!--<h3 class="ui header">Stuck Content</h3>-->
    <!--<img>-->
    <!--</div>-->
    <!--</div>-->


</div>

<div class="ui hidden divider"></div>

<div class="ui bottom attached pagination stackable secondary menu">

    <div class="ui container" id="pagination">

        <!--<div class="ui menu">-->
            <a class="active item">
                1
            </a>
            <div class="disabled item">
                ...
            </div>
            <a class="item">
                10
            </a>
            <a class="item">
                11
            </a>
            <a class="item">
                12
            </a>
        <!--</div>-->
    </div>
</div>

<div class="ui modal" id="mod">
    <i class="close icon"></i>
    <div class="header">
        Compose
    </div>
	    <div class="ui form content">
			<form action="submit_post" method="post">	
		        <div class="field">
		            <input placeholder="@username" name="author" type="text">
		        </div>
		        <div class="field">
		            <input style="font-size: large" placeholder="Title" name="title" type="text">
		        </div>
		        <div class="field">
		            <textarea style="font-size: medium" name="content" placeholder="Your text here.."></textarea>
		        </div>
		        <button class="ui right floated blue labeled icon button" type="submit">Submit<i class="checkmark icon"></i>
		        </button>
		
		        <br><br>
			</form>
	    </div>
</div>

</body>
</html>
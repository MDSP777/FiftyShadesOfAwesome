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

    <button class="ui red circular button" id="compose">
    <img class="ui image" src="compose2.png">
    </button>
    <div class="ui inverted large top fixed menu">

    <div class="ui container">
    <!--<div class="item">-->
    <a href="index.html"><img id="logo" src="anonytwitter2.png"></a>
    <!--</div>-->
    <div class="right menu">
    <a class="active item" href="index.html">Home</a>
    <a class="item" href="about.html">About Us</a>
    </div>
    </div>
    </div>
<div class="ui hidden divider"></div>
<div class="ui container postcontent2">
    <div class="column">
    <div class="ui very padded segment">
    	<c:forEach var="post" items="${posts }">
            <div class="ui basic clearing segment">
	            <h1 class="ui right floated header">
	                <div class="sub header">${post.datePosted }</div>
	            </h1>
	            <h1 class="ui left floated  header">${post.title }
	                <div class="sub header">${post.author }</div>
	            </h1>
            </div>
            <div class="ui basic segment">
	            ${post.content }
				<br/><br/>
	            <a class="blue seemore" href="post.html?id=${post.id }">See more...</a>
	        </div>

            <div class="ui divider"></div>
		</c:forEach>
    <div class="ui bottom secondary menu">

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

    </div>
    </div>


</div>

<div class="ui hidden divider"></div>

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
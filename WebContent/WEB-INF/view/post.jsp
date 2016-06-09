<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${post.title }</title>

    <script src="<c:url value="/resources/jquery-1.11.3.min.js" />"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/Semantic-UI-master/dist/semantic.min.css" />">
    <script src="<c:url value="/resources/Semantic-UI-master/dist/semantic.min.js" />"></script>

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/prosdev.css" />">
    
    <script type="text/javascript">

        $(document).ready(function () {
            $(".hidden").css("display", "none");
            $("#compose").click(function () {
                $("#mod").modal('show');
            });

            $("#comment").focus(function (){
                $(".hidden").css("display", "block");
                $("#comment").attr('rows', '3');
            });

            $("#viewcomm").click(function (){
                $(".hiddencomm").css("display", "block");
                $("#viewcomm").css("display", "none");
            });
        });
    </script>
</head>
<body>
    <div class="ui inverted large top fixed menu">

    <div class="ui container">
    <!--<div class="item">-->
    <a href="index.html"><img id="logo" src="<c:url value="/resources/anonytwitter2.png" />"></a>
    <!--</div>-->
    <div class="right menu">
    <a class="item" href="index.html">Home</a>
    <a class="item" href="about.html">About Us</a>
    </div>
    </div>
    </div>

<div class="ui hidden divider"></div>
<div class="ui container postcontent">
    <div class="column">
    <div class="ui very padded segment">
        <div>
    <div class="ui basic clearing segment">
            <h1 class="ui right floated header">
                <div class="sub header">${post.datePosted }</div>
            </h1>
            <h1 class="ui left floated header">${post.title }
                <div class="sub header">${post.author }</div>
            </h1>
    </div>
    <div class="ui basic segment">
            ${post.fullContent }
    </div>
        </div>

        <h4 class="ui horizontal divider">
            Comments
        </h4>
    <div class="ui basic  segment">
		<form method="post" action="submit_comment">
			<input type="hidden" value="${post.id }" name="postId"/>
	        <div class="ui form content">
	            <div class="field hidden">
	                <input placeholder="@username" type="text" name="author">
	            </div>
	            <div class="field">
	                <textarea name="content" id="comment" rows="1" style="font-size: medium" placeholder="Comment.."></textarea>
	            </div>
	
	            <div class="hidden">
	                <button class="ui right floated  blue labeled icon button " type="submit">Submit<i class="checkmark icon"></i>
	                </button>
	                <br>
	                <br>
	            </div>
	        </div>
        </form>

        <div class="ui comments">
            <div class="comment">
            	<c:forEach var="comment" items="${post.commentsList }">
                <div class="content">
                    <a class="author">${comment.author }</a>
                    <div class="metadata">
                        <span class="date">${comment.datePosted }</span>
                    </div>
                    <div class="text">
                        ${comment.content }
                    </div>
                </div>
                </c:forEach>
            </div>

<!--             <div class="comment hiddencomm"> -->
<!--                 <div class="content"> -->
<!--                     <a class="author">@UyDMN</a> -->
<!--                     <div class="metadata"> -->
<!--                         <span class="date">Yesterday at 12:30AM</span> -->
<!--                     </div> -->
<!--                     <div class="text"> -->
<!--                         TROLOLOLOLOL :)) -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->

<!--             <br> -->
<!--             <a class="blue" id="viewcomm" href="#">View more comments..</a> -->
        </div>
</div>
    </div>
    </div>


    <!--<div style="min-height: 263px;" class="right ui rail">-->
    <!--<div style="width: 272px ! important; height: 263px ! important; left: 1356.5px;" class="ui sticky">-->
    <!--<h3 class="ui header">Stuck Content</h3>-->
    <!--<img>-->
    <!--</div>-->
    <!--</div>-->


    <br>
    <br>

</div>

<div class="ui hidden divider"></div>


<div class="ui modal" id="mod">
    <i class="close icon"></i>
    <div class="header">
        Compose
    </div>
    <div class="ui form content">
        <div class="field">
            <input placeholder="@username" type="text">
        </div>
        <div class="field">
            <input style="font-size: large" placeholder="Title" type="text">
        </div>
        <div class="field">
            <textarea style="font-size: medium" placeholder="Your text here.."></textarea>
        </div>
        <button class="ui right floated blue labeled icon button" type="submit">Submit<i class="checkmark icon"></i>
        </button>



        <br><br>
    </div>

</div>

</body>
</html>
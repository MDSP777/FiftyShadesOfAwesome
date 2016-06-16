<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Anonytwitter</title>

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

    <button>
	    <img class="ui tiny circular image" src="<c:url value="/resources/compose.png" />"" id="compose">
	    <!--</img>-->
	</button>

    <div class="ui inverted large top fixed menu">

    <div class="ui container">
    <!--<div class="item">-->
    <a href="index.html"><img id="logo" src="<c:url value="/resources/anonytwitter2.png" />"></a>

    <div class="ui left aligned category search item">
            <div class="ui icon input">
                <input class="prompt" type="text" placeholder="Search..">
                <i class="search link icon"></i>
            </div>
            <div class="results"></div>
        </div>
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
		            <h1 class="ui left floated  header"><a href="post.html?id=${post.id }">${post.title }</a>
		                <div class="sub header">${post.author }</div>
		            </h1>
	            </div>
	            <div class="ui basic segment">
		            ${post.content }
					<br/><br/>
		        </div>

		        <div class="ui right aligned basic segment" style="margin: 0; padding-top: 0;padding-right: 2em"><a class="seemore" href="post.html?id=${post.id }">See more...</a></div>

		        <div class="ui segment">
                <div class="ui comments">
                    <div class="comment">
                        <div class="content">
                            <a class="author">@sharkscion</a>
                            <div class="metadata">
                                <span class="date">Today at 5:42PM</span>
                            </div>
                            <div class="text">
                                How artistic!
                            </div>
                        </div>
                    </div>
                    <div class="comment">
                        <div class="content">
                            <a class="author">@UyDMN</a>
                            <div class="metadata">
                                <span class="date">Yesterday at 12:30AM</span>
                            </div>
                            <div class="text">
                                TROLOLOLOLOL :))
                            </div>
                        </div>
                    </div>
                    </div>
            </div>
	
	            <div class="ui divider"></div>
			</c:forEach>
		    <div class="ui bottom secondary menu">
			    <div class="ui container" id="pagination">
			    <c:choose>
			    	<c:when test="${pageNo==1 }">    		
					    <i class=" disabled material-icons">chevron_left</i>
			    	</c:when>
			    	<c:otherwise>    		
					    <a href="index.html?page=${pageNo-1 }"><i class="material-icons">chevron_left</i></a>
			    	</c:otherwise>
			    </c:choose>
			    <c:choose>
					<c:when test="${pageCount<=7 }">
						<c:forEach begin="1" end="${pageCount }" varStatus="loop" var="val">
							<c:choose>
								<c:when test="${pageNo==val }"> 
									<a class="active item"  href="index.html?page=${val }">
								    	${val }
								    </a>
								</c:when>
								<c:otherwise>
									<a class="item"  href="index.html?page=${val }">
								    	${val }
								    </a>
							    </c:otherwise>
						    </c:choose>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<!-- more than seven pages -->
						<c:choose>
							<c:when test="${pageNo<=3 }">
								<c:forEach begin="1" end="3" varStatus="loop" var="val">
									<c:choose>
										<c:when test="${pageNo==val }"> 
											<a class="active item"  href="index.html?page=${val }">
										    	${val }
										    </a>
										</c:when>
										<c:otherwise>
											<a class="item"  href="index.html?page=${val }">
										    	${val }
										    </a>
									    </c:otherwise>
								    </c:choose>
								</c:forEach>
								<div class="disabled item">
								    	...
							    </div>
							    <a class="item"  href="index.html?page=${pageCount }">
							    	${pageCount }
							    </a>
							</c:when>
							<c:when test="${pageNo>3 && pageNo<=pageCount-3 }">
								<a class="item"  href="index.html?page=1">
							    	1
							    </a>
								<div class="disabled item">
								    	...
							    </div>
								<a class="active item"  href="index.html?page=${pageNo }">
							    	${pageNo }
							    </a>
								<div class="disabled item">
								    	...
							    </div>
							    <a class="item"  href="index.html?page=${pageCount }">
							    	${pageCount }
							    </a>
							</c:when>
							<c:otherwise>
								<a class="item"  href="index.html?page=1">
							    	1
							    </a>
								<div class="disabled item">
								    	...
							    </div>
							    <c:forEach begin="${pageCount-2 }" end="${pageCount }" varStatus="loop" var="val">
									<c:choose>
										<c:when test="${pageNo==val }"> 
											<a class="active item"  href="index.html?page=${val }">
										    	${val }
										    </a>
										</c:when>
										<c:otherwise>
											<a class="item"  href="index.html?page=${val }">
										    	${val }
										    </a>
									    </c:otherwise>
								    </c:choose>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
				<c:choose>
			    	<c:when test="${pageNo==pageCount }">    		
					    <i class=" disabled material-icons">chevron_right</i>
			    	</c:when>
			    	<c:otherwise>    		
					    <a href="index.html?page=${pageNo+1 }"><i class="material-icons">chevron_right</i></a>
			    	</c:otherwise>
			    </c:choose>
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